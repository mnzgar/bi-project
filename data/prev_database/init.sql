-- Crear tabla para los datos en crudo
CREATE TABLE importacion_2019(
    flujo VARCHAR(1),
    ano VARCHAR(2),
    mes VARCHAR(2),
    provincia_aduana_recinto VARCHAR(2),
    fecha_admision_documento DATE,
    posicion_estadistica VARCHAR(12),
    tipo_declaracion VARCHAR(1),
    codigos_adicionales VARCHAR(8),
    pais_origen_destino VARCHAR(3),
    pais_procedencia_expedicion VARCHAR(3),
    provincia_origen_destino VARCHAR(2),
    regimen_aduanero_solicitado VARCHAR(2),
    regimen_aduanero_precedente VARCHAR(2),
    peso VARCHAR(15),
    unidades VARCHAR(15),
    valor_estadistico VARCHAR(12),
    valor_factura VARCHAR(12),
    pais_divisa VARCHAR(3),
    contenedor VARCHAR(1),
    regimen_transporte VARCHAR(5),
    modo_transporte_frontera VARCHAR(1),
    modo_transporte_interior VARCHAR(1),
    nacionalidad_medio_transporte VARCHAR(3),
    zona_intercambio VARCHAR(1),
    naturaleza_transaccion VARCHAR(2),
    condiciones_entrega VARCHAR(3),
    contingente VARCHAR(6),
    preferencia_arancelaria VARCHAR(6),
    flete VARCHAR(12),
    provincia_domicilio_fiscal VARCHAR(2)
);

--COPY importacion_2019
--FROM '/docker-entrypoint-initdb.d/raw_csv/2019/1-en.csv'
--DELIMITER ';'
--CSV HEADER;

CREATE TABLE importacion_2020(
    flujo VARCHAR(1),
    ano VARCHAR(2),
    mes VARCHAR(2),
    provincia_aduana_recinto VARCHAR(2),
    fecha_admision_documento DATE,
    posicion_estadistica VARCHAR(12),
    tipo_declaracion VARCHAR(1),
    codigos_adicionales VARCHAR(8),
    pais_origen_destino VARCHAR(3),
    pais_procedencia_expedicion VARCHAR(3),
    provincia_origen_destino VARCHAR(2),
    regimen_aduanero_solicitado VARCHAR(2),
    regimen_aduanero_precedente VARCHAR(2),
    peso VARCHAR(15),
    unidades VARCHAR(15),
    valor_estadistico VARCHAR(12),
    valor_factura VARCHAR(12),
    pais_divisa VARCHAR(3),
    contenedor VARCHAR(1),
    regimen_transporte VARCHAR(5),
    modo_transporte_frontera VARCHAR(1),
    modo_transporte_interior VARCHAR(1),
    nacionalidad_medio_transporte VARCHAR(3),
    zona_intercambio VARCHAR(1),
    naturaleza_transaccion VARCHAR(2),
    condiciones_entrega VARCHAR(3),
    contingente VARCHAR(6),
    preferencia_arancelaria VARCHAR(6),
    flete VARCHAR(12),
    provincia_domicilio_fiscal VARCHAR(2)
);

CREATE TABLE importacion_2021(
    flujo VARCHAR(1),
    ano VARCHAR(2),
    mes VARCHAR(2),
    provincia_aduana_recinto VARCHAR(2),
    fecha_admision_documento DATE,
    posicion_estadistica VARCHAR(12),
    tipo_declaracion VARCHAR(1),
    codigos_adicionales VARCHAR(8),
    pais_origen_destino VARCHAR(3),
    pais_procedencia_expedicion VARCHAR(3),
    provincia_origen_destino VARCHAR(2),
    regimen_aduanero_solicitado VARCHAR(2),
    regimen_aduanero_precedente VARCHAR(2),
    peso VARCHAR(15),
    unidades VARCHAR(15),
    valor_estadistico VARCHAR(12),
    valor_factura VARCHAR(12),
    pais_divisa VARCHAR(3),
    contenedor VARCHAR(1),
    regimen_transporte VARCHAR(5),
    modo_transporte_frontera VARCHAR(1),
    modo_transporte_interior VARCHAR(1),
    nacionalidad_medio_transporte VARCHAR(3),
    zona_intercambio VARCHAR(1),
    naturaleza_transaccion VARCHAR(2),
    condiciones_entrega VARCHAR(3),
    contingente VARCHAR(6),
    preferencia_arancelaria VARCHAR(6),
    flete VARCHAR(12),
    provincia_domicilio_fiscal VARCHAR(2)
);

