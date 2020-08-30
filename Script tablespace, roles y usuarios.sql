alter session set "_ORACLE_SCRIPT"=true;


--TODO LO RELACIONADO CON LOS TABLESPACE----------------------------------------------------------------------------------------
--Crear tablespace
CREATE TABLESPACE "PRACTICA1" LOGGING
DATAFILE '/opt/oracle/oradata/XE/data-practica1.dbf' SIZE 100M
EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;

--Obtener todos los tablespace
SELECT * FROM DBA_TABLESPACES;

--Actualizar tablespace
ALTER DATABASE 
DATAFILE '/opt/oracle/oradata/XE/data-practica1.dbf'
RESIZE 200M;

--Borrar un tablespace
DROP TABLESPACE Nombre
INCLUDING CONTENTS
CASCADE CONSTRAINTS;

--Obtener la ubicacion de los archivos del tablespace
SELECT * 
FROM DBA_DATA_FILES
ORDER BY TABLESPACE_NAME;

--Muestra el espacio libre que hay en cada tablespace
SELECT * 
FROM DBA_FREE_SPACE;


--TODO LO RELACIONADOS CON LOS ROLES--------------------------------------------------------------------------------------------
--Ver los roles existentes
SELECT * FROM DBA_ROLES;
--Ver todos los permisos existentes
SELECT * FROM SYSTEM_PRIVILEGE_MAP;

--====================================================
--===============Creo el primer rol===================
--====================================================
CREATE ROLE ROLE_ALL; --creación de objetos de bases de datos y modificación de datos
--Le doy los permisos a ese rol
GRANT CREATE SESSION TO ROLE_ALL;
GRANT ADMINISTER DATABASE TRIGGER TO ROLE_ALL;
GRANT ALTER ANY INDEX TO ROLE_ALL;
GRANT ALTER ANY PROCEDURE TO ROLE_ALL;
GRANT ALTER ANY SEQUENCE TO ROLE_ALL;
GRANT ALTER ANY TABLE TO ROLE_ALL;
GRANT ALTER ANY TRIGGER TO ROLE_ALL;
GRANT CREATE ANY INDEX TO ROLE_ALL;
GRANT CREATE ANY PROCEDURE TO ROLE_ALL;
GRANT CREATE ANY SEQUENCE TO ROLE_ALL;
GRANT CREATE ANY TABLE TO ROLE_ALL;
GRANT CREATE ANY TRIGGER TO ROLE_ALL;
GRANT CREATE ANY VIEW TO ROLE_ALL;
GRANT DELETE ANY TABLE TO ROLE_ALL;
GRANT DROP ANY INDEX TO ROLE_ALL;
GRANT DROP ANY PROCEDURE TO ROLE_ALL;
GRANT DROP ANY SEQUENCE TO ROLE_ALL;
GRANT DROP ANY TABLE TO ROLE_ALL;
GRANT DROP ANY TRIGGER TO ROLE_ALL;
GRANT DROP ANY VIEW TO ROLE_ALL;
GRANT EXECUTE ANY PROCEDURE TO ROLE_ALL;
GRANT UPDATE ANY TABLE TO ROLE_ALL;

--Ver los permisos del rol
SELECT * FROM DBA_SYS_PRIVS
WHERE GRANTEE = 'ROLE_ALL';


--====================================================
--================Creo el segundo rol=================
--====================================================
CREATE ROLE ROLE_READ_ONLY;--permiso solo de lectura 
--Le doy los permisos a ese rol
GRANT CREATE SESSION TO ROLE_READ_ONLY;
GRANT READ ANY TABLE TO ROLE_READ_ONLY;
GRANT SELECT ANY TABLE TO ROLE_READ_ONLY;
GRANT SELECT ANY TRANSACTION TO ROLE_READ_ONLY;


--Ver los permisos del rol
SELECT * FROM DBA_SYS_PRIVS
WHERE GRANTEE = 'ROLE_READ_ONLY';


--====================================================
--================Creo el tercer rol==================
--====================================================
CREATE ROLE ROLE_CUD; --permisos de inserción, eliminación y modificación de datos 
--Le doy los permisos a ese rol
GRANT CREATE SESSION TO ROLE_CUD;
GRANT ADMINISTER DATABASE TRIGGER TO ROLE_CUD;
GRANT ALTER ANY INDEX TO ROLE_CUD;
GRANT ALTER ANY PROCEDURE TO ROLE_CUD;
GRANT ALTER ANY SEQUENCE TO ROLE_CUD;
GRANT ALTER ANY TABLE TO ROLE_CUD;
GRANT ALTER ANY TRIGGER TO ROLE_CUD;
GRANT DELETE ANY TABLE TO ROLE_CUD;
GRANT DROP ANY INDEX TO ROLE_CUD;
GRANT DROP ANY PROCEDURE TO ROLE_CUD;
GRANT DROP ANY SEQUENCE TO ROLE_CUD;
GRANT DROP ANY TABLE TO ROLE_CUD;
GRANT DROP ANY TRIGGER TO ROLE_CUD;
GRANT DROP ANY VIEW TO ROLE_CUD;
GRANT EXECUTE ANY PROCEDURE TO ROLE_CUD;
GRANT INSERT ANY TABLE TO ROLE_CUD;
GRANT UPDATE ANY TABLE TO ROLE_CUD;


--Ver los permisos del rol
SELECT * FROM DBA_SYS_PRIVS
WHERE GRANTEE = 'ROLE_CUD';


--Eliminar roles creados
-- DROP ROLE ROLE_ALL;
-- DROP ROLE ROLE_READ_ONLY;
-- DROP ROLE ROLE_CUD;




--TODO LO RELACIONADO CON LOS USUARIOS-----------------------------------------------------------------------------------------
--Ver los roles a los que esta ligado cada usuario
SELECT * FROM DBA_ROLE_PRIVS;
--Ver los roles asignados al usuario logueado
SELECT * FROM SESSION_ROLES;
--Ver las tablas asociadas al usuario
SELECT * FROM USER_TABLES;

--====================================================
--=============Creo el primer usuario=================
--====================================================
CREATE USER USER_ALL IDENTIFIED BY "bases2"
DEFAULT TABLESPACE "PRACTICA1" TEMPORARY TABLESPACE "TEMP";

--Le doy espacio en el tablespace
GRANT UNLIMITED TABLESPACE TO USER_ALL;

--Le asigno el rol al primer usuario
GRANT ROLE_ALL TO USER_ALL;


--====================================================
--============Creo el segundo usuario=================
--====================================================
CREATE USER USER_READ_ONLY IDENTIFIED BY "bases2"
DEFAULT TABLESPACE "PRACTICA1" TEMPORARY TABLESPACE "TEMP";

--Le asigno el rol al segundo usuario
GRANT ROLE_READ_ONLY TO USER_READ_ONLY;

--====================================================
--=============Creo el tercer usuario=================
--====================================================
CREATE USER USER_CUD IDENTIFIED BY "bases2"
DEFAULT TABLESPACE "PRACTICA1" TEMPORARY TABLESPACE "TEMP";

--Le asigno el rol al tercer usuario
GRANT ROLE_CUD TO USER_CUD;

GRANT UNLIMITED TABLESPACE TO USER_CUD;


