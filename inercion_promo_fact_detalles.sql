--==============================================================================================================================
--=============================================INSERCION DE LAS PROMOCIONES=====================================================
--==============================================================================================================================
--0=normal, 1=descuento, 2=promocion
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio normal','01-01-00','01-01-00',0,0,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio 2x1 del 25-05 al 06-06','25-05-20','06-06-20',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio 2x1 del 03-07 al 20-07','03-07-20','20-07-20',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio 2x1 del 25-05 al 06-06','25-05-20','06-06-20',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio 2x1 del 10-08 al 30-08','10-08-20','30-08-20',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Precio 2x1 del 15-09 al 20-09','15-09-20','20-09-20',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promomocion 3x1 del 05-10 al 10-10','05-10-20','10-10-20',2,0.3333,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuento del 25% al pagar con club BI del 15-10 al 20-10','15-10-20','20-10-20',1,0.25,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuento del 40% al presentar club Cinepolis del 15-10 al 20-10','15-10-20','20-10-20',1,0.4,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('75% de descuento al presentar DPI del 25-10 al 30-10','25-10-20','30-10-20',1,0.75,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promo U 50% de descuento al presentar Carnet Universitario vigente','01-11-20','31-12-20',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuento friends, 35% al presentar tarjeta Cinepolis del 04-05 al 24-05','04-05-20','24-05-20',1,0.35,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 75% MENOS EL 02-10-2020','02-10-20','02-10-20',2,0.75,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 65% MENOS EL 03-10-2020','03-10-20','03-10-20',2,0.65,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 55% MENOS EL 04-10-2020','04-10-20','04-10-20',2,0.55,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 45% MENOS EL 05-10-2020','05-10-20','05-10-20',2,0.45,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 35% MENOS EL 06-10-2020','06-10-20','06-10-20',2,0.35,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 25% MENOS EL 07-10-2020','07-10-20','07-10-20',2,0.25,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('PROMO REAPERTURA!!!! 15% MENOS EL 08-10-2020','08-10-20','08-10-20',2,0.15,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuentos del Terror, 25% en cartelera todo octubre','01-10-20','31-10-20',1,0.25,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuentos del Terror, 35% en cartelera al mostrar club BI','01-10-20','31-10-20',1,0.35,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Descuentos del Terror, 45% en cartelera al mostar club BI','01-10-20','31-10-20',1,0.45,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promocion Navideña, 2x1','01-12-20','31-12-20',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promocion Navideña, 50% al presentar club BI','01-12-20','31-12-20',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promo Navidad premium, 75% al presentar club Cinepolis','01-12-20','31-12-20',2,0.75,1);

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


--==============================================================================================================================
--=============================================INSERCION DE LOS DETALLES========================================================
--==============================================================================================================================




--CONSULTAS DE AYUDA

select * from USER_ALL.PROMOCION;

select USER_ALL.CARTELERA.FECHA from USER_ALL.CARTELERA
GROUP BY USER_ALL.CARTELERA.FECHA
ORDER BY USER_ALL.CARTELERA.FECHA ASC
;

SELECT * FROM USER_ALL.CARTELERA;

SELECT * FROM USER_ALL.FACTURA;

DELETE FROM USER_ALL.DETALLE_FACTURA;

UPDATE USER_ALL.PROMOCION SET USER_ALL.PROMOCION.FECHA_INICIO='04-05-20', USER_ALL.PROMOCION.FECHA_FIN='24-05-20' WHERE USER_ALL.PROMOCION.ID_PROMOCION=30
