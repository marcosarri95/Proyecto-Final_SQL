use netflix;

#creamos la tabla de bitacora de creación de cuentas de usuario
CREATE TABLE bit_acc_user (
id_bit int auto_increment primary key,
id_cuenta int not null,
dni_u int not null,
day_time datetime not null
);
#creamos el trigger asociado a la tabla user_account que llevará los datos a la tabla creada anteriormente
CREATE TRIGGER ´tr_bit_acc_user´
after insert on netflix.user_account
for each row
insert into netflix.bit_acc_user (id_cuenta,dni_u,day_time) values (new.id_cuenta,new.dni_u, now());

insert into user_account values(null,'LucasA','luquitas@gmail.com','Argentina',32,1,44444444);
select * from bit_acc_user;
####################################
use netflix;
#creamos la tabla de bitacora de creación de listas de reproduccion
CREATE TABLE bit_crea_playlist (
id_bit int auto_increment primary key,
id_mov int not null,
id_user int not null,
id_playlist int not null,
day_time datetime not null
);
#creamos el trigger asociado a la tabla crea_playlist que llevará los datos a la tabla creada anteriormente
DROP trigger if EXISTS netflix.´tr_bit_crea_playlist´;
CREATE TRIGGER ´tr_bit_crea_playlist´
before insert on netflix.crea_playlist
for each row
insert into netflix.bit_crea_playlist (id_user,id_mov,id_playlist,day_time) values (new.id_user,new.id_cre,new.id_playlist,now());

select * from crea_playlist;
select * from bit_crea_playlist;
#######################################


use netflix;
#creamos la tabla de bitacora de eliminacion de listas de reproduccion
CREATE TABLE bit_del_playlist (

id_bit int auto_increment primary key,
id_mov int not null,
id_user int not null,
id_playlist int not null,
day_time datetime not null
);
#creamos el trigger asociado a la tabla del_playlist que llevará los datos a la tabla creada anteriormente
DROP trigger if EXISTS netflix.´tr_bit_del_playlist´;
CREATE TRIGGER ´tr_bit_del_playlist´
before insert on netflix.del_playlist
for each row
insert into netflix.bit_del_playlist (id_user,id_mov,id_playlist,day_time) values (new.id_user,new.id_del,new.id_playlist,now());

select * from del_playlist;
select * from bit_del_playlist;
#######################################

use netflix;
#creamos la tabla de bitacora de modificacion de listas de reproduccion
CREATE TABLE bit_mod_playlist (
id_bit int auto_increment primary key,
id_mov int not null,
id_user int not null,
id_playlist int not null,
day_time datetime not null
);
#creamos el trigger asociado a la tabla mod_playlist que llevará los datos a la tabla creada anteriormente
DROP trigger if EXISTS netflix.´tr_bit_mod_playlist´;
CREATE TRIGGER ´tr_bit_mod_playlist´
before insert on netflix.mod_playlist
for each row
insert into netflix.bit_mod_playlist (id_user,id_mov,id_playlist,day_time) values (new.id_user,new.id_mod,new.id_playlist,now());

select * from mod_playlist;
select * from bit_mod_playlist;
#######################################