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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `TeamID` int NOT NULL AUTO_INCREMENT,
  `Team` varchar(255) DEFAULT NULL,
  `StadiumID` int DEFAULT NULL,
  PRIMARY KEY (`TeamID`),
  KEY `teams_fk1` (`StadiumID`),
  CONSTRAINT `teams_fk1` FOREIGN KEY (`StadiumID`) REFERENCES `stadium` (`StadiumID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Club Brugge',1),(2,'Paris Saint-Germain',2),(3,'Real Madrid',3),(4,'Galatasaray',4),(5,'Tottenham Hotspur',5),(6,'Crvena Zvezda',6),(7,'Bayern Munich',7),(8,'Olympiakos',8),(9,'Manchester City',9),(10,'Shakhtar Donetsk',10),(11,'Dinamo Zagreb',11),(12,'Atalanta',12),(13,'Atletico Madrid',13),(14,'Lokomotiv Moscow',14),(15,'Juventus',15),(16,'Bayer Leverkusen',16),(17,'Napoli',17),(18,'Liverpool',18),(19,'Genk',19),(20,'RB Salzburg',20),(21,'Borussia Dortmund',21),(22,'Barcelona',22),(23,'Internazionale',23),(24,'Slavia Praha',24),(25,'Benfica',25),(26,'Lyon',26),(27,'Zenit St. Petersburg',27),(28,'RB Leipzig',28),(29,'Ajax',29),(30,'Valencia',30),(31,'Lille',31),(32,'Chelsea',32);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
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
