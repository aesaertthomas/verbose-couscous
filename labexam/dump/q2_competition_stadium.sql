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
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadium` (
  `StadiumID` int NOT NULL AUTO_INCREMENT,
  `Stadium` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `NumSpectators` int DEFAULT NULL,
  PRIMARY KEY (`StadiumID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES (1,'Jan Breydel','Brugge','Belgium',26500),(2,'Parc des Princes','Parijs','France',94000),(3,'Santiago Bernabeu','Madrid','Spain',126000),(4,'Türk Telekom Arena','Istanbul','Turkey',22500),(5,'White Hart Lane','London','England',78000),(6,'Rajko Mitić Stadium','Belgrado','Serbia',22750),(7,'Allianz Arena','Munchen','Germany',112000),(8,'Stadion Karaiskakis','Athene','Greece',38000),(9,'City of Manchester','Manchester','England',102000),(10,'Donbass Arena','Donetsk','Ukraine',71000),(11,'Stadion Maksimir','Zagreb','Croatia',33500),(12,'Stadion Atleti Azzurri','Bergamo','Italy',18500),(13,'Vicente Calderon','Madrid','Spain',114000),(14,'RZD Arena','Moskou','Russia',33000),(15,'Juventus Stadium','Turijn','Italy',106000),(16,'BayArena','Leverkusen','Germany',49000),(17,'San Paolo','Napels','Italy',68000),(18,'Anfield','Liverpool','England',91000),(19,'Luminus Arena','Gent','Belgium',30000),(20,'Red Bull Arena','Salzburg','Austria',50500),(21,'Signal Iduna Park','Dortmund','Germany',76000),(22,'Nou Camp','Barcelona','Spain',114000),(23,'San Siro Stadium','Milaan','Italy',26000),(24,'Synot Tip Arena','Praag','Czech',27500),(25,'Estádio da Luz','Lissabon','Portugal',66000),(26,'Groupama Stadium','Lyon','France',69000),(27,'Gazprom Arena','St Petersburg','Russia',62000),(28,'Red Bull Arena Leipzig','Leipzig','Germany',32000),(29,'Amsterdam Arena','Amsterdam','Netherland',65500),(30,'Mestalla','Valencia','Spain',46000),(31,'Stadion Pierre-Mauroy','Rijsel','France',6000),(32,'Stamford Bridge','London','England',75000);
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
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
