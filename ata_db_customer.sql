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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `agency_id` int NOT NULL,
  `office_id` int NOT NULL,
  `customer_num` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `phone_num` varchar(45) DEFAULT NULL,
  `IATA_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `direct_username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `direct_pwd` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `amadeus_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `amadeus_pwd` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `market` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `contract_status` int DEFAULT NULL,
  `contract_expdate` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `CustomerNum` (`customer_num`),
  KEY `customer_ibfk_1` (`agency_id`),
  KEY `customer_ibfk_2` (`office_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `agency` (`agency_id`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`office_id`) REFERENCES `office` (`office_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90028328 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,1,90026674,'Jeffery','Chen','selina.w@chinatour.com','626.576.9688',NULL,NULL,NULL,NULL,NULL,'C',1,'2023-03-31 00:00:00'),(2,2,2,10028641,'JEFFREY','CHEN','meggie.l@chinatour.com','415.876.7888\n866.244.6287',NULL,NULL,NULL,NULL,NULL,'C',1,'2023-03-31 00:00:00'),(3,3,3,10028725,'JEFFREY','CHEN','meggie.l@chinatour.com','626.576.9688',NULL,NULL,NULL,NULL,NULL,'C',1,'2023-03-30 00:00:00'),(4,4,4,10028463,'Yvonne','Yen','octusa@yahoo.com (shashabv@hotmail.com)','312.326.3800 / 312.927.5199 shasha',NULL,NULL,NULL,NULL,NULL,'C',2,'2022-10-31 00:00:00'),(5,5,5,10028708,'JEFFREY','CHEN','maggie.l@chinatour.com','626.377.9904',NULL,NULL,NULL,NULL,NULL,'C',1,'2023-03-31 00:00:00'),(6,6,6,10025223,'WILLIE','LIM','willietravel@hotmail.com','604.438.9977 office 604-298-9988',NULL,NULL,NULL,NULL,NULL,'C',2,'2025-01-31 00:00:00'),(7,7,7,10028914,'MUHAMMAD','KHURRAM','skylordtravelca@gmail.com','416.855.9051',NULL,NULL,NULL,NULL,NULL,'I',1,'2024-12-31 00:00:00'),(8,8,8,90022282,'Xia','Yang','tianmatravelservices@gmail.com','604.456.0178',NULL,NULL,NULL,NULL,NULL,'C',2,'2024-10-31 00:00:00'),(9,9,9,90028327,'Jeffrey','Chen','meggie.l@chinatour.com','626.377.9904',NULL,NULL,NULL,NULL,NULL,'C',1,'2023-03-31 00:00:00'),(10,10,10,10027578,'LAWRENCE','KOO','teresatsang@ucruising.com','905.940.2666',NULL,NULL,NULL,NULL,NULL,'C',1,'2025-10-31 00:00:00'),(11,11,11,10011029,'Anna','Tian','admin@slholidays.ca','604.876.8112',NULL,NULL,NULL,NULL,NULL,'C',1,'2023-01-31 00:00:00'),(12,12,12,10028354,'MIAO','SUN','info@newbarryc.com','416.230.1816',NULL,NULL,NULL,NULL,NULL,'C',1,'2025-04-30 00:00:00'),(13,13,13,10025937,'MUSTAF','KAMAL AHMED','sonalicurrency@hotmail.com','416.536.7266 / 416.988.0690',NULL,NULL,NULL,NULL,NULL,'S',2,'2025-03-31 00:00:00'),(14,14,14,10031438,'Ahmed','Nadim','ahmed@classytravel.ca','514.448.0788',NULL,NULL,NULL,NULL,NULL,'M',1,'2024-12-31 00:00:00'),(15,15,15,10019073,'BOBBY','CAI','americaasia@hotmail.com','905.709.1318',NULL,NULL,NULL,NULL,NULL,'C',1,'2024-06-30 00:00:00');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
