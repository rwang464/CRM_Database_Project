-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ata_db
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `contract_id` int NOT NULL,
  `agency_id` int NOT NULL,
  `office_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `contract_no` int NOT NULL AUTO_INCREMENT,
  `region` varchar(255) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `sign_date` datetime DEFAULT NULL,
  `payment_cycle` int DEFAULT NULL,
  `cont_status` int DEFAULT NULL,
  `base_rate` decimal(10,2) DEFAULT '0.00',
  `inter_rate` decimal(10,2) DEFAULT '0.00',
  `commitment_pct` decimal(10,2) DEFAULT NULL,
  `GDS_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `total_GDSseg` int DEFAULT NULL,
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `ContractNo` (`contract_no`),
  KEY `contract_ibfk_1` (`agency_id`),
  KEY `contract_ibfk_2` (`office_id`),
  KEY `contract_ibfk_3` (`customer_id`) /*!80000 INVISIBLE */,
  KEY `contract_ibfk_4` (`payment_cycle`),
  KEY `contract_ibfk_5` (`cont_status`),
  CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `agency` (`agency_id`),
  CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`office_id`) REFERENCES `office` (`office_id`),
  CONSTRAINT `contract_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95904 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,1,1,1,36650,'Canada','2022-12-01 00:00:00','2022-12-31 00:00:00',NULL,3,2,6.00,0.00,3.00,NULL,NULL),(2,2,2,2,27206,'USA','2022-12-01 00:00:00','2022-12-31 00:00:00',NULL,1,1,9.00,1.00,9.00,NULL,NULL),(3,3,3,3,62827,'USA','2022-12-01 00:00:00','2022-12-31 00:00:00',NULL,3,1,7.00,1.00,3.00,NULL,NULL),(4,4,4,4,75831,'USA','2022-10-01 00:00:00','2022-12-31 00:00:00',NULL,3,1,9.00,1.00,1.00,NULL,NULL),(5,5,5,5,38226,'Canada','2022-10-01 00:00:00','2022-12-31 00:00:00',NULL,1,1,8.00,1.00,6.00,NULL,NULL),(6,6,6,6,90063,'Canada','2022-07-01 00:00:00','2022-12-31 00:00:00',NULL,2,1,1.00,1.00,4.00,NULL,NULL),(7,7,7,7,92894,'Canada','2022-10-01 00:00:00','2022-12-31 00:00:00',NULL,3,2,4.00,2.00,4.00,NULL,NULL),(8,8,8,8,55400,'Canada','2022-10-01 00:00:00','2022-12-31 00:00:00',NULL,3,2,3.00,2.00,5.00,NULL,NULL),(9,9,9,9,61248,'Canada','2022-10-01 00:00:00','2022-12-31 00:00:00',NULL,3,2,1.00,2.00,1.00,NULL,NULL),(10,10,10,10,74614,'Canada','2022-10-01 00:00:00','2022-12-31 00:00:00',NULL,1,1,1.00,1.00,1.00,NULL,NULL),(11,11,11,11,95903,'USA','2022-10-01 00:00:00','2022-12-31 00:00:00',NULL,3,2,6.00,2.00,5.00,NULL,NULL),(12,12,12,12,28195,'Canada','2022-10-01 00:00:00','2022-12-31 00:00:00',NULL,3,2,2.00,2.00,8.00,NULL,NULL),(13,13,13,13,69181,'USA','2022-10-01 00:00:00','2022-12-31 00:00:00',NULL,1,1,5.00,1.00,4.00,NULL,NULL),(14,14,14,14,57771,'USA','2022-10-01 00:00:00','2022-12-31 00:00:00',NULL,2,1,5.00,1.00,7.00,NULL,NULL),(15,15,15,15,32011,'USA','2022-12-01 00:00:00','2022-12-31 00:00:00',NULL,1,2,8.00,2.00,7.00,NULL,NULL);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20 13:11:05
