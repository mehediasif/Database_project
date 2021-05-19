CREATE DATABASE  IF NOT EXISTS `onlinemusic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `onlinemusic`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: onlinemusic
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Temporary view structure for view `best_track_by_artists`
--

DROP TABLE IF EXISTS `best_track_by_artists`;
/*!50001 DROP VIEW IF EXISTS `best_track_by_artists`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `best_track_by_artists` AS SELECT 
 1 AS `ArtistID`,
 1 AS `ArtistName`,
 1 AS `SongTitle`,
 1 AS `TrackSales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `highly_liked_track`
--

DROP TABLE IF EXISTS `highly_liked_track`;
/*!50001 DROP VIEW IF EXISTS `highly_liked_track`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `highly_liked_track` AS SELECT 
 1 AS `TrackID`,
 1 AS `ArtistID`,
 1 AS `SongID`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `maroon5_sales`
--

DROP TABLE IF EXISTS `maroon5_sales`;
/*!50001 DROP VIEW IF EXISTS `maroon5_sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `maroon5_sales` AS SELECT 
 1 AS `ArtistID`,
 1 AS `ArtistName`,
 1 AS `TotalTrackSales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_by_artists`
--

DROP TABLE IF EXISTS `sales_by_artists`;
/*!50001 DROP VIEW IF EXISTS `sales_by_artists`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_by_artists` AS SELECT 
 1 AS `ArtistID`,
 1 AS `ArtistName`,
 1 AS `TotalTrackSales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `songs_sold`
--

DROP TABLE IF EXISTS `songs_sold`;
/*!50001 DROP VIEW IF EXISTS `songs_sold`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `songs_sold` AS SELECT 
 1 AS `SongTitle`,
 1 AS `TrackSales`,
 1 AS `UnitsSold`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tblartists`
--

DROP TABLE IF EXISTS `tblartists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblartists` (
  `ArtistID` int(11) NOT NULL,
  `ArtistName` varchar(129) DEFAULT NULL,
  PRIMARY KEY (`ArtistID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblartists`
--

LOCK TABLES `tblartists` WRITE;
/*!40000 ALTER TABLE `tblartists` DISABLE KEYS */;
INSERT INTO `tblartists` VALUES (1,'Lady Gaga'),(2,'Phil Collins'),(3,'Maroon 5'),(4,'Elvis Presley'),(5,'The Beatles'),(6,'Paul McCartney'),(7,'John Lennon'),(8,'Frank Sinatra'),(9,'James Brown'),(10,'Taylor Swift'),(11,'Beyance'),(12,'Lorde'),(14,'Bruno Mars'),(15,'Adele'),(16,'Mariah Cary'),(17,'Phil Collins'),(18,'Charlie XCS'),(19,'Sam Smith'),(20,'Magic!'),(21,'Aretha Franklin');
/*!40000 ALTER TABLE `tblartists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomers`
--

DROP TABLE IF EXISTS `tblcustomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomers` (
  `CustID` int(11) NOT NULL AUTO_INCREMENT,
  `CustName` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomers`
--

LOCK TABLES `tblcustomers` WRITE;
/*!40000 ALTER TABLE `tblcustomers` DISABLE KEYS */;
INSERT INTO `tblcustomers` VALUES (1,'Jhon Doe','Street 88, Building ABC','45213548','New York'),(2,'James Smith','Street 90, Building BCD','45893548','Sanfasisico'),(3,'Irus West','Street 80, Building EFG','45241548','Lasvagas'),(4,'Bary Allen','Street 12, Building IJK','98213548','New York'),(5,'Jay Clark','Street 77, Building KLM','465613244','New York');
/*!40000 ALTER TABLE `tblcustomers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrecordlabels`
--

DROP TABLE IF EXISTS `tblrecordlabels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblrecordlabels` (
  `LabelID` int(11) NOT NULL,
  `LabelName` varchar(128) NOT NULL,
  PRIMARY KEY (`LabelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrecordlabels`
--

LOCK TABLES `tblrecordlabels` WRITE;
/*!40000 ALTER TABLE `tblrecordlabels` DISABLE KEYS */;
INSERT INTO `tblrecordlabels` VALUES (1001,'Capital Records'),(1002,'Apple Records'),(1003,'Sun Records'),(1004,'RCA Records'),(1006,'Virgin Records'),(1007,'Walt Disney Records'),(1008,'Atlantic Records'),(1009,'Rhino Records'),(1010,'EMI'),(1011,'PolyGram');
/*!40000 ALTER TABLE `tblrecordlabels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblreviewes`
--

DROP TABLE IF EXISTS `tblreviewes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblreviewes` (
  `ReviewID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(100) NOT NULL,
  `TrackID` int(11) NOT NULL,
  `CustID` int(11) NOT NULL,
  `Rating` int(11) DEFAULT '0',
  PRIMARY KEY (`ReviewID`),
  KEY `CustID` (`CustID`),
  KEY `TrackID` (`TrackID`),
  CONSTRAINT `tblreviewes_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `tblcustomers` (`CustID`),
  CONSTRAINT `tblreviewes_ibfk_2` FOREIGN KEY (`TrackID`) REFERENCES `tbltracks` (`TrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblreviewes`
--

LOCK TABLES `tblreviewes` WRITE;
/*!40000 ALTER TABLE `tblreviewes` DISABLE KEYS */;
INSERT INTO `tblreviewes` VALUES (1,'Fabulas Song',6,2,5),(2,'Good Enough to hear',6,2,4),(3,'Outstanding',6,2,5),(4,'Normal',6,2,3),(5,'Bad Song',6,2,2);
/*!40000 ALTER TABLE `tblreviewes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsongs`
--

DROP TABLE IF EXISTS `tblsongs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsongs` (
  `SongID` int(11) NOT NULL,
  `SongTitle` varchar(128) NOT NULL,
  PRIMARY KEY (`SongID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsongs`
--

LOCK TABLES `tblsongs` WRITE;
/*!40000 ALTER TABLE `tblsongs` DISABLE KEYS */;
INSERT INTO `tblsongs` VALUES (101,'I Wanna Hold Your Hand'),(102,'Please Please Me'),(103,'Band on the Run'),(104,'Starting Over'),(105,'Hard Day\'s Night'),(106,'Hound Dog'),(107,'Poker Face'),(108,'All You Need is Love'),(109,'One More Night'),(110,'That\'s All Right, Mama'),(111,'One More Night'),(112,'Born This Way'),(113,'My Way'),(114,'Another Day in Paradise'),(115,'You\'ll Be in My Heart'),(116,'I Don\'t Care Anymore'),(117,'Begin the Beguine'),(118,'White Christmas');
/*!40000 ALTER TABLE `tblsongs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltracks`
--

DROP TABLE IF EXISTS `tbltracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltracks` (
  `TrackID` int(11) NOT NULL AUTO_INCREMENT,
  `ArtistID` int(11) NOT NULL,
  `SongID` int(11) NOT NULL,
  `LabelID` int(11) NOT NULL,
  `TrackSales` int(11) DEFAULT '0',
  PRIMARY KEY (`TrackID`),
  KEY `ArtistID` (`ArtistID`),
  KEY `SongID` (`SongID`),
  KEY `LabelID` (`LabelID`),
  CONSTRAINT `tbltracks_ibfk_1` FOREIGN KEY (`ArtistID`) REFERENCES `tblartists` (`ArtistID`),
  CONSTRAINT `tbltracks_ibfk_2` FOREIGN KEY (`SongID`) REFERENCES `tblsongs` (`SongID`),
  CONSTRAINT `tbltracks_ibfk_3` FOREIGN KEY (`LabelID`) REFERENCES `tblrecordlabels` (`LabelID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltracks`
--

LOCK TABLES `tbltracks` WRITE;
/*!40000 ALTER TABLE `tbltracks` DISABLE KEYS */;
INSERT INTO `tbltracks` VALUES (1,1,105,1001,1),(2,2,105,1001,3),(3,3,106,1001,2),(4,4,107,1002,9),(5,5,105,1003,5),(6,6,104,1004,7),(7,7,101,1003,6),(8,8,105,1004,6),(9,9,103,1004,0),(10,10,104,1003,8),(11,11,102,1002,9),(12,12,102,1003,9),(13,5,101,1003,6),(14,5,102,1003,7),(15,5,108,1003,0),(16,4,106,1002,8),(17,4,113,1002,4),(18,11,108,1003,3),(19,19,107,1002,4),(20,19,114,1009,11),(21,21,117,1003,17),(22,4,104,1003,2),(23,7,101,1002,3);
/*!40000 ALTER TABLE `tbltracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltransactions`
--

DROP TABLE IF EXISTS `tbltransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltransactions` (
  `TransactionID` int(11) NOT NULL AUTO_INCREMENT,
  `TrackID` int(11) DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL,
  `UnitsSold` int(11) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `TrackID` (`TrackID`),
  CONSTRAINT `tbltransactions_ibfk_1` FOREIGN KEY (`TrackID`) REFERENCES `tbltracks` (`TrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltransactions`
--

LOCK TABLES `tbltransactions` WRITE;
/*!40000 ALTER TABLE `tbltransactions` DISABLE KEYS */;
INSERT INTO `tbltransactions` VALUES (1,5,'2018-02-14',2),(2,1,'2019-07-04',5),(3,12,'2017-12-25',1),(4,8,'2019-03-17',4),(5,3,'2020-01-01',3),(6,6,'2024-04-07',9),(7,17,'2015-02-22',4),(8,1,'2020-10-05',15),(9,9,'2024-06-09',19),(10,17,'2023-11-06',3),(11,10,'2019-01-28',4),(12,14,'2020-05-07',12),(13,3,'2015-08-10',14),(14,6,'2016-08-22',13),(15,4,'2014-04-19',16),(16,8,'2024-02-10',2),(17,1,'2024-07-05',9),(18,16,'2018-11-01',10),(19,2,'2016-09-04',12),(20,8,'2023-07-28',5),(21,8,'2019-10-16',5),(22,7,'2025-12-22',9),(23,3,'2014-07-29',17),(24,6,'2016-02-05',11),(25,10,'2019-12-21',6),(26,4,'2024-12-15',5),(27,16,'2014-05-29',16),(28,5,'2024-05-01',4),(29,3,'2014-05-25',7),(30,12,'2017-07-29',6),(31,3,'2017-12-27',5),(32,9,'2022-06-07',9),(33,14,'2022-09-24',2),(34,6,'2017-01-11',17),(35,1,'2020-04-13',5),(36,4,'2025-02-03',17),(37,11,'2016-05-18',13),(38,9,'2017-05-02',7),(39,15,'2024-09-14',12),(40,16,'2014-05-05',1),(41,5,'2025-05-12',2),(42,13,'2021-05-15',5),(43,9,'2020-11-19',16),(44,8,'2015-02-13',9),(45,14,'2019-05-13',20),(46,17,'2018-08-24',6),(47,1,'2022-11-06',16),(48,10,'2017-02-22',6),(49,12,'2018-01-15',7),(50,12,'2021-10-08',12),(51,7,'2025-04-06',4),(52,1,'2017-06-01',15),(53,13,'2014-12-12',16),(54,12,'2025-09-23',12),(55,17,'2025-07-22',3),(56,16,'2025-08-14',8),(57,11,'2023-08-01',6),(58,3,'2022-12-17',7),(59,17,'2015-12-08',12),(60,11,'2020-09-16',3),(61,16,'2015-08-20',8),(62,3,'2019-08-22',9),(63,18,'2022-03-19',5),(64,14,'2025-02-03',17),(65,16,'2018-09-02',16),(66,14,'2015-07-27',11),(67,6,'2023-01-27',16),(68,12,'2015-11-22',14),(69,15,'2021-01-04',19),(70,9,'2017-02-10',18),(71,9,'2019-03-23',8),(72,16,'2022-03-05',2),(73,15,'2025-03-17',2),(74,2,'2022-11-08',4),(75,12,'2016-02-22',7),(76,12,'2015-02-15',18),(77,14,'2024-01-01',5),(78,9,'2021-02-23',17),(79,2,'2025-10-09',8),(80,14,'2022-07-29',14),(81,5,'2024-11-23',6),(82,2,'2024-09-26',16),(83,2,'2022-03-05',9),(84,6,'2021-08-03',8),(85,6,'2022-05-12',19),(86,6,'2017-09-07',13),(87,17,'2023-11-05',11),(88,4,'2017-09-20',19),(89,1,'2020-12-15',14),(90,17,'2025-10-25',12),(91,4,'2022-10-04',2),(92,13,'2016-10-09',16),(93,12,'2016-11-19',9),(94,7,'2022-02-15',5),(95,10,'2021-10-02',10),(96,18,'2023-04-13',1),(97,5,'2021-07-17',11),(98,15,'2014-10-15',18),(99,10,'2015-12-27',19),(100,9,'2020-05-22',4),(101,3,'2024-08-08',15),(102,3,'2019-11-16',20),(103,7,'2024-04-13',4),(104,15,'2014-05-21',11),(105,9,'2019-08-03',5),(106,9,'2022-04-17',15),(107,17,'2017-02-06',1),(108,15,'2022-08-08',16),(109,5,'2018-02-20',6),(110,15,'2025-05-10',6),(111,4,'2016-08-05',20);
/*!40000 ALTER TABLE `tbltransactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'onlinemusic'
--
/*!50003 DROP PROCEDURE IF EXISTS `Profitable_artists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Profitable_artists`(
									ArtistID INT
                                    )
BEGIN
	SELECT *
	FROM sales_by_artists
	where sales_by_artists.ArtistID = ArtistID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `best_track_by_artists`
--

/*!50001 DROP VIEW IF EXISTS `best_track_by_artists`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `best_track_by_artists` AS select `tbla`.`ArtistID` AS `ArtistID`,`tbla`.`ArtistName` AS `ArtistName`,`tbls`.`SongTitle` AS `SongTitle`,`tblt`.`TrackSales` AS `TrackSales` from ((`tblartists` `tbla` join `tbltracks` `tblt` on((`tbla`.`ArtistID` = `tblt`.`ArtistID`))) join `tblsongs` `tbls` on((`tblt`.`SongID` = `tbls`.`SongID`))) where (`tblt`.`TrackSales` > (select avg(`tblt2`.`TrackSales`) from `tbltracks` `tblt2` where (`tblt2`.`ArtistID` = `tblt`.`ArtistID`) group by `tblt2`.`ArtistID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `highly_liked_track`
--

/*!50001 DROP VIEW IF EXISTS `highly_liked_track`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `highly_liked_track` AS select `t`.`TrackID` AS `TrackID`,`t`.`ArtistID` AS `ArtistID`,`t`.`SongID` AS `SongID`,`r`.`Rating` AS `rating` from (`tbltracks` `t` join `tblreviewes` `r` on((`t`.`TrackID` = `r`.`TrackID`))) where (`r`.`Rating` >= 4) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `maroon5_sales`
--

/*!50001 DROP VIEW IF EXISTS `maroon5_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `maroon5_sales` AS select `tbla`.`ArtistID` AS `ArtistID`,`tbla`.`ArtistName` AS `ArtistName`,sum(`tblt`.`TrackSales`) AS `TotalTrackSales` from (`tblartists` `tbla` join `tbltracks` `tblt` on((`tbla`.`ArtistID` = `tblt`.`ArtistID`))) where exists(select sum(`tblt2`.`TrackSales`) from `tbltracks` `tblt2` where (`tblt2`.`ArtistID` = `tblt`.`ArtistID`)) group by `tbla`.`ArtistID`,`tbla`.`ArtistName` having (`tbla`.`ArtistName` = 'Maroon 5') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_by_artists`
--

/*!50001 DROP VIEW IF EXISTS `sales_by_artists`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_by_artists` AS select `tbla`.`ArtistID` AS `ArtistID`,`tbla`.`ArtistName` AS `ArtistName`,sum(`tblt`.`TrackSales`) AS `TotalTrackSales` from (`tblartists` `tbla` join `tbltracks` `tblt` on((`tbla`.`ArtistID` = `tblt`.`ArtistID`))) where exists(select sum(`tblt2`.`TrackSales`) from `tbltracks` `tblt2` where (`tblt2`.`ArtistID` = `tblt`.`ArtistID`)) group by `tbla`.`ArtistID`,`tbla`.`ArtistName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `songs_sold`
--

/*!50001 DROP VIEW IF EXISTS `songs_sold`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `songs_sold` AS select `s`.`SongTitle` AS `SongTitle`,`t`.`TrackSales` AS `TrackSales`,`ts`.`UnitsSold` AS `UnitsSold` from ((`tblsongs` `s` join `tbltracks` `t` on((`s`.`SongID` = `t`.`SongID`))) join `tbltransactions` `ts` on((`t`.`TrackID` = `ts`.`TrackID`))) group by `s`.`SongTitle` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 12:00:11