CREATE TABLE importacion_2022(
    flujo VARCHAR(1),
    ano VARCHAR(2),
    mes VARCHAR(2),
    provincia_aduana_recinto VARCHAR(2),
    fecha_admision_documento DATE,
    posicion_estadistica VARCHAR(12),
    tipo_declaracion VARCHAR(1),
    codigos_adicionales VARCHAR(8),
    pais_origen_destino VARCHAR(3),
    pais_procedencia_expedicion VARCHAR(3),
    provincia_origen_destino VARCHAR(2),
    regimen_aduanero_solicitado VARCHAR(2),
    regimen_aduanero_precedente VARCHAR(2),
    peso VARCHAR(15),
    unidades VARCHAR(15),
    valor_estadistico VARCHAR(12),
    valor_factura VARCHAR(12),
    pais_divisa VARCHAR(3),
    contenedor VARCHAR(1),
    regimen_transporte VARCHAR(5),
    modo_transporte_frontera VARCHAR(1),
    modo_transporte_interior VARCHAR(1),
    nacionalidad_medio_transporte VARCHAR(3),
    zona_intercambio VARCHAR(1),
    naturaleza_transaccion VARCHAR(2),
    condiciones_entrega VARCHAR(3),
    contingente VARCHAR(6),
    preferencia_arancelaria VARCHAR(6),
    flete VARCHAR(12),
    provincia_domicilio_fiscal VARCHAR(2)
);

CREATE TABLE importacion_2023(
    flujo VARCHAR(1),
    ano VARCHAR(2),
    mes VARCHAR(2),
    provincia_aduana_recinto VARCHAR(2),
    fecha_admision_documento DATE,
    posicion_estadistica VARCHAR(12),
    tipo_declaracion VARCHAR(1),
    codigos_adicionales VARCHAR(8),
    pais_origen_destino VARCHAR(3),
    pais_procedencia_expedicion VARCHAR(3),
    provincia_origen_destino VARCHAR(2),
    regimen_aduanero_solicitado VARCHAR(2),
    regimen_aduanero_precedente VARCHAR(2),
    peso VARCHAR(15),
    unidades VARCHAR(15),
    valor_estadistico VARCHAR(12),
    valor_factura VARCHAR(12),
    pais_divisa VARCHAR(3),
    contenedor VARCHAR(1),
    regimen_transporte VARCHAR(5),
    modo_transporte_frontera VARCHAR(1),
    modo_transporte_interior VARCHAR(1),
    nacionalidad_medio_transporte VARCHAR(3),
    zona_intercambio VARCHAR(1),
    naturaleza_transaccion VARCHAR(2),
    condiciones_entrega VARCHAR(3),
    contingente VARCHAR(6),
    preferencia_arancelaria VARCHAR(6),
    flete VARCHAR(12),
    provincia_domicilio_fiscal VARCHAR(2)
);

CREATE TABLE importacion_2024(
    flujo VARCHAR(1),
    ano VARCHAR(2),
    mes VARCHAR(2),
    provincia_aduana_recinto VARCHAR(2),
    fecha_admision_documento DATE,
    posicion_estadistica VARCHAR(12),
    tipo_declaracion VARCHAR(1),
    codigos_adicionales VARCHAR(8),
    pais_origen_destino VARCHAR(3),
    pais_procedencia_expedicion VARCHAR(3),
    provincia_origen_destino VARCHAR(2),
    regimen_aduanero_solicitado VARCHAR(2),
    regimen_aduanero_precedente VARCHAR(2),
    peso VARCHAR(15),
    unidades VARCHAR(15),
    valor_estadistico VARCHAR(12),
    valor_factura VARCHAR(12),
    pais_divisa VARCHAR(3),
    contenedor VARCHAR(1),
    regimen_transporte VARCHAR(5),
    modo_transporte_frontera VARCHAR(1),
    modo_transporte_interior VARCHAR(1),
    nacionalidad_medio_transporte VARCHAR(3),
    zona_intercambio VARCHAR(1),
    naturaleza_transaccion VARCHAR(2),
    condiciones_entrega VARCHAR(3),
    contingente VARCHAR(6),
    preferencia_arancelaria VARCHAR(6),
    flete VARCHAR(12),
    provincia_domicilio_fiscal VARCHAR(2)
);

-- Crear tabla para los modos de transporte
CREATE TABLE modo_transporte(
    code INT PRIMARY KEY,
    name TEXT NOT NULL
);

COPY modo_transporte
FROM '/docker-entrypoint-initdb.d/codes/modo_transporte.csv'
DELIMITER ','
CSV HEADER;

-- Crear tabla para los países
CREATE TABLE pais(
    code CHAR(2) PRIMARY KEY,
    name TEXT NOT NULL
);

COPY pais
FROM '/docker-entrypoint-initdb.d/codes/pais.csv'
DELIMITER ','
CSV HEADER;

-- Crear tabla para provincias
CREATE TABLE provincias(
    code CHAR(2) PRIMARY KEY,
    prov_name TEXT NOT NULL,
    caut_name TEXT NOT NULL
);

COPY provincias
FROM '/docker-entrypoint-initdb.d/codes/provincia.csv'
DELIMITER ','
CSV HEADER;