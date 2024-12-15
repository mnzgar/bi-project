import os
import shutil
import zipfile
from concurrent.futures import ThreadPoolExecutor
from typing import Optional

from tenacity import retry, stop_after_attempt, wait_exponential, retry_if_exception_type
import requests
from utils import *


# Function to check if a URL exists
@retry(stop=stop_after_attempt(5), wait=wait_exponential(multiplier=1, min=2, max=10),
       retry=retry_if_exception_type(requests.exceptions.RequestException))
def check_url_exists(url):
    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                             'Chrome/91.0.4472.124 Safari/537.36'}
    response = requests.get(url, allow_redirects=True, timeout=10, headers=headers)
    return url if response.status_code == 200 else None


# Function to create the directory to store files
def create_data_folder(year, month):
    data_folder = os.path.join(RAW_FOLDER, str(year), str(month))
    os.makedirs(data_folder, exist_ok=True)
    return data_folder


# Function to create the directory to store files
def download_zip_file(url, data_folder):
    zip_filename = os.path.join(data_folder, url.split("/")[-1])
    response = requests.get(url, verify=True)
    with open(zip_filename, 'wb') as file:
        file.write(response.content)


# Function to unzip a file and remove it afterward
def unzip_and_cleanup(zip_filename: str, data_folder: str) -> Optional[None]:
    zip_path = os.path.join(data_folder, zip_filename)
    if not os.path.exists(zip_path):
        print(f"Warning: Zip file {zip_path} does not exist.")
        return

    with zipfile.ZipFile(zip_path, 'r') as zip_ref:
        for member in zip_ref.namelist():
            filename = os.path.basename(member)
            if filename:
                source = zip_ref.open(member)
                target_path = os.path.join(data_folder, filename)

                with source, open(target_path, "wb") as target:
                    shutil.copyfileobj(source, target)

    os.remove(zip_path)


# Function to generate the URLs to check
def generate_urls(year, month):
    base_url = URL_SEDE if (year > 2023 or (year == 2023 and month > 4)) else URL_AEAT
    url_prefix = base_url + str(year) + "/"
    return [
        f"{url_prefix}{MONTHS[month][i]}/cg{str(year)[-2:]}{MONTHS[month][j]}{num}.zip"
        for num in URLS_AVAILABLE for i in range(2, 4) for j in range(0, 2)
    ]


# Function to download and process the zip files
def download_data_zips(year, month):
    data_folder = create_data_folder(year, month)
    urls_to_check = generate_urls(year, month)

    # Check the URLs in parallel
    with ThreadPoolExecutor(max_workers=WORKERS_URLS) as executor:
        valid_urls = list(filter(None, executor.map(check_url_exists, urls_to_check)))

    if not valid_urls:
        print(f"No valid URLs found for {year}-{month}.")
        return 1

    # Download the zip files in parallel
    with ThreadPoolExecutor(max_workers=WORKERS_ZIPS) as executor:
        executor.map(lambda url: download_zip_file(url, data_folder), valid_urls)

    # Unzip and clean up in parallel
    zip_filenames = [url.split("/")[-1] for url in valid_urls]
    with ThreadPoolExecutor(max_workers=WORKERS_ZIPS) as executor:
        executor.map(lambda zip_file: unzip_and_cleanup(zip_file, data_folder), zip_filenames)

    return 0


# Main function
if __name__ == '__main__':
    files = os.listdir(RAW_FOLDER)
    if len(files) == 0:
        for year in YEARS:
            for month in MONTHS.keys():
                print(f"Info: Starting download of {year}-{month}.")
                download_data_zips(year, month)
