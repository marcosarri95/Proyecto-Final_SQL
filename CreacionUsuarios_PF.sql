use MySql;

#creamos a  un usuario visor que solamente podrá ver tablas en el sistema
CREATE USER 'visor'@'localhost' IDENTIFIED BY '1234';
#creamos a un usuario MarcosArri que solamente podra insertar, upgradear y seleccionar tablas 
CREATE USER 'MarcosArri'@'localhost' IDENTIFIED BY 'marcos1234';
#creamos a un usuario Cristal1 que solamente podra insertar, upgradear y seleccionar tablas 
CREATE USER 'Cristal1'@'localhost' IDENTIFIED BY 'cristi1234';

SHOW VARIABLES LIKE '%validate_password';
SELECT * FROM USER; 

#vemos los permisos que tienen los distintos usuarios
SHOW GRANTS FOR 'visor'@'localhost';
SHOW GRANTS FOR 'root'@'localhost';

#damos el permiso de visualizar todas las tablas del esquema netflix al usuario visor
GRANT SELECT ON netflix.* to 'visor'@'localhost';
#damos el permiso de visualizar, insertar y upgradear todas las tablas del esquema netflix al usuario MarcosArri
GRANT SELECT, UPDATE, INSERT ON netflix.* to 'MarcosArri'@'localhost';
#damos el permiso de visualizar, insertar y upgradear todas las tablas del esquema netflix al usuario Cristal1
GRANT SELECT, UPDATE, INSERT ON netflix.* to 'Cristal1'@'localhost';

SHOW GRANTS FOR 'visor'@'localhost';
SHOW GRANTS FOR 'MarcosArri'@'localhost';
SHOW GRANTS FOR 'Cristal1'@'localhost';