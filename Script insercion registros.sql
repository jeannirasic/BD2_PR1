alter session set "_ORACLE_SCRIPT"=true;

--==============================================================================================================================
--===================================================INSERCION EN SALAS=========================================================
--==============================================================================================================================
INSERT INTO USER_ALL.SALA(ubicacion, tipo_formato, capacidad) VALUES('Area Norte', 'Formato HD', 100);
INSERT INTO USER_ALL.SALA(ubicacion, tipo_formato, capacidad) VALUES('Area Sur', '4DX', 200);
INSERT INTO USER_ALL.SALA(ubicacion, tipo_formato, capacidad) VALUES('Area Este', 'Formato HD', 100);
INSERT INTO USER_ALL.SALA(ubicacion, tipo_formato, capacidad) VALUES('Area Oeste', '4DX', 200);
INSERT INTO USER_ALL.SALA(ubicacion, tipo_formato, capacidad) VALUES('Area Norte', 'Formato HD', 300);
INSERT INTO USER_ALL.SALA(ubicacion, tipo_formato, capacidad) VALUES('Area Sur', '4DX', 400);
INSERT INTO USER_ALL.SALA(ubicacion, tipo_formato, capacidad) VALUES('Area Este', 'Formato HD', 300);
INSERT INTO USER_ALL.SALA(ubicacion, tipo_formato, capacidad) VALUES('Area Oeste', '4DX', 400);
INSERT INTO USER_ALL.SALA(ubicacion, tipo_formato, capacidad) VALUES('Area Norte', 'Formato HD', 500);
INSERT INTO USER_ALL.SALA(ubicacion, tipo_formato, capacidad) VALUES('Area Sur', '4DX', 500);

--==============================================================================================================================
--==============================================INSERCION EN CASA PRODUCTORA====================================================
--==============================================================================================================================
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Warner Bros.');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Universal Pictures');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Columbia Pictures');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Walt Disney Pictures');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Marvel Studios');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Paramount Pictures');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('20th Century Fox');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Dune Entertainment');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Legendary Pictures');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Dreamworks Animation');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Relativity Media');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Amblin Entertainment');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Disney-Pixar');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('New Line cinema');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Village Roadshow Productions');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Lucasfilm');
INSERT INTO USER_ALL.CASA_PRODUCTORA(nombre_productora) VALUES('Original Film');

--==============================================================================================================================
--==================================================INSERCION EN GENERO=========================================================
--==============================================================================================================================
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('De acción');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('De aventuras');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('Comedias');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('Dramáticas');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('De terror');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('Musicales');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('Ciencia ficción');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('De guerra o bélicas');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('Películas del Oeste');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('Crimen (Suspense)');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('Infantiles');
INSERT INTO USER_ALL.GENERO(nombre_genero) VALUES('Romanticas');

