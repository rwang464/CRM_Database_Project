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
-- Table structure for table `segments`
--

DROP TABLE IF EXISTS `segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `segments` (
  `segment_id` int NOT NULL,
  `agency_id` int NOT NULL,
  `contract_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `month` datetime DEFAULT NULL,
  `base_seg` decimal(10,2) DEFAULT NULL,
  `inter_seg` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`segment_id`),
  KEY `segments_ibfk_2` (`customer_id`) /*!80000 INVISIBLE */,
  KEY `segments_ibfk_3` (`agency_id`),
  KEY `fk_segments_contract` (`contract_id`),
  CONSTRAINT `fk_segments_contract` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`contract_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `segments_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`contract_id`),
  CONSTRAINT `segments_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `segments_ibfk_3` FOREIGN KEY (`agency_id`) REFERENCES `agency` (`agency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segments`
--

LOCK TABLES `segments` WRITE;
/*!40000 ALTER TABLE `segments` DISABLE KEYS */;
INSERT INTO `segments` VALUES (1,1,1,1,'Canada','2022-07-01 00:00:00',10.00,20.00),(2,1,1,1,'Canada','2022-07-03 00:00:00',10.00,20.00),(3,1,1,1,'Canada','2022-08-01 00:00:00',10.00,20.00),(4,2,2,2,'USA','2022-08-01 00:00:00',10.00,20.00),(5,2,2,2,'USA','2022-08-02 00:00:00',10.00,20.00),(6,1,1,1,'Canada','2023-07-01 00:00:00',10.00,20.00),(7,1,3,3,'Canada','2022-07-03 00:00:00',10.00,20.00),(8,1,3,3,'Canada','2022-08-01 00:00:00',10.00,20.00);
/*!40000 ALTER TABLE `segments` ENABLE KEYS */;
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
