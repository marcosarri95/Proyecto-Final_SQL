USE netflix;

select @@autocommit;
set AUTOCOMMIT = 0;

#STORED PROCEDURE 1
#creamos un stored procedure que ordena la tabla corp_d en forma ascendente si el parámetro de entrada es 1
#o de forma descendente si el parmetro de entrada es 2;
DROP procedure if EXISTS ´ordena_tabla´;
DELIMITER $$
USE netflix$$
CREATE PROCEDURE ´ordena_tabla´ (IN as_des int)
BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
      insert into error_handler values (null, now(), concat("No se pudo ordenar la tabla de la forma",as_des));
	ROLLBACK;
  END;
 
  START TRANSACTION;
    -- Sentencias SQL
if as_des = 1 then
select * from corp_d order by id_empresa;
end if;
if as_des = 2 then
select * from corp_d order by id_empresa DESC;
end if;
COMMIT;
END$$

CALL ´ordena_tabla´(1);
CALL ´ordena_tabla´(2);

######### FIN STORED PROCEDURE 1 ###########


#STORED PROCEDURE 2
#creamos un stored procedure que inserta un film en una playlist, para ello hay que insertar en 2 tablas
#primero en rep_mov_tab y luego en mod_playlist, y luego modificar en la tabla rep_list los campos de cantidad de peliculas y de minutos totales de la playlist
use netflix;
DROP procedure if EXISTS ´inserta_film_playlist´;
DELIMITER $$
USE netflix$$
CREATE PROCEDURE ´inserta_film_playlist´ (IN t_film varchar(60), IN id_usuario int, IN id_lista int) 
BEGIN
declare id_p int;
declare nombre_user VARCHAR(60);

  DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
      insert into error_handler values (null, now(), concat("No se pudo realizar la accion del usuario", id_usuario));
	ROLLBACK;
  END;
  
START TRANSACTION;
set id_p = (select id_film from film_d where n_title = t_film); #obtenemos el id del film que queremos agregar a las tablas
set nombre_user = (select n_user from user_id where id_user = id_usuario); #seteamos el nombre de usuario correspondiente al id ingresado

if id_p <> '' then #si no esta vacio significa que encontro un id
#primero insertamos en la tabla rep_mov_tab que es la tabla donde se registan los id de las peliculas por lista de reproduccion
insert into rep_mov_tab values (null, id_lista, id_p);

#luego insertamos en la tabla mod_playlist que es la tabla donde se almacenan la modificacion de las listas
insert into mod_playlist values (null, nombre_user, id_lista, id_usuario); 

#luego modificamos la cantidad de films que tiene la lista de reproduccion y la cantidad de tiempo total de la lista
# haciendo uso de las funciones realizadas en el entregable anterior
update rep_list set cant_film = (select netflix.´cuenta_peliculas_listrep´(id_lista)) where id_playlist = id_lista;
update rep_list set tiempo_total = (select netflix.´cuenta_minutos_listrep´(id_lista)) where id_playlist = id_lista;

end if;
COMMIT;
END$$

use netflix;
CALL netflix.´inserta_film_playlist´('Piratas del caribe: la maldición del perla negra',4,4);
select * from rep_mov_tab;
select * from mod_playlist;
select * from rep_list;
######### FIN STORED PROCEDURE 2 ###########


#STORED PROCEDURE 3
#creamos un stored procedure que elimina un film en una playlist, para ello hay que eliminar los films en la tabla
#rep_mov_tab y luego insertar en mod_playlist, para finalmente modificar en la tabla rep_list
#los campos de cantidad de peliculas y de minutos totales de la playlist
DROP procedure if EXISTS ´elimina_film_playlist´;
DELIMITER $$
USE netflix$$
CREATE PROCEDURE ´elimina_film_playlist´ (IN iuser int, IN id_listarep int, IN i_film int) 
BEGIN
declare nuser varchar(60); #variable para obtener el nombre de usuario
  DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
     insert into error_handler values (null, now(), concat("No se pudo realizar la accion del usuario", iuser));
	ROLLBACK;
  END;

