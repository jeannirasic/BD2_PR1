--====================ENTRAMOS A SQLPLUS EN CONSOLA===================
sqlplus role_all/bases2 as sysdba

--====================VERIFICAMOS QUE DB ESTA ACTIVA==================
select value from v$system_parameter where name='db_name';
/*
VALUE                                                                                                                    
--------------------------------------------------------------------------------                                         
XE 
*/

--===============VERIFICAMOS EL ESTADO DEL ARCHIVE LOG================
archive log list;
/*
Modo log de la base de datos              Modo de No Archivado                                                           
Archivado automßtico             		  Desactivado                                                                             
Destino del archivo            			  D:\app\erick\product\18.0.0\dbhomeXE\RDBMS                                                
Secuencia de log en lÝnea mßs antigua     79                                                                             
Secuencia de log actual           		  81

====SI ESTA EN MODO NO ARCHIVADO Y ARCHIVADO AUTOMATICO ESTA DESACTIVADO====
====SE DEBE REALIZAR LOS SIGUIENTES PASOS 
*/

--==============VERIFICAMOS EL LOG_MODE==========================
select name, log_mode from v$database; 
/*
NAME      LOG_MODE
--------- ------------
XE        NOARCHIVELOG

COMO EL LOG_MODE ESTA EN NOARCHIVELOG, DEBEMOS PONERLO EN ARCHIVELOG
*/

--===============PROCEDEMOS A APAGAR LA BASE DE DATOS======================
shutdown immediate;
/*
Base de datos cerrada.                                                                                                   
Base de datos desmontada.                                                                                                
Instancia ORACLE cerrada.
*/

--===============MONTAMOS DE NUEVO LA BASE DE DATOS=========================
startup mount; 
/*
Instancia ORACLE iniciada.                                                                                                                                                                                                                        
Total System Global Area 1610609384 bytes                                                                                
Fixed Size                  9028328 bytes                                                                                
Variable Size             520093696 bytes                                                                                
Database Buffers         1073741824 bytes                                                                                
Redo Buffers                7745536 bytes                                                                                
Base de datos montada.
*/

--===============MODIFICAMOS EL ARCHIVELOG==================================
alter database archivelog;
/*
Base de datos modificada.
*/

--===============ABRIMOS LA BASE DE DATOS===================================
alter database open;
/*
Base de datos modificada.
*/

--===============VERIFICAMOS EL PARAMETRO DEL ARCHIVELOG====================
show parameter log_archive_start;
/*
NAME                                 TYPE        VALUE
------------------------------------ ----------- ------------------------------
log_archive_start                    boolean     FALSE

SI SE ENCUENTRA EL VALOR EN FALSE, DEBEMOS PONERLO EN TRUE
*/

--===============MODIFICAMOS EL VALOR DEL ARCHIVELOG========================
alter system set log_archive_start=true scope=spfile;
/*
Sistema modificado.
*/

--===============PROCEDEMOS A APAGAR LA BASE DE DATOS======================
shutdown immediate;
/*
Base de datos cerrada.                                                                                                   
Base de datos desmontada.                                                                                                
Instancia ORACLE cerrada.
*/

--===============MONTAMOS DE NUEVO LA BASE DE DATOS=========================
startup mount; 
/*
ORA-32004: obsolete or deprecated parameter(s) specified for RDBMS instance                                              
Instancia ORACLE iniciada.                                                                                                                                                                                                                        
Total System Global Area 1610609384 bytes                                                                                
Fixed Size                  9028328 bytes                                                                                
Variable Size             520093696 bytes                                                                                
Database Buffers         1073741824 bytes                                                                                
Redo Buffers                7745536 bytes                                                                                
Base de datos montada. 
*/

--==============VERIFICAMOS EL LOG_MODE==========================
select name, log_mode from v$database; 
/*
NAME      LOG_MODE
--------- ------------
XE        ARCHIVELOG

COMO EL LOG_MODE SE ENCUENTRA EN ARCHIVELOG, QUIERE DECIR QUE YA SE ENCUENTRA LISTA LA BD
*/

--==============VEMOS LOS NUESTROS DATAFILES=====================
select name from v$datafile;
/*
NAME                                                                                                                     
--------------------------------------------------------------------------------                                         
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\SYSTEM01.DBF                                                                      
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\SYSAUX01.DBF                                                                      
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\UNDOTBS01.DBF                                                                     
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\SYSTEM01.DBF                                                              
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\SYSAUX01.DBF                                                              
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF                                                                       
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\PDBSEED\UNDOTBS01.DBF                                                             
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\SYSTEM01.DBF                                                               
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\SYSAUX01.DBF                                                               
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\UNDOTBS01.DBF                                                              
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\USERS01.DBF         
                                                                                                                                                                                
NAME                                                                                                                     
--------------------------------------------------------------------------------                                         
D:\APP\ERICK\PRODUCT\18.0.0\ORADATA\XE\XEPDB1\DATAFILE-PRACTICA1.DBF                                                                                                                                                                              
12 filas seleccionadas.
*/

--======================SALIMOS DE SQLPLUS===================================
exit;

--===========================ENTRAMOS A RMAN=================================
rman

--===========================ENTRAMOS CON NUESTRO USUARIO====================
connect target role_all/bases2

--==============CORREMOS EL SIGUIENTE SCRIPT PARA CREAR EL BACKUP============
             --==============COPIAR LINEA POR LINEA===================
	   --YA DEBE ESTAR CREADA LA CARPETA DONDE SE ALMACENARA EL BACKUP
run {
allocate channel C1 device type DISK format 'D:\backuporacle\_%d_%u_%t.bak';
backup database tag='full_backup' include current controlfile plus archivelog delete all input;
}
/*
VERIFICAMOS QUE NUESTRO BACKUP SE HAYA CREADO EN LA CARPETA QUE INGRESAMOS
*/

--========================Se hace proceso similar=====================

--=====================PARA ACUMULATIVOS================
--====================level 0===========================
run {
allocate channel C1 device type DISK format 'D:\backuporacle\acumulativo\_%d_%u_%t.bak';
backup incremental level 0 cumulative database tag='level0';
}

--====================level 1 el que almacena los ultimos objetos===========================
run {
allocate channel C1 device type DISK format 'D:\backuporacle\acumulativo\_%d_%u_%t.bak';
backup incremental level 0 cumulative database tag='final';
}










