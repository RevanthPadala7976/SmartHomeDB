-- MySQL dump 10.13  Distrib 8.1.0, for macos13 (arm64)
--
-- Host: localhost    Database: FinalProject
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
CREATE DATABASE SmartHomeDB;
USE SmartHomeDB;
-- Table structure for table `DeviceEvents`
--

DROP TABLE IF EXISTS `DeviceEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeviceEvents` (
  `EventID` int NOT NULL AUTO_INCREMENT,
  `DeviceID` int DEFAULT NULL,
  `EventType` varchar(45) DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`EventID`),
  KEY `dev Id_idx` (`DeviceID`),
  CONSTRAINT `dev Id` FOREIGN KEY (`DeviceID`) REFERENCES `Devices` (`DeviceID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeviceEvents`
--

LOCK TABLES `DeviceEvents` WRITE;
/*!40000 ALTER TABLE `DeviceEvents` DISABLE KEYS */;
INSERT INTO `DeviceEvents` VALUES (1,1,'DeviceUpdated','2023-12-02 22:53:22'),(2,1,'DeviceStatusChanged','2023-12-02 23:05:07'),(3,1,'FirmwareUpdated','2023-12-03 00:19:30'),(4,202,'DeviceStatusChanged','2023-12-03 01:22:52'),(5,202,'FirmwareUpdated','2023-12-03 16:53:42'),(6,202,'PowerOn','2023-12-03 16:53:42'),(7,202,'PowerOff','2023-12-03 16:57:36'),(8,202,'PowerConsumptionChanged','2023-12-03 17:01:11'),(9,202,'PowerOn','2023-12-03 17:04:42'),(10,202,'PowerOff','2023-12-03 21:32:22'),(11,202,'PowerOn','2023-12-03 21:44:47'),(12,202,'PowerOff','2023-12-03 22:46:56'),(13,201,'PowerOn','2023-12-04 13:23:21'),(14,203,'PowerOn','2023-12-04 19:06:22'),(15,201,'PowerOff','2023-12-13 13:46:29'),(26,205,'Maintenance','2023-12-13 14:34:21'),(27,205,'PowerOff','2023-12-13 14:34:59'),(28,205,'PowerOn','2023-12-13 14:36:04'),(29,205,'PowerOff','2023-12-13 14:36:32'),(30,205,'PowerOn','2023-12-13 14:37:07'),(31,205,'PowerOff','2023-12-13 14:49:07'),(32,201,'PowerOn','2023-12-14 22:11:16'),(33,201,'PowerOff','2023-12-15 16:08:00'),(34,201,'FirmwareUpdated','2023-12-15 16:10:54');
/*!40000 ALTER TABLE `DeviceEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Devices`
--

DROP TABLE IF EXISTS `Devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Devices` (
  `DeviceID` int NOT NULL,
  `DeviceName` varchar(45) NOT NULL,
  `DeviceType` varchar(45) DEFAULT NULL,
  `RoomID` int DEFAULT NULL,
  `Wattage` int DEFAULT NULL,
  `InstallationDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `FirmwareVersion` varchar(12) DEFAULT NULL,
  `DevStatus` enum('PowerOn','PowerOff','Maintenance') DEFAULT NULL,
  PRIMARY KEY (`DeviceID`),
  KEY `room id_idx` (`RoomID`),
  CONSTRAINT `room id` FOREIGN KEY (`RoomID`) REFERENCES `Rooms` (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Devices`
--

LOCK TABLES `Devices` WRITE;
/*!40000 ALTER TABLE `Devices` DISABLE KEYS */;
INSERT INTO `Devices` VALUES (1,'Smart Light','Light',19,60,'2023-12-01 08:00:00','3.0.15','PowerOff'),(201,'Smart Bulb','Lighting',15,10,'2023-12-03 00:48:22','3.1.16','PowerOff'),(202,'Smart Thermostat','Climate Control',17,5,'2023-12-03 00:48:22','2.1.0','PowerOff'),(203,'Smart TV','Entertainment',18,80,'2023-12-03 00:48:22','3.1','PowerOn'),(204,'Smart Lock','Security',16,25,'2023-12-03 00:48:22','1.5','PowerOff'),(205,'Smart Speaker','Audio',15,30,'2023-12-03 00:48:22','2.5','PowerOff'),(206,'Smart AC','Air Conditioner',16,90,'2023-12-13 15:49:14','4.0.0','PowerOff');
/*!40000 ALTER TABLE `Devices` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_DevicesInsert` AFTER INSERT ON `devices` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'INSERT', 'Devices', NEW.DeviceID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_PowerConsuptionCal` BEFORE UPDATE ON `devices` FOR EACH ROW BEGIN
    -- Declare variables
    DECLARE lastPowerOnTimestamp DATETIME;
    DECLARE duration DECIMAL(10, 2);

    -- Check if the device status is changing to 'PowerOff'
    IF NEW.DevStatus = 'PowerOff' AND OLD.DevStatus != 'PowerOff' THEN
        -- Retrieve the timestamp of the last 'PowerOn' event for the device
        SELECT MAX(Timestamp) INTO lastPowerOnTimestamp
        FROM DeviceEvents
        WHERE DeviceID = NEW.DeviceID AND EventType = 'PowerOn';

        -- Check if there is a record of 'PowerOn'
        IF lastPowerOnTimestamp IS NOT NULL THEN
            -- Calculate the duration between the last 'PowerOn' event and the current update
            SET duration = TIMESTAMPDIFF(SECOND, lastPowerOnTimestamp, NOW()) / 3600.0;

            -- Insert a record in the PowerConsumptionHistory table
            INSERT INTO PowerConsumptionHistory (DeviceID, PowerConsumption, Timestamp)
            VALUES (NEW.DeviceID, ((SELECT Wattage FROM Devices WHERE DeviceID = NEW.DeviceID) * duration / 1000.0), NOW());
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_DeviceUpdated` AFTER UPDATE ON `devices` FOR EACH ROW BEGIN
    DECLARE dynamicEventType VARCHAR(50);

    -- Check if FirmwareVersion has changed
    IF NEW.FirmwareVersion != OLD.FirmwareVersion THEN
        SET dynamicEventType = 'FirmwareUpdated';
        INSERT INTO FirmwareHistory (DeviceID, FirmwareVersion, Descr, AppliedAt)
        VALUES (OLD.DeviceID, NEW.FirmwareVersion, CONCAT('Firmware updated to ', NEW.FirmwareVersion), NOW());
		
        INSERT INTO DeviceEvents (DeviceID, EventType, Timestamp)
		VALUES (OLD.DeviceID, dynamicEventType, NOW());
    END IF;
    -- Check if PowerConsumption has changed
    IF NEW.Wattage != OLD.Wattage THEN
        SET dynamicEventType = 'Wattage Changed';
		
        INSERT INTO DeviceEvents (DeviceID, EventType, Timestamp)
		VALUES (OLD.DeviceID, dynamicEventType, NOW());
    END IF;    
    -- Check if DeviceStatus has changed
	IF NEW.DevStatus != OLD.DevStatus THEN
        SET dynamicEventType = NEW.DevStatus;
        
        INSERT INTO DeviceEvents (DeviceID, EventType, Timestamp)
		VALUES (OLD.DeviceID, dynamicEventType, NOW());
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_DevicesUpdate` AFTER UPDATE ON `devices` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'UPDATE', 'Devices', OLD.DeviceID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_DevicesDelete` AFTER DELETE ON `devices` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'DELETE', 'Devices', OLD.DeviceID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;

--
-- Temporary view structure for view `devicesettinginfo`
--

DROP TABLE IF EXISTS `devicesettinginfo`;
/*!50001 DROP VIEW IF EXISTS `devicesettinginfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `devicesettinginfo` AS SELECT 
 1 AS `DeviceID`,
 1 AS `DeviceName`,
 1 AS `DeviceType`,
 1 AS `RoomName`,
 1 AS `SettingID`,
 1 AS `SettingName`,
 1 AS `SettingValue`,
 1 AS `UpdatedTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `DeviceSettingValues`
--

DROP TABLE IF EXISTS `DeviceSettingValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeviceSettingValues` (
  `DevID` int NOT NULL,
  `DevSettingID` int NOT NULL,
  `SettingValue` varchar(45) NOT NULL,
  `UpdatedTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DevID`,`DevSettingID`),
  KEY `D_Setting_ID_idx` (`DevSettingID`),
  CONSTRAINT `D_ID` FOREIGN KEY (`DevID`) REFERENCES `Devices` (`DeviceID`),
  CONSTRAINT `D_Setting_ID` FOREIGN KEY (`DevSettingID`) REFERENCES `Setting` (`SettingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeviceSettingValues`
--

LOCK TABLES `DeviceSettingValues` WRITE;
/*!40000 ALTER TABLE `DeviceSettingValues` DISABLE KEYS */;
INSERT INTO `DeviceSettingValues` VALUES (1,101,'80','2023-12-11 20:51:19'),(201,101,'60','2023-12-11 20:51:19'),(203,101,'70','2023-12-11 20:51:19'),(203,103,'55','2023-12-11 20:51:19'),(204,104,'98','2023-12-11 20:51:19');
/*!40000 ALTER TABLE `DeviceSettingValues` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_DeviceSettingValuesInsert` AFTER INSERT ON `devicesettingvalues` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'INSERT', 'DeviceSettingValues', new.DevSettingID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_DeviceSettingValuesUpdate` AFTER UPDATE ON `devicesettingvalues` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'UPDATE', 'DeviceSettingValues', OLD.DevSettingID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;

--
-- Table structure for table `FirmwareHistory`
--

DROP TABLE IF EXISTS `FirmwareHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FirmwareHistory` (
  `FwHistID` int NOT NULL AUTO_INCREMENT,
  `DeviceID` int DEFAULT NULL,
  `FirmwareVersion` varchar(12) DEFAULT NULL,
  `AppliedAt` datetime DEFAULT NULL,
  `Descr` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`FwHistID`),
  KEY `DeviceID_idx` (`DeviceID`),
  CONSTRAINT `DeviceID` FOREIGN KEY (`DeviceID`) REFERENCES `Devices` (`DeviceID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FirmwareHistory`
--

LOCK TABLES `FirmwareHistory` WRITE;
/*!40000 ALTER TABLE `FirmwareHistory` DISABLE KEYS */;
INSERT INTO `FirmwareHistory` VALUES (1,1,'3.0.15','2023-12-03 00:19:30','Firmware updated to 3.0.15'),(2,202,'2.1.0','2023-12-03 16:53:42','Firmware updated to 2.1.0'),(3,201,'3.0.1','2023-12-04 07:09:45','Devices Updated to latest version'),(4,201,'3.1.16','2023-12-15 16:10:54','Firmware updated to 3.1.16');
/*!40000 ALTER TABLE `FirmwareHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PowerConsumptionHistory`
--

DROP TABLE IF EXISTS `PowerConsumptionHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PowerConsumptionHistory` (
  `DeviceID` int NOT NULL,
  `PowerConsumption` decimal(10,2) DEFAULT NULL,
  `Timestamp` datetime NOT NULL,
  PRIMARY KEY (`DeviceID`,`Timestamp`),
  CONSTRAINT `powerconsumptionhistory_ibfk_1` FOREIGN KEY (`DeviceID`) REFERENCES `Devices` (`DeviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PowerConsumptionHistory`
--

LOCK TABLES `PowerConsumptionHistory` WRITE;
/*!40000 ALTER TABLE `PowerConsumptionHistory` DISABLE KEYS */;
INSERT INTO `PowerConsumptionHistory` VALUES (201,2.16,'2023-12-13 13:46:29'),(201,0.18,'2023-12-15 16:08:00'),(202,0.02,'2023-12-01 20:33:20'),(202,0.01,'2023-12-03 22:46:56'),(205,0.00,'2023-12-13 14:36:32'),(205,0.01,'2023-12-13 14:49:07');
/*!40000 ALTER TABLE `PowerConsumptionHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `powerconsumptiontrends`
--

DROP TABLE IF EXISTS `powerconsumptiontrends`;
/*!50001 DROP VIEW IF EXISTS `powerconsumptiontrends`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `powerconsumptiontrends` AS SELECT 
 1 AS `RoomID`,
 1 AS `RoomName`,
 1 AS `DeviceName`,
 1 AS `LastUpdated`,
 1 AS `TotalPowerConsumption`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Rooms`
--

DROP TABLE IF EXISTS `Rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rooms` (
  `RoomID` int NOT NULL AUTO_INCREMENT,
  `RoomName` varchar(45) DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `Floor` int DEFAULT NULL,
  PRIMARY KEY (`RoomID`),
  KEY `UserID_idx` (`UserID`),
  CONSTRAINT `UserID` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`) ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rooms`
--

LOCK TABLES `Rooms` WRITE;
/*!40000 ALTER TABLE `Rooms` DISABLE KEYS */;
INSERT INTO `Rooms` VALUES (15,'Living Room',32,1),(16,'Bedroom',33,2),(17,'Kitchen',32,1),(18,'Office',35,3),(19,'Guest Room',36,2);
/*!40000 ALTER TABLE `Rooms` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_RoomsInsert` AFTER INSERT ON `rooms` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'INSERT', 'Rooms', NEW.RoomID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_RoomsUpdate` AFTER UPDATE ON `rooms` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'UPDATE', 'Rooms', OLD.RoomID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_RoomsDelete` AFTER DELETE ON `rooms` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'DELETE', 'Rooms', OLD.RoomID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;

--
-- Table structure for table `Setting`
--

DROP TABLE IF EXISTS `Setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Setting` (
  `SettingID` int NOT NULL,
  `SettingName` varchar(45) NOT NULL,
  PRIMARY KEY (`SettingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Setting`
--

LOCK TABLES `Setting` WRITE;
/*!40000 ALTER TABLE `Setting` DISABLE KEYS */;
INSERT INTO `Setting` VALUES (101,'Brightness'),(102,'Temperature'),(103,'Volume'),(104,'Security Level'),(105,'Power Mode');
/*!40000 ALTER TABLE `Setting` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_SettingInsert` AFTER INSERT ON `setting` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'INSERT', 'Setting', NEW.SettingID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_SettingUpdate` AFTER UPDATE ON `setting` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'UPDATE', 'Setting', OLD.SettingID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_SettingDelete` AFTER DELETE ON `setting` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'DELETE', 'Setting', OLD.SettingID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;

--
-- Table structure for table `SystemLogs`
--

DROP TABLE IF EXISTS `SystemLogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SystemLogs` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) DEFAULT NULL,
  `ActionType` varchar(45) DEFAULT NULL,
  `TableName` varchar(45) DEFAULT NULL,
  `RecordID` varchar(45) DEFAULT NULL,
  `ActionTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemLogs`
--

LOCK TABLES `SystemLogs` WRITE;
/*!40000 ALTER TABLE `SystemLogs` DISABLE KEYS */;
INSERT INTO `SystemLogs` VALUES (36,'Owner@localhost','INSERT','Users','37','2023-12-12 15:18:44'),(37,'root@localhost','UPDATE','Devices','201','2023-12-13 13:46:29'),(38,'root@localhost','UPDATE','Devices','205','2023-12-13 13:48:42'),(39,'root@localhost','UPDATE','Devices','205','2023-12-13 13:49:30'),(40,'root@localhost','UPDATE','Devices','205','2023-12-13 14:13:19'),(41,'root@localhost','UPDATE','Devices','205','2023-12-13 14:13:43'),(42,'root@localhost','UPDATE','Devices','205','2023-12-13 14:14:22'),(43,'root@localhost','UPDATE','Devices','205','2023-12-13 14:17:45'),(44,'root@localhost','UPDATE','Devices','205','2023-12-13 14:19:50'),(45,'root@localhost','UPDATE','Devices','205','2023-12-13 14:20:14'),(46,'root@localhost','UPDATE','Devices','205','2023-12-13 14:21:34'),(47,'root@localhost','UPDATE','Devices','205','2023-12-13 14:27:00'),(48,'root@localhost','UPDATE','Devices','205','2023-12-13 14:34:21'),(49,'root@localhost','UPDATE','Devices','205','2023-12-13 14:34:59'),(50,'root@localhost','UPDATE','Devices','205','2023-12-13 14:36:04'),(51,'root@localhost','UPDATE','Devices','205','2023-12-13 14:36:32'),(52,'root@localhost','UPDATE','Devices','205','2023-12-13 14:37:07'),(53,'root@localhost','UPDATE','Devices','205','2023-12-13 14:49:07'),(54,'root@localhost','INSERT','Devices','206','2023-12-13 15:49:14'),(55,'root@localhost','UPDATE','Devices','201','2023-12-14 22:11:16'),(56,'Owner@localhost','UPDATE','Devices','201','2023-12-15 16:08:00'),(57,'Owner@localhost','UPDATE','Devices','201','2023-12-15 16:10:54');
/*!40000 ALTER TABLE `SystemLogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `MiddleName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `EmailID` varchar(45) DEFAULT NULL,
  `Ph_Number` varchar(15) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (32,'John','A','Doe','Male','john.doe@example.com','1234567890','123 Main St','1990-05-15','2023-12-11 19:47:14'),(33,'Jane','B','Smith','Female','jane.smith@example.com','9876543210','456 Oak St','1985-08-22','2023-12-11 19:47:14'),(34,'Mike',NULL,'Johnson','Male','mike.johnson@example.com','5551234567','789 Pine St','1992-11-10','2023-12-11 19:47:14'),(35,'Alice','C','Brown','Female','alice.brown@example.com','9998887777','101 Elm St','1988-03-28','2023-12-11 19:47:14'),(36,'Bob',NULL,'Miller','Male','bob.miller@example.com','3334445555','202 Maple St','1995-07-07','2023-12-11 19:47:14'),(37,'Revanth',NULL,'Padala','Male','revanth@gamil.com','888-555-7775','29 Lambert St','1998-11-17','2023-12-12 15:18:44');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_UsersInsert` AFTER INSERT ON `users` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'INSERT', 'Users', NEW.UserID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_UsersUpdate` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'UPDATE', 'Users', OLD.UserID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_LogActions_UsersDelete` AFTER DELETE ON `users` FOR EACH ROW BEGIN
  INSERT INTO `SystemLogs` (`Username`, `ActionType`, `TableName`, `RecordID`)
  VALUES (USER(), 'DELETE', 'Users', OLD.UserID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;

--
-- Dumping routines for database 'FinalProject'
--
/*!50003 DROP PROCEDURE IF EXISTS `CalculateFirmwareUpdates` */;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateFirmwareUpdates`(IN DevID INT, IN startdate DATE, IN enddate DATE)
BEGIN
	SELECT d.DeviceID, d.DeviceName, 
	COUNT(fh.FirmwareVersion) AS `No.Of Times Updated`
	FROM FirmwareHistory fh INNER JOIN Devices d
	ON d.DeviceID = fh.DeviceID
	WHERE fh.DeviceID = DevID AND AppliedAt BETWEEN startdate AND enddate
	GROUP BY d.DeviceID, d.DeviceName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `CalculateMaintenanceCount` */;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateMaintenanceCount`(IN DevID INT, IN startdate DATE, IN enddate DATE)
BEGIN
	SELECT d.DeviceID, d.DeviceName, 
	COUNT(de.EventType) AS `No.Of Maintenance`
	FROM DeviceEvents de INNER JOIN Devices d
	ON d.DeviceID = de.DeviceID
	WHERE de.EventType = 'Maintenance' AND 
    de.DeviceID = DevID AND Timestamp BETWEEN startdate AND enddate
	GROUP BY d.DeviceID, d.DeviceName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `CalculatePowerConsumption` */;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculatePowerConsumption`(IN DevID INT, IN startdate DATE, IN enddate DATE)
BEGIN
	SELECT d.DeviceID, d.DeviceName,
    SUM(PowerConsumption) AS TotalConsumption
    FROM PowerConsumptionHistory pch INNER JOIN Devices d
    ON d.DeviceID = pch.DeviceID
    WHERE pch.DeviceID = DevID AND Timestamp BETWEEN startdate AND enddate
    GROUP BY d.DeviceID, d.DeviceName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `Maintenance` */;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Maintenance`(IN DEVID INT)
BEGIN
UPDATE Devices
SET DevStatus = 'Maintenance'
WHERE DeviceID = DEVID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `PowerOff` */;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PowerOff`(IN DEVID INT)
BEGIN
UPDATE Devices
SET DevStatus = 'PowerOff'
WHERE DeviceID = DEVID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `PowerOn` */;
ALTER DATABASE `FinalProject` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PowerOn`(IN DEVID INT)
BEGIN
UPDATE Devices
SET DevStatus = 'PowerOn'
WHERE DeviceID = DEVID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `FinalProject` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;

--
-- Final view structure for view `devicesettinginfo`
--

/*!50001 DROP VIEW IF EXISTS `devicesettinginfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `devicesettinginfo` AS select `d`.`DeviceID` AS `DeviceID`,`d`.`DeviceName` AS `DeviceName`,`d`.`DeviceType` AS `DeviceType`,`r`.`RoomName` AS `RoomName`,`dsv`.`DevSettingID` AS `SettingID`,`s`.`SettingName` AS `SettingName`,`dsv`.`SettingValue` AS `SettingValue`,`dsv`.`UpdatedTime` AS `UpdatedTime` from (((`devices` `d` join `rooms` `r` on((`d`.`RoomID` = `r`.`RoomID`))) left join `devicesettingvalues` `dsv` on((`d`.`DeviceID` = `dsv`.`DevID`))) left join `setting` `s` on((`dsv`.`DevSettingID` = `s`.`SettingID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `powerconsumptiontrends`
--

/*!50001 DROP VIEW IF EXISTS `powerconsumptiontrends`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `powerconsumptiontrends` AS select `r`.`RoomID` AS `RoomID`,`r`.`RoomName` AS `RoomName`,`d`.`DeviceName` AS `DeviceName`,max(date_format(`pch`.`Timestamp`,'%Y-%m-%d')) AS `LastUpdated`,sum(`pch`.`PowerConsumption`) AS `TotalPowerConsumption` from ((`rooms` `r` join `devices` `d` on((`r`.`RoomID` = `d`.`RoomID`))) join `powerconsumptionhistory` `pch` on((`d`.`DeviceID` = `pch`.`DeviceID`))) group by `r`.`RoomID`,`r`.`RoomName`,`d`.`DeviceName` */;
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

-- Dump completed on 2023-12-15 22:00:07
