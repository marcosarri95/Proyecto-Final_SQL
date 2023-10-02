use netflix;


#VISTA 1
# creamos una vista que nos muestre el id de cuenta, el nombre de usuario de la cuenta, la cantidad de perfiles
# el id de usuario y el nombre de usuario de ese perfil
DROP view if EXISTS usuarios_perfiles;
create view usuarios_perfiles as (
select a.id_cuenta, a.n_user, a.cant_perfiles, b.id_user, c.n_user as nombre_usuario from
id_acc_user b 
inner join user_account a 
on b.id_cuenta = a.id_cuenta 
inner join user_id c
on b.id_user = c.id_user
);

select * from usuarios_perfiles;


#VISTA 2
#veremos las listas de reproduccion que estan siendo vistas en el momento
DROP view if EXISTS user_list_rep;
create view user_list_rep as (
select a.n_user, a.id_playlist, b.id_film, c.n_title 
from rep_playlist a
inner join rep_mov_tab b 
on a.id_playlist = b.id_playlist 
inner join film_d c
on b.id_film = c.id_film
);

select * from user_list_rep;


#VISTA 3
#veremos las peliculas o series que estan en las listas de reproduccion creadas
DROP view if EXISTS list_rep_us;
create view list_rep_us as (
select b.n_lista, b.cant_film, c.n_title, c.long_d 
from rep_mov_tab a
inner join rep_list b 
on a.id_playlist = b.id_playlist 
inner join film_d c
on a.id_film = c.id_film
);

select * from list_rep_us;

#VISTA 4
#veremos a que saga pertenece cada pelicula/serie y que valoracion tiene cada pelicula
DROP view if EXISTS saga_film;
create view saga_film as (
select a.n_title, a.long_d, a.val_film, b.n_saga, b.cant_m as cant_films
from film_d a
inner join saga_d b 
on a.id_saga = b.id_saga
);

select * from saga_film;


#VISTA 5
#veremos a que empresa y que valoracion tiene la pelicula pertenece cada película
DROP view if EXISTS corp_film;
create view corp_film as (
select a.n_title, a.val_film, b.n_empresa, b.country_o
from film_d a
inner join corp_d b 
on a.id_empresa = b.id_empresa
);

select * from  corp_film;


#VISTA 6
#veremos que films/capitulos son los que mas se repiten en todas las listas de reproduccion para un reporte de informe
DROP view if EXISTS f_view;
create view f_view as (
select a.n_title, b.id_film, count(*) as total_repeticiones from film_d a
inner join rep_mov_tab b on a.id_film = b.id_film group by b.id_film order by total_repeticiones desc limit 10
);

select * from  f_view;