--==============================================================================================================================
--=================================================INSERCION EN PELICULA========================================================
--==============================================================================================================================
INSERT INTO USER_ALL.PELICULA(nombre_pelicula, clasificacion, idioma, es_subtitulada, duracion, año_produccion,resumen, id_productora_pelicula)
VALUES('Avengers: Endgame', 'PG-13', 'Ingles', 1, 181, 2019, 'Es una película de superhéroes estadounidense de 2019 basada en el grupo Los Vengadores de Marvel Comics, fue producida por Marvel Studios y distribuida por Walt Disney Studios Motion Pictures', 5);
INSERT INTO USER_ALL.PELICULA(nombre_pelicula, clasificacion, idioma, es_subtitulada, duracion, año_produccion,resumen, id_productora_pelicula)
VALUES('Avatar', 'PG-13', 'Ingles', 1, 162, 2009, 'Es una película épica de ciencia ficción estadounidense de 2009, escrita, producida y dirigida por James Cameron y protagonizada por Sam Worthington, Zoe Saldaña, Sigourney Weaver, Stephen Lang y Michelle Rodríguez.', 7);
INSERT INTO USER_ALL.PELICULA(nombre_pelicula, clasificacion, idioma, es_subtitulada, duracion, año_produccion,resumen, id_productora_pelicula)
VALUES('Titanic', 'PG-13', 'Ingles', 1, 195, 1997, 'Es una película estadounidense dramática de catástrofe de 1997 dirigida y escrita por James Cameron y protagonizada por Leonardo DiCaprio, Kate Winslet, Billy Zane, Kathy Bates, Gloria Stuart y Bill Paxton.', 6);
INSERT INTO USER_ALL.PELICULA(nombre_pelicula, clasificacion, idioma, es_subtitulada, duracion, año_produccion,resumen, id_productora_pelicula)
VALUES('Star Wars: Episodio VII - El Despertar de la Fuerza', 'PG-13', 'Ingles', 1, 136, 2015, 'Es una película estadounidense del género space opera, dirigida por J. J. Abrams,​producida por Kathleen Kennedy, Abrams y Bryan Burk y escrita por Lawrence Kasdan, Abrams y Michael Arndt.', 16);
INSERT INTO USER_ALL.PELICULA(nombre_pelicula, clasificacion, idioma, es_subtitulada, duracion, año_produccion,resumen, id_productora_pelicula)
VALUES('Avengers: Infinity War', 'PG-13', 'Ingles', 1, 149, 2018, 'Es una película estadounidense de superhéroes de 2018, basada en el equipo de superhéroes de Marvel Comics los Vengadores, producida por Marvel Studios y distribuida por Walt Disney Studios Motion Pictures.', 5);
INSERT INTO USER_ALL.PELICULA(nombre_pelicula, clasificacion, idioma, es_subtitulada, duracion, año_produccion,resumen, id_productora_pelicula)
VALUES('Jurassic World', 'PG-13', 'Ingles', 1, 124, 2015, 'Es una película estadounidense de ciencia ficción y aventuras estrenada en 2015, es la cuarta entrega de la franquicia de Parque Jurásico.', 9);
INSERT INTO USER_ALL.PELICULA(nombre_pelicula, clasificacion, idioma, es_subtitulada, duracion, año_produccion,resumen, id_productora_pelicula)
VALUES('El Rey León', 'A', 'Ingles', 1, 118, 2019, 'Es una película musical de imagen generada por computadora de 2019 producida por Walt Disney Pictures, dirigida por Jon Favreau y escrita por Jeff Nathanson.', 4);
INSERT INTO USER_ALL.PELICULA(nombre_pelicula, clasificacion, idioma, es_subtitulada, duracion, año_produccion,resumen, id_productora_pelicula)
VALUES('Avengers', 'PG-13', 'Ingles', 1, 143, 2012, 'Es una película de superhéroes estadounidense de 2012 basada en el equipo de superhéroes homónimo de Marvel Comics, producida por Marvel Studios y distribuida por Walt Disney Studios Motion Pictures, en colaboración con Paramount Pictures.', 5);
INSERT INTO USER_ALL.PELICULA(nombre_pelicula, clasificacion, idioma, es_subtitulada, duracion, año_produccion,resumen, id_productora_pelicula)
VALUES('Fast and Furious 7', 'PG-13', 'Ingles', 1, 137, 2015, 'Es una película de acción estadounidense de 2015 dirigida por James Wan y protagonizada por Vin Diesel, Paul Walker, Dwayne Johnson, Michelle Rodríguez, Jordana Brewster, Tyrese Gibson, Chris "Ludacris" Bridges y Jason Statham.', 17);
INSERT INTO USER_ALL.PELICULA(nombre_pelicula, clasificacion, idioma, es_subtitulada, duracion, año_produccion,resumen, id_productora_pelicula)
VALUES('Avengers: Age of Ultron', 'PG-13', 'Ingles', 1, 141, 2015, 'Es una película de superhéroes estadounidense de 2015 basada en el equipo de Marvel Comics los Vengadores, producida por Marvel Studios y distribuida por Walt Disney Studios Motion Pictures.', 5);

--==============================================================================================================================
--=============================================INSERCION EN PELICULA GENERO=====================================================
--==============================================================================================================================
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(1, 1);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(1, 7);

INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(2, 1);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(2, 2);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(2, 7);

INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(3, 12);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(3, 4);

INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(4, 2);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(4, 7);

INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(5, 1);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(5, 2);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(5, 7);

INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(6, 1);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(6, 2);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(6, 7);

INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(7, 6);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(7, 11);

INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(8, 1);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(8, 7);

INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(9, 1);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(9, 2);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(9, 4);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(9, 10);

INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(10, 1);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(10, 2);
INSERT INTO USER_ALL.PELICULA_GENERO (id_pelicula_fk, id_genero_fk) VALUES(10, 7);


--==============================================================================================================================
--===================================================INSERCION EN PAIS==========================================================
--==============================================================================================================================
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Afghanistan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Aland Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Albania');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Algeria');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('American Samoa');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Andorra');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Angola');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Anguilla');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Antarctica');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Antigua and Barbuda');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Argentina');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Armenia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Aruba');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Australia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Austria');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Azerbaijan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Bahamas');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Bahrain');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Bangladesh');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Barbados');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Belarus');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Belgium');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Belize');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Benin');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Bermuda');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Bhutan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Bolivia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Bosnia and Herzegovina');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Botswana');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Bouvet Island');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Brazil');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('British Indian Ocean Territory');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Brunei Darussalam');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Bulgaria');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Burkina Faso');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Burundi');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Cambodia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Cameroon');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Canada');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Cape Verde');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Cayman Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Central African Republic');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Chad');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Chile');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('China');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Christmas Island');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Cocos (Keeling) Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Colombia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Comoros');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Congo');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Congo, The Democratic Republic of The Congo');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Cook Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Costa Rica');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Cote Divoire');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Croatia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Cuba');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Cyprus');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Czech Republic');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Denmark');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Djibouti');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Dominica');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Dominican Republic');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Ecuador');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Egypt');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('El Salvador');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Equatorial Guinea');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Eritrea');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Estonia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Ethiopia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Falkland Islands (Malvinas)');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Faroe Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Fiji');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Finland');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('France');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('French Guiana');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('French Polynesia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('French Southern Territories');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Gabon');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Gambia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Georgia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Germany');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Ghana');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Gibraltar');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Greece');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Greenland');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Grenada');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Guadeloupe');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Guam');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Guatemala');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Guernsey');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Guinea');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Guinea-bissau');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Guyana');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Haiti');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Heard Island and Mcdonald Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Holy See (Vatican City State)');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Honduras');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Hong Kong');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Hungary');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Iceland');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('India');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Indonesia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Iran, Islamic Republic of Iran');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Iraq');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Ireland');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Isle of Man');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Israel');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Italy');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Jamaica');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Japan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Jersey');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Jordan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Kazakhstan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Kenya');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Kiribati');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Korea, Democratic Peoples Republic of Korea');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Korea, Republic of Korea');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Kuwait');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Kyrgyzstan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Lao Peoples Democratic Republic');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Latvia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Lebanon');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Lesotho');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Liberia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Libyan Arab Jamahiriya');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Liechtenstein');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Lithuania');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Luxembourg');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Macao');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Macedonia, The Former Yugoslav Republic of Macedonia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Madagascar');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Malawi');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Malaysia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Maldives');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Mali');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Malta');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Marshall Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Martinique');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Mauritania');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Mauritius');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Mayotte');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Mexico');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Micronesia, Federated States of Micronesia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Moldova, Republic of Moldova');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Monaco');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Mongolia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Montenegro');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Montserrat');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Morocco');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Mozambique');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Myanmar');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Namibia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Nauru');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Nepal');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Netherlands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Netherlands Antilles');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('New Caledonia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('New Zealand');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Nicaragua');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Niger');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Nigeria');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Niue');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Norfolk Island');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Northern Mariana Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Norway');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Oman');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Pakistan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Palau');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Palestinian Territory, Occupied');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Panama');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Papua New Guinea');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Paraguay');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Peru');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Philippines');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Pitcairn');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Poland');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Portugal');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Puerto Rico');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Qatar');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Reunion');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Romania');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Russian Federation');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Rwanda');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Saint Helena');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Saint Kitts and Nevis');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Saint Lucia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Saint Pierre and Miquelon');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Saint Vincent and The Grenadines');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Samoa');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('San Marino');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Sao Tome and Principe');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Saudi Arabia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Senegal');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Serbia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Seychelles');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Sierra Leone');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Singapore');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Slovakia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Slovenia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Solomon Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Somalia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('South Africa');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('South Georgia and The South Sandwich Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Spain');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Sri Lanka');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Sudan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Suriname');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Svalbard and Jan Mayen');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Swaziland');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Sweden');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Switzerland');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Syrian Arab Republic');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Taiwan, Province of China');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Tajikistan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Tanzania, United Republic of Tanzania');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Thailand');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Timor-leste');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Togo');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Tokelau');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Tonga');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Trinidad and Tobago');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Tunisia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Turkey');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Turkmenistan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Turks and Caicos Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Tuvalu');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Uganda');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Ukraine');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('United Arab Emirates');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('United Kingdom');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('United States');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('United States Minor Outlying Islands');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Uruguay');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Uzbekistan');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Vanuatu');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Venezuela');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Viet Nam');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Virgin Islands, British');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Virgin Islands, U.S.');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Wallis and Futuna');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Western Sahara');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Yemen');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Zambia');
INSERT INTO USER_ALL.PAIS(nombre_pais) VALUES('Zimbabwe');

