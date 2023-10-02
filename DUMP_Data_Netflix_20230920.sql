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
-- Dumping data for table `bit_acc_user`
--

LOCK TABLES `bit_acc_user` WRITE;
/*!40000 ALTER TABLE `bit_acc_user` DISABLE KEYS */;
INSERT INTO `bit_acc_user` VALUES (1,1,11111111,'2023-09-20 18:36:28'),(2,2,222222222,'2023-09-20 18:36:28'),(3,3,33333333,'2023-09-20 18:36:28'),(4,4,44444444,'2023-09-20 18:36:28'),(5,5,55555555,'2023-09-20 18:36:28'),(6,6,123456789,'2023-09-20 18:44:09');
/*!40000 ALTER TABLE `bit_acc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bit_crea_playlist`
--

LOCK TABLES `bit_crea_playlist` WRITE;
/*!40000 ALTER TABLE `bit_crea_playlist` DISABLE KEYS */;
INSERT INTO `bit_crea_playlist` VALUES (1,0,1,1,'2023-09-20 18:38:57'),(2,0,2,2,'2023-09-20 18:38:57'),(3,0,3,3,'2023-09-20 18:38:57'),(4,0,4,4,'2023-09-20 18:38:57'),(5,0,5,5,'2023-09-20 18:38:57'),(6,0,6,6,'2023-09-20 18:46:14');
/*!40000 ALTER TABLE `bit_crea_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bit_del_playlist`
--

LOCK TABLES `bit_del_playlist` WRITE;
/*!40000 ALTER TABLE `bit_del_playlist` DISABLE KEYS */;
INSERT INTO `bit_del_playlist` VALUES (1,0,6,6,'2023-09-20 18:47:06');
/*!40000 ALTER TABLE `bit_del_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bit_mod_playlist`
--

LOCK TABLES `bit_mod_playlist` WRITE;
/*!40000 ALTER TABLE `bit_mod_playlist` DISABLE KEYS */;
INSERT INTO `bit_mod_playlist` VALUES (1,0,1,1,'2023-09-20 18:39:09'),(2,0,2,2,'2023-09-20 18:39:09'),(3,0,3,3,'2023-09-20 18:39:09'),(4,0,4,4,'2023-09-20 18:39:09'),(5,0,5,5,'2023-09-20 18:39:09'),(13,0,1,1,'2023-09-20 19:33:19'),(14,0,1,1,'2023-09-20 19:33:56'),(15,0,1,1,'2023-09-20 19:34:23'),(16,0,1,1,'2023-09-20 19:34:33');
/*!40000 ALTER TABLE `bit_mod_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `corp_d`
--

LOCK TABLES `corp_d` WRITE;
/*!40000 ALTER TABLE `corp_d` DISABLE KEYS */;
INSERT INTO `corp_d` VALUES (1,'WarnerBrothers','Estados Unidos'),(2,'Disney','Estados Unidos'),(3,'HBO','Estados Unidos'),(4,'Amazon Prime','Estados Unidos'),(5,'Lionsgate','Estados Unidos'),(6,'Dreamworks','Estados Unidos'),(7,'AMC','Canada');
/*!40000 ALTER TABLE `corp_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `crea_playlist`
--

LOCK TABLES `crea_playlist` WRITE;
/*!40000 ALTER TABLE `crea_playlist` DISABLE KEYS */;
INSERT INTO `crea_playlist` VALUES (1,'Marcos',1,1),(2,'Antonella',2,2),(3,'Cristal',3,3),(4,'Fede',4,4),(5,'Flavio',5,5);
/*!40000 ALTER TABLE `crea_playlist` ENABLE KEYS */;
UNLOCK TABLES;
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
-- Dumping data for table `del_playlist`
--

LOCK TABLES `del_playlist` WRITE;
/*!40000 ALTER TABLE `del_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `del_playlist` ENABLE KEYS */;
UNLOCK TABLES;
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
-- Dumping data for table `error_handler`
--

