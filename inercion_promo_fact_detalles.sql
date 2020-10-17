--==============================================================================================================================
--=============================================INSERCION DE LAS PROMOCIONES=====================================================
--==============================================================================================================================
--0=normal, 1=descuento, 2=promocion
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio normal','01-01-2000','01-01-2021',0,0,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio 2x1 del 25-05 al 06-06','25-05-2020','06-06-2020',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio 2x1 del 03-07 al 20-07','03-07-2020','20-07-2020',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio 2x1 del 25-05 al 06-06','25-05-2020','06-06-2020',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio 2x1 del 10-08 al 30-08','10-08-2020','30-08-2020',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio 2x1 del 15-09 al 20-09','15-09-2020','20-09-2020',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promomocion 3x1 del 05-10 al 10-10','05-10-2020','10-10-2020',2,0.6666,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuento del 25% al pagar con club BI del 15-10 al 20-10','15-10-2020','20-10-2020',1,0.25,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuento del 40% al presentar club Cinepolis del 15-10 al 20-10','15-10-2020','20-10-2020',1,0.4,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('75% de descuento al presentar DPI del 25-10 al 30-10','25-10-2020','30-10-2020',1,0.75,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promo U 50% de descuento al presentar Carnet Universitario vigente','01-11-2020','31-12-2020',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuento friends, 35% al presentar tarjeta Cinepolis del 04-05 al 24-05','04-05-2020','24-05-2020',1,0.35,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 75% MENOS EL 02-10-2020','02-10-2020','02-10-2020',2,0.75,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 65% MENOS EL 03-10-2020','03-10-2020','03-10-2020',2,0.65,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 55% MENOS EL 04-10-2020','04-10-2020','04-10-2020',2,0.55,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 45% MENOS EL 05-10-2020','05-10-2020','05-10-2020',2,0.45,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 35% MENOS EL 06-10-2020','06-10-2020','06-10-2020',2,0.35,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 25% MENOS EL 07-10-2020','07-10-2020','07-10-2020',2,0.25,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 15% MENOS EL 08-10-2020','08-10-2020','08-10-2020',2,0.15,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuentos del Terror, 25% en cartelera todo octubre','01-10-2020','31-10-2020',1,0.25,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuentos del Terror, 35% en cartelera al mostrar club BI','01-10-2020','31-10-2020',1,0.35,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuentos del Terror, 45% en cartelera al mostar club BI','01-10-2020','31-10-2020',1,0.45,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promocion Navide�a, 2x1','01-12-2020','31-12-2020',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promocion Navide�a, 50% al presentar club BI','01-12-2020','31-12-2020',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promo Navidad premium, 75% al presentar club Cinepolis','01-12-2020','31-12-2020',2,0.75,1);
COMMIT;

/*


update promocion set fecha_inicio = to_char(fecha_inicio,'dd') || '-' || to_char(fecha_inicio,'mm') || '-' || (to_char(fecha_inicio,'yyyy') + 2000 )
where to_char(fecha_inicio,'yyyy') < 1000 ;

update promocion set fecha_fin = to_char(fecha_fin,'dd') || '-' || to_char(fecha_fin,'mm') || '-' || (to_char(fecha_fin,'yyyy') + 2000 )
where to_char(fecha_fin,'yyyy') < 1000 ;



*/


--==============================================================================================================================
--=============================================INSERCION DE LAS FACTURAS========================================================
--==============================================================================================================================

INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,111111);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,112233);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,111222);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,121212);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,212121);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,222333);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,333222);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,111333);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,333111);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,141414);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,414141);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,111444);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,444111);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,111555);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,515151);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,151515);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,111666);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,666111);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,161616);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,616161);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,111777);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,777111);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,171717);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,717171);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,111888);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,888111);
COMMIT;


