--================================ENTRAMOS A RMAN============================
rman

--==========ENTRAMOS CON EL USUARIO DE LA ASE DE DATOS=======================
connect target role_all/bases2

--===========================VERIFICAMOSLOS ESQUEMAS=========================
report schema;
--NOS MOSTRARÁ UNA SALIDA IGUAL A LA SIGUIENTE
/*
se utiliza el archivo de control de la base de datos destino en lugar del catßlogo de recuperaci¾n
Informe de esquema de la base de datos con db_unique_name XE

Lista Archivos de Datos Permanentes
===========================
Tama±o del archivo (MB)    Tablespace           RB Nombre de archivo de datos segs
---- -------- -------------------- ------- ------------------------
1    850      SYSTEM               ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF
3    890      SYSAUX               ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\SYSAUX01.DBF
4    65       UNDOTBS1             ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\UNDOTBS01.DBF
5    250      PDB$SEED:SYSTEM      ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\SYSTEM01.DBF
6    360      PDB$SEED:SYSAUX      ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\SYSAUX01.DBF
7    5        USERS                ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF
8    100      PDB$SEED:UNDOTBS1    ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\UNDOTBS01.DBF
9    270      XEPDB1:SYSTEM        ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\SYSTEM01.DBF
10   640      XEPDB1:SYSAUX        ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\SYSAUX01.DBF
11   100      XEPDB1:UNDOTBS1      ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\UNDOTBS01.DBF
12   5        XEPDB1:USERS         ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\USERS01.DBF
15   200      XEPDB1:PRACTICA1     ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\DATAFILE-PRACTICA1.DBF

Lista Archivos Temporales
=======================
Tama±o del Archivo (MB) Tablespace           Tama±o Mßximo (MB) Nombre de Archivo Temporal
---- -------- -------------------- ----------- --------------------
1    33       TEMP                 32767       D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\TEMP01.DBF
2    62       PDB$SEED:TEMP        32767       D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\TEMP012020-08-28_16-17-07-376-PM.DBF
3    62       XEPDB1:TEMP          32767       D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\TEMP01.DBF

OBSERVAMOS DETENIDAMENTE LA PRIMERA COLUMNA QUE IDENTIFICA AL DATAFILE
EN ESTE CASO NOS FIJAMOS EN EL QUE DICE PRACTICA1
QUE TIENE ID 15 Y VEMOS QUE EL TAMAÑO ESS DE 200MB
*/
--====================SALIMOS DE RMAN========================================
exit

--==VAMOS A LA RUTA DONDE SE ENCUENTRAN NUESTROS DATAFILES========
--==EN MI CASO D:\app\erick\product\18.0.0\oradata\XE

--====SIMULAMOS PERDIDA DE DATAFILES BORRANDO MANUALMENTE====================

--================================ENTRAMOS A RMAN============================
rman

--==========ENTRAMOS CON EL USUARIO DE LA ASE DE DATOS=======================
connect target role_all/bases2

--===========================VERIFICAMOSLOS ESQUEMAS=========================
report schema;
--NOS MOSTRARÁ UNA SALIDA IGUAL A LA SIGUIENTE
/*
se utiliza el archivo de control de la base de datos destino en lugar del catßlogo de recuperaci¾n
Informe de esquema de la base de datos con db_unique_name XE

Lista Archivos de Datos Permanentes
===========================
Tama±o del archivo (MB)    Tablespace           RB Nombre de archivo de datos segs
---- -------- -------------------- ------- ------------------------
1    850      SYSTEM               ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF
3    890      SYSAUX               ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\SYSAUX01.DBF
4    65       UNDOTBS1             ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\UNDOTBS01.DBF
5    250      PDB$SEED:SYSTEM      ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\SYSTEM01.DBF
6    360      PDB$SEED:SYSAUX      ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\SYSAUX01.DBF
7    5        USERS                ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF
8    100      PDB$SEED:UNDOTBS1    ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\UNDOTBS01.DBF
9    270      XEPDB1:SYSTEM        ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\SYSTEM01.DBF
10   640      XEPDB1:SYSAUX        ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\SYSAUX01.DBF
11   100      XEPDB1:UNDOTBS1      ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\UNDOTBS01.DBF
12   5        XEPDB1:USERS         ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\USERS01.DBF
15   0        XEPDB1:PRACTICA1     ***     D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\DATAFILE-PRACTICA1.DBF

Lista Archivos Temporales
=======================
Tama±o del Archivo (MB) Tablespace           Tama±o Mßximo (MB) Nombre de Archivo Temporal
---- -------- -------------------- ----------- --------------------
1    33       TEMP                 32767       D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\TEMP01.DBF
2    62       PDB$SEED:TEMP        32767       D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\TEMP012020-08-28_16-17-07-376-PM.DBF
3    62       XEPDB1:TEMP          32767       D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\TEMP01.DBF


NOS DAMOS CUENTA QUE NUESTRO DATAFILE DE ID 15 YA NO TIENE NINGUN TAMAÑO, ESTO QUIERE DECIR QUE YA SE HA PERDIDO EL MISMO
POR LO QUE PROCEDEMOS A REALIZAR LA RECUPERACIÓN DE LA BASE DE DATOS
ESTO ES VALIDO PARA LA CANTIDAD DE DATAFILES QUE SE HAYAN PERDIDO
*/

--===================VERIFICAMOS NUESTRO BACKUP===============================
list backup;

/*
	NOS MOSTRARÁ EL NOMBRE DE LA PARTE DEL BACKUP Y SU CONTENIDO, ASI COMO LA CARPETA EN LA QUE SE ENCUENTRA
*/

--===================PROCEDEMOS A RESTAURAR LOS DATAFILES PERDIDOS========================
--===================EN ESTE CASO ES EL DBF DE LA PRACTICA 1 CON ID 15====================
restore datafile 15;

--===================PROCEDEMOS A RECUPERAR EL ARCHIVO FISICO DEL DBF=====================
recover datafile 15;

--======VERIFICAMOS EN NUESTRA CARPETA DONDE SE ENCUENTRAN LOS DATAFILES SI SE RECUPERO EL ARCHIVO==============
--======VEMOS QUE EL ARCHIVO DEL DATAFILE SE HA RECUPERADO CON LA HORA Y FECHA DEL MOMENTO DE RECUPERACION======

--===================ABRIMOS LA BASE DE DATOS=====================================
alter database open;

--===================ENTRAMOS A SQLDEVELOPER Y REALIZAMOS LA SSIGUIENTE CONSULTA=================
SELECT tablespace_name, status FROM DBA_TABLESPACES; 

/*
SYSTEM		ONLINE
SYSAUX		ONLINE
UNDOTBS1	ONLINE
TEMP		ONLINE
USERS		ONLINE
PRACTICA1	ONLINE
*/




























