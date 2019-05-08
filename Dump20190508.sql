CREATE DATABASE  IF NOT EXISTS `cb7team-proto` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cb7team-proto`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: cb7team-proto
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `extra_gear`
--

DROP TABLE IF EXISTS `extra_gear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `extra_gear` (
  `idextra_gear` int(11) NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `piclink` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idextra_gear`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_gear`
--

LOCK TABLES `extra_gear` WRITE;
/*!40000 ALTER TABLE `extra_gear` DISABLE KEYS */;
INSERT INTO `extra_gear` VALUES (1,10,'vsgjc','jskgdfugril',''),(2,15,'vsgxxjc','jskgdfccugril',''),(3,13,'vsgjc','jskgdfugril','');
/*!40000 ALTER TABLE `extra_gear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gear_provided`
--

DROP TABLE IF EXISTS `gear_provided`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gear_provided` (
  `idgear` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `piclink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idgear`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gear_provided`
--

LOCK TABLES `gear_provided` WRITE;
/*!40000 ALTER TABLE `gear_provided` DISABLE KEYS */;
INSERT INTO `gear_provided` VALUES (1,'Big Softbox','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Mollitia libero earum ex quae inventore facilis sunt optio error ducimus iusto?','http://lorempixel.com/400/400/people/'),(2,'Small Softbox','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Mollitia libero earum ex quae inventore facilis sunt optio error ','http://lorempixel.com/400/400/people/'),(3,'Beauty Ring','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Mollitia libero earum ex quae inventore facilis sunt optio error ducimus iusto?','http://lorempixel.com/400/400/people/'),(4,'Ice Light','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Mollitia libero earum ex quae inventore facilis sunt optio ','http://lorempixel.com/400/400/people/'),(5,'High Power Fan','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Mollitia libero earum ex quae inventore facilis sunt optio error ','http://lorempixel.com/400/400/people/');
/*!40000 ALTER TABLE `gear_provided` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_UNIQUE` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'ADMIN'),(1,'USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_gear`
--

DROP TABLE IF EXISTS `session_gear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `session_gear` (
  `fk_gear_id` int(11) NOT NULL,
  `fk_session_id` int(11) NOT NULL,
  PRIMARY KEY (`fk_session_id`,`fk_gear_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_gear`
--

LOCK TABLES `session_gear` WRITE;
/*!40000 ALTER TABLE `session_gear` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_gear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio_sessions`
--

DROP TABLE IF EXISTS `studio_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `studio_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `total_price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studio-sessions-fk-user-id_idx` (`fk_user_id`),
  CONSTRAINT `studio-sessions-fk-user-id` FOREIGN KEY (`fk_user_id`) REFERENCES `users` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio_sessions`
--

LOCK TABLES `studio_sessions` WRITE;
/*!40000 ALTER TABLE `studio_sessions` DISABLE KEYS */;
INSERT INTO `studio_sessions` VALUES (1,1,'2019-04-22 02:27:45',50),(2,1,'2019-04-23 02:27:45',50),(3,1,'2019-04-24 02:27:45',50),(4,1,'2019-04-25 02:27:45',50),(6,1,'2019-04-26 02:27:45',50),(7,1,'2019-04-26 02:27:45',50),(8,1,'2019-04-26 02:27:45',50),(9,1,'2019-04-26 02:27:45',88),(11,1,'2019-04-26 02:27:45',88),(12,1,'2019-04-26 02:27:45',88),(14,1,'2019-04-26 02:27:45',88),(15,1,'2019-04-26 02:27:45',88),(16,1,'2019-04-26 02:27:45',88),(17,1,'2019-04-26 02:27:45',88),(18,1,'2019-04-26 02:27:45',88),(19,1,'2019-04-26 02:27:45',88),(20,1,'2019-05-03 12:00:00',88),(21,1,'2019-05-13 08:00:00',88),(22,1,'2019-05-18 20:00:00',88),(23,1,'2019-05-15 08:00:00',88),(24,1,'2019-05-18 16:00:00',88),(25,1,'2019-05-10 16:00:00',88),(26,1,'2019-05-09 12:00:00',50),(27,1,'2019-05-09 20:00:00',50);
/*!40000 ALTER TABLE `studio_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `token` (
  `idtoken` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`idtoken`),
  KEY `token-fk-user-id_idx` (`fk_user_id`),
  CONSTRAINT `token-fk-user-id` FOREIGN KEY (`fk_user_id`) REFERENCES `users` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'d300b803-4a82-43e1-ba86-5337f65d1ef9'),(2,4,'6b9e903b-885f-43f6-9be9-2c0488701283'),(3,4,'5a33a81c-9a75-4c87-8172-59ba2e40463b'),(4,4,'42d2d02f-5b5d-4aa3-825e-d0122cc60a3a'),(5,4,'0a435a7f-349a-4fe6-8f4e-4cd1f842953d'),(6,4,'e461bcc4-256d-4afe-98e7-f509eb1704d8'),(7,4,'d371eb25-0c80-4dfa-8a30-5aeb581ad67e'),(8,4,'28318d9a-3b91-46c2-b027-5937eb2ba6aa'),(9,4,'842bd262-3e58-4829-8b0b-e31fda1bcdf2'),(10,4,'bd8919e7-d3e7-4fee-ab69-cd838cb529ec'),(11,4,'8fe36075-a943-4e46-beb4-9274fcc8b6be'),(12,4,'f95cff59-f48b-430d-bb61-3a9c619143ba'),(13,4,'0e5bd59f-621d-454e-a136-f65ff995a81f'),(15,4,'6519bc78-08dd-4f9e-b883-b62157ab86b2'),(16,4,'68e6e2e7-5e0c-4492-8707-05021cbe66cf');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fk_role_id` int(11) NOT NULL,
  `random` varchar(255) NOT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `users-fk-role-id_idx` (`fk_role_id`),
  CONSTRAINT `users-fk-role-id` FOREIGN KEY (`fk_role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mike','5fbc0593bbd308e84fbaa9df247047fd833bae95c707ee60232eba8697f071e9','lllllll','kkkkkkk','theobrrrrrrr1988@hotmail.com',1,'43eefe93-02ca-4c86-adef-f7986ff612c1'),(2,'mike2','690042258d4260ff65c07e6c048d2483789f841b5ee78d0868738c43e7d62638','lllllll','kkkkkkk','brrrrrrr1988@hotmail.com',1,'d7eb3048-9942-4283-8385-d7a563ec0371'),(3,'mike23','ad28610430eeaf9b43235d0a940c2a0cc43a054fc1f025e44739415d87aa00d0','lllllll','kkkkkkk','rrrrr1988@hotmail.com',1,'59c56b54-2cae-4bcf-805e-bc40ef0dd8cc'),(4,'admin','c91c919e286b8dca820efed08c44f25697b53d9585ad651f60e82664d80a5bef','Admin','Istrator','email@here.com',2,'02a02d29-7662-497a-997d-39d8967b43b8');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-08 23:28:53
