use netflix;

insert into corp_d values(NULL,'WarnerBrothers','Estados Unidos'),(NULL,'Disney','Estados Unidos'),(NULL,'HBO','Estados Unidos'),
(NULL,'Amazon Prime','Estados Unidos'),(NULL,'Lionsgate','Estados Unidos'),(NULL,'Dreamworks','Estados Unidos'),(NULL, 'AMC' , 'Canada');

insert into saga_d values(NULL,'Piratas del caribe',5,3),(NULL,'Los Vengadores',5,5),(NULL,'Game Of Thrones',8,5),
(NULL,'The Boys',4,4),(NULL,'The 100',5,2),(NULL,'Once upon a time',10,4),(NULL,'Vikings',6,4),
(NULL,'The walking dead',13,4),(NULL,'MR Robot',4,5), (NULL,'Breaking Bad',5,5);

select * from saga_d;
select * from corp_d;

insert into film_d values(NULL,'Game of thrones 1x01',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 1x02',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 1x03',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 1x04',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 1x05',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 1x06',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 1x07',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 1x08',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 1x09',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 1x10',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 2x01',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 2x02',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 2x03',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 2x04',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 2x05',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 2x06',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 2x07',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 2x08',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 2x09',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 2x10',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 3x01',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 3x02',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 3x03',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 3x04',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 3x05',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 3x06',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 3x07',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 3x08',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 3x09',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 3x10',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 4x01',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 4x02',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 4x03',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 4x04',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 4x05',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 4x06',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 4x07',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 4x08',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 4x09',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 4x10',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 5x01',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 5x02',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 5x03',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 5x04',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 5x05',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 5x06',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 5x07',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 5x08',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 5x09',60,'Fantasia',3,3,10, FALSE),
(NULL,'Game of thrones 5x10',60,'Fantasia',3,3,10, FALSE),
(NULL,'The walking dead 1x01',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 1x02',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 1x03',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 1x04',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 1x05',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 1x06',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 1x07',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 1x08',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 1x09',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 1x10',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 2x01',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 2x02',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 2x03',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 2x04',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 2x05',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 2x06',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 2x07',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 2x08',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 2x09',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 2x10',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 3x01',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 3x02',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 3x03',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 3x04',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 3x05',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 3x06',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 3x07',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 3x08',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 3x09',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 3x10',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 4x01',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 4x02',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 4x03',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 4x04',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 4x05',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 4x06',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 4x07',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 4x08',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 4x09',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 4x10',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 5x01',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 5x02',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 5x03',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 5x04',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 5x05',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 5x06',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 5x07',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 5x08',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 5x09',60,'Fantasia',8,7,9, FALSE),
(NULL,'The walking dead 5x10',60,'Fantasia',8,7,9, FALSE),
(NULL,'The boys 1x01',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 1x02',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 1x03',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 1x04',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 1x05',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 1x06',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 1x07',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 1x08',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 1x09',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 1x10',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 2x01',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 2x02',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 2x03',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 2x04',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 2x05',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 2x06',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 2x07',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 2x08',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 2x09',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 2x10',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 3x01',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 3x02',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 3x03',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 3x04',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 3x05',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 3x06',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 3x07',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 3x08',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 3x09',60,'Fantasia',4,4,10, FALSE),
(NULL,'The boys 3x10',60,'Fantasia',4,4,10, FALSE),
(null, 'Los vengadores: La era de ultron',150,'Fantasia',2,2,6,TRUE),
(null, 'Los Vengadores: End game',120,'Fantasia',2,2,9,true),
(null, 'Los vengadores: infinity war',150,'Fantasia',2,2,8,true),
(null, 'Piratas del caribe: la maldición del perla negra',150,'Fantasia',1,1,9,true),
(null, 'Piratas del caribe: El cofre de la muerte',100,'Fantasia',1,1,10,true),
(null, 'Piratas del carible: en el fin del mundo',120,'Fantasia',1,1,6,true);

