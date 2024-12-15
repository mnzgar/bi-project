URL_AEAT = "https://sede.agenciatributaria.gob.es/static_files/AEAT/Aduanas/Contenidos_Privados/Estadisticas_Comercio_Exterior/comercio_exterior/datos_mensuales_maxima_desagregacion/"
URL_SEDE = "https://sede.agenciatributaria.gob.es/static_files/Sede/Tema/Aduanas/Comercio_exterior/maxima_desag_mens/"

WORKERS_URLS = 10
WORKERS_ZIPS = 5

DATA_FOLDER = "data"
RAW_FOLDER = f"{DATA_FOLDER}/raw/"

YEARS = [2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024]
MONTHS = {1:  ['en', 'en',      'enero',      'Enero'],
          2:  ['fb', 'fe',    'febrero',    'Febrero'],
          3:  ['mz', 'ma',      'marzo',      'Marzo'],
          4:  ['ab', 'ab',      'abril',      'Abril'],
          5:  ['my', 'my',       'mayo',       'Mayo'],
          6:  ['jn', 'ju',      'junio',      'Junio'],
          7:  ['jl', 'jl',      'julio',      'Julio'],
          8:  ['ag', 'ag',     'agosto',     'Agosto'],
          9:  ['sp', 'se', 'septiembre', 'Septiembre'],
          10: ['oc', 'oc',    'octubre',    'Octubre'],
          11: ['nv', 'no',  'noviembre',  'Noviembre'],
          12: ['dc', 'di',  'diciembre',  'Diciembre']}

URLS_AVAILABLE = ["22", "39", "53", "61", "63", "74", "84", "86", "90", "99"]
