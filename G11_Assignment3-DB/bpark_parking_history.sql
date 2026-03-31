-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: bpark
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `parking_history`
--

DROP TABLE IF EXISTS `parking_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking_history` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `subscriber_code` varchar(20) NOT NULL,
  `parking_space_id` int NOT NULL,
  `entry_time` datetime NOT NULL,
  `exit_time` datetime DEFAULT NULL,
  `extended` tinyint(1) DEFAULT '0',
  `extended_hours` int DEFAULT '0',
  `was_late` tinyint(1) DEFAULT '0',
  `picked_up` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`history_id`),
  KEY `subscriber_code` (`subscriber_code`),
  KEY `parking_space_id` (`parking_space_id`),
  CONSTRAINT `parking_history_ibfk_1` FOREIGN KEY (`subscriber_code`) REFERENCES `subscriber` (`subscriber_code`),
  CONSTRAINT `parking_history_ibfk_2` FOREIGN KEY (`parking_space_id`) REFERENCES `parking_space` (`parking_space_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_history`
--

LOCK TABLES `parking_history` WRITE;
/*!40000 ALTER TABLE `parking_history` DISABLE KEYS */;
INSERT INTO `parking_history` VALUES (13,'SUB5',6,'2025-05-30 22:27:38','2025-05-31 02:27:38',0,0,0,0),(14,'SUB5',5,'2025-05-30 18:27:38','2025-05-30 21:27:38',0,0,0,0),(15,'SUB5',7,'2025-05-30 15:27:38','2025-05-30 19:27:38',0,0,1,0),(16,'SUB5',9,'2025-05-31 01:27:38','2025-05-31 05:27:38',0,0,1,0),(17,'SUB6',7,'2025-05-30 23:50:20','2025-05-31 03:50:20',0,0,1,0),(18,'SUB3',5,'2025-05-30 23:50:48','2025-05-31 03:50:48',0,0,1,0),(19,'SUB7',1,'2025-05-31 00:06:50','2025-06-01 15:24:44',1,4,1,1),(20,'SUB3',2,'2025-06-01 00:36:34','2025-06-01 12:36:34',1,4,1,0),(21,'SUB5',3,'2025-06-01 12:32:33','2025-06-01 15:20:19',1,4,0,1),(22,'SUB3',10,'2025-06-01 14:06:15','2025-06-01 15:22:56',0,0,0,1),(23,'SUB7',1,'2025-06-01 14:32:16','2025-06-01 15:23:20',1,4,0,1),(24,'SUB7',4,'2025-06-01 15:24:29','2025-06-01 15:24:35',0,0,0,1),(25,'SUB5',8,'2025-06-01 15:28:02','2025-06-01 15:28:05',0,0,0,1),(26,'SUB5',1,'2025-06-01 15:28:23','2025-06-01 15:28:37',0,0,0,1),(27,'SUB7',1,'2025-06-01 11:16:29','2025-06-01 16:17:30',1,4,0,1),(29,'SUB3',1,'2025-06-01 16:32:37','2025-06-01 16:33:08',0,0,0,1),(32,'SUB3',3,'2025-06-10 10:00:00','2025-06-10 15:30:00',0,0,1,1),(33,'SUB4',4,'2025-06-10 07:30:00','2025-06-10 13:50:00',1,4,1,1),(34,'SUB5',5,'2025-06-10 06:00:00','2025-06-10 12:30:00',1,4,1,1);
/*!40000 ALTER TABLE `parking_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-09 19:33:12
