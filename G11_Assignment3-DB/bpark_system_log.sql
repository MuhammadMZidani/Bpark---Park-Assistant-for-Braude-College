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
-- Table structure for table `system_log`
--

DROP TABLE IF EXISTS `system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(100) NOT NULL,
  `target` varchar(100) DEFAULT NULL,
  `by_user` int DEFAULT NULL,
  `log_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `note` text,
  PRIMARY KEY (`log_id`),
  KEY `by_user` (`by_user`),
  CONSTRAINT `system_log_ibfk_1` FOREIGN KEY (`by_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_log`
--

LOCK TABLES `system_log` WRITE;
/*!40000 ALTER TABLE `system_log` DISABLE KEYS */;
INSERT INTO `system_log` VALUES (1,'Add User','Target-1',1,'2025-05-27 12:12:03','Head color international artist situation.'),(2,'Add User','Target-2',2,'2025-05-27 12:12:03','And off travel move quite.'),(3,'Deposit','Spot 6',5,'2025-05-30 20:15:09','Car Deposit'),(4,'Deposit','Spot 10',5,'2025-05-30 20:16:15','Car Deposit'),(5,'Deposit','Spot 8',5,'2025-05-30 20:23:37','Car Deposit'),(6,'Deposit','Spot 7',5,'2025-05-30 20:23:49','Car Deposit'),(7,'Deposit','Spot 3',5,'2025-05-30 20:23:52','Car Deposit'),(8,'Deposit','Spot 7',6,'2025-05-30 20:50:19','Car Deposit'),(9,'Deposit','Spot 5',3,'2025-05-30 20:50:48','Car Deposit'),(10,'Deposit','Spot 1',7,'2025-05-30 21:06:49','Car Deposit'),(11,'Deposit','Spot 2',3,'2025-05-31 21:36:34','Car Deposit'),(12,'Deposit','Spot 3',5,'2025-06-01 09:32:32','Car Deposit'),(13,'Deposit','Spot 10',3,'2025-06-01 11:06:15','Car Deposit'),(14,'Pickup','Spot 3',5,'2025-06-01 11:17:05','Car Deposit'),(15,'Pickup (Late)','Spot 3',5,'2025-06-01 12:20:18','Car Deposit'),(16,'Deposit','Spot 3',5,'2025-06-01 12:20:35','Car Deposit'),(17,'Pickup','Spot 10',3,'2025-06-01 12:22:56','Car Deposit'),(18,'Pickup (Late)','Spot 1',7,'2025-06-01 12:23:20','Car Deposit'),(19,'Deposit','Spot 10',7,'2025-06-01 12:23:31','Car Deposit'),(20,'Deposit','Spot 4',7,'2025-06-01 12:24:28','Car Deposit'),(21,'Pickup','Spot 4',7,'2025-06-01 12:24:35','Car Deposit'),(22,'Pickup (Late)','Spot 1',7,'2025-06-01 12:24:43','Car Deposit'),(23,'Deposit','Spot 8',5,'2025-06-01 12:28:01','Car Deposit'),(24,'Pickup','Spot 8',5,'2025-06-01 12:28:05','Car Deposit'),(25,'Deposit','Spot 1',5,'2025-06-01 12:28:23','Car Deposit'),(26,'Pickup','Spot 1',5,'2025-06-01 12:28:37','Car Deposit'),(27,'Pickup','Spot 1',7,'2025-06-01 12:32:09','Car Deposit'),(28,'Pickup','Spot 1',7,'2025-06-01 13:17:29','Car Deposit'),(29,'Deposit','Spot 1',3,'2025-06-01 13:32:36','Car Deposit'),(30,'Pickup','Spot 1',3,'2025-06-01 13:33:08','Car Deposit');
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-09 19:33:11
