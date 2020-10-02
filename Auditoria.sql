
--- VALIDAR LA AUDITORIA UNIFICADA------------------
select value from v$option where parameter = 'Unified Auditing'
---FALSE --- AUDITORIA MIXTA 
---TRUE --- AUDITORIA PURA
 
--- AUDITORIA STANDARD COMO ESTA CONFIGURADO 
select name , value from v$parameter where name like 'audit_trail';


--- TAMAÑO DE LA COLA PARA LA AUDITORIA UNIFICADA
select name , value from v$parameter where name like 'unified_audit_sga_queue_size' 

alter session set "_ORACLE_SCRIPT"=true;


--- acciones auditables disponibles 
select * from SYS.AUDITABLE_SYSTEM_ACTIONS
WHERE NAME LIKE 'CREATE%'


  -- politicas disponibles 
 select distinct policy_name --*
 from audit_unified_policies
 
 where policy_name = 'ORA_SECURECONFIG'
 
  WHERE AUDIT_OPTION LIKE '%UPDATE%'
 AND OBJECT_TYPE = 'TABLE'
 

  --- politicas habilitadas 
 SELECT * 
 FROM AUDIT_UNIFIED_ENABLED_POLICIES
 
 
  select *
 from audit_unified_policies
where policy_name = 'ORA_SECURECONFIG'  --- UNA POLITICA
 
 
  --- tipo de auditoria configurada 
 -- false mixta 
 -- true  pura
 
 --- VISTA DE AUDITORIAA UNIFICADA 
 select *
  from UNIFIED_AUDIT_TRAIL
  
  
--==============================================================================================================================
/*
                        Tener una política de auditoria para el logueo de los usuarios. —Deben registrarse pruebas
                        de logueo con error.
*/
--==============================================================================================================================

CREATE AUDIT POLICY mi_log_fail 
        ACTIONS LOGON;


AUDIT POLICY mi_log_fail WHENEVER NOT SUCCESSFUL;

NOAUDIT POLICY ORA_LOGON_FAILURES;

SELECT audit_option,
       condition_eval_opt,
       audit_condition
FROM   audit_unified_policies
WHERE  policy_name = 'MI?LOGIN_FAIL';



 EXEC DBMS_AUDIT_MGMT.flush_unified_audit_trail;

SELECT to_char( event_timestamp, 'dd/mm/yyyy hh24:mi:ss'),
      event_timestamp,
       dbusername,
       action_name,
       object_schema,
       object_name , SQL_TEXT
FROM   unified_audit_trail
WHERE UNIFIED_AUDIT_POLICIES LIKE '%MI_LOG_FAIL%'
ORDER BY event_timestamp;


NOAUDIT POLICY mi_log_fail;

DROP AUDIT POLICY mi_log_fail;
  
--==============================================================================================================================
/*
                        Tener una política de auditoria para el logueo de los usuarios. —Deben registrarse pruebas
                        de logueo exitoso.
*/
--==============================================================================================================================

CREATE AUDIT POLICY login_policy
  PRIVILEGES CREATE SESSION; 
  
  

AUDIT POLICY login_policy;


SELECT audit_option,
       condition_eval_opt,
       audit_condition
FROM   audit_unified_policies
WHERE  policy_name = 'LOGIN_POLICY';



 EXEC DBMS_AUDIT_MGMT.flush_unified_audit_trail;



SELECT to_char( event_timestamp, 'dd/mm/yyyy hh24:mi:ss'),
      event_timestamp,
       dbusername,
       action_name,
       object_schema,
       object_name , SQL_TEXT
FROM   unified_audit_trail
WHERE UNIFIED_AUDIT_POLICIES = 'LOGIN_POLICY'
ORDER BY event_timestamp;
 

NOAUDIT POLICY login_policy;



DROP AUDIT POLICY login_policy;


