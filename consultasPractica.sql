--====================================================
--===================CONSULTA 1=======================
--====================================================
select distinct nombre_pelicula,sala,dia,inicio,fin,persona,personaje
from (select distinct PELICULA.NOMBRE_PELICULA as nombre_pelicula, SALA.NUM_SALA as sala, 
(select to_char(CARTELERA.FECHA, 'DAY', 'NLS_DATE_LANGUAGE=SPANISH')from dual) as DIA, 
(select TO_CHAR(CARTELERA.HORA_INICIO,'HH24:MI') from dual) AS Inicio,
(select TO_CHAR(CARTELERA.HORA_FIN,'HH24:MI') from dual) AS FIN,
PERSONA.NOMBRE_PERSONA as persona, PELICULA_PERSONA.NOMBRE_PERSONAJE as personaje
from USER_ALL.PELICULA, USER_ALL.SALA, USER_ALL.CARTELERA, USER_ALL.PERSONA, USER_ALL.PELICULA_PERSONA, USER_ALL.ROL
where PELICULA.ID_PELICULA=CARTELERA.ID_PELICULA_CARTELERA and
SALA.NUM_SALA=CARTELERA.NUM_SALA_CARTELERA and
PELICULA_PERSONA.ID_PELICULA_FK = PELICULA.ID_PELICULA and
PELICULA_PERSONA.ID_PERSONA_FK = PERSONA.ID_PERSONA and
CARTELERA.FECHA>=TO_DATE('01-03-2020','dd-mm-yyyy') and
CARTELERA.FECHA<=TO_DATE('03-03-2020','dd-mm-yyyy') and
PELICULA_PERSONA.ID_ROL_FK=1
) t1
group by nombre_pelicula,sala,dia,inicio,fin,persona,personaje
order by nombre_pelicula asc
;

select * from USER_ALL.cartelera;

/*
-----------OBTIENE EL DIA DE LA SEMANA DE UNA FECHA------------
select to_char(sysdate, 'DAY', 'NLS_DATE_LANGUAGE=SPANISH')
from dual;
*/

--====================================================
--===================CONSULTA 2=======================
--====================================================
select distinct PELICULA.NOMBRE_PELICULA, CARTELERA.FECHA
from USER_ALL.PELICULA, USER_ALL.CARTELERA
where CARTELERA.ID_PELICULA_CARTELERA=PELICULA.ID_PELICULA and
CARTELERA.FECHA>=TO_DATE('01-03-2020','dd-mm-yyyy') and
CARTELERA.FECHA<=TO_DATE('04-03-2020','dd-mm-yyyy')
group by PELICULA.NOMBRE_PELICULA, CARTELERA.FECHA
order by CARTELERA.FECHA asc
;

--====================================================
--===================CONSULTA 3=======================
--====================================================
select distinct PERSONA.NOMBRE_PERSONA, ROL.NOMBRE_ROL AS ROL, CARTELERA.FECHA, PELICULA.NOMBRE_PELICULA 
from USER_ALL.PERSONA, USER_ALL.PELICULA_PERSONA, USER_ALL.ROL, USER_ALL.PELICULA, USER_ALL.CARTELERA
where PERSONA.ID_PERSONA=PELICULA_PERSONA.ID_PERSONA_FK and
ROL.ID_ROL=PELICULA_PERSONA.ID_ROL_FK and
PELICULA.ID_PELICULA=PELICULA_PERSONA.ID_PELICULA_FK and
PELICULA.ID_PELICULA=CARTELERA.ID_PELICULA_CARTELERA and
CARTELERA.FECHA>=TO_DATE('01-03-2020','dd-mm-yyyy') and
CARTELERA.FECHA<=TO_DATE('08-03-2020','dd-mm-yyyy') and
PERSONA.NOMBRE_PERSONA='Robert Downey Jr.'
group by PERSONA.NOMBRE_PERSONA, ROL.NOMBRE_ROL, CARTELERA.FECHA, PELICULA.NOMBRE_PELICULA
order by CARTELERA.FECHA ASC
;



/*==============================================================

		Consulta practica 2

i. Nombre de la película                     
ii. Clasificación                            
iii. Casa productora                         
iv. Función (día, hora de la función)      --  
v. Sala 									 
vi. Capacidad de la sala                     
vii. Cantidad de boletos vendidos
viii. cantidad de promociones aplicadas


==============================================================*/

SELECT 
nombre_pelicula, 
CLASIFICACION,
nombre_genero,
NOMBRE_PRODUCTORA,
fecha || ' ' || to_char(hora_inicio, 'hh:mm') fecha_hora , 
sala.num_sala Sala, 
sala.capacidad,      
det_fac.num_entradas,
PROMO.DESCRIPCION
FROM USER_ALL.CARTELERA CART
, USER_ALL.SALA SALA, 
( 
  select peli.id_pelicula,peli.clasificacion, peli.nombre_pelicula, gen.nombre_genero, CASA_P.NOMBRE_PRODUCTORA from (
    select id_pelicula_fk, min(id_genero_fk) as gen from USER_ALL.pelicula_genero group by id_pelicula_fk
  ) gen_peli ,
  USER_ALL.GENERO GEN, USER_ALL.PELICULA PELI, USER_ALL.CASA_PRODUCTORA CASA_P
  WHERE GEN_PELI.GEN = GEN.ID_GENERO AND GEN_PELI.ID_PELICULA_FK = PELI.ID_PELICULA AND CASA_P.ID_PRODUCTORA = PELI.ID_PRODUCTORA_PELICULA
) GEN_PELI,
user_all.detalle_factura det_fac, USER_ALL.PROMOCION PROMO

WHERE SALA.NUM_SALA = CART.NUM_SALA_CARTELERA AND GEN_PELI.id_pelicula = cart.id_pelicula_cartelera
and det_fac.id_cartelera = CART.ID_CARTELERA AND PROMO.ID_PROMOCION = DET_FAC.ID_PROMOCION;



