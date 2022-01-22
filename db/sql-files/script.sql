DROP DATABASE ucp_especializacion;

CREATE DATABASE ucp_especializacion
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

\c ucp_especializacion

CREATE SCHEMA adm
    AUTHORIZATION postgres;

CREATE TABLE adm.tbl_people
(
    id character varying COLLATE pg_catalog."default" NOT NULL,
    name character varying COLLATE pg_catalog."default",
    apppassword character varying COLLATE pg_catalog."default",
    CONSTRAINT key_people_id PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE adm.tbl_people
    OWNER to postgres;

INSERT INTO adm.tbl_people (id, name, apppassword) VALUES('1', '1', '1');