START TRANSACTION;
set nuser = (select n_user from user_id where id_user = iuser); #seteamos el nombre de usuario para luego insertar la tabla
#eliminamos de la tabla rep_mov_tab el film que se encuentra asociado a la lista de reproduccion
delete from rep_mov_tab where id_film = i_film;
#luego insertamos en la tabla mod_playlist que es la tabla donde se almacenan la modificacion de las listas
insert into mod_playlist values (null, nuser, id_listarep, iuser); 
#luego modificamos la cantidad de films que tiene la lista de reproduccion y la cantidad de tiempo total de la lista
# haciendo uso de las funciones realizadas en el entregable anterior
update rep_list set cant_film = (select netflix.´cuenta_peliculas_listrep´(id_listarep)) where id_playlist = id_listarep;
update rep_list set tiempo_total = (select netflix.´cuenta_minutos_listrep´(id_listarep)) where id_playlist = id_listarep;
COMMIT;
END$$

select * from mod_playlist;
select * from rep_mov_tab;
select id_playlist, cant_film, tiempo_total from rep_list;

CALL netflix.´elimina_film_playlist´(1,1,134);
########## FIN STORED PROCEDURE 3 ##########

#STORED PROCEDURE 4
#Creamos un stored procedure que cuando se cree una cuenta de usuario, nos cree la cantidad de perfiles que el usuario nos proporcione con un nombre estándar
DROP procedure if EXISTS ´c_account_user´;
DELIMITER $$
USE netflix$$
CREATE PROCEDURE ´c_account_user´ (IN nuser varchar(60), IN email varchar(60), IN region varchar(60),IN age int, IN cant_perfiles INT, IN DNI INT) 
BEGIN

declare insercion int;
declare mayor int;
declare n_userp varchar(60);
declare vcuenta int;

 DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
       insert into error_handler values (null, now(), concat("No se pudo crear la cuenta de usuario", nuser));
	ROLLBACK;
  END;
  
  START TRANSACTION;
#primero nos fijamos si existe una cuenta de usuario que contenga el dni, o el email, o el nombre de usuario
set insercion = cant_perfiles;
#insertamos en la tabla user_account que es la tabla donde se almacenan la informacion de las cuentas de usuario
insert into user_account values (null, nuser, email, region,age,cant_perfiles,dni); 
set vcuenta = (select id_cuenta from user_account where dni_u = dni);
#luego de esto, creamos una cantidad de cuentas de usuario según la cantidad establecida
while(insercion<>0) DO
set mayor = (select max(id_user) from user_id); #seleccionamos el mayor registro existente
set mayor = mayor + 1; #le sumamos uno y este será el nuevo valor de usuario
set n_userp = concat(nuser,insercion); #le colocamos provisoriamente el nombre de usuario con un numero distinto
insert into user_id values (mayor, n_userp, 18); #insertamos en la tabla el nombre de usuario
insert into id_acc_user values (null,vcuenta,mayor); #insertamos en la tabla id_acc_user la cuenta de usuario junto con los perfiles correspondientes
set insercion = insercion-1;
END WHILE;
COMMIT;
END$$


use netflix;
CALL ´c_account_user´('Angel','Angel@gmail.com','Argentina',30,4,123456789);

use netflix;
select * from user_account;
select * from user_id;
select * from id_acc_user;

####### FIN STORED PROCEDURE 4 ########


#STORED PROCEDURE 5
#Creamos un stored procedure que crea una lista de reproduccion en funcion de un id de usuario y un nombre para la lista
use netflix;
DROP procedure if EXISTS ´c_replist´;
DELIMITER $$
USE netflix$$
CREATE PROCEDURE ´c_replist´ (IN id_us int, IN nombre_lista varchar(100)) 
BEGIN
declare n_userp varchar(60);
declare new_idlista int;

 DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
      insert into error_handler values (null, now(), concat("No se pudo crear la lista de reproduccion", id_us));
	ROLLBACK;
  END;
  
