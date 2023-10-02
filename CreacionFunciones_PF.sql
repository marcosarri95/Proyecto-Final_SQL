use netflix;

#funcion que retorna la cantidad de minutos de films(películas/series que tiene una lista de reproducción)
DELIMITER $$
CREATE FUNCTION ´cuenta_minutos_listrep´ (reprod_list INT)
RETURNS INT
READS SQL DATA
BEGIN
DECLARE minutos_total INT;
SET minutos_total = (select sum(b.long_d) from rep_mov_tab a inner join film_d b on a.id_film = b.id_film where a.id_playlist=reprod_list);
RETURN minutos_total;
END$$

select netflix.´cuenta_minutos_listrep´(2) as cantidad_minutos;

#funcion que retorna la cantidad de peliculas en lista de reproduccion
DELIMITER $$
CREATE FUNCTION ´cuenta_peliculas_listrep´ (reprod_list INT)
RETURNS INT
READS SQL DATA
BEGIN
DECLARE cant_total INT;
SET cant_total = (select count(*) from rep_mov_tab a inner join film_d b on a.id_film= b.id_film where a.id_playlist=reprod_list AND b.tipo_f = TRUE);
RETURN cant_total;
END$$

select netflix.´cuenta_peliculas_listrep´(2) as cantidad_peliculas;

#funcion que retorna la cantidad de series en lista de reproduccion
DELIMITER $$
CREATE FUNCTION ´cuenta_series_listrep´ (reprod_list INT)
RETURNS INT
READS SQL DATA
BEGIN
DECLARE cant_total INT;
SET cant_total = (select count(*) from rep_mov_tab a inner join film_d b on a.id_film= b.id_film where a.id_playlist=reprod_list AND b.tipo_f = FALSE);
RETURN cant_total;
END$$

select netflix.´cuenta_series_listrep´(1) as cantidad_series;



