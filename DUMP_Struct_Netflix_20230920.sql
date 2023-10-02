-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: netflix
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bit_acc_user`
--

create schema netflix;
use netflix;

DROP TABLE IF EXISTS `bit_acc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bit_acc_user` (
  `id_bit` int NOT NULL AUTO_INCREMENT,
  `id_cuenta` int NOT NULL,
  `dni_u` int NOT NULL,
  `day_time` datetime NOT NULL,
  PRIMARY KEY (`id_bit`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bit_crea_playlist`
--

DROP TABLE IF EXISTS `bit_crea_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bit_crea_playlist` (
  `id_bit` int NOT NULL AUTO_INCREMENT,
  `id_mov` int NOT NULL,
  `id_user` int NOT NULL,
  `id_playlist` int NOT NULL,
  `day_time` datetime NOT NULL,
  PRIMARY KEY (`id_bit`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bit_del_playlist`
--

DROP TABLE IF EXISTS `bit_del_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bit_del_playlist` (
  `id_bit` int NOT NULL AUTO_INCREMENT,
  `id_mov` int NOT NULL,
  `id_user` int NOT NULL,
  `id_playlist` int NOT NULL,
  `day_time` datetime NOT NULL,
  PRIMARY KEY (`id_bit`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bit_mod_playlist`
--

DROP TABLE IF EXISTS `bit_mod_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bit_mod_playlist` (
  `id_bit` int NOT NULL AUTO_INCREMENT,
  `id_mov` int NOT NULL,
  `id_user` int NOT NULL,
  `id_playlist` int NOT NULL,
  `day_time` datetime NOT NULL,
  PRIMARY KEY (`id_bit`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `corp_d`
--

DROP TABLE IF EXISTS `corp_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corp_d` (
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  `n_empresa` varchar(100) NOT NULL,
  `country_o` varchar(100) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `corp_film`
--

DROP TABLE IF EXISTS `corp_film`;
/*!50001 DROP VIEW IF EXISTS `corp_film`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `corp_film` AS SELECT 
 1 AS `n_title`,
 1 AS `val_film`,
 1 AS `n_empresa`,
 1 AS `country_o`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `crea_playlist`
--

DROP TABLE IF EXISTS `crea_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crea_playlist` (
  `id_cre` int NOT NULL AUTO_INCREMENT,
  `n_user` varchar(100) NOT NULL,
  `id_playlist` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_cre`),
  KEY `id_playlist` (`id_playlist`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `crea_playlist_ibfk_1` FOREIGN KEY (`id_playlist`) REFERENCES `rep_list` (`id_playlist`),
  CONSTRAINT `crea_playlist_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user_id` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `´tr_bit_crea_playlist´` BEFORE INSERT ON `crea_playlist` FOR EACH ROW insert into netflix.bit_crea_playlist (id_user,id_mov,id_playlist,day_time) values (new.id_user,new.id_cre,new.id_playlist,now()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `del_playlist`
--

DROP TABLE IF EXISTS `del_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `del_playlist` (
  `id_del` int NOT NULL AUTO_INCREMENT,
  `n_user` varchar(100) NOT NULL,
  `id_playlist` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_del`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `del_playlist_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user_id` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `´tr_bit_del_playlist´` BEFORE INSERT ON `del_playlist` FOR EACH ROW insert into netflix.bit_del_playlist (id_user,id_mov,id_playlist,day_time) values (new.id_user,new.id_del,new.id_playlist,now()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `error_handler`
--

DROP TABLE IF EXISTS `error_handler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_handler` (
  `id_error` int NOT NULL AUTO_INCREMENT,
  `day_time` datetime NOT NULL,
  `texto` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_error`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `film_d`
--

DROP TABLE IF EXISTS `film_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_d` (
  `id_film` int NOT NULL AUTO_INCREMENT,
  `n_title` varchar(100) NOT NULL,
  `long_d` int NOT NULL,
  `gen_s` varchar(60) NOT NULL,
  `id_saga` int NOT NULL,
  `id_empresa` int NOT NULL,
  `val_film` int NOT NULL,
  `tipo_f` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_film`),
  KEY `id_saga` (`id_saga`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `film_d_ibfk_1` FOREIGN KEY (`id_saga`) REFERENCES `saga_d` (`id_saga`),
  CONSTRAINT `film_d_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `corp_d` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `id_acc_user`
--

DROP TABLE IF EXISTS `id_acc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_acc_user` (
  `id_a_u` int NOT NULL AUTO_INCREMENT,
  `id_cuenta` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_a_u`),
  KEY `id_cuenta` (`id_cuenta`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `id_acc_user_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `user_account` (`id_cuenta`),
  CONSTRAINT `id_acc_user_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user_id` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `list_rep_us`
--

DROP TABLE IF EXISTS `list_rep_us`;
/*!50001 DROP VIEW IF EXISTS `list_rep_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `list_rep_us` AS SELECT 
 1 AS `n_lista`,
 1 AS `cant_film`,
 1 AS `n_title`,
 1 AS `long_d`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mod_playlist`
--

DROP TABLE IF EXISTS `mod_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mod_playlist` (
  `id_mod` int NOT NULL AUTO_INCREMENT,
  `n_user` varchar(100) NOT NULL,
  `id_playlist` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_mod`),
  KEY `id_playlist` (`id_playlist`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `mod_playlist_ibfk_1` FOREIGN KEY (`id_playlist`) REFERENCES `rep_list` (`id_playlist`),
  CONSTRAINT `mod_playlist_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user_id` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `´tr_bit_mod_playlist´` BEFORE INSERT ON `mod_playlist` FOR EACH ROW insert into netflix.bit_mod_playlist (id_user,id_mov,id_playlist,day_time) values (new.id_user,new.id_mod,new.id_playlist,now()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rep_list`
--

DROP TABLE IF EXISTS `rep_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rep_list` (
  `id_playlist` int NOT NULL AUTO_INCREMENT,
  `n_lista` varchar(100) NOT NULL,
  `cant_film` int DEFAULT NULL,
  `tiempo_total` int DEFAULT NULL,
  PRIMARY KEY (`id_playlist`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rep_mov_tab`
--

DROP TABLE IF EXISTS `rep_mov_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rep_mov_tab` (
  `id_tran` int NOT NULL AUTO_INCREMENT,
  `id_playlist` int NOT NULL,
  `id_film` int NOT NULL,
  PRIMARY KEY (`id_tran`),
  KEY `id_playlist` (`id_playlist`),
  KEY `id_film` (`id_film`),
  CONSTRAINT `rep_mov_tab_ibfk_1` FOREIGN KEY (`id_playlist`) REFERENCES `rep_list` (`id_playlist`),
  CONSTRAINT `rep_mov_tab_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `film_d` (`id_film`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rep_playlist`
--

DROP TABLE IF EXISTS `rep_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rep_playlist` (
  `id_rep` int NOT NULL AUTO_INCREMENT,
  `n_user` varchar(100) NOT NULL,
  `id_playlist` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_rep`),
  KEY `id_playlist` (`id_playlist`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `rep_playlist_ibfk_1` FOREIGN KEY (`id_playlist`) REFERENCES `rep_list` (`id_playlist`),
  CONSTRAINT `rep_playlist_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user_id` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `saga_d`
--

DROP TABLE IF EXISTS `saga_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saga_d` (
  `id_saga` int NOT NULL AUTO_INCREMENT,
  `n_saga` varchar(100) NOT NULL,
  `cant_m` int NOT NULL,
  `val_saga` int NOT NULL,
  PRIMARY KEY (`id_saga`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `saga_film`
--

DROP TABLE IF EXISTS `saga_film`;
/*!50001 DROP VIEW IF EXISTS `saga_film`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `saga_film` AS SELECT 
 1 AS `n_title`,
 1 AS `long_d`,
 1 AS `val_film`,
 1 AS `n_saga`,
 1 AS `cant_films`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id_cuenta` int NOT NULL AUTO_INCREMENT,
  `n_user` varchar(100) NOT NULL,
  `email_u` varchar(100) NOT NULL,
  `region_u` varchar(100) NOT NULL,
  `age_u` int NOT NULL,
  `cant_perfiles` int NOT NULL,
  `dni_u` int NOT NULL,
  PRIMARY KEY (`id_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `´tr_bit_acc_user´` AFTER INSERT ON `user_account` FOR EACH ROW insert into netflix.bit_acc_user (id_cuenta,dni_u,day_time) values (new.id_cuenta,new.dni_u, now()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_id`
--

DROP TABLE IF EXISTS `user_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_id` (
  `id_user` int NOT NULL,
  `n_user` varchar(100) NOT NULL,
  `age_u` int NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `user_list_rep`
--

DROP TABLE IF EXISTS `user_list_rep`;
/*!50001 DROP VIEW IF EXISTS `user_list_rep`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_list_rep` AS SELECT 
 1 AS `n_user`,
 1 AS `id_playlist`,
 1 AS `id_film`,
 1 AS `n_title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `usuarios_perfiles`
--

DROP TABLE IF EXISTS `usuarios_perfiles`;
/*!50001 DROP VIEW IF EXISTS `usuarios_perfiles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuarios_perfiles` AS SELECT 
 1 AS `id_cuenta`,
 1 AS `n_user`,
 1 AS `cant_perfiles`,
 1 AS `id_user`,
 1 AS `nombre_usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `corp_film`
--

/*!50001 DROP VIEW IF EXISTS `corp_film`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `corp_film` AS select `a`.`n_title` AS `n_title`,`a`.`val_film` AS `val_film`,`b`.`n_empresa` AS `n_empresa`,`b`.`country_o` AS `country_o` from (`film_d` `a` join `corp_d` `b` on((`a`.`id_empresa` = `b`.`id_empresa`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `list_rep_us`
--

/*!50001 DROP VIEW IF EXISTS `list_rep_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `list_rep_us` AS select `b`.`n_lista` AS `n_lista`,`b`.`cant_film` AS `cant_film`,`c`.`n_title` AS `n_title`,`c`.`long_d` AS `long_d` from ((`rep_mov_tab` `a` join `rep_list` `b` on((`a`.`id_playlist` = `b`.`id_playlist`))) join `film_d` `c` on((`a`.`id_film` = `c`.`id_film`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `saga_film`
--

/*!50001 DROP VIEW IF EXISTS `saga_film`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `saga_film` AS select `a`.`n_title` AS `n_title`,`a`.`long_d` AS `long_d`,`a`.`val_film` AS `val_film`,`b`.`n_saga` AS `n_saga`,`b`.`cant_m` AS `cant_films` from (`film_d` `a` join `saga_d` `b` on((`a`.`id_saga` = `b`.`id_saga`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_list_rep`
--

/*!50001 DROP VIEW IF EXISTS `user_list_rep`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_list_rep` AS select `a`.`n_user` AS `n_user`,`a`.`id_playlist` AS `id_playlist`,`b`.`id_film` AS `id_film`,`c`.`n_title` AS `n_title` from ((`rep_playlist` `a` join `rep_mov_tab` `b` on((`a`.`id_playlist` = `b`.`id_playlist`))) join `film_d` `c` on((`b`.`id_film` = `c`.`id_film`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuarios_perfiles`
--

/*!50001 DROP VIEW IF EXISTS `usuarios_perfiles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuarios_perfiles` AS select `a`.`id_cuenta` AS `id_cuenta`,`a`.`n_user` AS `n_user`,`a`.`cant_perfiles` AS `cant_perfiles`,`b`.`id_user` AS `id_user`,`c`.`n_user` AS `nombre_usuario` from ((`id_acc_user` `b` join `user_account` `a` on((`b`.`id_cuenta` = `a`.`id_cuenta`))) join `user_id` `c` on((`b`.`id_user` = `c`.`id_user`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-20 19:39:48