--==============================================================================================================================
--===================================================INSERCION EN ROL===========================================================
--==============================================================================================================================
INSERT INTO USER_ALL.ROL(nombre_rol) VALUES('Actor/ Actriz');
INSERT INTO USER_ALL.ROL(nombre_rol) VALUES('Director/a');

--==============================================================================================================================
--=================================================INSERCION EN PERSONA=========================================================
--==============================================================================================================================
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Anthony Russo', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Joseph Russo', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Robert Downey Jr.', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Chris Evans', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Mark Ruffalo', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Chris Hemsworth', 14);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Scarlett Johansson', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Jeremy Renner', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Don Cheadle', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Paul Rudd', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Brie Larson', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Karen Gillan', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Bradley Cooper', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Gwyneth Paltrow', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Josh Brolin', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('James Cameron', 39);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Sam Worthington', 14);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Zoe Saldaña', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Sigourney Weaver', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Michelle Rodriguez', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Stephen Lang', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Giovanni Ribisi', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Joel Moore', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('CCH Pounder', 93);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Wes Studi', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Laz Alonso', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Leonardo DiCaprio', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Kate Winslet', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Billy Zane', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Gloria Stuart', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Bill Paxton', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Kathy Bates', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Frances Fisher', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Victor Garber', 39);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Bernard Hill', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Jonathan Hyde', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('David Warner', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Bernard Fox', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Danny Nucci', 15);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Ioan Gruffudd', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('J. J. Abrams', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Harrison Ford', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Mark Hamill', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Carrie Fisher', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Adam Driver', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Daisy Ridley', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('John Boyega', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Oscar Isaac', 89);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Lupita Nyongo', 142);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Andy Serkis', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Domhnall Gleeson', 105);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Anthony Daniels', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Kenny Baker', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Peter Mayhew', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Max von Sydow', 210);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Benedict Cumberbatch', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Tom Holland', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Chadwick Boseman', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Tom Hiddleston', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Paul Bettany', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Elizabeth Olsen', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Anthony Mackie', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Sebastian Stan', 181);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Idris Elba', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Danai Gurira', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Peter Dinklage', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Benedict Wong', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Pom Klementieff', 39);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Dave Bautista', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Vin Diesel', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Benicio del Toro', 178);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Chris Pratt', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Colin Trevorrow', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Bryce Dallas Howard', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Ty Simpkins', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Nick Robinson', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Vincent DOnofrio', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Irrfan Khan', 101);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Omar Sy', 74);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Judy Greer', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Katie McGrath', 105);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('BD Wong', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Brandon Richardson', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Lauren Lapkus', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Jon Favreau', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Donald Glover', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Seth Rogen', 39);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Chiwetel Ejiofor', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Alfre Woodard', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Billy Eichner', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('John Kani', 202);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('John Oliver', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Beyoncé', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('James Earl Jones', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Joss Whedon', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Clark Gregg', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Cobie Smulders', 39);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Stellan Skarsgard', 210);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Samuel L. Jackson', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('James Wan', 133);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Paul Walker', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Dwayne Johnson', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Jason Statham', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Jordana Brewster', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Tyrese Gibson', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Ludacris', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Kurt Russell', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Nathalie Emmanuel', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Djimon Hounsou', 24);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Tony Jaa', 216);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Elsa Pataky', 204);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Ali Fazal', 101);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Lucas Black', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Sung Kang', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Gal Gadot', 107);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Ronda Rousey', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Aaron Taylor-Johnson', 230);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('Linda Cardellini', 231);
INSERT INTO USER_ALL.PERSONA(nombre_persona, id_pais_persona) VALUES('James Spader', 231);

