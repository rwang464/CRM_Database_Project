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
-- Table structure for table `payout`
--

DROP TABLE IF EXISTS `payout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payout` (
  `payout_id` int NOT NULL AUTO_INCREMENT,
  `contract_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `segment_id` int NOT NULL,
  `payout_status` int NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `item_description` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `seg_num` int DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`payout_id`),
  KEY `payout_ibfk_2` (`customer_id`) /*!80000 INVISIBLE */,
  KEY `payout_ibfk_1` (`contract_id`) /*!80000 INVISIBLE */,
  KEY `payout_ibfk_3_idx` (`payout_status`),
  KEY `payout_ibfk_4` (`segment_id`),
  CONSTRAINT `payout_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`contract_id`),
  CONSTRAINT `payout_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `payout_ibfk_3` FOREIGN KEY (`payout_status`) REFERENCES `payout_status` (`id`),
  CONSTRAINT `payout_ibfk_4` FOREIGN KEY (`segment_id`) REFERENCES `monthly_segments_list` (`seg_cus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout`
--

LOCK TABLES `payout` WRITE;
/*!40000 ALTER TABLE `payout` DISABLE KEYS */;
/*!40000 ALTER TABLE `payout` ENABLE KEYS */;
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
