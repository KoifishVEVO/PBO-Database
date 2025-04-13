-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospitalpbo
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `appoiments`
--

DROP TABLE IF EXISTS `appoiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appoiments` (
  `AppoimentId` int NOT NULL AUTO_INCREMENT,
  `TimeStart` time(6) NOT NULL,
  `TimeEnd` time(6) NOT NULL,
  `Status` int NOT NULL,
  `IsCompleted` tinyint(1) NOT NULL,
  `Capacity` int DEFAULT NULL,
  `RoomId` int NOT NULL,
  `DoctorId` int NOT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`AppoimentId`),
  KEY `IX_Appoiments_DoctorId` (`DoctorId`),
  KEY `IX_Appoiments_RoomId` (`RoomId`),
  CONSTRAINT `FK_Appoiments_doctors_DoctorId` FOREIGN KEY (`DoctorId`) REFERENCES `doctors` (`DoctorId`) ON DELETE CASCADE,
  CONSTRAINT `FK_Appoiments_rooms_RoomId` FOREIGN KEY (`RoomId`) REFERENCES `rooms` (`RoomId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appoiments`
--

LOCK TABLES `appoiments` WRITE;
/*!40000 ALTER TABLE `appoiments` DISABLE KEYS */;
INSERT INTO `appoiments` VALUES (2,'09:00:00.000000','09:30:00.000000',1,1,20,1,1,'2019-06-05'),(3,'19:00:00.000000','20:00:00.000000',0,0,20,1,1,'2024-06-08'),(4,'18:00:00.000000','19:00:00.000000',0,0,20,1,23,'2024-06-08'),(5,'18:00:00.000000','19:00:00.000000',0,0,20,1,1,'2024-06-10'),(11,'13:00:00.000000','14:00:00.000000',0,0,20,1,1,'2024-06-19');
/*!40000 ALTER TABLE `appoiments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-13 17:14:00