--==============================================================================================================================
/*
                        Se debe tener auditoria para creación de tablas, para los usuarios que tengan acceso a
                        creación de tablas (a la hora de ejecutar la creación de los nuevos objetos). SE calificará:
                            a. que se cree la política,
                            b. que deje registro y
                            c. que se deshabilite la política
*/
--==============================================================================================================================
CREATE AUDIT POLICY create_policy
    PRIVILEGES CREATE ANY TABLE
    ROLES ROLE_ALL;
  

AUDIT POLICY create_policy;


SELECT audit_option,
       condition_eval_opt,
       audit_condition
FROM   audit_unified_policies
WHERE  policy_name = 'CREATE_POLICY';



 EXEC DBMS_AUDIT_MGMT.flush_unified_audit_trail;


SELECT to_char( event_timestamp, 'dd/mm/yyyy hh24:mi:ss'),
      event_timestamp,
      UNIFIED_AUDIT_POLICIES,
       dbusername,
       action_name,
       object_schema,
       object_name , SQL_TEXT
FROM   unified_audit_trail
WHERE UNIFIED_AUDIT_POLICIES = 'CREATE_POLICY'
ORDER BY event_timestamp;
 

NOAUDIT POLICY create_policy;


DROP AUDIT POLICY create_policy;


--==============================================================================================================================
/*
                        Debe existir una política de modificación de objetos. Se validará la modificación de objetos
                        por parte de los usuarios que tengan permisos para lo mismo, cambios en la estructura de
                        los objetos. (se pedirá cambiar o agregar campos a las tablas existentes)
                        a. Solo se deberá tener activada la política para los siguientes objetos:
                        i. Sala
                        ii. película

PENDIENTE
*/
--==============================================================================================================================

CREATE AUDIT POLICY alter_policy
  ACTIONS ALTER ON USER_ALL.SALA,
          ALTER ON USER_ALL.PELICULA
  WHEN    'SYS_CONTEXT(''USERENV'', ''SESSION_USER'') IN (''USER_ALL'', ''USER_CUD'')'
  EVALUATE PER SESSION
  CONTAINER = CURRENT;
  

AUDIT POLICY alter_policy;


SELECT audit_option,
       condition_eval_opt,
       audit_condition
FROM   audit_unified_policies
WHERE  policy_name = 'ALTER_POLICY';



 EXEC DBMS_AUDIT_MGMT.flush_unified_audit_trail;


SELECT to_char( event_timestamp, 'dd/mm/yyyy hh24:mi:ss'),
      event_timestamp,
      UNIFIED_AUDIT_POLICIES,
       dbusername,
       action_name,
       object_schema,
       object_name , SQL_TEXT
FROM   unified_audit_trail
WHERE UNIFIED_AUDIT_POLICIES = 'ALTER_POLICY'
ORDER BY event_timestamp;
 

NOAUDIT POLICY alter_policy;


DROP AUDIT POLICY alter_policy;

--==============================================================================================================================
/*
                        Debe haber una política de auditoria para verificar por cada usuario que tiene acceso a
                        consulta, las consultas que han hecho.
*/
--==============================================================================================================================
CREATE AUDIT POLICY select_policy
    PRIVILEGES SELECT ANY TABLE
    ROLES ROLE_ALL, ROLE_READ_ONLY, ROLE_CUD;
  

AUDIT POLICY select_policy;


SELECT audit_option,
       condition_eval_opt,
       audit_condition
FROM   audit_unified_policies
WHERE  policy_name = 'SELECT_POLICY';



 EXEC DBMS_AUDIT_MGMT.flush_unified_audit_trail;


SELECT to_char( event_timestamp, 'dd/mm/yyyy hh24:mi:ss'),
      event_timestamp,
      UNIFIED_AUDIT_POLICIES,
       dbusername,
       action_name,
       object_schema,
       object_name , SQL_TEXT
FROM   unified_audit_trail
WHERE UNIFIED_AUDIT_POLICIES = 'SELECT_POLICY'
ORDER BY event_timestamp;
 

NOAUDIT POLICY select_policy;


