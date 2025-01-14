-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: q2_competition
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `referees`
--

DROP TABLE IF EXISTS `referees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referees` (
  `refereeID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`refereeID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referees`
--

LOCK TABLES `referees` WRITE;
/*!40000 ALTER TABLE `referees` DISABLE KEYS */;
INSERT INTO `referees` VALUES (1,'Ovidiu Alin Hategan','Romania','M'),(2,'Benoit Bastien','France','M'),(3,'Felix Brych','Germany','M'),(4,'Cuneyt Cakir','Turkey','M'),(5,'William Collum','Scotland','M'),(6,'Artur Dias Soares','Portugal','M'),(7,'Andreas Ekberg','Sweden','M'),(8,'Bartosz Frankowski','Poland','M'),(9,'Stephanie Frappart','France','F'),(10,'Jesus Gil Manzano','Spain','M'),(11,'Serdar Gozubukuk','Netherlands','M'),(12,'Orel Grinfeld','Israel','M'),(13,'Marco Guida','Italy','M'),(14,'Srdjan Jovanovic','Serbia','M'),(15,'Matej Jug','Slovenia','M'),(16,'Georgi Kabakov','Bulgaria','M'),(17,'Sergey Karasev','Russia','M'),(18,'Istvan Kovacs','Romania','M'),(19,'Pavel Kralovec','Czech Republic','M'),(20,'Ivan Kruzliak','Slovakia','M'),(21,'Bjorn Kuipers','Netherlands','M'),(22,'Aleksei Kulbakov','Belarus','M'),(23,'Francois Letexier','France','M'),(24,'Bobby Madden','Scotland','M'),(25,'Danny Makkelie','Netherlands','M'),(26,'Szymon Marciniak','Poland','M'),(27,'Davide Massa','Italy','M'),(28,'Antonio Miguel Mateu Lahoz','Spain','M'),(29,'Halil Meler','Turkey','M'),(30,'Michael Oliver','Northumberland','M'),(31,'Daniele Orsato','Italy','M'),(32,'Ali Palabiyik','Turkey','M'),(33,'Pawel Raczkowski','Poland','M'),(34,'Sandro Scharer','Switzerland','M'),(35,'Tasos Sidiropoulos','Greece','M'),(36,'Daniel Siebert','Germany','M'),(37,'Damir Skomina','Slovenia','M'),(38,'Tobias Stieler','Germany','M'),(39,'Anthony Taylor','Cheshire','M'),(40,'Andris Treimanis','Latvia','M'),(41,'Clement Turpin','France','M'),(42,'Slavko Vincic','Slovenia','M'),(43,'Felix Zwayer','Germany','M'),(44,'Carlos del Cerro Grande','Spain','M');
/*!40000 ALTER TABLE `referees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-12 19:02:30
