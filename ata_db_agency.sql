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
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agency` (
  `agency_id` int NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency`
--

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;
INSERT INTO `agency` VALUES (1,'Chinatour.com(Remote Office)','San Gabriel','CA','301 West Valley Blvd, Suite 220'),(2,'Chinatour.com (San Francisco Branch)','San Francisco','CA','918 CLEMENT ST, SUITE 101'),(3,'Chinatour.com (Los Angeles Branch)','San Gabriel','CA','301 WEST VALLEY BLVD, SUITE 220'),(4,'Oceania Tours','Chicago','IL','2160 S. ARCHER AVE, 2/F'),(5,'Chinatour.com (Head Office)','Walnut','CA','680 BREA CANYON ROAD, SUITE 268'),(6,'Bookmyholiday.Ca','Burnaby','BC','#3310-9888 Cameron Street'),(7,'Skylord Travel Inc','Waterloo','ON','410 Wild Calla Street Unit 208'),(8,'Tian Ma Travel Ltd.','Vancouver','BC','300-3665 Kingsway'),(9,'Chinatour.com','Walnut','CA','680 Brea Canyon Road Suite 268'),(10,'Ucruising','Markham','ON','8360 KENNEDY RD, UNIT 69'),(11,'S. L. Holidays','Vancouver','BC','636 West Broadway Ste.209'),(12,'Seneca Groups Inc (dba Clouds Travel International)','Toronto','ON','25 SHEPPARD AVE W, SUITE 300'),(13,'Bengal International Travel Service','Toronto','ON','1248 BLOOR ST. W.'),(14,'Voyages Classy Inc','Montreal','QC','150 Boulvard De LA C Te-Vertu #201'),(15,'America Asia','Richmond Hill','ON','550 HWY 7 E.  SUITE 229');
/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
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
