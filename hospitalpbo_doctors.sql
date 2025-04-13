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
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `DoctorId` int NOT NULL AUTO_INCREMENT,
  `firstName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lastName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SpecializationId` int NOT NULL,
  `Address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `BirthDate` date NOT NULL,
  `PhoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Salt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`DoctorId`),
  UNIQUE KEY `IX_doctors_Email` (`Email`),
  UNIQUE KEY `IX_doctors_PhoneNumber` (`PhoneNumber`),
  KEY `IX_doctors_SpecializationId` (`SpecializationId`),
  CONSTRAINT `FK_doctors_specializations_SpecializationId` FOREIGN KEY (`SpecializationId`) REFERENCES `specializations` (`SpecializationId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'kevin','albany',1,'Bogor, cilebut','2004-02-12','082367837542','kevin.junaidi@gmail.com','/Ioj8w6JyywOFZOwtxGXNoBqjD1jY9eJA0YbK8MbjrTzSVi5qt+feTnXxnSFSpAAyZ74LamDVsIJEy1Xf4hohw==','dnhAHGFqRQPzU/h9f4zgfg=='),(23,'rindang','bani',15,'karawang','2024-01-01','1111','rindang@gmail.com','kK9Tqg0YhannWn4O1hkyUfWcVuOOV8eH0Oo8v7NTuBlrK/brnLGRobjQMKwFO8f1eMjbxraiE4Rn/V3Ek5MQ2A==','/9Ub9XHCe15SqRqUU1SMSQ=='),(24,'adib','faizulhaq',1,'333','2024-01-01','444','444','XhBPodIMz5+bJDZX6hko9pIwIOpkfgPsQKjXqMgYkCaCWc9R2ANN3GVMPeY8yFZo4GKJvqiYESGOC1HPVgt02g==','ZrPKUIfDYu0qcDDpQKLHVw=='),(28,'agul','agul',1,'bandung','2024-01-01','6666666','agul@gmail.com','2Hri861I29HhxQOEmYJGCWNyM70lE5eJr/Wpm6MRQWa5Bu7SoIJ0c/kavxKv71rL07t7ZNRJ9wGcXvC3mNwemQ==','XcFMyzltWCC3G1rVlPsXiA=='),(29,'kenzie','alaric',1,'bogor, cilebut','2024-01-01','1212121212','kenzie@gmail.com','JDN+maaU6FbP8SnAxtglfHTj2EbzJmxHQYjElMpy+wjF+85BwkM3b2ltI+P5FO6TaL2quL+L4Fc0RTvX95Ygmw==','i1B53o/9IPRzfuz3VDiMYg=='),(32,'nadine','dania',1,'bogor','2024-01-01','213123123','nadinei@gmail.com','7S7qf48Y/5Be0zj6MREEZxKzMkXZgPdMPFsHNcJhMphMsoo5usyYuceLgZalqjdysH8MAQkuVY0bACYhVTLYhw==','aN/sYUwccTNmiHnJdJOqKw==');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-13 17:13:59