select * from film_d;

insert into rep_list values(null,'Marcos series',30,1800),
(null,'Anto pelis',3,420),(null,'Cristi 1',6,790),
(null,'Fede cool', 80, 4800),(null,'Flavio trabajo', 3, 370);

select * from rep_list;

insert into rep_mov_tab values(null,1,101),(null,1,102),(null,1,103),(null,1,104),(null,1,105),(null,1,106),(null,1,107),(null,1,108),(null,1,109),(null,1,110),(null,1,111),
(null,1,112),(null,1,113),(null,1,114),(null,1,115),(null,1,116),(null,1,117),(null,1,118),(null,1,119),(null,1,120),(null,1,121),(null,1,122),(null,1,123),
(null,1,124),(null,1,125),(null,1,126),(null,1,127),(null,1,128),(null,1,129),(null,1,130),
(null,2,131),(null,2,132),(null,2,133),
(null,3,131),(null,3,132),(null,3,133),(null,3,134),(null,3,135),(null,3,136),
(null,4,102),(null,4,103),(null,4,104),(null,4,105),(null,4,106),(null,4,107),(null,4,108),(null,4,109),(null,4,110),
(null,4,111),(null,4,112),(null,4,113),(null,4,114),(null,4,115),(null,4,116),(null,4,117),(null,4,118),(null,4,119),
(null,4,120),(null,4,121),(null,4,122),(null,4,123),(null,4,124),(null,4,125),(null,4,126),(null,4,127),(null,4,128),
(null,4,129),(null,4,130),(null,4,51),(null,4,52),(null,4,53),(null,4,54),(null,4,55),(null,4,56),(null,4,57),(null,4,58),
(null,4,59),(null,4,60),(null,4,61),(null,4,62),(null,4,63),(null,4,64),(null,4,65),(null,4,66),(null,4,67),(null,4,68),
(null,4,69),(null,4,70),(null,4,71),(null,4,72),(null,4,73),(null,4,74),(null,4,75),(null,4,76),(null,4,77),(null,4,78),
(null,4,79),(null,4,80),(null,4,81),(null,4,82),(null,4,83),(null,4,84),(null,4,85),(null,4,86),(null,4,87),(null,4,88),(null,4,89),
(null,4,90),(null,4,91),(null,4,92),(null,4,93),(null,4,94),(null,4,95),(null,4,96),(null,4,97),(null,4,98),(null,4,99),(null,4,100),
(null,5,134),(null,5,135),(null,5,136);

select * from rep_mov_tab;

insert into user_id values(1,'Marcos',28),
(2,'Antonella',26),
(3,'Cristal',15),
(4,'Fede',17),
(5,'Flavio',51);

select * from user_id;

insert into user_account values(null,'Marcos','marcosarri@gmail.com','Argentina',28,1,11111111),
(null,'Antonella','antovava@gmail.com','Argentina',26,1,222222222),
(null,'Cristal','cristimichi@gmail.com','Argentina',15,1,33333333),
(null,'Federico','Feedear@gmail.com','Argentina',17,1,44444444),
(null,'Flavio','flavioa@gmail.com','Argentina',51,1,55555555);

select * from user_account;

insert into rep_playlist values (null,'Marcos',1,1);

insert into crea_playlist values(null, 'Marcos', 1, 1),
(null, 'Antonella', 2, 2),
(null, 'Cristal', 3, 3),
(null, 'Fede', 4, 4),
(null, 'Flavio', 5, 5);

insert into mod_playlist values(null, 'Marcos', 1, 1),
(null, 'Antonella', 2, 2),
(null, 'Cristal', 3, 3),
(null, 'Fede', 4, 4),
(null, 'Flavio', 5, 5);

insert into id_acc_user values(null,1,1),
(null,2,2),(null,3,3),
(null,4,4),(null,5,5);

select * from id_acc_user;