--==============================================================================================================================
--=============================================INSERCION EN PELICULA_PERSONA====================================================
--==============================================================================================================================

INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,1,1);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,2,1);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,3,1, 'Tony Stark / Iron Man');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,4,1, 'Steve Rogers / Capitán América');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,5,1, 'Bruce Banner / Hulk');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,6,1, 'Thor');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,7,1, 'Natasha Romanoff / Viuda Negra');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,8,1, 'Clint Barton / Ojo de Halcón / Ronin');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,9,1, 'James "Rhodey" Rhodes / Máquina de Guerra');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,10,1, 'Scott Lang / Ant-Man');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,11,1, 'Vers / Carol Danvers / Capitana Marvel');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,12,1, 'Nebula');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,13,1, 'Rocket');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,14,1, 'Virginia "Pepper" Potts');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,15,1, 'Thanos');


INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,16,2);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,17,2, 'Jake Sully');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,18,2, 'Neytiri Omaticaya');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,19,2, 'Dra. Grace Augustine');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,20,2, 'Trudy Chacón');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,21,2, 'Coronel Miles Quaritch');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,22,2, 'Selfridge');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,23,2, 'Norm Spellman');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,24,2, 'Moat');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,25,2, 'Eytukan');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,26,2, 'Tsutey');


INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,16,3);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,27,3, 'Jack Dawson');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,28,3, 'Rose DeWitt Bukater');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,29,3, 'Caledon Nathan (Cal) Hockley');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,30,3, 'Rose Dawson Calvert');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,31,3, 'Brock Lovett');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,32,3, 'Margaret (Molly) Brown');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,33,3, 'Ruth DeWitt Bukater');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,34,3, 'Thomas Andrews');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,35,3, 'Edward John Smith');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,36,3, 'Joseph Bruce Ismay');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,37,3, 'Spicer Lovejoy');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,38,3, 'Archibald Gracie IV');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,39,3, 'Fabrizio De Rossi');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,40,3, 'Harold Lowe');


INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,41,4);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,42,4, 'Han Solo');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,43,4, 'Luke Skywalker');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,44,4, 'Leia Organa');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,45,4, 'Ben Solo / Kylo Ren');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,46,4, 'Rey');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,47,4, 'Finn/FN-2187');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,48,4, 'Poe Dameron');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,49,4, 'Maz Kanata');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,50,4, 'Snoke');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,51,4, 'General Armitage Hux');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,52,4, 'C3PO');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,53,4, 'R2D2');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,54,4, 'Chewbacca');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,55,4, 'Lor San Tekka');


INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,1,5);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,2,5);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,3,5, 'Tony Stark / Iron Man');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,4,5, 'Steve Rogers / Capitán América');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,5,5, 'Bruce Banner / Hulk');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,6,5, 'Thor');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,7,5, 'Natasha Romanoff / Black Widow');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,9,5, 'James "Rhodey" Rhodes / Máquina de Guerra');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,56,5, 'Doctor Stephen Strange');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,57,5, 'Peter Parker / Spider-Man / Iron Spider');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,58,5, 'T Challa / Pantera Negra');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,18,5, 'Gamora');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,12,5, 'Nebula');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,59,5, 'Loki');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,60,5, 'Visión');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,61,5, 'Wanda Maximoff / Bruja Escarlata');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,62,5, 'Sam Wilson / Falcon');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,63,5, 'Bucky Barnes / Soldado de Invierno');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,64,5, 'Heimdall');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,65,5, 'Okoye');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,66,5, 'Eitri');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,67,5, 'Wong');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,68,5, 'Mantis');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,69,5, 'Drax el Destructor');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,70,5, 'Groot');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,13,5, 'Rocket Raccoon');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,14,5, 'Pepper Potts');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,71,5, 'Taneleer Tivan / El Coleccionista');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,15,5, 'Thanos');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,72,5, 'Peter Quill / Star-Lord');


INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,73,6);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,72,6, 'Owen Grady');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,74,6, 'Dra. Claire Dearing');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,75,6, 'Gray Mitchell');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,76,6, 'Zach Mitchell');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,77,6, 'Vic Hoskins');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,78,6, 'Simon Masrani');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,79,6, 'Barry');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,80,6, 'Karen Mitchell');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,81,6, 'Zara Young');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,82,6, 'Dr. Henry Wu');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,83,6, 'Christopher');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,84,6, 'Vivian');


INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,85,7);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,86,7, 'Simba');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,87,7, 'Pumba');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,88,7, 'Scar');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,89,7, 'Sarabi');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,90,7, 'Timón');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,91,7, 'Rafiki');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,92,7, 'Zazú');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,93,7, 'Nala');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,94,7, 'Mufasa');


INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,95,8);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,3,8, 'Tony Stark / Iron Man');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,4,8, 'Steve Rogers / Capitán América');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,5,8, 'Bruce Banner / Hulk');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,6,8, 'Thor');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,7,8, 'Natasha Romanoff / Viuda Negra');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,8,8, 'Clint Barton / Ojo de Halcón');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,59,8, 'Loki');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,96,8, 'Phil Coulson');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,97,8, 'Maria Hill');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,98,8, 'Erik Selvig');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,99,8, 'Nick Fury');


INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,100,9);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,70,9, 'Dominic "Dom" Toretto');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,101,9, 'Brian O Conner');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,102,9, 'Luke Hobbs');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,103,9, 'Deckard Shaw');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,20,9, 'Leticia "Letty" Ortiz');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,104,9, 'Mia Toretto');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,105,9, 'Roman "Rome" Pearce');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,106,9, 'Tej Parker');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,107,9, 'Agente Frank Petty / Sr. Don Nadie');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,108,9, 'Ramsey');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,109,9, 'Mose Jakande');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,110,9, 'Kiet');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,111,9, 'Elena Neves');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,112,9, 'Zafar');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,113,9, 'Sean Boswell');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,114,9, 'Han Seúl-Oh');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,115,9, 'Gisele Yashar');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,116,9, 'Kara');


INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk)VALUES(2,95,10);
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,3,10, 'Tony Stark / Iron Man');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,4,10, 'Steve Rogers / Capitán América');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,5,10, 'Bruce Banner / Hulk');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,6,10, 'Thor');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,7,10, 'Natasha Romanoff / Viuda Negra');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,8,10, 'Clint Barton / Ojo de Halcón');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,9,10, 'James "Rhodey" Rhodes / Máquina de Guerra');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,117,10, 'Pietro Maximoff / Quicksilver');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,61,10, 'Wanda Maximoff / Bruja Escarlata');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,60,10, 'J.A.R.V.I.S. y Visión');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,97,10, 'Maria Hill');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,62,10, 'Sam Wilson / Falcon');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,118,10, 'Laura Barton');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,98,10, 'Profesor Erik Selvig');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,119,10, 'Ultrón');
INSERT INTO USER_ALL.PELICULA_PERSONA(id_rol_fk, id_persona_fk, id_pelicula_fk, nombre_personaje)VALUES(1,99,10, 'Coronel Nick Fury');


COMMIT;