START TRANSACTION;
#obtenemos el nombre de usuario según el id dado
set n_userp = (select n_user from user_id where id_user = id_us);
#asignaremos un id de playlist en función del mayor id encontrado
set new_idlista = (select max(id_playlist) from rep_list);
set new_idlista = new_idlista +1;
#insertamos en la tabla rep_list la lista de reproduccion creada
insert into rep_list values(null,nombre_lista,0,0);
#insertamos en la tabla crea_playlist la nueva lista creada;
insert into crea_playlist values (null, n_userp, new_idlista, id_us); 
COMMIT;
END$$

use netflix;
CALL ´c_replist´(6,'Lista de Angel .Inicial');

use netflix;
select * from crea_playlist;
select * from rep_list;

####### FIN STORED PROCEDURE 5 ########


#STORED PROCEDURE 6
#Creamos un stored procedure que elimina una lista de reproduccion en funcion de un id de lista
use netflix;
DROP procedure if EXISTS ´r_replist´;
DELIMITER $$
USE netflix$$
CREATE PROCEDURE ´r_replist´ (IN id_list int, IN id_us int)
BEGIN
declare n_userp varchar(60);
 DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
      insert into error_handler values (null, now(), concat("No se pudo eliminar la lista de reproduccion del usuario", id_us));
	ROLLBACK;
  END;
  
  START TRANSACTION;
#obtenemos el nombre de usuario según el id dado
set n_userp = (select n_user from user_id where id_user = id_us);

#eliminamos de la tabla rep_mov_tab la lista de reproduccion con sus films incluidos
delete from rep_mov_tab where id_playlist = id_list;
#eliminamos de la tabla crea_playlist la lista que queremos eliminar
delete from crea_playlist where id_playlist = id_list;
#eliminamos de la tabla rep_playlist la lista que queremos eliminar
delete from mod_playlist where id_playlist = id_list;
#eliminamos de la tabla rep_playlist la lista que queremos eliminar
delete from rep_playlist where id_playlist = id_list;
#eliminamos de rep_list la lista de reproduccion
delete from rep_list where id_playlist = id_list;
#insertamos en la tabla del_playlist la lista eliminada;
insert into del_playlist values (null, n_userp, id_list, id_us); 
COMMIT;
END$$


CALL ´r_replist´(6,6);

use netflix;
select * from del_playlist;
select * from crea_playlist;
select * from mod_playlist;
select * from rep_playlist;
select * from rep_mov_tab;
select * from rep_list;

####### FIN STORED PROCEDURE 6 ########


#STORED PROCEDURE 7
#Creamos un stored procedure que elimina un usuario
use netflix;
DROP procedure if EXISTS ´r_user´;
DELIMITER $$
USE netflix$$
CREATE PROCEDURE ´r_user´ (IN id_us int)
BEGIN
 DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
    BEGIN
      insert into error_handler values (null, now(), concat("No se pudo eliminar el usuario", id_us));
	ROLLBACK;
  END;
START TRANSACTION;
#eliminamos de la tabla rep_mov_tab la lista de reproduccion con sus films incluidos
delete from rep_mov_tab where id_playlist = (select id_playlist from crea_playlist where id_user = id_us);
#eliminamos de rep_list la lista de reproduccion
delete from rep_list where id_playlist = (select id_playlist from crea_playlist where id_user = id_us);
#eliminamos de la tabla crea_playlist los registros asociados al usuario
delete from crea_playlist where id_user = id_us;
#eliminamos de la tabla rep_playlist los registros asociados al usuario
delete from mod_playlist where id_user = id_us;
#eliminamos de la tabla rep_playlist los registros asociados al usuario
delete from rep_playlist where id_user = id_us;
#eliminamos de la tabla del_playlist el los registros asociados al usuario
delete from del_playlist where id_user = id_us; 
#eliminamos de la tabla id_acc_user el usuario
delete from id_acc_user where id_user = id_us;
#eliminamos de la tabla user_id el registro del usuario
delete from user_id where id_user = id_us;
COMMIT;
END$$


CALL ´r_user´(6);

use netflix;
select * from user_id;
select * from id_acc_user;
select * from del_playlist;
select * from crea_playlist;
select * from mod_playlist;
select * from rep_playlist;
select * from rep_mov_tab;
select * from rep_list;

####### FIN STORED PROCEDURE 7 ########
