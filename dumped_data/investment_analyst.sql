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
-- Table structure for table `analyst`
--

DROP TABLE IF EXISTS `analyst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analyst` (
  `Employee_ID` int NOT NULL,
  `Employee_Name` varchar(50) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `University` varchar(50) DEFAULT NULL,
  `Previous_Employer` varchar(50) DEFAULT NULL,
  `Fund_of_Employment` varchar(50) DEFAULT NULL,
  `Area_of_Expetise` varchar(50) DEFAULT NULL,
  `Manager_Employee_ID` int NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `Manager_Employee_ID` (`Manager_Employee_ID`),
  CONSTRAINT `analyst_ibfk_1` FOREIGN KEY (`Manager_Employee_ID`) REFERENCES `fund_manager` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analyst`
--

LOCK TABLES `analyst` WRITE;
/*!40000 ALTER TABLE `analyst` DISABLE KEYS */;
INSERT INTO `analyst` VALUES (129,' Summers','2020-12-10',3000,' Western University',' Fit4Less',' Technology',' SASS',28),(130,' Zion','2020-12-10',3000,' Western University',' GoodLifeFitness',' Technology',' Deeptech',28),(131,' Sean','2020-12-10',3000,' Western University',' Club16',' Consumer Retail Group',' Consumer Goods',27),(132,' Young','2020-12-10',3000,' Western University',' Burger King',' All Weather',' China',26);
/*!40000 ALTER TABLE `analyst` ENABLE KEYS */;
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
