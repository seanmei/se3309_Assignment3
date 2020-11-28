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
-- Table structure for table `bonds_coverage`
--

DROP TABLE IF EXISTS `bonds_coverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonds_coverage` (
  `Employee_ID` int NOT NULL,
  `Ticker_Symbol` varchar(10) NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Ticker_Symbol`),
  KEY `Ticker_Symbol` (`Ticker_Symbol`),
  CONSTRAINT `bonds_coverage_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `analyst` (`Employee_ID`),
  CONSTRAINT `bonds_coverage_ibfk_2` FOREIGN KEY (`Ticker_Symbol`) REFERENCES `bonds` (`Ticker_Symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonds_coverage`
--

LOCK TABLES `bonds_coverage` WRITE;
/*!40000 ALTER TABLE `bonds_coverage` DISABLE KEYS */;
INSERT INTO `bonds_coverage` VALUES (132,'AVQZDF'),(132,'AZQOWN'),(131,'CCHMMW'),(130,'CQRTUI'),(130,'DPNIPG'),(132,'DRAMXU'),(130,'EIARWX'),(131,'FGRANW'),(130,'FQJEYE'),(131,'FTREGQ'),(132,'FXQWUR'),(132,'GEVUQZ'),(131,'GFRCRO'),(129,'GQGCIR'),(132,'HIXFFI'),(129,'IVTRZR'),(131,'JEEGHT'),(132,'JQRVZI'),(130,'JZVTGY'),(129,'KFUIVV'),(132,'LGJDUU'),(129,'MFPBEU'),(132,'MJUABQ'),(129,'NUGVTQ'),(131,'OAPHJL'),(129,'OJSOTJ'),(131,'OKXCRD'),(129,'OQXXXY'),(131,'PCKHET'),(131,'QAQZLD'),(132,'QDSAZP'),(132,'QIGNBP'),(131,'QPQTII'),(129,'RBWVBC'),(129,'RJEJII'),(129,'RKXBYE'),(132,'RWURGC'),(132,'RZBLKW'),(131,'TKXNNK'),(129,'TTRUAW'),(132,'UQOOKY'),(130,'VALPED'),(132,'WBUTAZ'),(130,'WTEUBP'),(131,'XSQBLE'),(130,'YPXSBD'),(131,'YUJPZC'),(130,'ZGDPMQ'),(129,'ZLTTQO'),(132,'ZSKZCZ');
/*!40000 ALTER TABLE `bonds_coverage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-28 18:21:27