--==============================================================================================================================
--=============================================INSERCION DE LOS DETALLES========================================================
--==============================================================================================================================
EXEC USER_ALL.INS_DETALLEFACTURA(1,1,1,4,45);
EXEC USER_ALL.INS_DETALLEFACTURA(2,2,2083,2,45);
EXEC USER_ALL.INS_DETALLEFACTURA(3,3,72,4,50);
EXEC USER_ALL.INS_DETALLEFACTURA(4,4,2594,6,45);
EXEC USER_ALL.INS_DETALLEFACTURA(5,5,108,2,45);
EXEC USER_ALL.INS_DETALLEFACTURA(6,6,1654,3,45);
EXEC USER_ALL.INS_DETALLEFACTURA(7,7,869,4,45);
EXEC USER_ALL.INS_DETALLEFACTURA(8,8,237,1,65);
EXEC USER_ALL.INS_DETALLEFACTURA(9,9,2219,3,50);
EXEC USER_ALL.INS_DETALLEFACTURA(10,10,340,4,45);
EXEC USER_ALL.INS_DETALLEFACTURA(11,11,549,4,60);
EXEC USER_ALL.INS_DETALLEFACTURA(12,12,1821,2,45);
EXEC USER_ALL.INS_DETALLEFACTURA(13,13,923,4,50);
EXEC USER_ALL.INS_DETALLEFACTURA(14,14,1838,5,45);
EXEC USER_ALL.INS_DETALLEFACTURA(15,15,1362,6,45);
EXEC USER_ALL.INS_DETALLEFACTURA(16,16,281,3,50);
EXEC USER_ALL.INS_DETALLEFACTURA(17,17,2037,4,45);
EXEC USER_ALL.INS_DETALLEFACTURA(18,18,785,1,65);
EXEC USER_ALL.INS_DETALLEFACTURA(19,19,1862,3,50);
EXEC USER_ALL.INS_DETALLEFACTURA(20,20,899,4,60);
EXEC USER_ALL.INS_DETALLEFACTURA(21,21,1388,4,60);
EXEC USER_ALL.INS_DETALLEFACTURA(22,22,884,2,45);
EXEC USER_ALL.INS_DETALLEFACTURA(23,23,1028,4,75);
EXEC USER_ALL.INS_DETALLEFACTURA(24,24,634,5,45);
EXEC USER_ALL.INS_DETALLEFACTURA(25,25,1803,6,45);
EXEC USER_ALL.INS_DETALLEFACTURA(26,25,1589,3,50);

COMMIT;
--EXEC USER_ALL.INS_DETALLEFACTURA(1,2,1660,5,35);
--EXEC USER_ALL.INS_DETALLEFACTURA(1,2,1493,3,50);

SELECT * FROM USER_ALL.CARTELERA;

SELECT * FROM USER_ALL.PROMOCION;

SELECT * FROM USER_ALL.SALA;

--CONSULTAS DE AYUDA
/*
select * from USER_ALL.PROMOCION;
select USER_ALL.CARTELERA.FECHA from USER_ALL.CARTELERA
GROUP BY USER_ALL.CARTELERA.FECHA
ORDER BY USER_ALL.CARTELERA.FECHA ASC
;
SELECT * FROM USER_ALL.CARTELERA;
SELECT * FROM USER_ALL.FACTURA;
DELETE FROM USER_ALL.DETALLE_FACTURA;
UPDATE USER_ALL.PROMOCION SET USER_ALL.PROMOCION.FECHA_INICIO='04-05-20', USER_ALL.PROMOCION.FECHA_FIN='24-05-20' WHERE USER_ALL.PROMOCION.ID_PROMOCION=30*/