LOCK TABLES `error_handler` WRITE;
/*!40000 ALTER TABLE `error_handler` DISABLE KEYS */;
/*!40000 ALTER TABLE `error_handler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `film_d`
--

LOCK TABLES `film_d` WRITE;
/*!40000 ALTER TABLE `film_d` DISABLE KEYS */;
INSERT INTO `film_d` VALUES (1,'Game of thrones 1x01',60,'Fantasia',3,3,10,0),(2,'Game of thrones 1x02',60,'Fantasia',3,3,10,0),(3,'Game of thrones 1x03',60,'Fantasia',3,3,10,0),(4,'Game of thrones 1x04',60,'Fantasia',3,3,10,0),(5,'Game of thrones 1x05',60,'Fantasia',3,3,10,0),(6,'Game of thrones 1x06',60,'Fantasia',3,3,10,0),(7,'Game of thrones 1x07',60,'Fantasia',3,3,10,0),(8,'Game of thrones 1x08',60,'Fantasia',3,3,10,0),(9,'Game of thrones 1x09',60,'Fantasia',3,3,10,0),(10,'Game of thrones 1x10',60,'Fantasia',3,3,10,0),(11,'Game of thrones 2x01',60,'Fantasia',3,3,10,0),(12,'Game of thrones 2x02',60,'Fantasia',3,3,10,0),(13,'Game of thrones 2x03',60,'Fantasia',3,3,10,0),(14,'Game of thrones 2x04',60,'Fantasia',3,3,10,0),(15,'Game of thrones 2x05',60,'Fantasia',3,3,10,0),(16,'Game of thrones 2x06',60,'Fantasia',3,3,10,0),(17,'Game of thrones 2x07',60,'Fantasia',3,3,10,0),(18,'Game of thrones 2x08',60,'Fantasia',3,3,10,0),(19,'Game of thrones 2x09',60,'Fantasia',3,3,10,0),(20,'Game of thrones 2x10',60,'Fantasia',3,3,10,0),(21,'Game of thrones 3x01',60,'Fantasia',3,3,10,0),(22,'Game of thrones 3x02',60,'Fantasia',3,3,10,0),(23,'Game of thrones 3x03',60,'Fantasia',3,3,10,0),(24,'Game of thrones 3x04',60,'Fantasia',3,3,10,0),(25,'Game of thrones 3x05',60,'Fantasia',3,3,10,0),(26,'Game of thrones 3x06',60,'Fantasia',3,3,10,0),(27,'Game of thrones 3x07',60,'Fantasia',3,3,10,0),(28,'Game of thrones 3x08',60,'Fantasia',3,3,10,0),(29,'Game of thrones 3x09',60,'Fantasia',3,3,10,0),(30,'Game of thrones 3x10',60,'Fantasia',3,3,10,0),(31,'Game of thrones 4x01',60,'Fantasia',3,3,10,0),(32,'Game of thrones 4x02',60,'Fantasia',3,3,10,0),(33,'Game of thrones 4x03',60,'Fantasia',3,3,10,0),(34,'Game of thrones 4x04',60,'Fantasia',3,3,10,0),(35,'Game of thrones 4x05',60,'Fantasia',3,3,10,0),(36,'Game of thrones 4x06',60,'Fantasia',3,3,10,0),(37,'Game of thrones 4x07',60,'Fantasia',3,3,10,0),(38,'Game of thrones 4x08',60,'Fantasia',3,3,10,0),(39,'Game of thrones 4x09',60,'Fantasia',3,3,10,0),(40,'Game of thrones 4x10',60,'Fantasia',3,3,10,0),(41,'Game of thrones 5x01',60,'Fantasia',3,3,10,0),(42,'Game of thrones 5x02',60,'Fantasia',3,3,10,0),(43,'Game of thrones 5x03',60,'Fantasia',3,3,10,0),(44,'Game of thrones 5x04',60,'Fantasia',3,3,10,0),(45,'Game of thrones 5x05',60,'Fantasia',3,3,10,0),(46,'Game of thrones 5x06',60,'Fantasia',3,3,10,0),(47,'Game of thrones 5x07',60,'Fantasia',3,3,10,0),(48,'Game of thrones 5x08',60,'Fantasia',3,3,10,0),(49,'Game of thrones 5x09',60,'Fantasia',3,3,10,0),(50,'Game of thrones 5x10',60,'Fantasia',3,3,10,0),(51,'The walking dead 1x01',60,'Fantasia',8,7,9,0),(52,'The walking dead 1x02',60,'Fantasia',8,7,9,0),(53,'The walking dead 1x03',60,'Fantasia',8,7,9,0),(54,'The walking dead 1x04',60,'Fantasia',8,7,9,0),(55,'The walking dead 1x05',60,'Fantasia',8,7,9,0),(56,'The walking dead 1x06',60,'Fantasia',8,7,9,0),(57,'The walking dead 1x07',60,'Fantasia',8,7,9,0),(58,'The walking dead 1x08',60,'Fantasia',8,7,9,0),(59,'The walking dead 1x09',60,'Fantasia',8,7,9,0),(60,'The walking dead 1x10',60,'Fantasia',8,7,9,0),(61,'The walking dead 2x01',60,'Fantasia',8,7,9,0),(62,'The walking dead 2x02',60,'Fantasia',8,7,9,0),(63,'The walking dead 2x03',60,'Fantasia',8,7,9,0),(64,'The walking dead 2x04',60,'Fantasia',8,7,9,0),(65,'The walking dead 2x05',60,'Fantasia',8,7,9,0),(66,'The walking dead 2x06',60,'Fantasia',8,7,9,0),(67,'The walking dead 2x07',60,'Fantasia',8,7,9,0),(68,'The walking dead 2x08',60,'Fantasia',8,7,9,0),(69,'The walking dead 2x09',60,'Fantasia',8,7,9,0),(70,'The walking dead 2x10',60,'Fantasia',8,7,9,0),(71,'The walking dead 3x01',60,'Fantasia',8,7,9,0),(72,'The walking dead 3x02',60,'Fantasia',8,7,9,0),(73,'The walking dead 3x03',60,'Fantasia',8,7,9,0),(74,'The walking dead 3x04',60,'Fantasia',8,7,9,0),(75,'The walking dead 3x05',60,'Fantasia',8,7,9,0),(76,'The walking dead 3x06',60,'Fantasia',8,7,9,0),(77,'The walking dead 3x07',60,'Fantasia',8,7,9,0),(78,'The walking dead 3x08',60,'Fantasia',8,7,9,0),(79,'The walking dead 3x09',60,'Fantasia',8,7,9,0),(80,'The walking dead 3x10',60,'Fantasia',8,7,9,0),(81,'The walking dead 4x01',60,'Fantasia',8,7,9,0),(82,'The walking dead 4x02',60,'Fantasia',8,7,9,0),(83,'The walking dead 4x03',60,'Fantasia',8,7,9,0),(84,'The walking dead 4x04',60,'Fantasia',8,7,9,0),(85,'The walking dead 4x05',60,'Fantasia',8,7,9,0),(86,'The walking dead 4x06',60,'Fantasia',8,7,9,0),(87,'The walking dead 4x07',60,'Fantasia',8,7,9,0),(88,'The walking dead 4x08',60,'Fantasia',8,7,9,0),(89,'The walking dead 4x09',60,'Fantasia',8,7,9,0),(90,'The walking dead 4x10',60,'Fantasia',8,7,9,0),(91,'The walking dead 5x01',60,'Fantasia',8,7,9,0),(92,'The walking dead 5x02',60,'Fantasia',8,7,9,0),(93,'The walking dead 5x03',60,'Fantasia',8,7,9,0),(94,'The walking dead 5x04',60,'Fantasia',8,7,9,0),(95,'The walking dead 5x05',60,'Fantasia',8,7,9,0),(96,'The walking dead 5x06',60,'Fantasia',8,7,9,0),(97,'The walking dead 5x07',60,'Fantasia',8,7,9,0),(98,'The walking dead 5x08',60,'Fantasia',8,7,9,0),(99,'The walking dead 5x09',60,'Fantasia',8,7,9,0),(100,'The walking dead 5x10',60,'Fantasia',8,7,9,0),(101,'The boys 1x01',60,'Fantasia',4,4,10,0),(102,'The boys 1x02',60,'Fantasia',4,4,10,0),(103,'The boys 1x03',60,'Fantasia',4,4,10,0),(104,'The boys 1x04',60,'Fantasia',4,4,10,0),(105,'The boys 1x05',60,'Fantasia',4,4,10,0),(106,'The boys 1x06',60,'Fantasia',4,4,10,0),(107,'The boys 1x07',60,'Fantasia',4,4,10,0),(108,'The boys 1x08',60,'Fantasia',4,4,10,0),(109,'The boys 1x09',60,'Fantasia',4,4,10,0),(110,'The boys 1x10',60,'Fantasia',4,4,10,0),(111,'The boys 2x01',60,'Fantasia',4,4,10,0),(112,'The boys 2x02',60,'Fantasia',4,4,10,0),(113,'The boys 2x03',60,'Fantasia',4,4,10,0),(114,'The boys 2x04',60,'Fantasia',4,4,10,0),(115,'The boys 2x05',60,'Fantasia',4,4,10,0),(116,'The boys 2x06',60,'Fantasia',4,4,10,0),(117,'The boys 2x07',60,'Fantasia',4,4,10,0),(118,'The boys 2x08',60,'Fantasia',4,4,10,0),(119,'The boys 2x09',60,'Fantasia',4,4,10,0),(120,'The boys 2x10',60,'Fantasia',4,4,10,0),(121,'The boys 3x01',60,'Fantasia',4,4,10,0),(122,'The boys 3x02',60,'Fantasia',4,4,10,0),(123,'The boys 3x03',60,'Fantasia',4,4,10,0),(124,'The boys 3x04',60,'Fantasia',4,4,10,0),(125,'The boys 3x05',60,'Fantasia',4,4,10,0),(126,'The boys 3x06',60,'Fantasia',4,4,10,0),(127,'The boys 3x07',60,'Fantasia',4,4,10,0),(128,'The boys 3x08',60,'Fantasia',4,4,10,0),(129,'The boys 3x09',60,'Fantasia',4,4,10,0),(130,'The boys 3x10',60,'Fantasia',4,4,10,0),(131,'Los vengadores: La era de ultron',150,'Fantasia',2,2,6,1),(132,'Los Vengadores: End game',120,'Fantasia',2,2,9,1),(133,'Los vengadores: infinity war',150,'Fantasia',2,2,8,1),(134,'Piratas del caribe: la maldición del perla negra',150,'Fantasia',1,1,9,1),(135,'Piratas del caribe: El cofre de la muerte',100,'Fantasia',1,1,10,1),(136,'Piratas del carible: en el fin del mundo',120,'Fantasia',1,1,6,1);
/*!40000 ALTER TABLE `film_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `id_acc_user`
--

LOCK TABLES `id_acc_user` WRITE;
/*!40000 ALTER TABLE `id_acc_user` DISABLE KEYS */;
INSERT INTO `id_acc_user` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(7,6,7),(8,6,8),(9,6,9);
/*!40000 ALTER TABLE `id_acc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mod_playlist`
--

LOCK TABLES `mod_playlist` WRITE;
/*!40000 ALTER TABLE `mod_playlist` DISABLE KEYS */;
INSERT INTO `mod_playlist` VALUES (1,'Marcos',1,1),(2,'Antonella',2,2),(3,'Cristal',3,3),(4,'Fede',4,4),(5,'Flavio',5,5),(13,'Marcos',1,1),(14,'Marcos',1,1),(15,'Marcos',1,1),(16,'Marcos',1,1);
/*!40000 ALTER TABLE `mod_playlist` ENABLE KEYS */;
UNLOCK TABLES;
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
-- Dumping data for table `rep_list`
--

