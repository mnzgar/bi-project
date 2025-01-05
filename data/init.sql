CREATE TABLE importacion(
    ano CHAR(2),
    mes CHAR(2),
    fecha_admision_documento DATE,
    producto VARCHAR(100),
    pais_origen VARCHAR(100),
    provincia_destino VARCHAR(50),
    peso BIGINT,
    valor_factura BIGINT,
    modo_transporte_frontera VARCHAR(255),
    zona_intercambio VARCHAR(50)
);