DROP AUDIT POLICY select_policy;


--==============================================================================================================================
/*
                        Debe haber una auditoria para la inserción de datos. Necesitamos validar cuando el
                        usuario Writer haya insertado datos en las tablas de Promociones y de venta de tickets
*/
--==============================================================================================================================
CREATE AUDIT POLICY insert_policy_writer
  ACTIONS INSERT ON USER_ALL.PROMOCION,
          INSERT ON USER_ALL.FACTURA,
          INSERT ON USER_ALL.DETALLE_FACTURA
  WHEN    'SYS_CONTEXT(''USERENV'', ''SESSION_USER'') = ''USER_CUD'''
  EVALUATE PER SESSION
  CONTAINER = CURRENT;

AUDIT POLICY insert_policy_writer;


SELECT audit_option,
       condition_eval_opt,
       audit_condition
FROM   audit_unified_policies
WHERE  policy_name = 'INSERT_POLICY_WRITER';



 EXEC DBMS_AUDIT_MGMT.flush_unified_audit_trail;


SELECT to_char( event_timestamp, 'dd/mm/yyyy hh24:mi:ss'),
      event_timestamp,
      UNIFIED_AUDIT_POLICIES,
       dbusername,
       action_name,
       object_schema,
       object_name , SQL_TEXT
FROM   unified_audit_trail
WHERE UNIFIED_AUDIT_POLICIES = 'INSERT_POLICY_WRITER'
ORDER BY event_timestamp;
 

NOAUDIT POLICY insert_policy_writer;


DROP AUDIT POLICY insert_policy_writer;

--==============================================================================================================================
/*
                        Se necesita validar cuando el usuario Owner inserte en las tablas de catálogo. Para los
                        demás que tienen acceso a inserción no se debe registrar auditoria. Se deben hacer
                        pruebas con ambos usuarios y validar que solo el usuario Owner genere registro. (insertar
                        al menos 2 registros de las tablas: películas y salas).
*/
--==============================================================================================================================
CREATE AUDIT POLICY insert_policy_owner
  ACTIONS INSERT ON USER_ALL.SALA,
          INSERT ON USER_ALL.PELICULA
  WHEN    'SYS_CONTEXT(''USERENV'', ''SESSION_USER'') = ''USER_ALL'''
  EVALUATE PER SESSION
  CONTAINER = CURRENT;

AUDIT POLICY insert_policy_owner;


SELECT audit_option,
       condition_eval_opt,
       audit_condition
FROM   audit_unified_policies
WHERE  policy_name = 'INSERT_POLICY_OWNER';



 EXEC DBMS_AUDIT_MGMT.flush_unified_audit_trail;


SELECT to_char( event_timestamp, 'dd/mm/yyyy hh24:mi:ss'),
      event_timestamp,
      UNIFIED_AUDIT_POLICIES,
       dbusername,
       action_name,
       object_schema,
       object_name , SQL_TEXT
FROM   unified_audit_trail
WHERE UNIFIED_AUDIT_POLICIES = 'INSERT_POLICY_OWNER'
ORDER BY event_timestamp;
 

NOAUDIT POLICY insert_policy_owner;


DROP AUDIT POLICY insert_policy_owner;

/*
BEGIN
 DBMS_AUDIT_MGMT.INIT_CLEANUP(
 AUDIT_TRAIL_TYPE => DBMS_AUDIT_MGMT.AUDIT_TRAIL_ALL,
 DEFAULT_CLEANUP_INTERVAL => 12 );
 END;
 /
 BEGIN
 DBMS_AUDIT_MGMT.clean_audit_trail(
 audit_trail_type => DBMS_AUDIT_MGMT.AUDIT_TRAIL_ALL,
 use_last_arch_timestamp => false);
 END;
 /
 BEGIN
 DBMS_AUDIT_MGMT.deinit_cleanup(
 audit_trail_type => DBMS_AUDIT_MGMT.AUDIT_TRAIL_ALL);
 END;
 /

*/



