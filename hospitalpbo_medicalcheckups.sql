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
-- Table structure for table `medicalcheckups`
--

DROP TABLE IF EXISTS `medicalcheckups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicalcheckups` (
  `MedicalChekUpId` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `NoteMedicalChekup` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DoctorId` int NOT NULL,
  `PatientId` int NOT NULL,
  `AppoimentId` int DEFAULT NULL,
  PRIMARY KEY (`MedicalChekUpId`),
  KEY `IX_medicalCheckUps_DoctorId` (`DoctorId`),
  KEY `IX_medicalCheckUps_PatientId` (`PatientId`),
  KEY `fk_Appoiment` (`AppoimentId`),
  CONSTRAINT `fk_Appoiment` FOREIGN KEY (`AppoimentId`) REFERENCES `appoiments` (`AppoimentId`),
  CONSTRAINT `FK_medicalCheckUps_doctors_DoctorId` FOREIGN KEY (`DoctorId`) REFERENCES `doctors` (`DoctorId`) ON DELETE CASCADE,
  CONSTRAINT `FK_medicalCheckUps_patients_PatientId` FOREIGN KEY (`PatientId`) REFERENCES `patients` (`PatientId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalcheckups`
--

LOCK TABLES `medicalcheckups` WRITE;
/*!40000 ALTER TABLE `medicalcheckups` DISABLE KEYS */;
INSERT INTO `medicalcheckups` VALUES (6,'2019-10-10','batuk','batuk',1,55,5),(10,'2020-10-10','banyakin tidur','banyakin tidur',1,55,3),(13,'2020-10-10','ini baru','ini baru',1,55,2),(14,'2020-10-10','ini juga baru','ini juga baru',1,55,2);
/*!40000 ALTER TABLE `medicalcheckups` ENABLE KEYS */;
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
