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
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promocion Navideña, 2x1','01-12-2020','31-12-2020',2,0.5,1);
INSERT INTO USER_ALL.PROMOCION(descripcion, fecha_inicio, fecha_fin, tipo_promo, porcentaje, estado) values ('Promocion Navideña, 50% al presentar club BI','01-12-2020','31-12-2020',2,0.5,1);
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
EXEC USER_ALL.INS_DETALLEFACTURA(2,2,2085,2,45);
EXEC USER_ALL.INS_DETALLEFACTURA(3,3,73,4,50);
EXEC USER_ALL.INS_DETALLEFACTURA(4,4,2596,6,45);
EXEC USER_ALL.INS_DETALLEFACTURA(5,5,109,2,45);
EXEC USER_ALL.INS_DETALLEFACTURA(6,6,1656,3,45);
EXEC USER_ALL.INS_DETALLEFACTURA(7,7,870,4,45);
EXEC USER_ALL.INS_DETALLEFACTURA(8,8,238,1,65);
EXEC USER_ALL.INS_DETALLEFACTURA(9,9,2221,3,50);
EXEC USER_ALL.INS_DETALLEFACTURA(10,10,341,4,45);
EXEC USER_ALL.INS_DETALLEFACTURA(11,11,550,4,60);
EXEC USER_ALL.INS_DETALLEFACTURA(12,12,1823,2,45);
EXEC USER_ALL.INS_DETALLEFACTURA(13,13,924,4,50);
EXEC USER_ALL.INS_DETALLEFACTURA(14,14,1840,5,45);
EXEC USER_ALL.INS_DETALLEFACTURA(15,15,1363,6,45);
EXEC USER_ALL.INS_DETALLEFACTURA(16,16,282,3,50);
EXEC USER_ALL.INS_DETALLEFACTURA(17,17,2039,4,45);
EXEC USER_ALL.INS_DETALLEFACTURA(18,18,786,1,65);
EXEC USER_ALL.INS_DETALLEFACTURA(19,19,1864,3,50);
EXEC USER_ALL.INS_DETALLEFACTURA(20,20,900,4,60);
EXEC USER_ALL.INS_DETALLEFACTURA(21,21,1389,4,60);
EXEC USER_ALL.INS_DETALLEFACTURA(22,22,885,2,45);
EXEC USER_ALL.INS_DETALLEFACTURA(23,23,1029,4,75);
EXEC USER_ALL.INS_DETALLEFACTURA(24,24,635,5,45);
EXEC USER_ALL.INS_DETALLEFACTURA(25,25,1805,6,45);
EXEC USER_ALL.INS_DETALLEFACTURA(26,25,1591,3,50);

COMMIT;
--EXEC USER_ALL.INS_DETALLEFACTURA(1,2,1660,5,35);
--EXEC USER_ALL.INS_DETALLEFACTURA(1,2,1493,3,50);



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
