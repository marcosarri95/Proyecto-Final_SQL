create schema netflix;
use netflix;

CREATE TABLE corp_d(
id_empresa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_empresa varchar(100) NOT NULL,
country_o varchar(100) NOT NULL
);

CREATE TABLE saga_d(
id_saga INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_saga varchar(100) NOT NULL,
cant_m INT NOT NULL,
val_saga INT NOT NULL
);

CREATE TABLE film_d(
id_film INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_title varchar(100) NOT NULL,
long_d INT NOT NULL,
gen_s VARCHAR(60) NOT NULL,
id_saga INT NOT NULL,
id_empresa INT NOT NULL,
val_film INT NOT NULL,
tipo_f BOOL,
foreign key (id_saga) REFERENCES saga_d(id_saga),
foreign key (id_empresa) REFERENCES corp_d(id_empresa)
);

CREATE TABLE rep_list(
id_playlist INT NOT NULL auto_increment PRIMARY KEY,
n_lista varchar(100) NOT NULL,
cant_film INT,
tiempo_total INT
);

CREATE TABLE rep_mov_tab(
id_tran INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_playlist int not null,
id_film int not null,
foreign key (id_playlist) REFERENCES rep_list(id_playlist),
foreign key (id_film) REFERENCES film_d(id_film)
);

CREATE TABLE user_id(
id_user INT NOT NULL PRIMARY KEY,
n_user varchar(100) not null,
age_u INT NOT NULL
);

CREATE TABLE user_account(
id_cuenta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_user varchar(100) NOT NULL,
email_u varchar(100) NOT NULL,
region_u varchar(100) NOT NULL,
age_u INT NOT NULL,
cant_perfiles INT NOT NULL,
dni_u INT NOT NULL
);

CREATE TABLE crea_playlist(
id_cre INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_user varchar(100) not null,
id_playlist INT NOT NULL,
id_user int not null,
foreign key (id_playlist) REFERENCES rep_list(id_playlist),
foreign key (id_user) references user_id(id_user)
);

CREATE TABLE del_playlist(
id_del INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_user varchar(100) not null,
id_playlist INT NOT NULL,
id_user int not null,
foreign key (id_user) references user_id(id_user)
);

CREATE TABLE rep_playlist(

id_rep INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_user varchar(100) not null,
id_playlist INT NOT NULL,
id_user int not null,
foreign key (id_playlist) REFERENCES rep_list(id_playlist),
foreign key (id_user) references user_id(id_user)
);

CREATE TABLE mod_playlist(
id_mod INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_user varchar(100) not null,
id_playlist INT NOT NULL,
id_user int not null,
foreign key (id_playlist) REFERENCES rep_list(id_playlist),
foreign key (id_user) references user_id(id_user)
);

CREATE TABLE id_acc_user (
id_a_u INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_cuenta INT NOT NULL,
id_user INT NOT NULL,
foreign key (id_cuenta) REFERENCES user_account(id_cuenta),
foreign key (id_user) REFERENCES user_id(id_user)
);

CREATE TABLE error_handler (
id_error INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
day_time datetime not null,
texto varchar(60)
);

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

####################################

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

#######################################

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

#######################################

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

#######################################

