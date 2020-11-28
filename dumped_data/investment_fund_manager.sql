-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: investment
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `fund_manager`
--

DROP TABLE IF EXISTS `fund_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fund_manager` (
  `Employee_ID` int NOT NULL,
  `Employee_Name` varchar(50) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `University` varchar(50) DEFAULT NULL,
  `Previous_Employer` varchar(50) DEFAULT NULL,
  `Fund_ID` int DEFAULT NULL,
  `Total_Cash` int DEFAULT NULL,
  `Fund_Name` varchar(50) DEFAULT NULL,
  `Risk_Tolerance` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  UNIQUE KEY `Fund_ID` (`Fund_ID`),
  UNIQUE KEY `Fund_Name` (`Fund_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_manager`
--

LOCK TABLES `fund_manager` WRITE;
/*!40000 ALTER TABLE `fund_manager` DISABLE KEYS */;
INSERT INTO `fund_manager` VALUES (26,' Ray Dalio','2000-03-22',2000500,' Hunter University',' Bridgewater',245,600,' All Weather',' Low'),(27,' George Soros','2020-01-19',2004500,' LSE',' Soros Fund',246,2040,' Consumer Retail Group',' High'),(28,' Peter Thiel','2002-04-25',104650,' Stanford University',' Clarium Capital',247,1002,' Technology',' Medium');
/*!40000 ALTER TABLE `fund_manager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-28 18:21:28
