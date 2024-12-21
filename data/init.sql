-- Crear tabla para los modos de transporte
CREATE TABLE transport_modes (
    code INT PRIMARY KEY,
    name TEXT NOT NULL
);

COPY transport_modes(code, name)
FROM '/docker-entrypoint-initdb.d/codes/modo_transporte.csv'
DELIMITER ','
CSV HEADER;

-- Crear tabla para los países
CREATE TABLE countries (
    code CHAR(2) PRIMARY KEY,
    name TEXT NOT NULL
);

COPY countries(code, name)
FROM '/docker-entrypoint-initdb.d/codes/pais.csv'
DELIMITER ','
CSV HEADER;

-- Crear tabla para provincias
CREATE TABLE provinces (
    code CHAR(2) PRIMARY KEY,
    prov_name TEXT NOT NULL,
    caut_name TEXT NOT NULL
);

COPY provinces(code, prov_name, caut_name)
FROM '/docker-entrypoint-initdb.d/codes/provincia.csv'
DELIMITER ','
CSV HEADER;