LOCK TABLES `rep_list` WRITE;
/*!40000 ALTER TABLE `rep_list` DISABLE KEYS */;
INSERT INTO `rep_list` VALUES (1,'Marcos series',0,1800),(2,'Anto pelis',3,420),(3,'Cristi 1',6,790),(4,'Fede cool',80,4800),(5,'Flavio trabajo',3,370);
/*!40000 ALTER TABLE `rep_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rep_mov_tab`
--

LOCK TABLES `rep_mov_tab` WRITE;
/*!40000 ALTER TABLE `rep_mov_tab` DISABLE KEYS */;
INSERT INTO `rep_mov_tab` VALUES (1,1,101),(2,1,102),(3,1,103),(4,1,104),(5,1,105),(6,1,106),(7,1,107),(8,1,108),(9,1,109),(10,1,110),(11,1,111),(12,1,112),(13,1,113),(14,1,114),(15,1,115),(16,1,116),(17,1,117),(18,1,118),(19,1,119),(20,1,120),(21,1,121),(22,1,122),(23,1,123),(24,1,124),(25,1,125),(26,1,126),(27,1,127),(28,1,128),(29,1,129),(30,1,130),(31,2,131),(32,2,132),(33,2,133),(34,3,131),(35,3,132),(36,3,133),(38,3,135),(39,3,136),(40,4,102),(41,4,103),(42,4,104),(43,4,105),(44,4,106),(45,4,107),(46,4,108),(47,4,109),(48,4,110),(49,4,111),(50,4,112),(51,4,113),(52,4,114),(53,4,115),(54,4,116),(55,4,117),(56,4,118),(57,4,119),(58,4,120),(59,4,121),(60,4,122),(61,4,123),(62,4,124),(63,4,125),(64,4,126),(65,4,127),(66,4,128),(67,4,129),(68,4,130),(69,4,51),(70,4,52),(71,4,53),(72,4,54),(73,4,55),(74,4,56),(75,4,57),(76,4,58),(77,4,59),(78,4,60),(79,4,61),(80,4,62),(81,4,63),(82,4,64),(83,4,65),(84,4,66),(85,4,67),(86,4,68),(87,4,69),(88,4,70),(89,4,71),(90,4,72),(91,4,73),(92,4,74),(93,4,75),(94,4,76),(95,4,77),(96,4,78),(97,4,79),(98,4,80),(99,4,81),(100,4,82),(101,4,83),(102,4,84),(103,4,85),(104,4,86),(105,4,87),(106,4,88),(107,4,89),(108,4,90),(109,4,91),(110,4,92),(111,4,93),(112,4,94),(113,4,95),(114,4,96),(115,4,97),(116,4,98),(117,4,99),(118,4,100),(120,5,135),(121,5,136);
/*!40000 ALTER TABLE `rep_mov_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rep_playlist`
--

LOCK TABLES `rep_playlist` WRITE;
/*!40000 ALTER TABLE `rep_playlist` DISABLE KEYS */;
INSERT INTO `rep_playlist` VALUES (2,'Marcos',1,1);
/*!40000 ALTER TABLE `rep_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `saga_d`
--

LOCK TABLES `saga_d` WRITE;
/*!40000 ALTER TABLE `saga_d` DISABLE KEYS */;
INSERT INTO `saga_d` VALUES (1,'Piratas del caribe',5,3),(2,'Los Vengadores',5,5),(3,'Game Of Thrones',8,5),(4,'The Boys',4,4),(5,'The 100',5,2),(6,'Once upon a time',10,4),(7,'Vikings',6,4),(8,'The walking dead',13,4),(9,'MR Robot',4,5),(10,'Breaking Bad',5,5);
/*!40000 ALTER TABLE `saga_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,'Marcos','marcosarri@gmail.com','Argentina',28,1,11111111),(2,'Antonella','antovava@gmail.com','Argentina',26,1,222222222),(3,'Cristal','cristimichi@gmail.com','Argentina',15,1,33333333),(4,'Federico','Feedear@gmail.com','Argentina',17,1,44444444),(5,'Flavio','flavioa@gmail.com','Argentina',51,1,55555555),(6,'Angel','Angel@gmail.com','Argentina',30,4,123456789);
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;
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
-- Dumping data for table `user_id`
--

LOCK TABLES `user_id` WRITE;
/*!40000 ALTER TABLE `user_id` DISABLE KEYS */;
INSERT INTO `user_id` VALUES (1,'Marcos',28),(2,'Antonella',26),(3,'Cristal',15),(4,'Fede',17),(5,'Flavio',51),(7,'Angel3',18),(8,'Angel2',18),(9,'Angel1',18);
/*!40000 ALTER TABLE `user_id` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-20 19:44:43
