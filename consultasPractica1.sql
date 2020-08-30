alter session set "_ORACLE_SCRIPT"=true;

--VER TABLAS CREADAS------------------------------------------------------------------------------------------------------------
SELECT * FROM USER_TABLES;

--TABLAS CREADAS----------------------------------------------------------------------------------------------------------------
CREATE TABLE SALA(
    num_sala NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    ubicacion VARCHAR(50) NOT NULL
    CONSTRAINT ck_ubicacion CHECK (lower(ubicacion) IN ('area norte', 'area sur', 'area este', 'area oeste')),
    tipo_formato VARCHAR(50) NOT NULL,
    capacidad NUMBER NOT NULL
)TABLESPACE PRACTICA1;

CREATE TABLE CASA_PRODUCTORA(
    id_productora NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    nombre_productora VARCHAR(100) NOT NULL
)TABLESPACE PRACTICA1;

CREATE TABLE GENERO(
    id_genero NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    nombre_genero VARCHAR(100) NOT NULL    
)TABLESPACE PRACTICA1;

CREATE TABLE PELICULA(
    id_pelicula NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    nombre_pelicula VARCHAR(500) NOT NULL,
    clasificacion VARCHAR(5) NOT NULL,
    idioma VARCHAR(50) NOT NULL,
    es_subtitulada CHAR(1) NOT NULL,
    CONSTRAINT ck_es_subtitulada CHECK (lower(es_subtitulada) IN (1, 0)),
    duracion INT NOT NULL,
    año_produccion INT NOT NULL,
    resumen VARCHAR(500) NOT NULL,
    id_productora_pelicula NUMBER NOT NULL,
    CONSTRAINT pk_id_productora_pelicula FOREIGN KEY(id_productora_pelicula) REFERENCES CASA_PRODUCTORA(id_productora)
)TABLESPACE PRACTICA1;

CREATE TABLE PELICULA_GENERO(
    id_pelicula_fk NUMBER NOT NULL,
    id_genero_fk NUMBER NOT NULL,
    PRIMARY KEY(id_pelicula_fk, id_genero_fk),
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula_fk) REFERENCES PELICULA(id_pelicula),
    CONSTRAINT fk_id_genero FOREIGN KEY(id_genero_fk) REFERENCES GENERO(id_genero)
)TABLESPACE PRACTICA1;

CREATE TABLE CARTELERA(
    id_cartelera NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    hora_inicio TIMESTAMP NOT NULL,
    hora_fin TIMESTAMP NOT NULL,
    fecha DATE NOT NULL,
    num_sala_cartelera NUMBER NOT NULL,
    id_pelicula_cartelera NUMBER NOT NULL,
    CONSTRAINT fk_num_sala_cartelera FOREIGN KEY(num_sala_cartelera) REFERENCES SALA(num_sala),
    CONSTRAINT fk_id_pelicula_cartelera FOREIGN KEY(id_pelicula_cartelera) REFERENCES PELICULA(id_pelicula)
)TABLESPACE PRACTICA1;

CREATE TABLE PAIS(
    id_pais NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    nombre_pais VARCHAR(50) NOT NULL
)TABLESPACE PRACTICA1;

CREATE TABLE ROL(
    id_rol NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL
)TABLESPACE PRACTICA1;

CREATE TABLE PERSONA(
    id_persona NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    nombre_persona VARCHAR(100) NOT NULL,
    id_pais_persona NUMBER NOT NULL,
    CONSTRAINT fk_id_pais_persona FOREIGN KEY(id_pais_persona) REFERENCES PAIS(id_pais)
)TABLESPACE PRACTICA1;

CREATE TABLE PELICULA_PERSONA(
    id_rol_fk NUMBER NOT NULL,
    id_persona_fk NUMBER NOT NULL,
    id_pelicula_fk NUMBER NOT NULL,
    PRIMARY KEY(id_rol_fk, id_persona_fk, id_pelicula_fk),
    CONSTRAINT fk_id_rol FOREIGN KEY (id_rol_fk) REFERENCES ROL(id_rol),
    CONSTRAINT fk_id_persona FOREIGN KEY(id_persona_fk) REFERENCES PERSONA(id_persona),
    CONSTRAINT fk_id_pelicula_persona FOREIGN KEY(id_pelicula_fk) REFERENCES PELICULA(id_pelicula)
)TABLESPACE PRACTICA1;

--ELIMINAR TABLAS---------------------------------------------------------------------------------------------------------------

DROP TABLE PELICULA_PERSONA;
DROP TABLE PERSONA;
DROP TABLE ROL;
DROP TABLE PAIS;
DROP TABLE CARTELERA;
DROP TABLE PELICULA_GENERO;
DROP TABLE PELICULA;
DROP TABLE GENERO;
DROP TABLE CASA_PRODUCTORA;
DROP TABLE SALA;
