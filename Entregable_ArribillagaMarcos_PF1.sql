create schema netflix;
use netflix;


CREATE TABLE corp_d(
id_empresa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_empresa varchar(100) NOT NULL,
country_o text(100) NOT NULL
);

CREATE TABLE saga_d(
id_saga INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_saga varchar(100) NOT NULL,
cant_m INT NOT NULL
);

CREATE TABLE series_d(
id_serie INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_title varchar(100) NOT NULL,
season INT NOT NULL,
cap_p_temporada INT NOT NULL,
long_d INT NOT NULL,
gen_s VARCHAR(60) NOT NULL,
id_saga INT NOT NULL,
id_empresa INT NOT NULL,
foreign key (id_saga) REFERENCES saga_d(id_saga),
foreign key (id_empresa) REFERENCES corp_d(id_empresa)
);

CREATE TABLE movies_d(
id_peli INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_title varchar(100) NOT NULL,
long_d INT NOT NULL,
gen_s VARCHAR(60) NOT NULL,
id_saga INT NOT NULL,
id_empresa INT NOT NULL,
foreign key (id_saga) REFERENCES saga_d(id_saga),
foreign key (id_empresa) REFERENCES corp_d(id_empresa)
);

CREATE TABLE rep_list(
id_playlist INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_lista varchar(100) NOT NULL,
id_usuario INT NOT NULL,
id_peli INT NOT NULL,
id_serie INT NOT NULL,
foreign key (id_peli) REFERENCES movies_d(id_peli),
foreign key (id_serie) REFERENCES series_d(id_serie)
);

CREATE TABLE user_id(
id_user INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_user varchar(100) not null,
age_u INT NOT NULL
);

CREATE TABLE crea_playlist(
id_cre INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_user varchar(100) not null,
id_user INT NOT NULL,
id_playlist INT NOT NULL,
foreign key (id_user) REFERENCES user_id(id_user),
foreign key (id_playlist) REFERENCES rep_list(id_playlist)
);

CREATE TABLE del_playlist(
id_del INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_user varchar(100) not null,
id_user INT NOT NULL,
id_playlist INT NOT NULL,
foreign key (id_user) REFERENCES user_id(id_user),
foreign key (id_playlist) REFERENCES rep_list(id_playlist)
);

CREATE TABLE rep_playlist(
id_rep INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_user varchar(100) not null,
id_user INT NOT NULL,
id_playlist INT NOT NULL,
foreign key (id_user) REFERENCES user_id(id_user),
foreign key (id_playlist) REFERENCES rep_list(id_playlist)
);

CREATE TABLE user_account(
id_cuenta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
n_user varchar(100) NOT NULL,
email_u varchar(100) NOT NULL,
region_u varchar(100) NOT NULL,
age_u INT NOT NULL,
cant_perfiles INT NOT NULL,
dni_u INT NOT NULL,
id_user INT NOT NULL,
foreign key (id_user) REFERENCES user_id(id_user)
);