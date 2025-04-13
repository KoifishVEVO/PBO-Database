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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `PatientId` int NOT NULL AUTO_INCREMENT,
  `FirstName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LastName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PhoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `BirthDate` date NOT NULL,
  `GenderName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bloodType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Salt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`PatientId`),
  UNIQUE KEY `IX_patients_Email` (`Email`),
  UNIQUE KEY `IX_patients_PhoneNumber` (`PhoneNumber`),
  KEY `IX_patients_bloodType` (`bloodType`),
  KEY `IX_patients_GenderName` (`GenderName`),
  CONSTRAINT `FK_patients_bloodTypes_bloodType` FOREIGN KEY (`bloodType`) REFERENCES `bloodtypes` (`bloodType`),
  CONSTRAINT `FK_patients_genders_GenderName` FOREIGN KEY (`GenderName`) REFERENCES `genders` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (55,'kevin','albany','bogor','082367837542','kevin.junaidi@gmail.com','MqTuaz4KYZCntb7kaNI3mZXAdGA+51tapo0Z0vPpGKDuClc8XXIufm+YHByB5RQXFzn8t/+q6Ft3/5fs4HV7Tw==','2004-02-16','Male','A','tASO3cpoXfrBM6AMdLYyYw=='),(56,'adrian','fahren','jakarta','0823678375421','adrian@gmail.com','8lX30v5MXG8Rc0SjuiwzvTlIniHNGZuxZ2yZNSt1rKedQ2KHS8M6vHq0XN64R3BKU82lCFwok2ITI07FipKEow==','2024-02-01','Male','A','8SBEL761s535YFBx9uVbxg=='),(57,'adib','faizulhaq','bekasi, jati asih','07777777','adib@gmail.com','kd5QcIM1IbIsmu5v7+9wCHgM5cjT6i4L7vtTjm2Mc2t0dYI/8bTze8hnWnlGb5ay55LMWqHfdR6hbZAQfW9N9Q==','2005-06-08','Male','A','xCrUVcHWqKLYARVhF/fbog=='),(62,'kevin','Albany','bogor','123','kevinalbany@gmail.com','PAwGU+GNNYwI+uGMVCRzlH4ZwD10HWQ2EFMvKfQPR6u5e83QPfVukzbhjHkPQExcaLDNUsDfmH1LUGTrSeyk3A==','2014-01-01','Male','A','WxaSst0QUEoJm/SAqq2xIw==');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
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
