EXEC USER_ALL.INS_CARTELERA(1,1, TO_TIMESTAMP('01-01-00 10:30:00 AM'), TO_TIMESTAMP('01-01-00 10:45:00 AM'), '1-1-2020');


select * from cartelera;


CREATE OR REPLACE PROCEDURE USER_ALL.INS_CARTELERA
(
    nSala IN INTEGER,
    nPelicula IN INTEGER, 
    hInicio IN TIMESTAMP,
    hFinal IN TIMESTAMP,
    laFecha IN DATE
)
is
 res integer;
begin 
    select count(*) into res from USER_ALL.CARTELERA where num_sala_cartelera = nSala and laFecha = fecha and 
    (
    	(
	    	(hora_inicio <= hInicio and hInicio <= hora_fin)
	    	or 
	    	(hora_inicio <= hFinal and hFinal <= hora_fin)
    	) 
    or
	    (
	    	(hInicio <= hora_inicio and hora_inicio <= hFinal)
	    	or 
	    	(hInicio <= hora_fin and hora_fin <= hFinal)
	    )
    );
    
    if res = 0 then 
        INSERT INTO USER_ALL.CARTELERA (hora_inicio, hora_fin, fecha, num_sala_cartelera, id_pelicula_cartelera)
VALUES(hInicio, hFinal, laFecha, nSala, nPelicula);
    end if;
end;    