---INSERCIONES PRACTICA 3-------------------------------------------------------------------------------------------------------
INSERT INTO USER_ALL.DIA_FESTIVO(nombre_dia_festivo, fecha_dia_festivo) VALUES('Año Nuevo', '01-01-2000');
INSERT INTO USER_ALL.DIA_FESTIVO(nombre_dia_festivo, fecha_dia_festivo) VALUES('Día del Trabajo', '01-05-2000');
INSERT INTO USER_ALL.DIA_FESTIVO(nombre_dia_festivo, fecha_dia_festivo) VALUES('Día del Ejército', '30-06-2000');
INSERT INTO USER_ALL.DIA_FESTIVO(nombre_dia_festivo, fecha_dia_festivo) VALUES('Fiesta de la Asunción', '15-08-2000');
INSERT INTO USER_ALL.DIA_FESTIVO(nombre_dia_festivo, fecha_dia_festivo) VALUES('Día de la Independencia de Guatemala', '15-09-2000');
INSERT INTO USER_ALL.DIA_FESTIVO(nombre_dia_festivo, fecha_dia_festivo) VALUES('Dia de la Revolución', '20-10-2000');
INSERT INTO USER_ALL.DIA_FESTIVO(nombre_dia_festivo, fecha_dia_festivo) VALUES('Día de Todos Los Santos', '01-11-2000');
INSERT INTO USER_ALL.DIA_FESTIVO(nombre_dia_festivo, fecha_dia_festivo) VALUES('Navidad', '25-12-2000');



INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Juan Perez', 'M', '01-01-1990', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Maria Lopez', 'F', '01-02-1991', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Luis Cruz', 'M', '01-03-1992', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Sofia Paz', 'F', '01-04-1993', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Pablo Martinez', 'M', '01-05-1994', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Angela Cordon', 'F', '01-06-1995', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Carlos Monzon', 'M', '01-07-1996', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Sara Aldana', 'F', '01-08-1997', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Julio Mendez', 'M', '01-09-1998', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Lucrecia Soto', 'F', '01-10-1999', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Mateo Flores', 'M', '01-11-2000', '12345678');
INSERT INTO USER_ALL.EMPLEADO(nombre_empleado, sexo_empleado, fecha_nacimiento, telefono_empleado) VALUES('Adriana Sanchez', 'F', '01-12-2001', '12345678');


EXEC USER_ALL.INS_CARTELERA(1,1, TO_TIMESTAMP('01-01-00 7:00:00 AM'), TO_TIMESTAMP('01-01-00 10:17:00 AM'), '12-10-2020');
EXEC USER_ALL.INS_CARTELERA(1,1, TO_TIMESTAMP('01-01-00 11:00:00 AM'), TO_TIMESTAMP('01-01-00 02:17:00 PM'), '13-10-2020');
EXEC USER_ALL.INS_CARTELERA(1,1, TO_TIMESTAMP('01-01-00 8:00:00 AM'), TO_TIMESTAMP('01-01-00 11:17:00 AM'), '14-10-2020');
EXEC USER_ALL.INS_CARTELERA(1,1, TO_TIMESTAMP('01-01-00 7:00:00 AM'), TO_TIMESTAMP('01-01-00 10:17:00 AM'), '15-10-2020');


INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,160845);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,548061);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,123456);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,789012);
INSERT INTO USER_ALL.FACTURA (nit_emisor, nit_cliente) values (123456,345678);


EXEC USER_ALL.INS_DETALLEFACTURA(41,22,2681,5,55);
EXEC USER_ALL.INS_DETALLEFACTURA(42,22,2682,5,55);
EXEC USER_ALL.INS_DETALLEFACTURA(43,22,2683,5,55);
EXEC USER_ALL.INS_DETALLEFACTURA(44,22,2684,5,55);
EXEC USER_ALL.INS_DETALLEFACTURA(45,22,2684,5,55);


COMMIT;

SELECT * FROM PELICULA;
SELECT * FROM CARTELERA WHERE fecha BETWEEN '12-10-2020' AND '15-10-2020' AND ID_PELICULA_CARTELERA = 1 AND NUM_SALA_CARTELERA = 1 ORDER BY fecha;
SELECT * FROM FACTURA;
SELECT * FROM PROMOCION;
SELECT * FROM DETALLE_FACTURA;
