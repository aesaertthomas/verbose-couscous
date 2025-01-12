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
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `MatchID` int NOT NULL AUTO_INCREMENT,
  `EventDateTime` datetime DEFAULT NULL,
  `StadiumID` int DEFAULT NULL,
  `HomeTeamID` int DEFAULT NULL,
  `GuestTeamID` int DEFAULT NULL,
  `Result` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`MatchID`),
  KEY `matches_fk1` (`StadiumID`),
  KEY `matches_fk2` (`HomeTeamID`),
  KEY `matches_fk3` (`GuestTeamID`),
  CONSTRAINT `matches_fk1` FOREIGN KEY (`StadiumID`) REFERENCES `stadium` (`StadiumID`),
  CONSTRAINT `matches_fk2` FOREIGN KEY (`HomeTeamID`) REFERENCES `teams` (`TeamID`),
  CONSTRAINT `matches_fk3` FOREIGN KEY (`GuestTeamID`) REFERENCES `teams` (`TeamID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,'2019-09-17 21:00:00',17,17,18,'2 - 0'),(2,'2019-09-17 21:00:00',20,20,19,'6 - 2'),(3,'2019-09-17 21:00:00',23,23,24,'1 - 1'),(4,'2019-09-17 21:00:00',21,21,22,'0 - 0'),(5,'2019-10-01 19:00:00',3,3,1,'2 - 2'),(6,'2019-10-01 19:00:00',4,4,2,'0 - 1'),(7,'2021-10-06 19:00:00',27,27,25,'Null');
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-12 19:02:31
