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
-- Table structure for table `matchreferee`
--

DROP TABLE IF EXISTS `matchreferee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchreferee` (
  `MatchID` int NOT NULL,
  `RefereeID` int NOT NULL,
  `RefeeRole` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MatchID`,`RefereeID`),
  KEY `matchrefereee_fk2` (`RefereeID`),
  CONSTRAINT `matchreferee_fk1` FOREIGN KEY (`MatchID`) REFERENCES `matches` (`MatchID`),
  CONSTRAINT `matchrefereee_fk2` FOREIGN KEY (`RefereeID`) REFERENCES `referees` (`refereeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchreferee`
--

LOCK TABLES `matchreferee` WRITE;
/*!40000 ALTER TABLE `matchreferee` DISABLE KEYS */;
INSERT INTO `matchreferee` VALUES (1,7,'Head Referee'),(1,8,'Assistant'),(1,9,'Assistant'),(1,10,'Assistant'),(2,15,'Head Referee'),(2,16,'Assistant'),(2,17,'Assistant'),(2,18,'Assistant'),(3,13,'Assistant'),(3,25,'Assistant'),(3,27,'Assistant'),(3,31,'Head Referee'),(4,3,'Head Referee'),(4,36,'Assistant'),(4,38,'Assistant'),(4,39,'Assistant'),(4,43,'Assistant'),(5,4,'Head Referee'),(5,11,'Assistant'),(5,29,'Assistant'),(5,32,'Assistant'),(6,17,'Assistant'),(6,19,'Assistant'),(6,21,'Head Referee'),(6,25,'Assistant'),(7,6,'Head Referee'),(7,12,'Assistant'),(7,14,'Assistant'),(7,20,'Assistant'),(7,22,'Assistant');
/*!40000 ALTER TABLE `matchreferee` ENABLE KEYS */;
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
