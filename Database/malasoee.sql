-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: malasoee
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `backups`
--

DROP TABLE IF EXISTS `backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Local_Backup_Date` datetime DEFAULT NULL,
  `Cloud_Backup_Date` datetime DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backups`
--

LOCK TABLES `backups` WRITE;
/*!40000 ALTER TABLE `backups` DISABLE KEYS */;
INSERT INTO `backups` VALUES (1,'2025-08-02 00:00:00',NULL,1,0,'2025-08-02 15:30:28'),(2,'2025-08-02 00:00:00',NULL,1,0,'2025-08-02 23:12:33');
/*!40000 ALTER TABLE `backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorymaster`
--

DROP TABLE IF EXISTS `categorymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorymaster` (
  `CategoryId` int NOT NULL AUTO_INCREMENT,
  `Category` varchar(500) NOT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorymaster`
--

LOCK TABLES `categorymaster` WRITE;
/*!40000 ALTER TABLE `categorymaster` DISABLE KEYS */;
INSERT INTO `categorymaster` VALUES (1,'COMPOUND',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(2,'CORDIAL',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(3,'CRUSH',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(4,'DUCHESS',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(5,'FILLING',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(6,'GEL',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(7,'HONEY',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(8,'JAM',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(9,'JELLY',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(10,'KETCHUP',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(11,'MARMALADE',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(12,'MELTIES',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(13,'MOCKTAIL',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(14,'PREPRATION',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(15,'PULP',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(16,'PUREE',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(17,'RTD',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(18,'SAUCE',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(19,'SQUASH',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50'),(20,'SYRUP',1,0,'2025-07-01 21:37:50',NULL,'2025-07-01 21:37:50');
/*!40000 ALTER TABLE `categorymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanmaster`
--

DROP TABLE IF EXISTS `commanmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanmaster` (
  `CommanMasterId` int NOT NULL AUTO_INCREMENT,
  `Remarks` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `WeekDays` varchar(50) DEFAULT NULL,
  `WeeklyOff2` varchar(45) DEFAULT NULL,
  `OTFormula` varchar(200) DEFAULT NULL,
  `MenuList` varchar(500) DEFAULT NULL,
  `DesignationCategory` varchar(100) DEFAULT NULL,
  `ImportExportFor` varchar(200) DEFAULT NULL,
  `TicketType` varchar(200) DEFAULT NULL,
  `Priority` varchar(200) DEFAULT NULL,
  `TicketStatus` text,
  `TicketTypeHR` text,
  `CommanMasterList` varchar(100) DEFAULT NULL,
  `EffectType` varchar(200) DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CommanMasterId`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanmaster`
--

LOCK TABLES `commanmaster` WRITE;
/*!40000 ALTER TABLE `commanmaster` DISABLE KEYS */;
INSERT INTO `commanmaster` VALUES (1,'NA','Monday','Every','Total Duration - Shift Hours','Master','MANAGER','Employee','Computer','High','Pending','Attendance','Remakrs','Location and Department',1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(2,'Check Attendance Date','Tuesday','Alt(2,4)','Out Punch - Shift End Time','Attendance','SENIOR OFFICER','Attendance','Laptop','Medium','In Process','In Out Time','TicketType','Contractor',1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(3,'Check Status','Wednesday','Alt(1,3,5)','OT Not Applicable','Outdoor Punch','OFFICER',NULL,'Internet','Low','Complete','Leave','TicketTypeHR','Designation',1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(4,'Check Location','Thursday','1st','Early Coming + Late Going','Manpower','TRAINEE',NULL,'Email','Select All','Cancel','Comp Off',NULL,'Employment Type',1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(5,'Check Department','Friday','2nd','NA','Leave Application','SUPERVISOR',NULL,'Printer','','Select All','Comp Off Utilization',NULL,'Job Profile',1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(6,'Check Shift','Saturday','3rd',NULL,'View Leave Application','WORKER',NULL,'Requirements',NULL,NULL,'Missed Punch',NULL,'Weekly Off',1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(7,'Check In Time','Sunday','4th',NULL,'Memo','ADMINISTRATOR',NULL,'Select All',NULL,NULL,'Out Door Punch',NULL,NULL,1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(8,'Check Out Time',NULL,'5th',NULL,'Letters','HR OFFICER',NULL,'Microsoft Dynamics ERP',NULL,NULL,'Payslip',NULL,NULL,1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(9,'Check Over Time',NULL,'',NULL,'Manpower Requisition','TECHNICIAN',NULL,'Other',NULL,NULL,'Offer Letter',NULL,NULL,1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(10,'Check Late by',NULL,'',NULL,'Comp Off Application','OPERATOR',NULL,NULL,NULL,NULL,'Memo',NULL,NULL,1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(11,'Check Early by',NULL,NULL,NULL,'Raise Ticket',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(12,'Check Missed In Punch',NULL,NULL,NULL,'View Tickets',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(13,'Check Missed Out Punch',NULL,NULL,NULL,'Asset Master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(14,'Change Department',NULL,NULL,NULL,'Client Machine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(15,'Check Leave',NULL,NULL,NULL,'Documents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(16,'Early going because illness',NULL,NULL,NULL,'Daily And Monthly Attendance Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(17,'Outdoor Punch',NULL,NULL,NULL,'Individual User Attendance Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(18,NULL,NULL,NULL,NULL,'Location And Department Wise Attendance Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(19,NULL,NULL,NULL,NULL,'Duration Wise Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(20,NULL,NULL,NULL,NULL,'Working Hours Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(21,NULL,NULL,NULL,NULL,'Leave Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(22,NULL,NULL,NULL,NULL,'Individual User Leave Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(23,NULL,NULL,NULL,NULL,'Location And Department Wise Leave Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(24,NULL,NULL,NULL,NULL,'Manpower Dashboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(25,NULL,NULL,NULL,NULL,'Comp Off Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(26,NULL,NULL,NULL,NULL,'Individual User Comp Off Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(27,NULL,NULL,NULL,NULL,'Location And Department Wise Comp Off Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(28,NULL,NULL,NULL,NULL,'Change Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(29,NULL,NULL,NULL,NULL,'ESSL Data',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(30,NULL,NULL,NULL,NULL,'Check ESSL Attendance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(31,NULL,NULL,NULL,NULL,'Location Wise Department',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(32,NULL,NULL,NULL,NULL,'Location And Department Wise Users',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(33,'Attendance Correction',NULL,NULL,NULL,'Add User',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(34,NULL,NULL,NULL,NULL,'User Rights',NULL,NULL,NULL,NULL,NULL,'Offer Letter',NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(35,NULL,NULL,NULL,NULL,'Data Backup',NULL,NULL,NULL,NULL,NULL,'Joining Letter',NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(36,NULL,NULL,NULL,NULL,'Download Template',NULL,NULL,NULL,NULL,NULL,'Form-16',NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(37,NULL,NULL,NULL,NULL,'Import',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(38,NULL,NULL,NULL,NULL,'Export',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(39,NULL,NULL,NULL,NULL,'OT Approval',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(40,NULL,NULL,NULL,NULL,'Asset Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(41,NULL,NULL,NULL,NULL,'View Comp Off Application',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-02-28 13:13:13',NULL,'2024-02-28 13:13:13'),(42,NULL,NULL,NULL,NULL,'Recalculate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-03-01 15:33:26',NULL,'2024-03-01 15:33:26'),(43,NULL,NULL,NULL,NULL,'Attendance Salary Report',NULL,NULL,NULL,NULL,NULL,'NEED PAYSLIPS OF FEB2024',NULL,NULL,NULL,0,'2024-03-22 10:44:46',NULL,'2024-03-22 10:44:46'),(44,NULL,NULL,NULL,NULL,'Employee Profile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-04-17 18:08:36',NULL,'2024-04-17 18:08:36'),(45,NULL,NULL,NULL,NULL,'Punch Report',NULL,NULL,'need on printer and computer',NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-06-23 14:11:20',NULL,'2024-06-23 14:11:20'),(46,NULL,NULL,NULL,NULL,'Birthday List',NULL,NULL,NULL,NULL,NULL,'6.40 out ',NULL,NULL,NULL,0,'2024-07-26 12:16:20',NULL,'2024-07-26 12:16:20'),(47,NULL,NULL,NULL,NULL,'Memo Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-08-19 11:18:54',NULL,'2024-08-19 11:18:54'),(48,NULL,NULL,NULL,NULL,'Comp Off Details Report',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-08-21 12:55:30',NULL,'2024-08-21 12:55:30'),(49,NULL,NULL,NULL,NULL,'Add Computer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-08-23 10:07:29',NULL,'2024-08-23 10:07:29'),(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latest 3 Month Payslip mail me',NULL,NULL,NULL,0,'2024-09-15 10:02:31',NULL,'2024-09-15 10:02:31'),(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Edit ',NULL,NULL,NULL,0,'2024-09-15 10:08:24',NULL,'2024-09-15 10:08:24');
/*!40000 ALTER TABLE `commanmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companyprofile`
--

DROP TABLE IF EXISTS `companyprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companyprofile` (
  `CompanyId` int NOT NULL AUTO_INCREMENT,
  `CompanyName` text,
  `RegisteredAddress` text,
  `UnitsAddressDetails` text,
  `AreaId` int DEFAULT NULL,
  `EmailId` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Website` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ContactNumber` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `EstablishmentDate` date DEFAULT NULL,
  `DateOfIncorporation` date DEFAULT NULL,
  `RegistrationNumber` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FactoryLicenseNumber` text,
  `UdyogAadharNumber` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FSSAINo` text,
  `GSTIN` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PANNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TANNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PFEstablishmentID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ESICEstablishmentID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PTRCNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PTECNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LWFNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LabourLicenseRegNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LabourLicenseDate` date DEFAULT NULL,
  `TotalEmployeeAsPerLicense` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `BRCRegNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `BRCRegisteredDate` date DEFAULT NULL,
  `ISORegNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ISORegisteredDate` date DEFAULT NULL,
  `BankName` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AccountNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `BranchName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MICRNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `IFSCCode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CompanyLogo` longblob,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='					';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companyprofile`
--

LOCK TABLES `companyprofile` WRITE;
/*!40000 ALTER TABLE `companyprofile` DISABLE KEYS */;
INSERT INTO `companyprofile` VALUES (1,'MALAS FOOD PRODUCTS PRIVATE LIMITED','25/1 A, A/P-BHOSE VILLAGE, PANCHGANI, SATARA, MAHARASHTRA, INDIA-412805.','1.UNIT- 25/1 A, A/P-BHOSE VILLAGE, PANCHGANI, SATARA, MAHARASHTRA, INDIA-412805.\r\n2.UNIT- B- 47,B-48/1/2/3,B-49, MIDC OFFICE ROAD,, MIDC WAI,, Satara, Maharashtra, 412803.\r\n3.UNIT- B-133, M/S S.M.B Food Product, MIDC TAL WAI, WAI,, Satara, Maharashtra, 412803.\r\n\r\r\n',9,'wai.hr@malasfood.com','https://www.malasfruit.com','8390375253','1958-01-01','2022-02-09','U15118PN2022PTC208433','1.UNIT-PANCHGANI- 1622700220859.\r\n\r\n2.UNIT-B-47,B-48/1,B-48/3,B-49/1 - 1622700220943','0','0',' 27AAPCM4472Q1ZI','AAPCM4472Q','0','PUKOL0101081000','33000602480000999','0','0','SAMBSM000003','1631400710006790','2022-09-03','70','0','2023-01-02','0','2022-09-09','Kotak Mahindra Bank Ltd','1105152530','BAKRE AVENUE, F P NO- 226/3, PUNE','0','KKBK0000723',_binary 'PNG\r\n\Z\n\0\0\0\rIHDR\0\0,\0\0\0]\0\0\0t[¥\0\0\0tEXtSoftware\0Adobe ImageReadyqÉe<\0\0\"iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.3-c011 66.145661, 2012/02/06-14:56:27        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CS6 (Windows)\" xmpMM:InstanceID=\"xmp.iid:CEBE3CEE482E11EA9AABC7FACD8D3090\" xmpMM:DocumentID=\"xmp.did:CEBE3CEF482E11EA9AABC7FACD8D3090\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:CEBE3CEC482E11EA9AABC7FACD8D3090\" stRef:documentID=\"xmp.did:CEBE3CED482E11EA9AABC7FACD8D3090\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>Uä«O\0\0FmIDATxÚì]|[EòþÔ%Ërï%½ÞIO 8 PSè98¸ãÊÿ*ÇwG£·@	-´Hï!!½\'{¯²%YúïìÛg?ËýdËàM~ÉÒÓ«»ß~3;3«I{	!9oEÇÔÈÔÌ4©iÊYíe5)Ô(Ô P½Bu\nÕ*T#^!ÞËâQ¼º¯¤uBé½ËKBBkZ£P;Ójñ¾Zh¥x¥ïªV¿b¿!é ¢Ý+\ZL£FW¥F	¯aâ72øèXÄ«&t[}C\0]]znåLK2-cZ,þ.V|^,¶«Q\0qHBuNP,Ó¦ñâU©ñâûp¢W[è9µ»ÈÌ1²\rû¨U)[Ó\"¦yLÄ+i¾ø;Wü&$!ÀúÑØK*Ód¦)LÓø(Yý(^C÷üü5¿eæ«Vjpz±µ¦L³f	ú!V³B,§Ót¦]Å	&\'*U0¡¤½¤NÚYpEB	ÌN1=Ãô´øì\\ALGkùß2Ä°|HÓîd³¬ø¬Ð°P	I`oòàèO\\pd!@®@|~T¨I¦1ý\0ÒäÍYÑÉ*ù;Ó?ý\\i=ÅÃN D÷¬Éê!ùH­\0²LV\'^sôÇ_1}éËLïEÃDÅ¦Ë®dzéù\nXÄ.`ÚiÓnLûMµÕ¤Yq	 #à:(XZ¶`eGüYÏL×2Ët;Ó¯E&?ÞÕfmé/0ýå¹X±Â|ëÊt\0ÓþLû1íi\'$!	IpLÊ=L¿à²¯ÉÝ}îàtÓ»>Éó!ÓxÌbú$_±]þaGöa¥@\ZÆt\0(ò-iCm($!ùÑäb¡²Ø|#L·5ÌÙ¯ô×g¬.C¼\'ßÖ3L¯gº°£Öx¦3Nä_\nIHBÒñXÏMBIÖ3}éç*~ ¬¡Óâo¯äpï©Ø¶BXTõÒØÊD¦¥âÂÀ*$!9§dÓÏD&óÎÚÌ¶_F\0½Åß4Fò=Ó¤À£\nl\"\0;Þ\0Pö¿áÖ2½m2IHBòÓõá?@ô¬íÈxOÎuÂ¼Y¼/>_ªüáítÅôwL¯B(¯-$!9ßö·@òw)|Óûh½ÉO½R\Z\ZùÌtÔþÌôo?ÃÂtÓ­â,B`ÿBàC!½úü~¦72}\rßë¸\0+Â£KX½ç\rV?Ã\ZÎô%ñ\Zäç+L\'£aRr3íÉÿE¾/òo=Àô-_;i/À@u}è9û¢×ëP^Q²ªr4Ì@{d_¤Yãõ^©XÄFQçUdù¨NbºÉëóHaKBt²¹´`Ý)ä>/ÕÎâñz Ñh¶ßq\ní89×]ßì½ÓåËéA]©.ö7}Vçd¿ùw.é½½:uLÝBé=?yÔ¢  ¢¶Þc¿ÏZmpo0=/zneeTÖÚE_ÖðÁ¬7!:ÊÄ¿§ãB9ß´jðâIÐÌßW!ó/x¹´¤UNjÈÞ9=B%¶ÕÌÀ¢®]ÎÇ;FJÂ÷\nú¾W{\Z]ò!â£Â:hIÏ@\n85>¢ò½1E3ca)¶\0®càWëp£ ´qÑ<¥­p3°ÏË«ÂÞ=8«91aì¹ºÏ·&þµ`Zë~*ÀÍtQjÕY4¨ªv &ÎþÉ6MZ¸FD\ZkFt´É)VÄÇá÷¿[ÃKom§Ù³Y_ÿÞ¿	¸Mz¶\'\r:\Z g_;æ\rÁÌ½qð`*+¨¬t ^+¨ªr¢¦¶:¶íÁÃ8YÌ[Ú¯ý¦¨¬7Í\Z_¾óï¾øÜüöÑ58W´Äó´Öñ°WbHÚ&¥ÌL²XµX³~&º÷h¹\\ff9ÜÿëôíW	ÇdÖÕ¡«m  ×k¤íp¦OQñ1áøËßÆ %%OíÜìöû÷bÄwQÎÌj54¿ï²<øÀ<õÌdßL§Åýafx\Z.µ¹ùH`;\0?1D2×k8:s3À£[ÌH#ß¿±Y£QÝOÇj©±RÕÐ@~ÔÖ³ýò|+z¨ô É×R]íByE5È)¬`ZÊ´i!3ê ×ÿa¯¤ÊYË®èÖXyê;ù½÷\rAß^)ü5íäÌÒküeVÇû÷H	¯èÔÔcþ8XÉ¾¬æ@ºÿ8Ü>·?Êí¥Íú»²*1zxz°|dMdÐàx¼¿t:jkêT7S^a;N!òË¹¯yZº\r»D 5ÍÆØ¹	ä=È/­í¹%¥xÜvk?~r_û±Ö\ZaS`$7zµvììÉyøB)òb-\Z~[t0ÀÆL°È(×¤¤0îgèÜ9ÝºGâÍ×öc÷ù1õíì´°à{):Jóæ5Ô÷Å}¾l¦e¥ëÝÇ}+Åcú]Ñ«wLÀNa¹3Ðo-áÃæMY°tºWZZps$æÎÐèH/¿×6Ö+¯îáÙ¬ó³÷Z\\2µK,UL1£fÏ\ZÅìEJ|´O`§Á¤ªÚ\n0bHÿdL»¼&LJE®ÜÆLovëÄ@\\VV¼¼jöL±nM&¶lÊEv¡ÃÉÏßýãÌÜRDû§ÂDl¹\rµrv~Ù¹â¢v_R\"ÒN,­#bã,HH° Qrr8RR¦XÊF£x\"\"MÜ¿ÃF(©q¼zú2|öÕ$ÇEõ\\³J0yBW¬^wJÀj\0ÃÞÅ÷»rXÃ*pô:ÛQY]9bî­ñÆ;S:Ç*<üÐ:ìÜì*Ùí<d\"1ÚJ|±C°,b)Yùøõãðß§&üný½¿©	qM:<í&·¨/<w9îûå`Õû]õÍiLÖtbO°¶UPÂË¼Û1Sr0TZ3P®_{/<»_~Ce±\\±Es¿iðq²}Æ:`ßöbXO+`%;0+*¸ûÎ015HpuBbwZÇÆZZ×\rZ»®ÔÀëpÛTwåhL&Ì÷÷:ËrºêÛ4\"Â\ZÇä%¼¹p®¾¶®¼ªêÎ<{ÖX»~ëbñ°Y¬Z9@t°\"©(wÀ¬·ò{Ùgpëí0ÀÚG­z¦_ÚLU¥# sêÕ;\Z1Vîä·Ù}1p-ÈÇ}RñÁ+Ñ`\\sRãë¢ýX,z\\zY®d9<óäxgÑ(®ð ->Î:31Ë _03\rZ±QÚ`01*´ùHùÅA,ªGm¦ÑSlÙé5.3Ì\\h¾w±(w@¥u®ø$þúØÄÄXT5<5Ïb1°h¯9E20·ÝÞ¿Uû¸ëîÁxníÁ²êMjö/*Êê)Á*{ð`!6mÌFdX*7O¼÷ÛQ|Wå5å?w8úômÕ>¦2soúe½ñå#H»ÉÅé°gOA}[Ró\"Ùý¶¸×p®ZÍËÇ¥ôÆ×+¯¤Þ{O£ö=xHÞ~ïR<ôðPÜ}Ç·Ø²ã ú(¼øü4hÙ÷ëÖfrPË<[Î,ÖõGHÑíEÁ¬v3<ÜOA@Fn§@hÙé9­GÞ$hÄ|­cïÉ?Ô³gÞÿ6mÎFR|xÀ>\Zw5¦Lé]V­íÄÞÎHKXpKi¸£¶\ZWÎèÞ¢£¹ü.ßïÊhWö­AqaM\0O0³¡C³qòíhs¸ëA­ìüÒ3¸wÁ`X4q£Ó7n7ÑÖp|üáQÜy÷@L®êÞI¸\rqÖ³y¥è×\'ñÍÖæiù=mK¦åæí7âÎy+áa]®äîû¤ûsçüoðÚ;ÙàÁ|+óþ;XEwFUä NKw¥¨u@i1!%-¼Þq#ÅÑlEùRmÜw$ªùeÒbÃæì¦X6É_%@[ÀÊÅ\ZßºuØ±-.Û·å\":<\"¨ÞØÈÌÓ¿	ëÄ¹}Ï½ñÎ[°íû¬vaYJ\0¢©úY°NG1:]Ç+ÊRüâêþ><Éo;Ps?/»¼ÆéÏ0ÕeYÃ(©²cæucÝi4áKj¹©*¹!î&ûÇxM:ÕVIM$@IÞß7L04\0×+¯_\"Ì>ðcIÛßpcX{ÙùÔ1ó7(3æ´0IÕ°îVë)-µãùÃpùôn³ê¹CüE²ý¨Ì¼¡7þùX\"2ÏTú4B~±¸pLJë»%{8\'ObÆcÿÌzVmD¸Õ>Êà(Çµ3òYïãóC¶©Æ)ð4Ã¸mîI>MÝu1\ZIU9:¿ãI¿	>4¬	xÐ=-.ªá1MÔÕ<_Þ?Ö)i¢éQÈdiÐ·ðÄ¿&cúÕÝM;û>|¸ÅUH¶ñ¿óK+péE=pÍ/zª³2H½ñê~|ñù	ÖËPUå`mIÏ¬ºwÂ¸	i¸tZgtcï½ÁS¾ÅõþlìØTôéãÇÊg	Æc Å©Ë¿}E­ßRÙUew¹0¡ïeWtå´¾ÁÊã7EaÂµ×÷UªãDx´¸³&wª¥i­8kÖ¬#!*±x$ÇÅÀÌÀ#XÑÇ4{yÓÍý¼F7éû\'þ¹³&µrci#vENQy;ÆÕxêG|5æ+MvüÈ1>\rEezqgæs×^Ýµ¦YÓªñ ÛR*rËÄeÑluzb$,&#|øsôìù$6oÊñÛþ>X| ÙJMÃ+®ìÖ¢Õ ÿ~ÆaÁKñÍwGqºe¥>c»mg./ÝÃL½/Ð£ÇvñÇX»&³þ·Jðòu\Z°16êBu0í=Í>+;ÈHªQt¶æI_@¢Ù´P;ç1¯½¾gÌÁcÇqp_1\"Ì	ÜltAi9¦Lì©vñá}zÞ{÷ªÎ\"_ç}¿¤<)°½D,uÏ±ãú®$KÇXÑPìdÅòXòáTT8T·ÙG~;%ûªßÒéWuó¹¯\r²ðþÒÃ±EÔOPÑàÖ³W´ªkûì³cX¹z?â£ÒyW\\¬§w;&9ÎÊ>£A8a&h§¼K&}S\'ËTù½®äç­åyA*>ª-EÒq<ê ©iKT´R&OéñcÒYç®TeTO¨kz¬ýÔ¸¹ONÛ®N\\}­o`¥ÒÊjlØ|»væ©gY·_a;s¥m\'fH²r%W¼mæ³cô4L¿²»Ïm6mÌÂº´0±/¿´GõõÌ¾©/¥ìÄ¸*YVZY?þnj£¨wåyUW¹p×¼o¸ÂxKavÕùsív\'EÊÊð5hH¦:M\"éøÈ8|»î3_ÂsOýÐâ yÑ%Ñ)%¶ÑfäÒ¶\0ÝÍõÅvÊv½^ã×ñ°ñ!îô5¼S;Zl-t¬Zw5FLjX\Z¨PÑ k·zMyUèÑ5sæðy¿Þ|cðÕbÑ{bY¿yd4Â×µÏ¹kNï%1Pæß9Ð/»zçÂ÷¹yÖòõÈû¹ûÞÁ|@R2Ýê*\'cu¬øêfüýñ±¾Ëþ¼têR:´¨úX\'ü	op·$³nèÁÉ=ÍgúK¢cPìXZb¬&øõg¸þÏMÙµð\"{=Òµm¬9%TF±ùÀ5¸âÒOpùÔñ«û×àÌé¶ûShöÅj²µx\'=\\\rf\\ÓÝgc ç)M«9bWvbWÄ|êPoíË¡·/J¬ü:½ª6¼õæ~dd«Þÿ¬û0Ödt¤tÖ±+}«ÀÐÁé7Ïm23+ðéGÇøý§àÍödã©>ÆûöJæ1vò3 S¬\0ïóÕ¨ïbãæãÜgêö¸mDí[	æþ\rfãÉX;ÈFnAû¢y«Ü)Qf$D\'â£eßcê%ú(å~EÁ¦\rõ¼\"4zm\r`Ñ2;3u`R&8/._y+VÃ³Ïk¯ù¬ÍL«O\\5£;ÊìÍ\'ùR°hzJ_spÛäÛU0%è¶G^Eà[6\\}ïF~ùÒ¿w¹ÅÂ@JÊKðê+»U$rczð×Ãùï:ËÒ½¨ÝX¼ÙqÃ¬>õ%onai¿ÿ	ìÆk¯îQÙ=üQR´bñbnÞ-:ÜxÓGxæÉ}iqª¼í;3\ZxeÐdOagÎT¨¶Nh0\\¹ú:¼÷Î,tëÃÀ3ÙÅ<\Z_ççr¶Å¬¤äØT|»ú æÞ¾Âï5_~E7ÄFFóÐ Ê¸Ö\0Ö$¸üw²ÿ¨åÙ%ÇE!:<»~ÈÇîÝy­>{¹Îº©?mëñ7jÚëª1|x\"ââÂYåÌÖþø££Múüzî\\6`»*·sÔïXæÓÛoQ­~Fý5NËõÌ$ù`ñó¡îüiæqð\0bYeA¹éØ_G¬Iæx·NÉ¸çÁ®K~ôÌ?þØT?ú;:<ß­<ïwäª¾O÷?0½{¤ § ·OÚÍfÍ³Oýç{¾ÝçËN _×qâT!3y?ò¾mhÖâÐÁ¢ïýM·öÃÁ#·cÉû³0í¢Þ(ª¨ÄÙü\\6(VrÕ»}Èåhâ£ñÖ;[ñ¯Ç·ù­®]#1~B**j«ùx¦µ°®Æ¥PºÍéÓ>ýM5^SS§}]4¥3ºuEQ½Fâæ!>Øë2±jÕiÕq#ÃÒ}¶Íéf1¯ÙËçy~óõ)ì=¨p^ ïÔÆ²Ô9~å}>ü(ÍVIfðOåÃjÃêB¦¾¸þ^°Eø\\øÎì;x±ðzà ´\"\'ªñâ-;¤eEÓÿdéQåÙÉÌ®HkþïOëqñ¤0sÖ§<¸6=1ÎåRþsV­ÌÈbgæ)Àsæ¬ÞXñí/°më­øío&côð4W +?±~§äQÌòS°\Zcð»?¬ÁÚÕM®däèdÎäèz ²Ô%À¢ï«ÙHª+]>?_þåIÕ3`SE ýÅ~ÐlEJB,¦OïÞy|õå)É¨`Mcî°L§;*)Çq]¸_Îû;ÞYÞ>ÀAFAìáÃ÷Þ=#{öì¾9¼O^\r§©¯¥F¸ßÅÝqfíÁ=÷ñíôf²äÃ¼h÷³#s$.9£GKT³¬¿Ô¤ØùÂ­FXÍf|·îÂÍÄÇZ[,uaÃ²/á»oO·ÊR¯Ê^ÿë?°yÇ,lÝræÞ:180ÖÂâjn2Ë0&Z\Zàï¾ûÒ0û/ÝnêÇ¬©xnÁQ.	°hck0îñ`¸kW>úðjj{Íu=)¿µ5®& Tí¬Æ8FOJ7vËæl@jÙÍRÞ`ÇNäªwÞå;gíÈB,^Bæ |Ë)$-gïK¹ssÏ¾]øÓ×ª\Zaë}Y\rçOÀåtåIòq>\0E×ìqwHwíjW9æÌëÏÚùÂ×+·ñçDþ©xc5µ¨®ÍÅÏ¯åP)ëg÷ÃSÎLc_uv4­Â×(ÕÚráoÙÜj¿°w0è(Æ¨\\Ðácsñ÷¿LCçNÈ.ÌC~a5wÒy#ÇrpÝµËêG¦vð@!Ãå4ãýAs¹Tâ¾¾É¨Þâ¶d:ÑL·l?³2_NÃØØq)>`÷î|ffe£{§ÞqÕÄÑù¥w©2µ-j]Òã0ãê>YàGKókÔ/;g¥zîzþ\Zmæþ»¤Ä¨K¾²§LÇYHUL·¯bkañ]U2³Ç µâÛúù`W¢M\Z\r¸cîT2C³yTú¸ºÚ	G­TU$++ëÖäðï¢Z1SY(ÄáµWö¢¤´ÆV?ÝK\nø\\¿é~ÿèz<þ¯	­^aÇY&&YñÇ?Æþ4\ZO<¾Ï?»v>¸òI\'0fw\',AÝÇK_ZÅÝ016:DïpµEe4¯n3Ñø´4>#Ñ»OªË­ý`jtÃi\"6\"ºI&¹~ùù	j®ì<òçHÅû<A»uÌ3÷B¡$4Ót8lT­ÕôcY7Þt_{[LC80`ÓÈKjÉ¬ÝGµ~WV]yscÐ ?«\r&=¸6\'ÔÞ	y¡¼½¹óàég7\"JÐæcÅ?ØÈÍµßüvDS&<Syô#ñÈïFàÅñòû°a´d ×úMìyjn2\".2³mº·A¢éU\ZU¶dÒÒòÁ,&äô,ÃâET9I(·09!/Ø s«ÚJ^¶k×Hæà¦MÙÓ{©4 EçAÐj+aÆpÌÝ§ûT:¦)	Êì4Ï\0?:æÄñÝW\\\Z_V ÓÁñaQÔvYE\rââ-Ðé=ÈÊ/ä¥aÔOM·yËmÍIl©»ÜniÁ	5 !osûþ0h¬åµÍjñpÆfÃÃ.ÇC¬U¦ÍûÏîéìûbýÖØ¶õ6L¸°\nË0¹måi>4)Õ!.Õø°Æ÷j|f¬øêjgrBBO¬¶×UJ©\'\ZÙLõÙ0{ãº³lÏá¬NõÅ\0¥ªÁ©Ê@âf\\Ó½Ék)!\\ÎÃ\r=ïæSø ÌÌ°\0útÌ¼JÎz·ïºGÍÃìë0ÖdgÀUÄãï¼¨S	ÜÓýìÞHKÉùÕ¢ª¤ÄòÚÚÉéZ­FfUÄáéç6bPÿw°óû¼ W>ë6ÏÄÆ\rs1i,øJòQRfoÅX2L\r`]T¸ª÷y4waVìø!ÖUÝùn¹¥-ÉÑGÑï6K¦_å{vpÙ\'ÇQY[Î),ÍÎÂ°Læàqª±HpßÁ>AU¹¢\Z=I¾¬IÁ²3	Ét£mÃôSzn.TàÏÃ¼ñlàZ´ôr:y\'}x¼T-Äî{6Zª¡ãõÔý³+MÀÏA-8ÈÇ;¯?o·þÎÓ«¤A6§°i1_í&·¨OYJq[{ä`ø·qõáÐÁâÆÀ¥APÀ|Äk6ÎÄ¢3Ù9¹WÄÓñÚÉ?9¨%Å	þq[jà\n5XÄÌÂñÒTÙãÓ.ïúÄãàáb¾òÍ5WõEïÞ1>ÍÁoW	iétzÀJú¶ÐõUP(CgöÀÓTý×£/w ´ÌÁ£÷ÉÁK&pI±Å%5|	²ììJÜÿ«¡è? ®Åû%û²î¼{Ö®?ÉïC[ºù­Û63,fÏ/ÉÁÌë5ª¬@×DuÄÈtyéÅ=âYéÜÿ²rLØS¦töù|H¾uevfû#Ç8)~ááFîsä¯6Â)hhå~cÆ¦âÆ.ÀûKö Õ§ÊïS^QË]RT9j¢ª¼élüúÿð\r(.ªFzR35]ølù^|½ê8n¾q\0î¸{\0F],Eõkó}¶äç}K>#ù´pàp6RâÙ÷A_ðïôÀNû¬v[`¢y%UyãKS¹T3½eóàéÝØÍÊâÍùK;û| Gã]ù´ñNCTÚIH¾¶Ô(ÝltõdûôwbÅòSÜgÆªLª4YUéäeMª].nöJæ©|þ%¨s×á·.Sít½ñÆ¾xõå=´NñýÖ:J7	[çÃjX&Ç÷Å¯òùÿñØfj!5>®I-u)5É]_æ××}Ê>[;ïú\nµNÊ× §áI+ÍÒZ,:þ|Èwn@2(óÁ_kd¥Aæý%`¯v©bðeÕô2aá¢¦ÝóÄ<öø\ZD»Í0µH³&òöòÆÂmLw1ó­;n×7Ìî\r3­´ÝBÓ@«SgöñccãæHOLhUªÇÊåBF¶`ùkàòÅÇF[pìd>ÿìz³ð¶xLfLîÓ¤ýUñ S­H<uÌ°Ú&yEUèÛ+	³oêãóûÓ§ÊñÈo¿Ãª5ûðùò#X·9ûñå°ªì.\"eáU\'biz9k¸©>\\z\'OÔÐhñUîiE\\V}Îc\0%¥RÞAÈïÄðUë½ðíw¾?Û¿¯-;Î¥&`EÏÀû÷MÆu×õöë·Z´è\0+RâÓÙ=AbL¿ß´¼ÛíFcµYØ*ÆæíYX¹ú¶~±5ìóJÕ×5zt\n®ûEoWªæ7aÏî|ìÛWP?À7ÄØ@b|,ró¥HzbæÔfSøÞÚM\'pûÜOÐ£Óû7ØÌ\'çç\"ùò«ëÐ­K¯¤ª~-¦	þ|X¦à;Ü7>ÿjöHß/zïjß­¸Û¿o,zõFß~¾sò¾ù:û F7òyIþuÃ\ZÞ6EÒ2¨Þ%RûÏ¿8»u8¢¢M|ÚiÖ&.÷ª±VTWð©gÀ`®ÙcGwF^Iàõ²ä­Õæcòmu\ZêHÍ-ÎÁÕWÅêµ7ðò\'¾Øé³ÏîD³³¦ÎiÚÞGéYHÓñy3Ö´[­Xàî;9ùacâ©]ô(à35!öÚj¼ùæ>UÏ@>þûpW£bUg*i\\Í®oÛÜF+¿üþ£ç®h:B×d0jxá¾¸½þÆ;Û1vÜB\\1õS|Î\0^®ZÒð¢ë¡}yö\"ÉW[ã\n6tñXã&µAè×$ ÝëH\r«¿;ÃÍ8µréå]øJ·¾\ZcFF7m¦09þW/1£V¬am[í¥¸DJ¹wÿ4J|¥Àiº¯ýæûùÔ¾\ZP!Õrl	oDFª~tÕyT>ï< aJPZU?ýþR|úù¾îµEïâ)3Þ×B W\\1£»á[/ð{Ì¯¾:ÉL<iQ×\0aXV_vF]Ç§ÊéõDQyY`¡ë®ZÑ¨Ý4$XÃè=STÜdÖ;Ì	Ø¢Ìõ¬kùªÃqÍûØ÷]<ûÔ.äæVµu]yUw\\ÿ>(,/\rv9#\n³ú¬íUDFÓ¢U5øzyêÝ/X0÷Ý7Ôçw*QTZÊ¥ò9Ðâôj,R¶U6?ujg~q]OtñB3£ß®É`\rÉÖ*ó,!Öù¬Óè·4tp\'ÖÈTOMÓý#Tú«_aØÅ×¬k¶\rðgãô § Ù¹è\ZU+oÁ_ÿ1Æç`T_äðõý°;*DÓ½Ï/¨â®Úç¿¨Ù},}ÿ0??]+é´Ç¤ØpìÚYK¨vÐ¸³,M¦9Ï\"ÕaóläWûÜ×oLc­ÔÈ«P4W6Ff]I1	8~ª¿úõèÞùu^ÃîÀþÂV|3y©MýjÑAIëï°·^iT+Ò6úÊjrå(¬GÏ(Ìå3îÓyÛ-B¬ÀÅm1Dà¡_÷Ë®>ýFæVOÈ @ëÝ©5¥åóxöùµeæð{Âã²&dÙ_hGNaur!wÌÄC\nÔJ¿~ñ!Û)-qðÉrÓkQq-Û·T- ¿¬½ºÅáÉ_óqñ%uÓb\no¼¶f]x#s:l3îr¼ðÜ¥:Ütff9¾^«ÑÖjG´VÔg_ýÝiÕÏdÚ´®xA2òK+[ü\r2­G¸ek¶ï{Ü?/¼p1»æ\nTÓJKÍìO*ãA|±®$~þÏ½¸	ý¼ÑÃÞÇK´\n¸¨^]ÿ>)Ìü´F{¹=î\Z¨U¡lôplÛmÛrT£»¯F³\'[7g#ÂbUÇ\ZVµ]}¤±¾\0Å¦T9é5À­A$¿¹Mi\rzf¬X~yyüÊqS±kç<éß	%UµP*[T\Z³.{2\ZuèÛ;£%ãÊËû1FsþýÔfÄ[ÒÒÃñú«£g×dÄÆê£Äé5-Õc;á¡&`íêÙ8|âv<ôððúYO_ÇÒ;oïG!cÐTû¬²ÊÉ×ðËcÀz6?vg%3w®j!î\n8QÌöQ£Aß&?U%]þe5	üòbYµ-ÞK59±ç&¾2ù·÷Ü7÷Ü9ÅªªêÊ[ØÂ<,!ÖfÃ¶]gSZ~=ßæî@\0ÚÊÄIi«Ö´`)§¿h¥´£¨m\n|ý=ØñÙ§Ç1jTr«s¤hiô²ªJF×£½\Zº\'°6zî0>ËXK^ðäSýv*8[ÏàÔ´:ZÖ|ê×aÔðHL´ÐÉ¤{1dhvì¾	GàÄñRþùËÿÛoVb\\´]ÒËWþÂoSÛ1osn½½?oªkNÓßËD	Ý^í_Ê%|ñù8X	BñIÌê¦ý?Å§µ´¯qc;cÜ¨>Ø¸í\0m3LÚ0¨ORT{T6« ~r÷-ªú9Ì¿c üï>ZÀ+\"ø3§¤³0bÃú,Ej¼j3õÿ½r1ÊÊj°xÉ$D\'©.@IÛM\Z¤Z¢PçÏÅÐa¯á7¯Á­súµØåãËùÀjÛ³Jéë\rXð¯ZÑzX±äýÃøýFùùQ³¿eÜ»$¬Zõ3T1Aéàl	L(d\"§0a&>ùä\Zþý_ÑÑV\\su_¼ýÞNÆl|\\Üd5èÍôÙÙ¨AÓqÒk¡àÁa#øB]Ü)  QÞoXª|*W?]µò4Ü«j9Ê+¶\nTþ\r­üMÚ¸©ªq6\'Ññ¼ÆÇ^Å©D2\r¬¥NF÷rÍëY{YM¬¼°À\ZX¼Ö{Öð\ZiùÅåp{äÁ¯3%gm`÷îÉÓO_Ë®Xì¼r¤$Dø-ài±`ûÖ;Zâs©/y>Îé»·1%Aª8¢ÁÓv4AÎÀ3¯ ·Íý»Fpæ¤puh2Btp²%^øÓVSþkÁÉ3ùøâ¸qvß÷I~\rëÎ\"Ühm²ì;ê×S\'ñ	Rñ2ZÛÀÌïL\r\0Ög<\ZL¸°7.Î]\"M°¥óysá4üúáØ··¯ÌKSØ§NñP9A)¹E>­\'¾XqM:¼¯ßÉ`o25xIØÁ6Æ\0G³¼¯½¼Ýi+»¢ØXK½ß-PH¯Ù+ùÖè6¼ûÎ!ürÁw<>ÐûP±¯Ë/íÉ}Ä;uÀiõÌÍròálÌºáfÎb,Okf¬ÑÀASKì;väú]PnW]´´üóß«`¬DB\\x@ÎpbÀ	ñáÌR¨ÀâÅ9`©±vÊùÚî`§êPp°zµ\'(Ñ´j .\Z)BË38`jnÙB I1ªäÕñÔµ2p`&ïµ~@iu¤¥\Z=°\r´rEæÏ¸¢Ã¤Éé|½65Fn\\dºÈæÉÝx1j¬:¾ÉÝlZ;¸åMõËÐ{DyäËh±5´ñt¾³gñø\"§«NñlÑ¦ºPt}ò*åýûÇòÂÒw¯²,ñz>ØÄÇ[ÚÎQ\'ìëzàxÆ|¼¿è0¾[uJÉ¤ÛïÆ®ù|ÝCýBnW?1Ã%bÎåx²iãþ*µÀ%±3ÛËm#ëlÚ©PcO¹URïêÞÊSñþn§Åf¶aÙ\'ÇýÅFÌA\nã[×ð@	QâhltÆI\r²/ýèJ6âvÇÁE|©-rRúÌñã¥(*¯ÆÄ°ìË«ÛäãQ²M\ZÑé¾w¡içoª¾-ÒP«ROjq5ÂÊ\n\'_I\0ü;&áã!´\n´ÚãjÚ<ú¾þ*i\ZRÓR2xË@ÙiÊÌßãk@fO½ÃcZÏpéfæÛðÈ£#¸<üÐ:ü÷éÍHS¼f¬]sFuÛ½vfOL|þòÇ­xéÕ(«*QÉã²ºK\ZßN©oÚ1lD¢êë£¬iPºôk0ÚQøâªÍÔÃ*\'x4w\Zé¨Úá§TIvVOv7óU[ëFefo¬xæéKDôºú¦ðiæJ)-=ëoøûy¥mÛf6I\rDÓiýËå	 ¨sð:xÝ{Òª*\'SwR&îÈgæ¥oÐ4?-i¾qCzt~EêË\0EJå\r`Ò«N¾z%³L]z5ÏÉ·GNwÚdT\"XoTì[¯ãÄ¾øleßX¼ýö>lßÉ\'Sêàæ`%7ÇivØOgèëÆpåI¥$55Þ¥b#,¼zî-Ù¸ðÂU\0L%_|e\nîY0¯¼´_~~\nY¹õIg4á3;Ü7Å{UbÂØ¸û.uõ+á%n\",æö.2`\roOÀ\"@²1Û;6Ö÷EPä6¯¶1½ÞðÙ\'\'x$¯Z³pÍLä\"%>uBï¬£§bÌØÜq×@ôé°Yâíãá,Ä&Åg©LD¨sñUUÂÀ(:ùYvlË1­Âj	xªQUÒ\Zö¾ç¿DjZ¤~k¯s çøÉ¯\ZþÞØiAê¸a=7é	Ì¨¾Û#-*AIÅT>N²·60Æ¯rÇTÎÂj||®aW¬A\'#-,ÉÍbîbç{ïü¯çÏÅ&¥&^h.\"Ò«UÏ¯ÅLe§-R½þ0fÎÓ\0F!6Q¶%ÐäåÃ2Ð=y \nôY7? WðAæ¢0ÖC+Ø`qÆÓ´Ýy÷%Ùõðüÿ¦à?O¹x^*jyüh	ì/bí¨ßn\Z,ÓR¬èÓ/¯íyç=% kæÊ{EIe)_\0¶VIJk`{ÕýIM³2\r÷ùýøñéÜ¯DlÊ¤±ñY)¡81ÚÕë3°fõLÒI9(MûºyÄïó/Lá\rÍz¢mÎi))ZËgì±¹ÆK»J0\ZJ¥¡\0?{µô7RáØ_Ì;¤ÑÔ4aféèÑyØAà(AG©ü\ZtZG4\\g¨7{´¢Åy¶ì¢ó0[ôíÒ69qòûÆUX=õQp¸0Z@éb sLôìÜ*v<÷Ã<eóU[L\Z=Ï² 0#Ç6ÍbÒÖ1~Y=\0Ö¯?ËÊ÷¤jÔÖÌ©¿ÑÏ:jÊÙH1/ ÒqåÍ©mh\\9£»UÞ×¶KçxÝÌÞ\\iµ)2û]Q#f§5i|4¼òåcR1´Ïnr+ìÚ{§^[Ãì|O>zôÌô%ýÄâÅ×â?Oì@qQ\r\ní\0È|fwkùòàX-±,Z¾éëå§xXý£Y:%Xú-5*\ZÅ-z=ìÁOiëÖ^£*7§×­jÌt$3:#¡Y.Rú%¿:<RêÔÉìú\rH£§§©oÝÛHs}ÕQåë¹$\rçëïÜ5\nfIôB§ð{6%©1õ*6ÜObÄÄ©öXkÇOp4>&¬Ñ¶õ^$jSìÃ;î\\ÉYE\'»PdÓ+±#7ÛcÌM®³ÅYÌþ¨-1°4ë#Àcn «mâG£4­sp`=z6ø·¨²îíscüxìwòmÉÎ´5~?yþj5ËâÅý®«Ø6±é!E¸\'kä(v°Q0¿f\njx3»pø\0¼òÊ¥>Cþû{s%.;«óç®Ä²/ðW~ÁG_JYý]&Ng!!*\nù¥åü7ÁpL	T*À§5ðoWæ1\'6[8N,gô|1Ö«Ò*^uì-Z-g²còuZ#?\'r6ïÆ\"!iH6~þ\ZèÍú(ª/aáJàÈÕN++¥U¢),ÀUßåuÜ\n0Ö¶Á@N£«àÑy&ÅF4sbO4ð\Z¾}ûÄbÈ°\\5£^zxÀ-\'ô2{ö\"Ü6ïF×ë¼Z7ØHûýçcÛðÊkÛËMövÎó»0ÖkRëÔ)Ý0tX\"¦_ÕÍou_3\Z4\"ôê-M+K	¹n^ÊãèÉ\\¾xå¹ýEùM$sP«:¼\\\n¹%\"¦_ÍØQ¯AE9jYYÈ!Í©fZÉÙnNÔ¸køù%ÄHFÙ¸H¿v8Ðh5!døttºVM)gyä¨Q¥Lbzä¯\"6æ\r<äÜ´=éI¼ðÒÃÍ÷YXRÛçÿüû{üß_GãY½ôÖ\0w_?g%Þx{¢Â£9àÖ¹Ûmon+5¡°ÔCðÍw×©v2úsl»9­l¨_¾bùIXþÀF·Ül[¥²·FÙÙU<×­(RÃd² Ö°QQ8÷(£é:iÖ|67Vå!ÆÖ3½æýþóÄÎ¥J$áõñbrÅÏØh+ê\\V:Y7~ß>f÷â¹­rÐik\'È|~ëõýxü[q6\rÖ±ÜçÜ`ÅÇ}°ýW4S¤¤ÖjÊW¤»ìH++FXløfÅi=RÂXtýMËÏc¬)-pùáÒ#8~¢ñ±a|	Ñø×ãÛñ¯lç@UY[+¨Nát\0I¦ã&èõæsÒ;\0j\0`\'SªcnÙyø÷ëx±Ãý0~r*¦Ní#giqÿÔ×Ö®Éä¤[3só`Ð!%.ÜÓÞ`%Y]LÓ»K\0ÖûdüOÒ¾hº*&Þwï·èÓ+GsÆD9_Å%µ¨uÛ¹?(!.²Þ1OÎÏlfÒs|_ñ0¾MÈ\\ÉÏI8p±&C.0ÚòýÞ\\¦xúÙmHd{ï>ÑHïlã«XÓì¦ÏÂJeh²(ãT9öî-DqE)ïã&}8Ï2  òÈN¶¿Ôiã^z½¹9X{Ì),çþ+oPI%ór«[-ùÎV ?ß.Í¤1à!»ª§ RÃ%å¨åÙ¥F¶ÌLYõ¾rîB4oÙó¢Ø½*\'åÿ9ëI× \']¸I*×­Ñ¶WÔB²VPKÊèÙQL\nEÌÀDLþ¦°¢â\Z8=ÈÕ	±1&hÒêø4«rùkçözHB6ÚB)ôUÀÐï~\"©\"µ½¬=9XSëBai%\Z¦s5õ¾\"Ä¢\n!_QÇo×bè¥Ñ¥V¼Êï\nuî¯rD«rN_Ééo(Êy¹I®P£âÕ¤xUzç|AÞÌ=RÔ/î¶Õ¯<E(èßÊÅ+iøÜîõ*¿§ïid©ZåcZñ^	P®|d #°\"O²YhøÔ*Ú}¸BåïÂ¼E	D;eõD×·Ç$\'ï$ q	°©À!kSZB¨D¼÷¥â»r¡eâ·Îù}AµZÜ§`!V´x¥Ô8k%Q|N\0!4:Äò&»õ¡{ÐnàS¦`;`(ù«@h¡x-«Hl[º}åg§V°Èhù<*­@Y%iBã ß+±¤A¶ëÕ:q ÉàC«dä\nÍ*7ê±}H~ÞíEn{ÙN+\0@Âº@ªQ×Uñ>úg~/iI¨Ãú ÓæsU*àC¹=ÙBÏÆ&³¥R¡îuú\r¹ÿV~ÖX<¹Ò­ÑÈ~roÑÃã¦^u£Ñ0ÉT£u°ïÍ\\¥ßÓ*×:}R«­f¿«Bs%y\ZDw]ÕêÊÑìús¦cº=éüAçbgûw aqªIAÀÇ¥qí)=Ááu¯.Üø±ÄÁòîòÃÔ¥Å\nFÙ)T!¸§ÐN8ÿ}kë (hÎy|uâú2øÈ)>/\0T$|?±H©@RG4KÇ#W¾¤Í*Ö)kávQ®Y¢3³©©ß*BÀ¤ÕU°N+­çqÁí¶	p@.ãf{ÜáìóFuul@÷hùvZº±sPãe=:¾=i3:}¦Lv,ÛÆÉÎ±º	hÒ>4¦¡Ó±mª¼\0HËÀ%½uòó5O³cÛQkïËömdÇ)æãvEñë×²a4ãçUç²ÁåJd¯ì\\+Äý©ãÛx<úc¹Ýfé:Ø÷n{ÿÞ]!F¸\0=HÓõk4µ*A¶]Z¦ÐÝ>¾æf\00Zâº¯xM>Oúò[2`:/z]SZ½ò¸`GEÂlËvüËFrw]4ï$zC¬#i´5¼ãòÎå¶²Î#æ°]0\nVúÎï¨éÇ:`Æ¼St:Óa¯\ZÅ:s2 ê áËa2dXèáàC ãv[P[=öêì<¢ø1LæýÐ\n9àiy§u7°,|BFc;ç<X\ZMÀr2gç2éH¸)¸J9¸Õ¹â8 -»a0à¿×1à4ÏrVV[ÓÕ2à\ZÈ¯Ùh>Køf~ôl;¹Ð£ËÃ¶Ä·5NÁ\Z±Ûm®g]t901ª®ÇÏE§/c÷äKèõ¹Xòt0µÝP]5_¿o{ëù¢2ó?Ètµ×wdNöæ&½§Úw+;Wd+Ó-¼­\'Ç½4½®èÀ=@ç°a3m&ÓZ:·}pRH±£ùÂÂ7Àh:ÅYÔù¥86bJNGÎ\"Ì80(5¸@Ü!C¨ïXI&9«±Wåû³­ãû\'pÌBÙ$tp³ª9ìdü8^&!75´ºpÄÎê«Ö·I¨«bû,g`ÊbÓ±ì}<;Ö^X¬[a²ìã,R:^ìWÇÁ,{åHz¬¶3pÉãÎ7dºVv¾¬Ng\'~-DbNPÜ¥àd`Æ^ézuEñ®Ñ#üÞü>²{WÓ]¶êáuéô^æé9+XýÏÊ8jëçzÓ/dÀ\n óP	Êô÷¨\0¨óOX\'òÔÙXbæÔITa	ÛÁM:Ù4òb)¼Ã³Vÿ½Ò7Ã·u¡!ÖÒSÏ*$P®fdØæÃ¿%KKæ\Z®(Å~)Z±1@qÔödÌ\0k7*+3¦.B-HbdtðMâÆþ<	ôñ¹ñû¹¹yêá¾®¯m¥{§Óp ¯­éÃk<jªðï$uÀåí+(\0¬ÓaÿKø	Ïé}¦³ë\n,z]Âtf;Ø%\0éph0ígz@\0ÖÏDÜÜTWÃý+ë6VØû|Öyã$3OÓ>}_ùR¸*¹ÉK í¨:ÄÈ\"ùÏØ=$À²3ÆUËÌob°:]±bp8oüaãäìñ#Á½VÍù!h=8,À)K°¤ÝÊð³7ñë Fn	ê,wp{êÂyI¥ÄÜÔÌSòÅ13»¶¦77v¬¡G}B>±!A¾ø:Áîv4z\n°HþéßÜið%aºéNE¡®ÀoÆ\\uqÌ«æÎlÉ|\nnwSÙl´¬sb\0ø\Z\r)1dÆOGÃdÃHNWú¥xËÄç§yíK&ýo£ØÞ[È©s0äÀF\Z¾º1Ú^#)úf§âÑÕn&>}H$~¸þ8¥ÊÌ÷éÓ}lÓGì£Büm¿;¦A Ä &AJëÙ*îI¾Jæ5ùÉO UÍ&7tZyöógYÈ1N´©£ûni}§ámz/¤åïLç7v§D#}é,A\rÉ¶¥%Ânbúø>VõÃA÷·Ô¹#a	Ûèÿ!*ömÞØÉñ,ùÕTa2NHä}R8F\'Å0NN·ïf4QÑ+Í­491ÃÏÙê¯ÂwØßÏè8_tê?B\n`\rñ¿Â@~«Øf¡íÿÍô\n¦´²ìL2ýêcúhË_ülÓI¾Ä ù?VÂ³L·°$¥\0Î\râ>+eÓO ÚE[~Þ7SÖÁåHá~DkÄJÄ$<[Ô2~i¦×w<Ûy/4ñ!Ó» 9ïcxýWÊýmmÏ.¥`X²Ðèr%btßs\"< c1+	\"ßGDôRÎ¬ÈLSä\r>Ù\0uªß3ý§×w+E§\\¥øáaÑ@¼;+Ü/!¥úôÚ[®dúkÑé½å5X¤oøøþS18)¹ÇþéD¦ë\'Ð{ÍÇ»Qñÿ/Ïb§Ø\0çW>¶% Þ,@Qé¨ûÌë³wpÓL¸UlCÌm`}ó{1øîí¶~­#bUz}!¿(-¼DZ]B)Ä ü`Ó ]Y	ï½ævâ+w©V4/C÷¸-`ÌÍ¾èøWhC=\r³n~gÞ~#\0æ>¾ûH°,¥È£Ë¹þ&ÓÛ®4ë¿/õsó·ÌÏ¹~¦é\"2»ö6û«0cÄ~ÿ.ÌÕýôúéÂäü«×çO3}PìGvÔÿûf{btEN¥IiÑ7éÓÑ	FÓqDÅ½»ÙgVGzq\nÖ¿Füm	\rqªg!	ªHqU°ÿ\"w9ÒÐÓ¬D{:JyM|]\nfá-²FQÊI[âÇÔ÷¶_4Éíi¬ FÂç}øàµO\0í*\0k\0+(ü¾ì«n\n0RÊQI)Kµð_õU©NfZJ÷>a/TóÌI)DÃÄcé6ñYà1µç\\*ñ¼ö!l`®(Â\\[È÷³*e8)Ù?Ùúi?+gK~-Â@>±Gýô6¥\\(^©ê¥MÁÎ{aÂÇfÔè­ø\0& aAå±¬ÂU!\0,?{ýî}á×ú³03ïäíð`ÅÁÉß×¹3ÿCÒÊF ²+Lè\r9<[X¨Âó´¦\n¾V´ö³Â¾4ÁUÞþaÑiÉÔÑÂoº)Ì¸@EÎ:xéÂF×1\r³tjE×`É>¥g\ræ/I¹âóÞÂ/5Dø¨Àÿ\"RÈ\'\0ûUñ\Zp¹òQ\ZL\'ø4Üw98BVBÕ±Dãæ)-GÜ­¦Ã¾wfi:fÍ\nAä\nácZÖsâQ­¸r§4\nÍyWsnÚ¦¯=dB\\%À®&\n³\nÓÎçHNøý¸Æïñ:ï·Ä  fé8q¿&zÚ4{h6@tüË}G\0YÀWHBÕ>¬n#%ój5vD²JÉÅ^m££÷è@s!Å\rQ,ÒÀäï³ZJâ«´Ðñ:­ç-³\"2¯¶H³|\nÓ°5mÓß@E4J³¥#!ÅNÉQäãË÷q/Ö£qòï³ þ\'þþ`d$Þ4<çbì(æ.&áêrÅV°~b°¡\naÖÌâq(	WÊX1¤ùùnK3~ï¼/­¿F3_òôq¥×6¹UD[Éè3{N.¦õ23áÇE¦\'ÍR¾Y¢ÂÔÓÁ\"/&ÊztO>÷Úf·8Z¹2º[$¬wÑ|Ñq¯óÀa=I°~\"f¥ç#iXøzFÿ_åé.g:kÖæÞ\0)JÝPúÔR¯Ï>\0BÙ)}ù`>&û.ït©»Äë\n4?­oó:Fsíâ½nnEÛTã±&6´Hy2Õ	öÕÇk[B~^þ¯\ZøÎ3¡q<Y«fÉeøVx`ý¸N+Öø¬°ÚÖ 2æ¸,E9·)L?r÷R|Ff\ríÐÒ]ÁÌ¼e P_ò\'ÑÁ/ð³Í^Á°ÌÂ¥É¾!u~ÿ	sIÖO¼s;Yì»¿\0[\nÀ<Y9R¼ðg¥HQNXø}}$À(L­ñb;2½)ælâ³¿ÐûU07*c4àTP0$­êu>\"ÝC¢B¨ÄÉ|ÇZ£|Vm®6ÐOt0èUáPûïà@ÀF!\ncÄûáÃù@E¿£óE?ÇÛ(RsëRþC\0ùòÄEÖ\nêr=Ç±?up(@£³8wJÕhÉ8^¸Jqì¥Âô|N	¶ßïc_FaJÓñ÷s¾cÒÈü8¼,Øï¤òFZm%OÇ*-ÃME©fYHÿ`\0I?e^8uÎí\0\0\0\0IEND®B`',1,0,'2022-09-09 00:32:11',1,'2022-09-09 00:32:11');
/*!40000 ALTER TABLE `companyprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataentry`
--

DROP TABLE IF EXISTS `dataentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dataentry` (
  `DataEntryId` bigint NOT NULL AUTO_INCREMENT,
  `EntryDate` date DEFAULT NULL,
  `EntryTime` time DEFAULT NULL,
  `Data` varchar(20) DEFAULT NULL,
  `WeeklyPlanningId` int DEFAULT '0',
  `ProductionDate` date DEFAULT NULL,
  `ProductId` int DEFAULT '0',
  `MachineId` int DEFAULT '0',
  `NameOfIncharge` varchar(100) DEFAULT NULL,
  `Shift` varchar(10) DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `TotalHours` varchar(40) DEFAULT '0',
  `TotalMinutes` double DEFAULT '0',
  `ShiftLength` double DEFAULT '0',
  `ProcessCapacity` double DEFAULT '0',
  `BottleNeckCapicity` double DEFAULT '0',
  `PackingSize` double DEFAULT '0',
  `ManpowerRequired` int DEFAULT '0',
  `ManpowerAvailable` int DEFAULT '0',
  `PlanQtyInBoxes` double DEFAULT NULL,
  `TotalAvilableHours` double DEFAULT '0',
  `CIP` double DEFAULT '0',
  `ProductOrMachineSetting` double DEFAULT '0',
  `RMPMNotAvailable` double DEFAULT '0',
  `MealBreak` double DEFAULT '0',
  `MaintenanceBreakdown` double DEFAULT '0',
  `NoElectricity` double DEFAULT '0',
  `ManpowerShortage` double DEFAULT '0',
  `StartupLoss` double DEFAULT '0',
  `NoPlanning` double DEFAULT '0',
  `Others` double DEFAULT '0',
  `Others1` double DEFAULT '0',
  `Others2` double DEFAULT '0',
  `TotalDowntime` double DEFAULT '0',
  `OperatingTime` double DEFAULT '0',
  `Availabilty` double DEFAULT '0',
  `Production` double DEFAULT '0',
  `TotalProduction` double DEFAULT '0',
  `ProductionDone` double DEFAULT '0',
  `BottleNeckTargetProduction` double DEFAULT '0',
  `BottleNeckTargetProductionBoxes` double DEFAULT '0',
  `BottleNeckPerformance` double DEFAULT '0',
  `Reject` double DEFAULT '0',
  `Goods` double DEFAULT '0',
  `Quality` double DEFAULT '0',
  `OEE` double DEFAULT '0',
  `BottlePerMinuteActual` double DEFAULT '0',
  `BottlePerMinuteData` double DEFAULT '0',
  `Diffrence` double DEFAULT '0',
  `Remarks` varchar(5000) DEFAULT '0',
  `BalanceQty` double DEFAULT '0',
  `Status` varchar(45) DEFAULT NULL,
  `RPONo` varchar(45) DEFAULT NULL,
  `LocationId` int DEFAULT NULL,
  `UserId` int DEFAULT '0',
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  PRIMARY KEY (`DataEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataentry`
--

LOCK TABLES `dataentry` WRITE;
/*!40000 ALTER TABLE `dataentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departmentmaster`
--

DROP TABLE IF EXISTS `departmentmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departmentmaster` (
  `DepartmentId` bigint NOT NULL AUTO_INCREMENT,
  `Department` varchar(100) DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DepartmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departmentmaster`
--

LOCK TABLES `departmentmaster` WRITE;
/*!40000 ALTER TABLE `departmentmaster` DISABLE KEYS */;
INSERT INTO `departmentmaster` VALUES (1,'GLAZE GEL',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(3,'FRUIT FILLING',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(4,'BAKERY',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(5,'BOILER',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(6,'CIVIL ENGINEERING',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(7,'COSTING',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(8,'ETP',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(9,'EXPORT',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(10,'FINANCE & ACCOUNTS',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(11,'GARDEN',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(12,'SECURITY',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(13,'HYGIENE',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(14,'INFORMATION TECHNOLOGY',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(15,'JAM',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(16,'JELLY PACKING',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(17,'JELLY-DEPOSITION',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(18,'JELLY-WRAPPING',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(19,'KETCHUP',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(20,'LAB',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(21,'LOADING',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(22,'LOGISTICS',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(23,'MAINTENANCE',1,0,'2023-05-21 11:52:30',NULL,'2023-05-21 11:52:30'),(24,'MELTIES',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(25,'OFFICE',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(26,'OFFICE STAFF',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(27,'PACKING',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(28,'PEON',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(29,'PURCHASE',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(30,'R&D LAB/MICRO-BIOLOGY LAB',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(31,'RECEPTION',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(32,'RO',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(33,'SQUASH',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(34,'STORE',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(35,'STORE/COLD STORAGE',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(36,'SUGAR',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(37,'DEFAULT',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(38,'WAREHOUSE',1,0,'2023-05-21 11:52:31',NULL,'2023-05-21 11:52:31'),(39,'QUALITY CONTROL',19,0,'2023-05-22 18:31:41',NULL,'2023-05-22 18:31:41'),(40,'SUGAR-SYRUP',19,0,'2023-05-22 18:44:48',NULL,'2023-05-22 18:44:48'),(41,'TIME OFFICE',19,0,'2023-05-23 10:46:23',NULL,'2023-05-23 10:46:23'),(42,'RETURN GOODS',NULL,0,'2023-05-23 13:18:12',NULL,'2023-05-23 13:18:12'),(43,'FSMS CORDINATOR',NULL,0,'2023-05-23 13:18:12',NULL,'2023-05-23 13:18:12'),(44,'RTD',NULL,0,'2023-05-23 13:18:12',NULL,'2023-05-23 13:18:12'),(45,'REASEARCH & DEVELOPMENT',NULL,0,'2023-05-23 13:18:12',NULL,'2023-05-23 13:18:12'),(46,'STRAWBERRY',NULL,0,'2023-05-23 13:43:24',NULL,'2023-05-23 13:43:24'),(47,'PRODUCTION',NULL,0,'2023-05-23 13:44:32',NULL,'2023-05-23 13:44:32'),(49,'ICE-CREAM',8,0,'2023-11-16 13:35:47',NULL,'2023-11-16 13:35:47'),(50,'All',NULL,0,'2023-12-08 17:05:10',1,'2023-12-08 17:05:10'),(52,'MARKETING',8,0,'2023-12-09 15:37:27',NULL,'2023-12-09 15:37:27'),(56,'LEGAL',35,0,'2024-01-06 11:22:20',NULL,'2024-01-06 11:22:20'),(57,'SAFETY',35,0,'2024-01-06 11:30:41',NULL,'2024-01-06 11:30:41'),(58,'COMPLIANCE',35,0,'2024-02-03 17:53:35',NULL,'2024-02-03 17:53:35');
/*!40000 ALTER TABLE `departmentmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designationmaster`
--

DROP TABLE IF EXISTS `designationmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designationmaster` (
  `DesignationId` bigint NOT NULL AUTO_INCREMENT,
  `Designation` longtext,
  `Grade` varchar(45) DEFAULT NULL,
  `DesignationCategory` varchar(100) DEFAULT NULL,
  `Leaves` double DEFAULT NULL,
  `OvertimeFlag` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DesignationId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designationmaster`
--

LOCK TABLES `designationmaster` WRITE;
/*!40000 ALTER TABLE `designationmaster` DISABLE KEYS */;
INSERT INTO `designationmaster` VALUES (1,'ASSISTANT','C','ASSISTANT',1,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(2,'DEFAULT','C','DEFAULT',2,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(3,'EXECUTIVE','A','EXECUTIVE',3,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(4,'GUARDS','C','GUARDS',4,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(5,'HOD','A+','HOD',5,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(6,'INCHARGE','A','INCHARGE',6,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(7,'MANAGER','A++','MANAGER',7,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(8,'OPERATOR','C','OPERATOR',5,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(9,'PLANT HEAD','A++','PLANT HEAD',9,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(11,'RECEPTIONIST','A','RECEPTIONIST',11,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(12,'SUPERVISOR','A','SUPERVISOR',12,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(13,'TECHNICIAN','C','TECHNICIAN',13,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56'),(14,'WORKER','C','WORKER',14,0,0,0,'2024-09-04 19:31:56',NULL,'2024-09-04 19:31:56');
/*!40000 ALTER TABLE `designationmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentmaster`
--

DROP TABLE IF EXISTS `documentmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentmaster` (
  `DocumentId` int NOT NULL AUTO_INCREMENT,
  `FormId` int DEFAULT NULL,
  `DocumentName` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DocumentId`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentmaster`
--

LOCK TABLES `documentmaster` WRITE;
/*!40000 ALTER TABLE `documentmaster` DISABLE KEYS */;
INSERT INTO `documentmaster` VALUES (1,1,'Incorporation Certificate',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(2,1,'Shop Act License',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(3,1,'Udyog Aadhar',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(4,1,'FASSI License',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(5,1,'Factory License',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(6,1,'GST Certificate',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(7,1,'PAN ',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(8,1,'TAN',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(9,1,'PF ',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(10,1,'ESIC',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(11,1,'PTRC ',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(12,1,'PTEC',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(13,1,'LWF',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(14,1,'Labour License',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(15,1,'BRC Certificate',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(16,1,'ISO Certificate',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(17,1,'Bank Details',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(18,2,'Adhar Card',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(19,2,'PAN Card',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(20,2,'Bank Passbook',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(21,2,'Resume',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(22,2,'Resignation Letter',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(23,2,'Relieving Letter',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(24,2,'Salary Slip',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(25,2,'Background Verfication',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(26,2,'Achivement Ceritficate',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(27,2,'Education Certificate',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(28,2,'Medical Innsurance',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(29,2,'Other',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(30,3,'Contract Agreement',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(31,3,'Contract License',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(32,3,'Shop Act License',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(33,3,'Udyog Aadhar',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(34,3,'GST Certificate',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(35,3,'Aadhar Card',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(36,3,'PAN Card',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(37,3,'Bank Details',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(38,3,'MSEB Bill',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(39,3,'PF ',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(40,3,'ESIC',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(41,3,'PTRC ',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(42,3,'PTEC',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(43,3,'LWF',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(44,3,'Proprietor Photo',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(45,2,'Photo',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(46,1,'Company Policies ',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(47,1,'Leave Calendar',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(48,1,'Job Profile',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(49,1,'Job Profile 1',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(50,1,'Job Profile 2',35,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(51,1,'Leave policy',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(52,1,'Working hours & Overtime Policy',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(53,1,'Staff & Supervisor Uniform Policy',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(54,1,'Employee Check-Out Exit Policy',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(55,4,'Invoice',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(56,4,'Purchase Order',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(57,4,'GRN',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(58,4,'Delivery Challan',1,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(59,2,'Appointment Letter',NULL,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(60,2,'Offer Letter',NULL,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(61,2,'Experience Letter',NULL,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(62,2,'No Dues Certificate For Company',NULL,0,'2024-02-15 10:43:10',NULL,'2024-02-15 10:43:10'),(63,2,'Nominee 1 Addhar card',152,0,'2024-03-21 14:32:39',NULL,'2024-03-21 14:32:39'),(64,2,'Nomnee1 Pan Card',152,0,'2024-03-21 14:33:43',NULL,'2024-03-21 14:33:43'),(65,2,'SPOUSE ADHAR',152,0,'2024-03-25 11:51:52',NULL,'2024-03-25 11:51:52'),(66,2,'SPOUSE PAN ',152,0,'2024-03-25 11:52:51',NULL,'2024-03-25 11:52:51'),(67,2,'SPOUSE BANK PASSBOOK',152,0,'2024-03-25 12:00:15',NULL,'2024-03-25 12:00:15'),(68,2,'EMPLOYEE FATHER PASSBOOK',152,0,'2024-03-25 12:01:44',NULL,'2024-03-25 12:01:44'),(69,2,'EMPLOYEE FATHER ADHAR',152,0,'2024-03-25 12:03:02',NULL,'2024-03-25 12:03:02'),(70,2,'EMPLOYEE MOTHER ADHAR',152,0,'2024-03-25 12:06:24',NULL,'2024-03-25 12:06:24'),(71,2,'EMPLOYEE CARD',152,0,'2024-03-25 12:22:07',NULL,'2024-03-25 12:22:07'),(72,2,'EMPLOYEE MOTHER PAN',152,0,'2024-03-25 14:45:59',NULL,'2024-03-25 14:45:59'),(73,2,'EMPLOYEE MOTHER BANK ',152,0,'2024-03-25 14:46:13',NULL,'2024-03-25 14:46:13'),(74,2,'EMPLOYEE PAN CARD',152,0,'2024-03-25 15:36:49',NULL,'2024-03-25 15:36:49'),(75,2,'EMPLOYEE FATHER PAN CARD',152,0,'2024-03-25 15:38:15',NULL,'2024-03-25 15:38:15'),(76,2,'EMPLOYEE DAUGHTER ADHAR',152,0,'2024-03-25 15:50:06',NULL,'2024-03-25 15:50:06'),(77,2,'EMPLOYEE SON ADHAR CARD',152,0,'2024-03-25 15:50:21',NULL,'2024-03-25 15:50:21'),(78,2,'EMPLOYEE SON ADHAR 2',152,0,'2024-03-25 17:37:35',NULL,'2024-03-25 17:37:35'),(79,2,'EMPLOYEE SISTER ADHAR',152,0,'2024-03-27 12:10:17',NULL,'2024-03-27 12:10:17'),(80,2,'EMPLOYEE DAUGHTER ADHAR CARD 2',152,0,'2024-03-27 12:23:31',NULL,'2024-03-27 12:23:31'),(81,2,'EMPLOYEE BROTHER ADHAR CARD ',152,0,'2024-03-27 12:34:21',NULL,'2024-03-27 12:34:21'),(82,2,'EMPLOYEE BROTHER BANK PASSBOOK ',152,0,'2024-03-27 12:34:45',NULL,'2024-03-27 12:34:45'),(83,2,'EMPLOYEE BROTHER PAN CARD',152,0,'2024-03-27 12:35:00',NULL,'2024-03-27 12:35:00'),(84,2,'EDUCATION CERIFICATE 2',152,0,'2024-03-27 16:52:19',NULL,'2024-03-27 16:52:19'),(85,2,'EMPLOYEE KYC',152,0,'2024-03-29 16:19:08',152,'2024-03-29 16:19:08'),(86,2,'EMPLOYEE FAMILY KYC',152,0,'2024-03-29 16:19:50',152,'2024-03-29 16:19:50'),(87,2,'Increment-2024',152,0,'2024-06-07 17:36:35',NULL,'2024-06-07 17:36:35'),(88,2,'Increment ',152,0,'2024-06-08 18:55:44',NULL,'2024-06-08 18:55:44'),(89,2,'EMPLOYEE DAUGHTER',152,0,'2024-06-09 17:29:41',NULL,'2024-06-09 17:29:41'),(90,2,'Form 16',152,0,'2024-06-16 13:26:41',NULL,'2024-06-16 13:26:41'),(91,1,'Form 16 A',175,0,'2024-07-05 17:45:46',NULL,'2024-07-05 17:45:46'),(92,4,'From 16 A',175,0,'2024-07-05 17:46:40',NULL,'2024-07-05 17:46:40'),(93,4,'Form 16 A',175,0,'2024-07-05 17:47:38',NULL,'2024-07-05 17:47:38'),(94,2,'Form 16 A',175,0,'2024-07-06 13:32:20',NULL,'2024-07-06 13:32:20');
/*!40000 ALTER TABLE `documentmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialyearmaster`
--

DROP TABLE IF EXISTS `financialyearmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financialyearmaster` (
  `FinancialYearId` int NOT NULL AUTO_INCREMENT,
  `FromDate` date DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `PrimaryFlag` int DEFAULT NULL,
  `FinancialYear` text,
  `UserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  PRIMARY KEY (`FinancialYearId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialyearmaster`
--

LOCK TABLES `financialyearmaster` WRITE;
/*!40000 ALTER TABLE `financialyearmaster` DISABLE KEYS */;
INSERT INTO `financialyearmaster` VALUES (1,'2024-04-01','2025-03-31',1,'01/Apr/2024 - 31/Mar/2025',152,'2024-09-05 16:31:09','2024-09-05 16:31:09',NULL,0),(2,'2024-01-01','2024-12-31',1,'01/Jan/2024 - 31/Dec/2024',152,'2024-09-09 16:56:27','2024-09-09 16:56:27',NULL,0);
/*!40000 ALTER TABLE `financialyearmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forecast`
--

DROP TABLE IF EXISTS `forecast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forecast` (
  `ForeCastId` bigint NOT NULL AUTO_INCREMENT,
  `EntryDate` date DEFAULT NULL,
  `Factory` varchar(45) DEFAULT NULL,
  `ForecastMonth` varchar(45) DEFAULT NULL,
  `ForecastYear` int DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `RequiredQuantity` double DEFAULT NULL,
  `ProductionDone` double DEFAULT '0',
  `Balance` double DEFAULT '0',
  `Tonnage` double DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Remarks` varchar(2000) DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `LocationId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ForeCastId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forecast`
--

LOCK TABLES `forecast` WRITE;
/*!40000 ALTER TABLE `forecast` DISABLE KEYS */;
/*!40000 ALTER TABLE `forecast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formmaster`
--

DROP TABLE IF EXISTS `formmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formmaster` (
  `FormId` int NOT NULL AUTO_INCREMENT,
  `FormName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `HeaderName` text,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  PRIMARY KEY (`FormId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formmaster`
--

LOCK TABLES `formmaster` WRITE;
/*!40000 ALTER TABLE `formmaster` DISABLE KEYS */;
INSERT INTO `formmaster` VALUES (1,'CompanyProfile','Company Profile',1,0,'2022-09-16 16:09:17',NULL),(2,'EmployeeMaster','Employees',1,0,'2022-09-17 12:41:23',NULL),(3,'ContractorMaster','Contractor Master',1,0,'2023-05-14 12:08:21',NULL),(4,'AssetMaster','Asset Master',NULL,0,'2024-02-07 17:58:22',NULL);
/*!40000 ALTER TABLE `formmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holidaylocation`
--

DROP TABLE IF EXISTS `holidaylocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holidaylocation` (
  `HolidayLocationId` int NOT NULL AUTO_INCREMENT,
  `HolidayId` int NOT NULL,
  `LocationId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `FinancialYearId` int DEFAULT NULL,
  PRIMARY KEY (`HolidayLocationId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holidaylocation`
--

LOCK TABLES `holidaylocation` WRITE;
/*!40000 ALTER TABLE `holidaylocation` DISABLE KEYS */;
INSERT INTO `holidaylocation` VALUES (25,7,1,152,0,'2024-09-15 11:52:35','2024-09-15 11:52:35',NULL,NULL),(26,5,1,152,0,'2024-10-01 14:05:57','2024-10-01 14:05:57',NULL,NULL),(27,5,3,152,0,'2024-10-01 14:05:57','2024-10-01 14:05:57',NULL,NULL),(28,5,4,152,0,'2024-10-01 14:05:57','2024-10-01 14:05:57',NULL,NULL),(29,5,5,152,0,'2024-10-01 14:05:57','2024-10-01 14:05:57',NULL,NULL),(30,5,6,152,0,'2024-10-01 14:05:57','2024-10-01 14:05:57',NULL,NULL),(31,5,9,152,0,'2024-10-01 14:05:57','2024-10-01 14:05:57',NULL,NULL),(32,5,10,152,0,'2024-10-01 14:05:57','2024-10-01 14:05:57',NULL,NULL);
/*!40000 ALTER TABLE `holidaylocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holidaymaster`
--

DROP TABLE IF EXISTS `holidaymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holidaymaster` (
  `HolidayId` int NOT NULL AUTO_INCREMENT,
  `HolidayDate` date DEFAULT NULL,
  `HolidayDay` text,
  `Festival` text,
  `NationalHolidayFlag` int DEFAULT NULL,
  `HolidayType` varchar(200) DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `FinancialYearId` int DEFAULT NULL,
  PRIMARY KEY (`HolidayId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holidaymaster`
--

LOCK TABLES `holidaymaster` WRITE;
/*!40000 ALTER TABLE `holidaymaster` DISABLE KEYS */;
INSERT INTO `holidaymaster` VALUES (1,'2024-01-26','Friday','Republic Day',1,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',152,1),(2,'2024-04-09','Tuesday','Gudhi Padwa',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(3,'2024-05-01','Wednesday','Maharashtra Din',1,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(4,'2024-07-08','Monday','Moharum',0,NULL,29,1,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(5,'2024-08-15','Thursday','Independence Day',1,'National Holiday',29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',152,1),(6,'2024-09-07','Saturday','Ganesh Chaturthi',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(7,'2024-09-12','Thursday','Ganesh Visarjan-5 Days',0,'State Holiday',29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',152,1),(8,'2024-09-17','Tuesday','Ganesh Visarjan-Anant Chatruthi',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(9,'2024-10-02','Wednesday','Mahatma Gandhi Jayanti',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(10,'2024-10-12','Saturday','Dasara',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(11,'2024-11-01','Friday','Diwali Amavasya (Laxmi Pujan)',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',152,1),(12,'2024-11-02','Saturday','Diwali (Bali Pratipada)',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(13,'2024-11-03','Sunday','Diwali (Bhaubhij)',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(14,'2024-07-10','Wednesday','Mohrum (Extra Holiday declared by Factory)',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(15,'2024-03-28','Thursday','Shiv Jayanti',0,NULL,29,1,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(16,'2024-03-30','Saturday','Rangpanchami',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',152,1),(17,'2024-07-11','Thursday','Mohrum',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(18,'2024-07-12','Friday','Mohrum',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(19,'2024-07-13','Saturday','Mohrum',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(20,'2024-07-14','Sunday','Mohrum',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(21,'2024-07-15','Monday','Mohrum',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(22,'2024-09-11','Wednesday','Gourji Pujan',0,NULL,29,1,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(23,'2024-07-08','Monday','Mohrum',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(24,'2024-07-09','Tuesday','Mohrum',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(25,'2024-07-10','Wednesday','Mohrum',0,NULL,29,1,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(26,'2024-07-16','Tuesday','Mohrum',0,NULL,29,0,'2024-01-17 08:15:51','2024-01-17 08:15:51',NULL,1),(27,'2024-01-26','Friday','Republic Day',1,NULL,35,1,'2024-01-18 12:39:26','2024-01-18 12:39:26',NULL,1),(28,'2024-01-16','Tuesday','',0,NULL,35,0,'2024-01-24 13:26:48','2024-01-24 13:26:48',NULL,1),(29,'2024-01-24','','33',0,NULL,35,1,'2024-01-24 13:26:51','2024-01-24 13:26:51',NULL,1);
/*!40000 ALTER TABLE `holidaymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inchargemaster`
--

DROP TABLE IF EXISTS `inchargemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inchargemaster` (
  `InchargeId` int NOT NULL AUTO_INCREMENT,
  `InchargeName` varchar(45) DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` int DEFAULT NULL,
  `ModifiedUserId` int DEFAULT NULL,
  PRIMARY KEY (`InchargeId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inchargemaster`
--

LOCK TABLES `inchargemaster` WRITE;
/*!40000 ALTER TABLE `inchargemaster` DISABLE KEYS */;
INSERT INTO `inchargemaster` VALUES (1,'JAYWANT BAMANE',1,0,'2025-07-01 21:40:40',NULL,NULL),(2,'PRATIK JADHAV',1,0,'2025-07-01 21:40:40',NULL,NULL),(3,'PARSHURAM SINNUR',1,0,'2025-07-01 21:40:40',NULL,NULL),(4,'NIKHIL SONAWANE',1,0,'2025-07-01 21:40:40',NULL,NULL),(5,'PANKAJ JADHAV',1,0,'2025-07-01 21:40:40',NULL,NULL),(6,'SURESH PAWAR',1,0,'2025-07-01 21:40:40',NULL,NULL),(7,'MAYURI DHANAWADE',1,0,'2025-07-01 21:40:40',NULL,NULL),(8,'HUSSAIN BOOTWALA',1,0,'2025-07-01 21:40:40',NULL,NULL),(9,'VIKI JADHAV',1,0,'2025-07-01 21:40:40',NULL,NULL),(10,'RAKESH VANGADE',1,0,'2025-07-01 21:40:40',NULL,NULL),(11,'AMOL BHILARE',1,0,'2025-07-01 21:40:40',NULL,NULL),(12,'AKASH PAWAR',1,0,'2025-07-01 21:40:40',NULL,NULL),(13,'AMOL YEDEKAR',1,0,'2025-07-01 21:40:40',NULL,NULL),(14,'AJAY DEKHANE',1,0,'2025-07-01 21:40:40',NULL,NULL),(15,'KETAN TAMBE',1,0,'2025-07-01 21:40:40',NULL,NULL);
/*!40000 ALTER TABLE `inchargemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationmaster`
--

DROP TABLE IF EXISTS `locationmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationmaster` (
  `LocationId` int NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(100) DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ESSLUnitName` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`LocationId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationmaster`
--

LOCK TABLES `locationmaster` WRITE;
/*!40000 ALTER TABLE `locationmaster` DISABLE KEYS */;
INSERT INTO `locationmaster` VALUES (1,'UNIT-48',NULL,0,'2025-05-05 15:03:25',NULL,'2025-05-05 15:03:25',NULL),(2,'UNIT-49',NULL,0,'2025-05-05 15:03:25',NULL,'2025-05-05 15:03:25',NULL),(3,'B-133',NULL,0,'2025-05-05 15:03:25',NULL,'2025-05-05 15:03:25',NULL),(4,'PANCHGANI',NULL,0,'2025-05-05 15:03:25',NULL,'2025-05-05 15:03:25',NULL);
/*!40000 ALTER TABLE `locationmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationwisedepartment`
--

DROP TABLE IF EXISTS `locationwisedepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationwisedepartment` (
  `LocationWiseDepartmentId` int NOT NULL AUTO_INCREMENT,
  `LocationId` int DEFAULT NULL,
  `DepartmentId` int DEFAULT NULL,
  `InchargeId` int DEFAULT NULL,
  `PlantHeadId` int DEFAULT NULL,
  `HRId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LocationWiseDepartmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=1088 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationwisedepartment`
--

LOCK TABLES `locationwisedepartment` WRITE;
/*!40000 ALTER TABLE `locationwisedepartment` DISABLE KEYS */;
INSERT INTO `locationwisedepartment` VALUES (1,2,24,NULL,NULL,NULL,19,0,'2023-05-20 11:57:29',NULL,'2023-05-20 11:57:29'),(110,11,46,0,0,0,19,0,'2023-05-23 13:43:39',NULL,'2023-05-23 13:43:39'),(136,3,4,NULL,NULL,NULL,19,1,'2023-05-24 13:59:55',NULL,'2023-05-24 13:59:55'),(137,3,1,NULL,NULL,NULL,19,1,'2023-05-24 13:59:55',NULL,'2023-05-24 13:59:55'),(699,9,6,NULL,NULL,NULL,1,0,'2024-02-26 15:24:08',NULL,'2024-02-26 15:24:08'),(700,9,58,NULL,NULL,NULL,1,0,'2024-02-26 15:24:08',NULL,'2024-02-26 15:24:08'),(701,9,7,NULL,NULL,NULL,1,0,'2024-02-26 15:24:08',NULL,'2024-02-26 15:24:08'),(702,9,9,NULL,NULL,NULL,1,0,'2024-02-26 15:24:08',NULL,'2024-02-26 15:24:08'),(703,9,10,NULL,NULL,NULL,1,0,'2024-02-26 15:24:08',NULL,'2024-02-26 15:24:08'),(704,9,14,NULL,NULL,NULL,1,0,'2024-02-26 15:24:08',NULL,'2024-02-26 15:24:08'),(705,9,56,NULL,NULL,NULL,1,0,'2024-02-26 15:24:08',NULL,'2024-02-26 15:24:08'),(706,9,29,NULL,NULL,NULL,1,0,'2024-02-26 15:24:08',NULL,'2024-02-26 15:24:08'),(707,9,57,NULL,NULL,NULL,1,0,'2024-02-26 15:24:08',NULL,'2024-02-26 15:24:08'),(708,9,41,NULL,NULL,NULL,1,0,'2024-02-26 15:24:08',NULL,'2024-02-26 15:24:08'),(905,9,10,NULL,NULL,NULL,152,0,'2024-04-13 17:05:55',NULL,'2024-04-13 17:05:55'),(983,4,13,NULL,NULL,NULL,1,0,'2024-04-27 16:59:14',NULL,'2024-04-27 16:59:14'),(984,4,23,NULL,NULL,NULL,1,0,'2024-04-27 16:59:14',NULL,'2024-04-27 16:59:14'),(985,4,39,NULL,NULL,NULL,1,0,'2024-04-27 16:59:14',NULL,'2024-04-27 16:59:14'),(986,4,33,NULL,NULL,NULL,1,0,'2024-04-27 16:59:14',NULL,'2024-04-27 16:59:14'),(987,4,34,NULL,NULL,NULL,1,0,'2024-04-27 16:59:14',NULL,'2024-04-27 16:59:14'),(988,4,40,NULL,NULL,NULL,1,0,'2024-04-27 16:59:14',NULL,'2024-04-27 16:59:14'),(989,4,38,NULL,NULL,NULL,1,0,'2024-04-27 16:59:14',NULL,'2024-04-27 16:59:14'),(990,9,57,NULL,NULL,NULL,152,0,'2024-04-29 10:05:44',NULL,'2024-04-29 10:05:44'),(1001,10,38,NULL,NULL,NULL,1,0,'2024-07-01 11:35:30',NULL,'2024-07-01 11:35:30'),(1002,10,38,NULL,NULL,NULL,152,0,'2024-07-01 16:19:34',NULL,'2024-07-01 16:19:34'),(1025,5,5,NULL,NULL,NULL,152,0,'2024-07-20 15:11:47',NULL,'2024-07-20 15:11:47'),(1026,5,8,NULL,NULL,NULL,152,0,'2024-07-20 15:11:47',NULL,'2024-07-20 15:11:47'),(1027,5,43,NULL,NULL,NULL,152,0,'2024-07-20 15:11:47',NULL,'2024-07-20 15:11:47'),(1028,5,23,NULL,NULL,NULL,152,0,'2024-07-20 15:11:47',NULL,'2024-07-20 15:11:47'),(1029,5,47,NULL,NULL,NULL,152,0,'2024-07-20 15:11:47',NULL,'2024-07-20 15:11:47'),(1030,5,39,NULL,NULL,NULL,152,0,'2024-07-20 15:11:47',NULL,'2024-07-20 15:11:47'),(1031,5,31,NULL,NULL,NULL,152,0,'2024-07-20 15:11:47',NULL,'2024-07-20 15:11:47'),(1032,5,32,NULL,NULL,NULL,152,0,'2024-07-20 15:11:47',NULL,'2024-07-20 15:11:47'),(1033,5,12,NULL,NULL,NULL,152,0,'2024-07-20 15:11:47',NULL,'2024-07-20 15:11:47'),(1034,5,34,NULL,NULL,NULL,152,0,'2024-07-20 15:11:47',NULL,'2024-07-20 15:11:47'),(1036,1,5,NULL,NULL,NULL,177,0,'2024-07-24 12:20:23',NULL,'2024-07-24 12:20:23'),(1037,1,8,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1038,1,11,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1039,1,13,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1040,1,23,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1041,1,25,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1042,1,47,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1043,1,39,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1044,1,30,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1045,1,32,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1046,1,12,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1047,1,34,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1048,1,38,NULL,NULL,NULL,177,0,'2024-07-24 12:20:24',NULL,'2024-07-24 12:20:24'),(1049,6,5,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1050,6,8,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1051,6,43,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1052,6,15,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1053,6,16,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1054,6,17,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1055,6,18,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1056,6,23,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1057,6,25,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1058,6,28,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1059,6,39,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1060,6,30,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1061,6,32,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1062,6,44,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1063,6,34,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1064,6,38,NULL,NULL,NULL,152,0,'2024-08-13 12:37:03',NULL,'2024-08-13 12:37:03'),(1077,3,4,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10'),(1078,3,5,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10'),(1079,3,11,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10'),(1080,3,1,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10'),(1081,3,13,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10'),(1082,3,49,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10'),(1083,3,25,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10'),(1084,3,28,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10'),(1085,3,42,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10'),(1086,3,12,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10'),(1087,3,34,NULL,NULL,NULL,152,0,'2024-09-09 14:42:10',NULL,'2024-09-09 14:42:10');
/*!40000 ALTER TABLE `locationwisedepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationwisedepartmentusers`
--

DROP TABLE IF EXISTS `locationwisedepartmentusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationwisedepartmentusers` (
  `LocationWiseDepartmentId` int NOT NULL AUTO_INCREMENT,
  `LocationId` int DEFAULT NULL,
  `DepartmentId` int DEFAULT NULL,
  `InchargeId` int DEFAULT NULL,
  `PlantHeadId` int DEFAULT NULL,
  `HRId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LocationWiseDepartmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationwisedepartmentusers`
--

LOCK TABLES `locationwisedepartmentusers` WRITE;
/*!40000 ALTER TABLE `locationwisedepartmentusers` DISABLE KEYS */;
INSERT INTO `locationwisedepartmentusers` VALUES (1,3,4,2,16,323,NULL,0,'2024-02-03 13:35:39',NULL,'2024-02-03 13:35:39'),(2,3,25,2,361,323,NULL,0,'2024-02-03 14:46:30',NULL,'2024-02-03 14:46:30'),(3,3,34,4,21,323,NULL,0,'2024-02-03 14:56:26',NULL,'2024-02-03 14:56:26'),(5,4,33,361,361,323,NULL,0,'2024-02-03 15:07:49',NULL,'2024-02-03 15:07:49'),(6,6,15,444,444,323,NULL,0,'2024-02-03 16:12:53',NULL,'2024-02-03 16:12:53'),(7,6,44,9,7,323,NULL,1,'2024-02-03 16:12:53',NULL,'2024-02-03 16:12:53'),(8,6,30,444,444,323,NULL,0,'2024-02-03 16:28:31',NULL,'2024-02-03 16:28:31'),(9,6,18,32,16,323,NULL,0,'2024-02-03 16:46:08',NULL,'2024-02-03 16:46:08'),(10,6,32,601,444,143,NULL,0,'2024-02-03 16:50:20',NULL,'2024-02-03 16:50:20'),(11,3,5,5,16,323,NULL,1,'2024-02-03 16:50:58',NULL,'2024-02-03 16:50:58'),(12,5,24,367,330,323,NULL,1,'2024-02-03 17:05:24',NULL,'2024-02-03 17:05:24'),(13,5,43,367,367,143,NULL,0,'2024-02-03 17:06:27',NULL,'2024-02-03 17:06:27'),(14,5,23,367,367,143,NULL,0,'2024-02-03 17:07:20',NULL,'2024-02-03 17:07:20'),(15,5,34,367,367,143,NULL,0,'2024-02-03 17:08:55',NULL,'2024-02-03 17:08:55'),(16,6,34,444,444,323,NULL,0,'2024-02-03 17:14:04',NULL,'2024-02-03 17:14:04'),(17,6,43,6,444,323,NULL,0,'2024-02-03 17:17:29',NULL,'2024-02-03 17:17:29'),(18,9,10,20,363,323,NULL,0,'2024-02-03 17:19:28',NULL,'2024-02-03 17:19:28'),(19,9,9,18,18,323,NULL,0,'2024-02-03 17:25:41',NULL,'2024-02-03 17:25:41'),(20,9,7,362,362,323,NULL,0,'2024-02-03 17:28:01',NULL,'2024-02-03 17:28:01'),(21,9,29,365,365,369,NULL,0,'2024-02-03 17:37:11',NULL,'2024-02-03 17:37:11'),(22,6,8,26,444,143,NULL,0,'2024-02-03 17:39:57',NULL,'2024-02-03 17:39:57'),(23,9,41,143,323,323,NULL,0,'2024-02-03 17:41:55',NULL,'2024-02-03 17:41:55'),(24,9,58,35,323,323,NULL,0,'2024-02-03 17:59:21',NULL,'2024-02-03 17:59:21'),(25,9,57,261,323,323,NULL,0,'2024-02-03 17:59:49',NULL,'2024-02-03 17:59:49'),(26,10,38,442,364,323,NULL,0,'2024-02-03 18:29:35',NULL,'2024-02-03 18:29:35'),(27,3,1,2,16,323,NULL,1,'2024-02-09 10:14:41',NULL,'2024-02-09 10:14:41'),(28,3,49,2,16,323,NULL,0,'2024-02-09 10:14:41',NULL,'2024-02-09 10:14:41'),(29,9,14,41,332,323,NULL,0,'2024-02-09 10:32:25',NULL,'2024-02-09 10:32:25'),(30,4,40,361,361,323,NULL,0,'2024-02-09 19:15:27',NULL,'2024-02-09 19:15:27'),(31,9,6,267,16,323,NULL,0,'2024-02-11 17:40:48',NULL,'2024-02-11 17:40:48'),(32,10,22,442,443,323,NULL,1,'2024-02-11 17:45:29',NULL,'2024-02-11 17:45:29'),(33,3,39,2,16,323,NULL,1,'2024-02-11 17:46:30',NULL,'2024-02-11 17:46:30'),(34,3,35,4,21,323,NULL,1,'2024-02-11 17:50:21',NULL,'2024-02-11 17:50:21'),(35,4,39,638,638,369,NULL,0,'2024-02-11 17:57:59',NULL,'2024-02-11 17:57:59'),(36,4,38,361,361,323,NULL,0,'2024-02-11 17:59:05',NULL,'2024-02-11 17:59:05'),(37,6,5,614,444,323,NULL,0,'2024-02-11 17:59:37',NULL,'2024-02-11 17:59:37'),(39,6,39,638,638,369,NULL,0,'2024-02-11 18:02:48',NULL,'2024-02-11 18:02:48'),(40,6,16,32,16,323,NULL,0,'2024-02-11 18:03:30',NULL,'2024-02-11 18:03:30'),(41,6,25,444,444,323,NULL,0,'2024-02-11 18:04:29',NULL,'2024-02-11 18:04:29'),(42,6,23,601,444,143,NULL,0,'2024-02-11 18:04:56',NULL,'2024-02-11 18:04:56'),(43,6,45,266,266,323,NULL,1,'2024-02-11 18:05:33',NULL,'2024-02-11 18:05:33'),(44,6,38,46,444,323,NULL,0,'2024-02-11 18:07:06',NULL,'2024-02-11 18:07:06'),(45,4,11,40,16,323,NULL,1,'2024-02-20 13:50:36',NULL,'2024-02-20 13:50:36'),(46,4,13,361,361,323,NULL,0,'2024-02-20 13:50:36',NULL,'2024-02-20 13:50:36'),(47,4,12,40,16,323,NULL,1,'2024-02-20 13:50:36',NULL,'2024-02-20 13:50:36'),(48,3,11,16,16,323,NULL,0,'2024-02-20 15:40:40',NULL,'2024-02-20 15:40:40'),(49,3,12,2,16,323,NULL,0,'2024-02-20 15:44:12',NULL,'2024-02-20 15:44:12'),(50,4,34,361,361,323,NULL,0,'2024-02-25 15:26:58',NULL,'2024-02-25 15:26:58'),(51,9,28,323,323,323,NULL,1,'2024-02-26 15:23:17',NULL,'2024-02-26 15:23:17'),(52,3,28,2,16,323,NULL,0,'2024-02-26 15:24:41',NULL,'2024-02-26 15:24:41'),(53,3,42,323,323,323,NULL,0,'2024-02-26 15:31:15',NULL,'2024-02-26 15:31:15'),(54,3,13,2,16,323,NULL,0,'2024-02-26 15:36:00',NULL,'2024-02-26 15:36:00'),(55,6,28,444,444,323,NULL,0,'2024-03-19 14:57:44',NULL,'2024-03-19 14:57:44'),(56,6,10,38,38,369,NULL,1,'2024-04-02 18:26:07',NULL,'2024-04-02 18:26:07'),(57,5,5,367,367,143,NULL,0,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(58,5,8,367,367,143,NULL,0,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(59,5,3,367,330,323,NULL,1,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(60,5,11,367,330,323,NULL,1,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(61,5,13,367,330,323,NULL,1,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(62,5,19,367,330,323,NULL,1,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(63,5,25,367,330,323,NULL,1,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(64,5,27,367,330,323,NULL,1,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(65,5,39,638,638,369,NULL,0,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(66,5,32,367,367,143,NULL,0,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(67,5,12,367,367,143,NULL,0,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(68,5,38,367,367,323,NULL,1,'2024-04-06 10:11:40',NULL,'2024-04-06 10:11:40'),(69,5,47,367,367,143,NULL,0,'2024-04-06 18:08:08',NULL,'2024-04-06 18:08:08'),(70,5,20,367,367,323,NULL,1,'2024-04-06 18:16:50',NULL,'2024-04-06 18:16:50'),(71,6,17,444,444,323,NULL,0,'2024-04-24 17:34:36',NULL,'2024-04-24 17:34:36'),(72,4,23,3,361,323,NULL,0,'2024-04-27 17:03:43',NULL,'2024-04-27 17:03:43'),(73,6,44,444,444,323,NULL,1,'2024-05-30 16:57:08',NULL,'2024-05-30 16:57:08'),(74,5,31,367,367,143,NULL,0,'2024-07-03 10:31:50',NULL,'2024-07-03 10:31:50'),(75,1,5,622,622,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(76,1,8,622,622,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(77,1,11,622,622,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(78,1,13,622,622,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(79,1,22,605,605,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(80,1,23,622,622,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(81,1,25,622,622,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(82,1,47,622,622,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(83,1,39,638,638,369,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(84,1,32,605,605,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(85,1,12,538,323,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(86,1,34,511,509,323,NULL,0,'2024-07-05 11:56:36',NULL,'2024-07-05 11:56:36'),(87,1,30,622,622,323,NULL,0,'2024-07-18 11:58:28',NULL,'2024-07-18 11:58:28'),(88,1,38,622,622,323,NULL,0,'2024-07-18 11:58:28',NULL,'2024-07-18 11:58:28'),(89,3,23,2,16,323,NULL,1,'2024-08-21 12:28:21',NULL,'2024-08-21 12:28:21');
/*!40000 ALTER TABLE `locationwisedepartmentusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `macaddresstable`
--

DROP TABLE IF EXISTS `macaddresstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `macaddresstable` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `macaddress` varchar(100) DEFAULT NULL,
  `MachinName` varchar(60) DEFAULT NULL,
  `UpdateVersion` int DEFAULT NULL,
  `UpdateFlag` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `macaddresstable`
--

LOCK TABLES `macaddresstable` WRITE;
/*!40000 ALTER TABLE `macaddresstable` DISABLE KEYS */;
INSERT INTO `macaddresstable` VALUES (1,NULL,'Developer',NULL,NULL,NULL,0,'2025-07-01 22:23:19',NULL,'2025-07-01 22:23:19');
/*!40000 ALTER TABLE `macaddresstable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machinemaster`
--

DROP TABLE IF EXISTS `machinemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machinemaster` (
  `MachineId` bigint NOT NULL AUTO_INCREMENT,
  `MachineName` varchar(1000) DEFAULT NULL,
  `Description` varchar(5000) DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` int DEFAULT NULL,
  `ModifiedUserId` int DEFAULT NULL,
  PRIMARY KEY (`MachineId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machinemaster`
--

LOCK TABLES `machinemaster` WRITE;
/*!40000 ALTER TABLE `machinemaster` DISABLE KEYS */;
INSERT INTO `machinemaster` VALUES (1,'AEROL','',1,0,'2025-07-01 22:08:58',NULL,NULL),(2,'SUNSWELL','',1,0,'2025-07-01 22:08:58',NULL,NULL),(3,'REGULAR-5 LTR.','',1,0,'2025-07-01 22:08:58',NULL,NULL),(4,'GALDI','',1,0,'2025-07-01 22:08:58',NULL,NULL),(5,'PG-REGULAR','',1,0,'2025-07-01 22:08:58',NULL,NULL),(6,'JAM LINE','',1,0,'2025-07-01 22:08:58',NULL,NULL),(7,'CRUSH LINE','',1,0,'2025-07-01 22:08:58',NULL,NULL),(8,'RTD LINE','',1,0,'2025-07-01 22:08:58',NULL,NULL),(9,'DEPOSITION-OLD','',1,0,'2025-07-01 22:08:58',NULL,NULL),(10,'DEPOSITION-NEW','',1,0,'2025-07-01 22:08:58',NULL,NULL),(11,'KETCHUP-LINE-1','',1,0,'2025-07-01 22:08:58',NULL,NULL),(12,'KETCHUP-LINE-2','',1,0,'2025-07-01 22:08:58',NULL,NULL),(13,'FRUIT FILLING-FG','',1,0,'2025-07-01 22:08:58',NULL,NULL),(14,'FRUIT FILLING-SFG','',1,0,'2025-07-01 22:08:58',NULL,NULL),(15,'MELTIES-FG','',1,0,'2025-07-01 22:08:58',NULL,NULL),(16,'MELTIES-SFG','',1,0,'2025-07-01 22:08:58',NULL,NULL),(17,'JAM-100-200GM','',1,0,'2025-07-01 22:08:58',NULL,NULL),(18,'JAM-18GM','',1,0,'2025-07-01 22:08:58',NULL,NULL),(19,'JAM-BLISTER','',1,0,'2025-07-01 22:08:58',NULL,NULL),(20,'COMPOUND LINE','',1,0,'2025-07-01 22:08:58',NULL,NULL),(21,'HONEY FILLING-FG','',1,0,'2025-07-01 22:08:58',NULL,NULL),(22,'JAM-15GM','',1,0,'2025-07-01 22:08:58',NULL,NULL),(23,'COOKER + ATFE + ATFC','',1,0,'2025-07-01 22:08:58',NULL,NULL),(24,'COOKER + ATFC','',1,0,'2025-07-01 22:08:58',NULL,NULL),(25,'COOKER','',1,0,'2025-07-01 22:08:58',NULL,NULL),(26,'COOKER + SHEAR PUMP','',1,0,'2025-07-01 22:08:58',NULL,NULL),(27,'OPEN KETTLE','',1,0,'2025-07-01 22:08:58',NULL,NULL);
/*!40000 ALTER TABLE `machinemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenanceremark`
--

DROP TABLE IF EXISTS `maintenanceremark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenanceremark` (
  `MaintenanceRemarkId` bigint NOT NULL AUTO_INCREMENT,
  `RemarkDate` date DEFAULT NULL,
  `DataEntryId` int DEFAULT NULL,
  `MaintenanceBreakdown` double DEFAULT NULL,
  `Remarks` text,
  `Status` varchar(45) DEFAULT NULL,
  `LocationId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MaintenanceRemarkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenanceremark`
--

LOCK TABLES `maintenanceremark` WRITE;
/*!40000 ALTER TABLE `maintenanceremark` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenanceremark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menumaster`
--

DROP TABLE IF EXISTS `menumaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menumaster` (
  `MenuId` int NOT NULL AUTO_INCREMENT,
  `MenuName` varchar(200) DEFAULT NULL,
  `HeaderName` varchar(45) DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `FinancialYearId` int DEFAULT NULL,
  PRIMARY KEY (`MenuId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menumaster`
--

LOCK TABLES `menumaster` WRITE;
/*!40000 ALTER TABLE `menumaster` DISABLE KEYS */;
INSERT INTO `menumaster` VALUES (1,'FinancialMaster','Financial Master',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(2,'CompanyProfile','Company Profile',NULL,1,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(3,'ProductMaster','Product Master',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(4,'LocationMaster','Location Master',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(5,'DepartmentMaster','Department Master',NULL,1,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(6,'DesignationMaster','Designation Master',NULL,1,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(7,'MachineMaster','Machine Master',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(8,'CategoryMaster','Category Master',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(9,'ShiftSchedule','Shift Schedule',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(10,'ImporForecast','Impor Forecast',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(11,'Forecast','Forecast',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(12,'Import Planning','Import Planning',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(13,'Planning','Planning',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(14,'DataEntry','Data Entry',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(15,'MaintenanceRemark','Maintenance Remark',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(16,'ChangePassword','Change Password',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(17,'OEEReport','OEE Report ',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(18,'DaywiseReport','Daywise Report',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(19,'DailyReportDatewise','Daily Report Datewise',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(20,'MonthwiseReport','Monthwise Report',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(21,'Machinewise','Machinewise',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(22,'ProductPerformance','Product Performance',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(23,'ProductData','Product Data',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(24,'CategoryWiseProductionReport','Category wise Production Report',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(25,'UpdatePlanning','Update Planning',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(26,'Users','Users',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(27,'UserRights','User Rights',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(28,'ChangePassword','Change Password',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(29,'AddMenu','Add Menu',NULL,0,'2025-04-26 13:19:56','2025-04-26 13:19:56',NULL,NULL),(30,'OperationSummaryReport','Opertation Summary Report',NULL,0,'2025-05-05 16:55:45','2025-05-05 16:55:45',NULL,NULL),(31,'DatewiseReport','Datewise Report',NULL,0,'2025-05-05 16:56:05','2025-05-05 16:56:05',NULL,NULL),(32,'DaywiseReport','Daywise Report',NULL,0,'2025-05-25 16:11:03','2025-05-25 16:11:03',NULL,NULL),(33,'MonthwiseReport','Monthwise Report',NULL,0,'2025-06-06 13:20:43','2025-06-06 13:20:43',NULL,NULL),(34,'MachineWiseReport','Machine Wise Report',NULL,0,'2025-06-06 13:20:43','2025-06-06 13:20:43',NULL,NULL),(35,'ProductPerformance','Product Performance',NULL,0,'2025-06-06 13:20:43','2025-06-06 13:20:43',NULL,NULL),(36,'ProductData','Product Data',NULL,0,'2025-06-06 13:23:28','2025-06-06 13:23:28',NULL,NULL),(37,'CategoryWiseProductionReport','Category Wise Production Report',NULL,0,'2025-06-06 13:23:28','2025-06-06 13:23:28',NULL,NULL),(38,'ProductPerformanceReport','Product Performance Report',NULL,0,'2025-06-13 13:11:52','2025-06-13 13:11:52',NULL,NULL);
/*!40000 ALTER TABLE `menumaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthmaster`
--

DROP TABLE IF EXISTS `monthmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthmaster` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MonthName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthmaster`
--

LOCK TABLES `monthmaster` WRITE;
/*!40000 ALTER TABLE `monthmaster` DISABLE KEYS */;
INSERT INTO `monthmaster` VALUES (1,'January'),(2,'February'),(3,'March'),(4,'April'),(5,'May'),(6,'June'),(7,'July'),(8,'August'),(9,'September'),(10,'October'),(11,'November'),(12,'December');
/*!40000 ALTER TABLE `monthmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notesmaster`
--

DROP TABLE IF EXISTS `notesmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notesmaster` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Notes` text,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notesmaster`
--

LOCK TABLES `notesmaster` WRITE;
/*!40000 ALTER TABLE `notesmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `notesmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oeereport`
--

DROP TABLE IF EXISTS `oeereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oeereport` (
  `ReportId` bigint NOT NULL AUTO_INCREMENT,
  `ReportMonth` int DEFAULT NULL,
  `ReportYear` int DEFAULT NULL,
  `MachineId` int DEFAULT NULL,
  `TotalLineUsed` int DEFAULT NULL,
  `TotalNosOfSKUS` int DEFAULT NULL,
  `ProductionDate` date DEFAULT NULL,
  `ShiftHours` varchar(20) DEFAULT NULL,
  `WorkingHours` varchar(20) DEFAULT NULL,
  `ShiftStartupAndShiftEndDowntime` double DEFAULT NULL,
  `TotalBreakDown` double DEFAULT NULL,
  `ProductionHours` double DEFAULT NULL,
  `ProductionHoursAvailibity` double DEFAULT NULL,
  `TotalProductionInBoxes` double DEFAULT NULL,
  `TotalProductionInKg` double DEFAULT NULL,
  `Rejection` double DEFAULT NULL,
  `FinalProduction` double DEFAULT NULL,
  `Capacity` double DEFAULT NULL,
  `FillingCapacityUtilization` double DEFAULT NULL,
  `ReportType` varchar(200) DEFAULT NULL,
  `LocationId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` text,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ReportId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oeereport`
--

LOCK TABLES `oeereport` WRITE;
/*!40000 ALTER TABLE `oeereport` DISABLE KEYS */;
/*!40000 ALTER TABLE `oeereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productmaster`
--

DROP TABLE IF EXISTS `productmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productmaster` (
  `ProductId` bigint NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) DEFAULT NULL,
  `ProductCode` varchar(100) DEFAULT NULL,
  `ProductName` varchar(5000) DEFAULT NULL,
  `Unit` varchar(45) DEFAULT NULL,
  `ProductType` varchar(45) DEFAULT NULL,
  `ConversionRate` double DEFAULT NULL,
  `MachineCapacity` double DEFAULT NULL,
  `ProcessCapacity` double DEFAULT NULL,
  `FinalCapacity` double DEFAULT NULL,
  `Filling` double DEFAULT NULL,
  `FillingSpeedPerHour` double DEFAULT NULL,
  `PackingSize` double DEFAULT NULL,
  `Boxes` double DEFAULT NULL,
  `NosBottles` double DEFAULT NULL,
  `LabourRequired` int DEFAULT NULL,
  `FillingPerHour` double DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` int DEFAULT NULL,
  `ModifiedUserId` int DEFAULT NULL,
  PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=630 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productmaster`
--

LOCK TABLES `productmaster` WRITE;
/*!40000 ALTER TABLE `productmaster` DISABLE KEYS */;
INSERT INTO `productmaster` VALUES (1,'CRUSH','ST0250CRP-D','STRAWBERRY CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,1000,1000,1000,1000,1,24,133,3192,25,53,1,0,'2025-07-01 22:21:20',NULL,NULL),(2,'CRUSH','BC0250CRP-D','BLACK CURRANT CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,1000,1000,1000,1000,1,24,133,3192,25,53,1,0,'2025-07-01 22:21:20',NULL,NULL),(3,'CRUSH','MG0250CRP-D','MANGO CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,1000,1000,1000,1000,1,24,133,3192,25,53,1,0,'2025-07-01 22:21:20',NULL,NULL),(4,'CRUSH','PN0250CRP-D','PINEAPPLE CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,1000,1000,1000,1000,1,24,133,3192,25,53,1,0,'2025-07-01 22:21:20',NULL,NULL),(5,'CRUSH','BS0250CRP-D','BUTTER SCOTCH CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,1000,1000,1000,1000,1,24,133,3192,25,53,1,0,'2025-07-01 22:21:20',NULL,NULL),(6,'CRUSH','OR0250CRP-D','ORANGE CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,1000,1000,1000,1000,1,24,133,3192,25,53,1,0,'2025-07-01 22:21:20',NULL,NULL),(7,'CRUSH','RM0250CRP-D','RASMALAI CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,1000,1000,1000,1000,1,24,133,3192,25,53,1,0,'2025-07-01 22:21:20',NULL,NULL),(8,'CRUSH','PN0750CRP-D','PINEAPPLE CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:20',NULL,NULL),(9,'CRUSH','BR0750CRP-D','BLUEBERRY CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:20',NULL,NULL),(10,'CRUSH','ML0750CRP-D','MULBERRY CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:20',NULL,NULL),(11,'CRUSH','MG0750CRP-D','MANGO CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:20',NULL,NULL),(12,'CRUSH','PS0750RCP-D','PISTA CRUSH 750ML PET BOTTLE','Nos','FG',11.43,2000,2000,2000,1000,2,12,175,2100,25,35,1,0,'2025-07-01 22:21:20',NULL,NULL),(13,'CRUSH','DA0750RCP-D','DRY ANJEER CRUSH 750ML PET BOTTLE X 12','Nos','FG',11.3,2000,2000,2000,1000,2,12,177,2124,25,35,1,0,'2025-07-01 22:21:20',NULL,NULL),(14,'CRUSH','GU0750CRP-D','GUAVA CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:20',NULL,NULL),(15,'CRUSH','CR0750CRP-D','CHERRY CRUSH 750ML PET BOTTLE X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:20',NULL,NULL),(16,'SYRUP','KS0750RCP-D','KESAR SYRUP 750ML PET BOTTLE','Nos','FG',12.6,2000,1500,1500,1000,2,12,119,1428,25,24,1,0,'2025-07-01 22:21:20',NULL,NULL),(17,'CRUSH','KB0750RCP-D','KESAR BADAM CRUSH 750ML PET BOTTLE','Nos','FG',11.43,2000,2000,2000,1000,2,12,175,2100,25,35,1,0,'2025-07-01 22:21:20',NULL,NULL),(18,'CRUSH','MU0750CRP-D','MUSKMELON CRUSH 750ML PET BOTTLE X 12','Nos','FG',11.3,3333,3333,3333,1000,3,12,295,3540,25,59,1,0,'2025-07-01 22:21:20',NULL,NULL),(19,'CRUSH','CK0750CRP-D','CHICKOO CRUSH 750ML PET BOTTLE X 12','Nos','FG',11.3,3333,3333,3333,1000,3,12,295,3540,25,59,1,0,'2025-07-01 22:21:20',NULL,NULL),(20,'CRUSH','MF0750CRP-D','MIXED FRUIT CRUSH 750ML PET BOTTLE X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(21,'CRUSH','ST0750CRP-D','STRAWBERRY CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(22,'CRUSH','JM0750CRP-D','JAMUN CRUSH 750ML PET BOTTLE X 12','Nos','FG',11.3,3333,3333,3333,1000,3,12,295,3540,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(23,'CRUSH','JM0750CRP-D','JAMUN CRUSH 750ML PET BOTTLE','Nos','FG',11.3,3333,3333,3333,1000,3,12,295,3540,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(24,'CRUSH','RM0750CRP-D','RASMALAI CRUSH 750ML PET BOTTLE X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(25,'CRUSH','BC0750CRP-D','BLACK CURRANT CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(26,'CRUSH','BS0750CRP-D','BUTTERSCOTCH CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(27,'CRUSH','OR0750CRP-D','ORANGE CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(28,'CRUSH','KW0750CRP-D','KIWI CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(29,'CRUSH','LI0750CRP-D','LITCHI CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(30,'CRUSH','GA0750CRP-D','GREEN APPLE CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(31,'CRUSH','BN0750CRP-D','BANANA CRUSH 750ML PET BOTTLE','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(32,'CRUSH','BD0750RCP-D','BADAM CRUSH 750ML PET BOTTLE','Nos','FG',11.43,2000,2000,2000,1000,2,12,175,2100,25,35,1,0,'2025-07-01 22:21:21',NULL,NULL),(33,'CRUSH','MO0750CRP-D','MOSAMBI CRUSH 750ML PET BOTTLE X 12','Nos','FG',11.3,3333,3333,3333,1000,3,12,295,3540,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(34,'CRUSH','ST0750CRP-E','MALAS STRAWBERRY CRUSH 750ML X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(35,'CRUSH','LI0750CRP-E','MALAS LITCHI CRUSH 750ML X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(36,'CRUSH','OR0750CRP-E','MALAS ORANGE CRUSH 750ML X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(37,'CRUSH','MG0750CRP-E','MALAS MANGO CRUSH 750ML X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(38,'CRUSH','BC0750CRP-E','BLACK CURRANT CRUSH 750ML PET BOTTLE X 12 EXPORT','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(39,'CRUSH','KW0750CRP-E','MALAS KIWI CRUSH 750ML X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(40,'CRUSH','PN0750CRP-E','MALAS PINEAPPLE CRUSH 750ML X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(41,'SYRUP','KS0750RCP-E','KESAR SYRUP 750ML PET X 12 EXPORT','Nos','FG',12.6,2000,1500,1500,1000,2,12,119,1428,25,24,1,0,'2025-07-01 22:21:21',NULL,NULL),(42,'CRUSH','KB0750RCP-E','KESAR BADAMROYALCOLLECTIONCRUSH750MLPETBOT.EX12EXP','Nos','FG',11.43,2000,2000,2000,1000,2,12,175,2100,25,35,1,0,'2025-07-01 22:21:21',NULL,NULL),(43,'CRUSH','PS0750RCP-E','PISTA ROYAL COLLECTION CRUSH 750ML PETBOTTLEX12EXP','Nos','FG',11.43,2000,2000,2000,1000,2,12,175,2100,25,35,1,0,'2025-07-01 22:21:21',NULL,NULL),(44,'CRUSH','DA0750RCP-E','DRY ANJEER CRUSH 750ML PET BOTTLE EXPORT','Nos','FG',11.3,2000,2000,2000,1000,2,12,177,2124,25,35,1,0,'2025-07-01 22:21:21',NULL,NULL),(45,'CRUSH','BS0750CRP-E','MALAS BUTTERSCOTCH CRUSH 750ML X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(46,'CRUSH','BR0750CRP-E','MALAS BLUEBERRY CRUSH 750ML X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(47,'CRUSH','GA0750CRP-E','MALAS GREEN APPLE CRUSH 750ML X 12','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(48,'CRUSH','GU0750CRP-E','GUAVA CRUSH 750ML PET BOTTLE EXPORT','Nos','FG',11.25,3333,3333,3333,1000,3,12,296,3552,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(49,'CRUSH','PA0750CRP-D','PEACH & APRICOT CRUSH 750ML PET BOTTLE X 12','Nos','FG',11.3,3333,3333,3333,1000,3,12,295,3540,25,59,1,0,'2025-07-01 22:21:21',NULL,NULL),(50,'CRUSH','MG1000CRP-DMT','MANGO CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(51,'CRUSH','OR1000CRP-DMT','ORANGE CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(52,'CRUSH','ST1000CRP-DMT','STRAWBERRY CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(53,'CRUSH','LI1000CRP-DMT','LITCHI CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(54,'CRUSH','BS1000CRP-DMT','BUTTERSCOTCH CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(55,'CRUSH','KW1000CRP-D','KIWI CRUSH 1LTR PET BOTTLE','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(56,'CRUSH','PN1000CRP-DMT','PINEAPPLE CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(57,'CRUSH','GU1000CRP-DMT','GUAVA CRUSH 1LTR PET BOTTLE X 12','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(58,'SAUCE','BS1000SUP-D','BUTTERSCOTCH SAUCE 1LTR','Nos','FG',15.6,2600,2600,2600,1000,3,12,167,2004,25,33,1,0,'2025-07-01 22:21:21',NULL,NULL),(59,'CRUSH','GA1000CRP-DMT','GREEN APPLE CRUSH 1LTR PET BOTTLE X 12','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(60,'CRUSH','BC1000CRP-DMT','MALAS BLACK CURRANT CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(61,'CRUSH','BR1000CRP-DMT','BLUEBERRY CRUSH 1LTR PET BOTTLE X 12','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(62,'CRUSH','JM1000CRP-DMT','JAMUN CRUSH 1LTR PET BOTTLE X 12','Nos','FG',15,3333,3333,3333,1000,3,12,222,2664,25,44,1,0,'2025-07-01 22:21:21',NULL,NULL),(63,'CRUSH','PN5000CRP-D','PINEAPPLE CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(64,'CRUSH','LI5000CRP-D','LITCHI CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(65,'CRUSH','BR5000CRP-D','BLUEBERRY CRUSH 5LTR PET BOTTLE X 2','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(66,'CRUSH','GU5000CRP-D','GUAVA CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(67,'CRUSH','BC5000CRP-D','BLACK CURRANT CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(68,'CRUSH','ST5000CRP-D','STRAWBERRY CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(69,'CRUSH','BS5000CRP-D','BUTTERSCTOCH CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(70,'CRUSH','KW5000CRP-D','KIWI CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(71,'CRUSH','MG5000CRP-D','MANGO CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(72,'CRUSH','GA5000CRP-D','GREEN APPLE CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(73,'CRUSH','OR5000CRP-D','ORANGE CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(74,'CRUSH','RM5000CRP-D','RASMALAI CRUSH 5LTR PET BOTTLE X 2','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(75,'CRUSH','DA5000RCP-D','Dry Anjeer Crush 5ltr Pet Bottle','Nos','FG',12.5,2000,2000,2000,1000,2,2,160,320,25,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(76,'CRUSH','ST5000CRP-E','STRAWBERRY CRUSH 5LTR PET BOTTLE X 2 EXPORT','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(77,'CRUSH','KW5000CRP-E','KIWI CRUSH 5LTR PET BOTTLE X 2 EXPORT','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(78,'CRUSH','BR5000CRP-E','BLUEBERRY CRUSH 5LTR PET BOTTLE X 2 EXPORT','Nos','FG',12.5,3333,3333,3333,1000,3,2,267,534,25,9,1,0,'2025-07-01 22:21:21',NULL,NULL),(79,'','CR5000INSTP-D','CHERRY PREPARATION 5LTR PET JAR','Nos','FG',13.5,2868.75,2868.75,2868.75,1000,3,2,213,426,25,7,1,0,'2025-07-01 22:21:21',NULL,NULL),(80,'SYRUP','RO5000SYP-D','ROSE SYRUP 5LTR PET BOTTLE','Nos','FG',13.5,3000,2800,2800,1000,3,2,207,414,25,7,1,0,'2025-07-01 22:21:21',NULL,NULL),(81,'CRUSH','PF0750CKP-E','PASSION FRUIT CRUSH KOREAN 750ML PET BOTTLE X 12 E','Nos','FG',13.5,3000,2800,2800,1000,3,2,207,414,25,7,1,0,'2025-07-01 22:21:21',NULL,NULL),(82,'KETCHUP','TO1000HKP-PD','TOMATO HOME CHEF KETCHUP 1KG POUCH X 12','Nos','FG',12,2500,1800,1800,1000,2,12,150,1800,22,30,1,0,'2025-07-01 22:21:21',NULL,NULL),(83,'FILLING','ITEM-SFG008','BLUEBERRY FILLING','Kg','SFG',1,400,300,300,1000,0,0,300,0,8,0,1,0,'2025-07-01 22:21:21',NULL,NULL),(84,'JAM','MF0020JMP-E','MALAS MIXFRUIT JAM 20GM X 96 X 5 ,EXPORT','Nos','FG',9.6,200,63.6,63.6,1000,0,480,7,3360,8,56,1,0,'2025-07-01 22:21:21',NULL,NULL),(85,'KETCHUP','TO1200HKP-PD','TOMATO HOME CHEF KETCHUP 1.2KG POUCH X 12','Nos','FG',14.4,2500,2160,2160,1000,2,12,150,1800,22,30,1,0,'2025-07-01 22:21:21',NULL,NULL),(86,'KETCHUP','TO0900HNP-D','TOMATO HOME CHEF KETCHUP NO ONION NO GARLIC 900GM','Nos','FG',10.8,2500,1620,1620,1000,2,12,150,1800,22,30,1,0,'2025-07-01 22:21:21',NULL,NULL),(87,'KETCHUP','TO0900NKP-D','TOMATO KETCHUP NO ONION NO GARLIC 900GM POUCH X 12','Nos','FG',10.8,2500,1620,1620,1000,2,12,150,1800,22,30,1,0,'2025-07-01 22:21:21',NULL,NULL),(88,'KETCHUP','TO0950HBP-PD','TOMATO HABIT KETCHUP 950GM POUCH X 12','Nos','FG',11.4,2500,1710,1710,1000,2,12,150,1800,22,30,1,0,'2025-07-01 22:21:21',NULL,NULL),(89,'KETCHUP','TO0950STP-PD','SNAC TAC TOMATO KETCHUP RELIANCE 950GM POUCH X 12','Nos','FG',11.4,2500,1710,1710,1000,2,12,150,1800,22,30,1,0,'2025-07-01 22:21:21',NULL,NULL),(90,'FILLING','BR1000FLJ-D12','BLUEBERRY FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(91,'KETCHUP','TO0900KCP-D','TOMATO KETCHUP 900GM POUCH X 12','Nos','FG',10.8,2500,1620,1620,1000,2,12,150,1800,22,30,1,0,'2025-07-01 22:21:21',NULL,NULL),(93,'JAM','MF0015JMP-D','MIXED FRUIT JAM 15GM POUCH','Nos','FG',9,159.3,90,90,1000,0,600,10,6000,6,100,1,0,'2025-07-01 22:21:21',NULL,NULL),(94,'JAM','OR0020JMP-E','MALAS ORANGE JAM 20GM X 96 X 5 ,EXPORT','Nos','FG',9.6,63.6,63.6,63.6,1000,0,480,7,3360,9,56,1,0,'2025-07-01 22:21:21',NULL,NULL),(95,'JAM','MF0100JMC-D','MIXFRUIT JAM 100GM CUP','Nos','FG',7.2,300,144,144,1000,0,72,20,1440,8,24,1,0,'2025-07-01 22:21:21',NULL,NULL),(96,'MELTIES','AS0260FMP-D','ASSORTED FRUMELT 260GM POUCH X 24','Nos','FG',6.24,218.4,218.4,218.4,1000,0,24,35,840,10,14,1,0,'2025-07-01 22:21:21',NULL,NULL),(97,'MELTIES','MG0260FMP-D','MANGO FRUMELT 260GM POUCH X 24','Nos','FG',6.24,218.4,218.4,218.4,1000,0,24,35,840,10,14,1,0,'2025-07-01 22:21:21',NULL,NULL),(98,'JAM','ST0200JMC-D','STRAWBERRY JAM 200GM CUP','Nos','FG',9.6,300,216,216,1000,0,48,23,1104,8,18,1,0,'2025-07-01 22:21:21',NULL,NULL),(100,'JAM','PN0200JMC-D','PINEAPPLE JAM 200GM CUP','Nos','FG',9.6,300,216,216,1000,0,48,23,1104,8,18,1,0,'2025-07-01 22:21:21',NULL,NULL),(102,'FILLING','ITEM-SFG057','PINEAPPLE FILLING','Kg','SFG',1,275,300,275,1000,0,0,275,0,8,0,1,0,'2025-07-01 22:21:21',NULL,NULL),(103,'MELTIES','LI0260FMP-D','LITCHI FRUMELT 260GM POUCH X 24','Nos','FG',6.24,218.4,218.4,218.4,1000,0,24,35,840,10,14,1,0,'2025-07-01 22:21:21',NULL,NULL),(104,'JAM','ST0020JMP-E','MALAS STRAWBERRY JAM 20GM X 96 X 5 ,EXPORT','Nos','FG',9.6,69.6,63.6,63.6,1000,0,480,7,3360,8,56,1,0,'2025-07-01 22:21:21',NULL,NULL),(105,'FILLING','ITEM-SFG040','MANGO FILLING','Kg','SFG',1,400,300,300,1000,0,0,300,0,8,0,1,0,'2025-07-01 22:21:21',NULL,NULL),(106,'FILLING','MG1000FLJ-D12','MANGO FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(107,'FILLING','BR1000FLJ-D12','BLUEBERRY FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(108,'JAM','MF0025JMP-D','MIXED FRUIT JAM 25GM X 480 BLISTER','Nos','FG',12,79.5,79.5,79.5,1000,0,480,7,3360,9,56,1,0,'2025-07-01 22:21:21',NULL,NULL),(109,'JAM','MF0200JMC-D','MIXED FRUIT JAM 200GM CUP','Nos','FG',9.6,300,216,216,1000,0,48,23,1104,8,18,1,0,'2025-07-01 22:21:21',NULL,NULL),(110,'FILLING','PN1000FLJ-D12','PINEAPPLE FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(111,'FILLING','MG1000FLJ-D12','MANGO FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(113,'FILLING','ITEM-SFG067','STRAWBERRY FILLING','Kg','SFG',1,400,300,300,1000,0,0,300,0,8,0,1,0,'2025-07-01 22:21:21',NULL,NULL),(114,'FILLING','ST1000FLJ-D12','STRAWBERRY FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(116,'FILLING','ITEM-SFG089','CHERRY FILLINGS','Kg','SFG',1,400,300,300,1000,0,0,300,0,8,0,1,0,'2025-07-01 22:21:21',NULL,NULL),(117,'FILLING','CR1000FLJ-D12','CHERRY FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(118,'FILLING','ITEM-SFG051','ORANGE FILLING','Kg','SFG',1,400,300,300,1000,0,0,300,0,8,0,1,0,'2025-07-01 22:21:21',NULL,NULL),(119,'FILLING','OR1000FLJ-D12','ORANGE FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(120,'COMPOUND','RP5000INSTJ-D','RASPBERRY COMPOUND 5 KG','Nos','FG',20,265,265,265,1000,0,4,13,52,10,1,1,0,'2025-07-01 22:21:21',NULL,NULL),(121,'CRUSH','OR6500INST-P','ORANGE CRUSH INSTITUTIONAL 6.5 KG','Nos','FG',13,260,260,260,1000,0,2,20,40,10,1,1,0,'2025-07-01 22:21:21',NULL,NULL),(122,'FILLING','SFG513','RASPBERRY FILLINGS','Kg','SFG',1,282,282,282,1000,0,0,282,0,8,0,1,0,'2025-07-01 22:21:21',NULL,NULL),(123,'FILLING','RP1000FLJ-D12','RASPBERRY FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(124,'KETCHUP','TO0450KCP-D','MALAS KETCHUP 450 GM X 30 POUCH','Nos','FG',13.5,783,783,783,1000,1,30,58,1740,13,29,1,0,'2025-07-01 22:21:21',NULL,NULL),(125,'JAM','MF0015JMP-D','MALAS 15GM POUCH JAM 15GM X 600','Nos','FG',9,45,45,45,1000,0,600,5,3000,6,50,1,0,'2025-07-01 22:21:21',NULL,NULL),(126,'HONEY','HN0250HNP-D','HONEY 230GM PET','Nos','FG',11.04,198,195,195,1000,0,48,17.7,849.6,13,14,1,0,'2025-07-01 22:21:21',NULL,NULL),(130,'JAM','PN0020JMP-E','MALAS PINEAPPLE JAM 20GM X 96 X 5 ,EXPORT','Nos','FG',9.6,200,63.6,63.6,1000,0,480,7,3360,8,56,1,0,'2025-07-01 22:21:21',NULL,NULL),(131,'FILLING','ITEM-SFG659','FIG & HONEY FILLING','Kg','SFG',1,282,282,282,1000,0,0,282,0,8,0,1,0,'2025-07-01 22:21:21',NULL,NULL),(132,'FILLING','FH1000FLJ-D12','FIG & HONEY FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(133,'FILLING','','APPLE CINNAMON FILLING 1KG JAR X 12','Nos','FG',12,400,300,300,1000,0,12,25,300,8,5,1,0,'2025-07-01 22:21:21',NULL,NULL),(134,'FILLING','','APPLE & CINNAMON FILLING SFG','Kg','SFG',1,282,282,282,1000,0,0,282,0,8,0,1,0,'2025-07-01 22:21:21',NULL,NULL),(135,'JAM','','15 GM MIXED FRUIT JAM POUCH SFG','Kg','SFG',1,282,282,282,1000,0,0,282,0,8,0,1,0,'2025-07-01 22:21:21',NULL,NULL),(139,'JAM','','HONEY JAM 20 GM× 96×5 BLISTER PACK','Nos','FG',12,79.5,79.5,79.5,1000,0,480,7,3360,9,56,1,0,'2025-07-01 22:21:21',NULL,NULL),(140,'JAM','ST0510CHP-PE','CH STRAWBERRY PRESERVES (JAM) 510GM PET X 12','Nos','FG',6.18,2000,1236,1236,1000,1,12,200,2400,25,40,1,0,'2025-07-01 22:21:21',NULL,NULL),(141,'JAM','MG1000JMP-D','MANGO JAM 1KG PET JAR','Nos','FG',12.12,2000,1987.68,1987.68,1000,2,12,164,1968,25,33,1,0,'2025-07-01 22:21:21',NULL,NULL),(142,'JAM','ST1000JMP-D','STRAWBERRY JAM 1KG PET JAR','Nos','FG',12.12,2000,1987.68,1987.68,1000,2,12,164,1968,25,33,1,0,'2025-07-01 22:21:21',NULL,NULL),(143,'JAM','MF1000JMP-D','MIXED FRUIT JAM 1KG PET JAR','Nos','FG',12.12,2000,1800,1800,1000,2,12,149,1788,25,30,1,0,'2025-07-01 22:21:21',NULL,NULL),(144,'JAM','MF1000JBP-D','MIXED FRUIT JAMBO 1KG PET JAR','Nos','FG',12,2000,1800,1800,1000,2,12,150,1800,25,30,1,0,'2025-07-01 22:21:21',NULL,NULL),(145,'CRUSH','CA0750CRPW-D','CUSTARD APPLE WHOLE CRUSH 750ML PET BOTTLE X 12','Nos','FG',11.16,2000,1500,1500,1000,2,12,134,1608,25,27,1,0,'2025-07-01 22:21:21',NULL,NULL),(146,'CRUSH','ST0750CRPW-D','STRAWBERRY WHOLE CRUSH 750ML PET BOTTLE','Nos','FG',11.16,2000,1584.72,1584.72,1000,2,12,142,1704,25,28,1,0,'2025-07-01 22:21:22',NULL,NULL),(147,'CRUSH','PN0750CRPW-D','PINEAPPLE WHOLE CRUSH 750ML PET BOTTLE','Nos','FG',11.16,2000,1800,1800,1000,2,12,161,1932,25,32,1,0,'2025-07-01 22:21:22',NULL,NULL),(148,'CRUSH','PN5000CRPW-D','PINEAPPLE WHOLE CRUSH 5LTR PET BOTTLE','Nos','FG',12.4,2000,1333,1333,1000,1,2,108,216,25,4,1,0,'2025-07-01 22:21:22',NULL,NULL),(149,'CRUSH','ST5000CRPW-D','STRAWBERRY WHOLE CRUSH 5LTR PET BOTTLE','Nos','FG',12.4,2000,2101.8,2000,1000,2,2,161,322,25,5,1,0,'2025-07-01 22:21:22',NULL,NULL),(150,'JAM','MF0350SMG-PE','SIMBA MIXED FRUIT JAM 350GM X 12','Nos','FG',4.26,2000,1171.5,1171.5,1000,1,12,275,3300,25,55,1,0,'2025-07-01 22:21:22',NULL,NULL),(151,'JAM','ST0350SMG-PE','SIMBA STRAWBERRY JAM 350GM X 12 GLASS','Nos','FG',4.26,2000,1171.5,1171.5,1000,1,12,275,3300,25,55,1,0,'2025-07-01 22:21:22',NULL,NULL),(152,'JAM','MF4000JMP-D','MIXED FRUIT JAM 4KG PET JAR REGULAR','Nos','FG',16.04,2000,1800,1800,1000,2,4,112,448,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(153,'JAM','PN1000JMP-D','PINEAPPLE JAM 1KG PET JAR','Nos','FG',12.12,2000,1800,1800,1000,2,12,149,1788,25,30,1,0,'2025-07-01 22:21:22',NULL,NULL),(154,'JAM','PN4000JMP-D','PINEAPPLE JAM 4KG PET JAR','Nos','FG',16.04,2000,1800,1800,1000,2,4,112,448,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(155,'JAM','MG4000JMP-D','MANGO JAM 4KG PET JAR','Nos','FG',16.04,2000,1800,1800,1000,2,4,112,448,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(156,'JAM','ST4000JMP-D','STRAWBERRY JAM 4KG PET JAR','Nos','FG',16.04,2000,1800,1800,1000,2,4,112,448,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(157,'JAM','ST0500JMG-D','STRAWBERRY-SEEDLESS JAM 500GM GLASS JAR','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(158,'JAM','JM0350ZSG-D','JAMUN ZERO ADDED SUGAR JAM 350GM GLASS BOTTLE','Nos','FG',4.26,2000,1065,1065,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(159,'JAM','ST0350ZSG-D','STRAWBERRY ZERO ADD SUGAR JAM 350GM GLASS BOTTLE','Nos','FG',4.26,2000,1065,1065,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(160,'JAM','MB0500JMG-D','MIXEDBERRY JAM 500GM GLASS JAR','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(161,'JAM','MF0500JMG-D','MIXED FRUIT JAM 500G GLASS JAR','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(162,'JAM','PN0500JMG-EO','PINEAPPLE JAM 500GM GLASS BOTTLE X 12','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(163,'JAM','OR0500JMG-EO','ORANGE JAM 500GM GLASS BOTTLE X 12','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(164,'JAM','ST0500JMG-EO','STRAWBERRY JAM 500GM GLASS BOTTLE X 12','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(165,'JAM','MF0500JMG-EO','MIXED FRUIT JAM 500GM GLASS BOTTLE X 12','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(166,'JELLY','GR0510DCP-PE','GRAPE JELLY DUCHESS 510GM PET BOTTLE X 12','Nos','FG',6.18,2000,1450,1450,1000,1,12,235,2820,25,47,1,0,'2025-07-01 22:21:22',NULL,NULL),(167,'RTD','MG1750RDP-PD','MANGO MERRY 1.75LTR PET BOTTLE','Nos','FG',11.02,3360,3360,3360,1000,3,6,305,1830,25,31,1,0,'2025-07-01 22:21:22',NULL,NULL),(168,'RTD','MG1000RDP-PD','MANGO MERRY 1LTR PET BOTTLE X 12','Nos','FG',12.6,2100,2100,2100,1000,2,12,167,2004,25,33,1,0,'2025-07-01 22:21:22',NULL,NULL),(169,'RTD','MG1000NDP-PE','MANGO NOORI DRINK 1LTR PET BOTTLE X 12','Nos','FG',12.6,2000,2016,2000,1000,2,12,159,1908,25,32,1,0,'2025-07-01 22:21:22',NULL,NULL),(170,'JAM','OM0500JMG-D','ORANGE MARMALADE JAM 500GM GLASS JAR','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(171,'FILLING','ST0175JMG-E','STRAWBERRY JAM 175GM GLASS BOTTLE X 24 (200gm filling)','Nos','FG',4.8,2000,660,660,1000,1,24,138,3312,25,55,1,0,'2025-07-01 22:21:22',NULL,NULL),(172,'CRUSH','MG0750CRPW-D','MANGO WHOLE CRUSH 750ML PET BOTTLE','Nos','FG',11.16,2000,1584.72,1584.72,1000,2,12,142,1704,25,28,1,0,'2025-07-01 22:21:22',NULL,NULL),(173,'CRUSH','MG0250CRPW-D','MANGO WHOLE CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.44,2000,1200,1200,1000,1,24,161,3864,25,64,1,0,'2025-07-01 22:21:22',NULL,NULL),(174,'CRUSH','PN0250CRPW-D','PINEAPPLE WHOLE CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.44,2000,1200,1200,1000,1,24,161,3864,25,64,1,0,'2025-07-01 22:21:22',NULL,NULL),(175,'CRUSH','ST0250CRPW-D','STRAWBERRY WHOLE CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.44,2000,1200,1200,1000,1,24,161,3864,25,64,1,0,'2025-07-01 22:21:22',NULL,NULL),(176,'CRUSH','VB0750CRPW-D','VERY BERRY WHOLE CRUSH 750ML PET BOTTLE','Nos','FG',11.16,2000,1800,1800,1000,2,12,161,1932,25,32,1,0,'2025-07-01 22:21:22',NULL,NULL),(177,'CRUSH','BR0250CRPW-D','BLUEBERRY WHOLE CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.44,2000,1200,1200,1000,1,24,161,3864,25,64,1,0,'2025-07-01 22:21:22',NULL,NULL),(178,'JAM','ST0370JM-E','MALAS STRAWBERRY JAM 370GM X 12 EXPORT','Nos','FG',4.5,2000,1200,1200,1000,1,12,267,3204,25,53,1,0,'2025-07-01 22:21:22',NULL,NULL),(179,'JAM','MG0370JM-E','MALAS MANGO JAM 370GM X 12 EXPORT','Nos','FG',4.5,2000,1200,1200,1000,1,12,267,3204,25,53,1,0,'2025-07-01 22:21:22',NULL,NULL),(180,'JAM','MF0370JM-E','MALAS MIXFRUIT JAM 370GM X 12 EXPORT','Nos','FG',4.5,2000,1200,1200,1000,1,12,267,3204,25,53,1,0,'2025-07-01 22:21:22',NULL,NULL),(181,'JAM','MF0450FJG-PE','MIXED FRUIT JAM FIJI LAND 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(182,'JAM','ST0450FJG-PE','STRAWBERRY JAM FIJI LAND 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(183,'JAM','OM0450FJG-PE','ORANGE MARMALADE JAM FIJI LAND 450GM GLASS BOTTLE','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(184,'JAM','PN5000FVP-PE','FRUIT VALLEY PINEAPPLE JAM 5KG PET JAR X 4','Nos','FG',20.04,2000,1800,1800,1000,2,4,90,360,25,6,1,0,'2025-07-01 22:21:22',NULL,NULL),(185,'JAM','OR5000FVP-PE','FRUIT VALLEY ORANGE JAM 5KG PET JAR X 4','Nos','FG',20.04,2000,1800,1800,1000,2,4,90,360,25,6,1,0,'2025-07-01 22:21:22',NULL,NULL),(186,'JAM','MF0370FVG-PE','FRUIT VALLEY MIXED FRUIT JAM 370GM GLASS BOTTLEX12','Nos','FG',4.5,2000,1125,1125,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(187,'JAM','ST0370FVG-PE','FRUIT VALLEY STRAWBERRY JAM 370GM GLASS BOTTLE X12','Nos','FG',4.5,2000,1125,1125,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(188,'JAM','ST5000FVP-PE','FRUIT VALLEY STRAWBERRY JAM 5KG PET JAR X 4','Nos','FG',20.04,2000,1800,1800,1000,2,4,90,360,25,6,1,0,'2025-07-01 22:21:22',NULL,NULL),(189,'JAM','MB0350HFG-D','MALAS MIXBERRY HIGH FRUIT JAM 350GM GLASS BOTTLE','Nos','FG',4.26,2000,1065,1065,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(190,'JAM','MF0500JBG-D','MIXED FRUIT JAMBO 500G GLASS JAR','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(191,'JAM','MG0500JMG-D','MANGO JAM 500GM GLASS JAR','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(192,'JAM','ML0500JMG-D','MULBERRY JAM 500GM GLASS BOTTLE','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(193,'JAM','JM0330ZSG-E','JAMUN ZERO SUGAR JAM 330GM GLASS BOTTLE','Nos','FG',4.02,2000,1005,1005,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(194,'JAM','ST0330ZSG-E','STRAWBERRY ZERO SUGAR JAM 330GM GLASS BOTTLE','Nos','FG',4.02,2000,1005,1005,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(195,'CRUSH','VB0250CRPW-D','VERRY BERRY WHOLE CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.44,2000,1200,1200,1000,1,24,161,3864,25,64,1,0,'2025-07-01 22:21:22',NULL,NULL),(196,'JAM','PH0310AGG-PE','AG PEACH NO ADDED SUGAR 310GM X 12','Nos','FG',3.78,2000,1039.5,1039.5,1000,1,12,275,3300,25,55,1,0,'2025-07-01 22:21:22',NULL,NULL),(197,'MARMALADE','OM0310AGG-PE','AG ORANGE MARM. NO ADDED SUGAR 310GM X 12','Nos','FG',3.78,2000,1039.5,1039.5,1000,1,12,275,3300,25,55,1,0,'2025-07-01 22:21:22',NULL,NULL),(198,'JAM','RP0310AGG-PE','AG RASPBERRY NO ADDED SUGAR 310GM X 12','Nos','FG',3.78,2000,1039.5,1039.5,1000,1,12,275,3300,25,55,1,0,'2025-07-01 22:21:22',NULL,NULL),(199,'JAM','GR0510GBG-E','GLOBAL BRANDS GRAPE JELLY (JAM) 510GM X 12','Nos','FG',6.18,2000,1500,1500,1000,2,12,243,2916,25,49,1,0,'2025-07-01 22:21:22',NULL,NULL),(200,'JAM','ST0310AGG-PE','AG STRAWBERRY NO ADDED SUGAR 310GM X 12','Nos','FG',3.78,2000,1039.5,1039.5,1000,1,12,275,3300,25,55,1,0,'2025-07-01 22:21:22',NULL,NULL),(201,'JAM','BC0310AGG-PE','AG BLACK CURRANT NO ADDED SUGAR 310GM X 12','Nos','FG',3.78,2000,1039.5,1039.5,1000,1,12,275,3300,25,55,1,0,'2025-07-01 22:21:22',NULL,NULL),(202,'JAM','CR0310AGG-PE','AG CHERRY NO ADDED SUGAR JAM 310GM X 12','Nos','FG',3.78,2000,1039.5,1039.5,1000,1,12,275,3300,25,55,1,0,'2025-07-01 22:21:22',NULL,NULL),(203,'JAM','BM0340SKG-PD','BLUEBERRY & MULBERRY SPREAD KISSAN 340GM GL. X 12','Nos','FG',4.14,2000,1035,1035,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(204,'JAM','PA0340SKG-PD','PEACH & APRICOT SPREAD KISSAN 340GM GLASS X 12','Nos','FG',4.14,2000,1035,1035,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(205,'JAM','SP0340SKG-PD','STRAWBERRY & RASPBERRY SPREAD KISSAN 340GM X 12','Nos','FG',4.14,2000,1035,1035,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(206,'CRUSH','MG5000CRPW-D','MANGO WHOLE CRUSH 5LTR PET BOTTLE','Nos','FG',12.4,2000,2101.8,2000,1000,2,2,161,322,25,5,1,0,'2025-07-01 22:21:22',NULL,NULL),(207,'JAM','ST0510GBG-E','GLOBAL BRANDS STRAWBERRY PRESERVES 510GM GB X 12','Nos','FG',6.18,2000,1236,1236,1000,1,12,200,2400,25,40,1,0,'2025-07-01 22:21:22',NULL,NULL),(208,'JAM','ST0450JMG-E','STRAWBERRY JAM 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(209,'CRUSH','VB5000CRPW-D','VERY BERRY WHOLE CRUSH 5LTR PET BOTTLE','Nos','FG',12.4,2000,2101.8,2000,1000,2,2,161,322,25,5,1,0,'2025-07-01 22:21:22',NULL,NULL),(210,'JAM','OR0450JMG-E','ORANGE JAM 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(211,'JAM','MF0450JMG-E','MIXED FRUIT JAM 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(212,'JAM','ST1000JM-E','MALAS STRAWBERRY JAM 1KG X 12 EXPORT','Nos','FG',12.12,2000,1987.68,1987.68,1000,2,12,164,1968,25,33,1,0,'2025-07-01 22:21:22',NULL,NULL),(213,'JAM','ST0500JMP-E','STRAWBERRY JAM 500GM PET BOTTLE X 12','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(214,'JAM','MF5000JMP-EO','MIXED FRUIT JAM 5KG PET BOTTLE X 4','Nos','FG',20.04,2000,2004,2000,1000,2,4,100,400,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(215,'JAM','ST5000JMP-EO','STRAWBERRY JAM 5KG PET BOTTLE X 4','Nos','FG',20.04,2000,2004,2000,1000,2,4,100,400,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(216,'JAM','PN0500JMG-D','PINEAPPLE JAM 500GM GLASS JAR','Nos','FG',6.06,2000,1800,1800,1000,2,12,297,3564,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(217,'CRUSH','BR0750CRP-D','BLUEBERRY CRUSH 750ML','Nos','FG',11.16,2000,1800,1800,1000,2,12,161,1932,25,32,1,0,'2025-07-01 22:21:22',NULL,NULL),(218,'CRUSH','GA750CRP-D','GREEN APPLE CRUSH 750 ML','Nos','FG',11.16,2000,2160,2000,1000,2,12,179,2148,25,36,1,0,'2025-07-01 22:21:22',NULL,NULL),(219,'CRUSH','BC750CRP-D','BLACK CURRANT CRUSH 750ML','Nos','FG',11.16,2000,2160,2000,1000,2,12,179,2148,25,36,1,0,'2025-07-01 22:21:22',NULL,NULL),(220,'MARMALADE','OM4000JMP-D','ORANGE MARMALADE 4 KG','Nos','FG',16.02,2000,1602,1602,1000,2,4,100,400,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(221,'JAM','ST0510CHG-PE','CH STRAWBERRY PRESERVES (JAM) 510GM GLASS X 6','Nos','FG',3.09,2000,1699.5,1699.5,1000,2,6,550,3300,25,55,1,0,'2025-07-01 22:21:22',NULL,NULL),(222,'JAM','ST25000MFB-PD','BRITANIA STRAWBERRY JAM PERPARATION 20 KG','Nos','FG',20,2000,960,960,1000,1,1,48,48,25,1,1,0,'2025-07-01 22:21:22',NULL,NULL),(223,'JAM','MB0350HFG-D','MIXED BERRY JAM HIGH FRUIT JAM 350 GM X 12','Nos','FG',4.26,2000,1065,1065,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(224,'GEL','NT2500GZB-D','NUTRAL GLAZE GEL','Nos','FG',15,2000,1000,1000,1000,1,6,67,402,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(225,'CRUSH','CA5000CRPW-D','CUSTARD APPLE WHOLE CRUSH 5ltr PET BOTTLE X 2','Nos','FG',12.4,4000,3600,3600,1000,4,2,290,580,25,10,1,0,'2025-07-01 22:21:22',NULL,NULL),(226,'RTD','MG1750GFP-PD','MANGO GO FRUIT 1.75LTR PETBOTTLE X 6','Nos','FG',11.02,3360,3708.23,3360,1000,3,6,305,1830,25,31,1,0,'2025-07-01 22:21:22',NULL,NULL),(227,'JAM','OR0370FVG-PE','FRUIT VALLEY ORANGE JAM 370GM GLASS BOTTLE X12','Nos','FG',4.5,2000,2000,2000,1000,2,12,444,5328,25,89,1,0,'2025-07-01 22:21:22',NULL,NULL),(228,'JAM','MF0450AMG-PE','ARMELLAS MIXRD FRUIT JAM 450G GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(229,'JAM','OR0450AMG-PE','ARMELLAS ORANGE JAM 450G GLASS BOTTLE X 12','Nos','FG',5.46,2000,1228.5,1228.5,1000,1,12,225,2700,25,45,1,0,'2025-07-01 22:21:22',NULL,NULL),(230,'JAM','ST0450AMG-PE','ARMELLAS STRAWBERRY JAM 450G GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(231,'GEL','BR2500GZB-D','BLUEBERRY GLAZE GEL 2.5KG BUCKET X 6','Nos','FG',15,2000,1000,1000,1000,1,6,67,402,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(232,'GEL','CH2500GZB-D','CHOCOLATE GLAZE GEL 2.5KG BUCKET X 6','Nos','FG',15,2000,1000,1000,1000,1,6,67,402,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(233,'GEL','KW2500GZB-D','KIWI GLAZE GEL 2.5KG BUCKET X 6','Nos','FG',15,2000,1000,1000,1000,1,6,67,402,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(234,'GEL','MG2500GZB-D','MANGO GLAZE GEL 2.5KG BUCKET X 6','Nos','FG',15,2000,1000,1000,1000,1,6,67,402,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(235,'GEL','NT2500GZB-D','NEUTRAL GLAZE GEL 2.5KG BUCKET X 6','Nos','FG',15,2000,1000,1000,1000,1,6,67,402,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(236,'GEL','PN2500GZB-D','PINEAPPLE GLAZE GEL 2.5KG BUCKET X 6','Nos','FG',15,2000,1000,1000,1000,1,6,67,402,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(237,'GEL','ST2500GZB-D','STRAWBERRY GLAZE GEL 2.5KG BUCKET X 6','Nos','FG',15,2000,1000,1000,1000,1,6,67,402,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(238,'GEL','WH2500GZB-D','WHITE GLAZE GEL 2.5KG BUCKET X 6','Nos','FG',15,2000,1000,1000,1000,1,6,67,402,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(239,'JAM','MF5000FVP-PE','FRUIT VALLEY MIXED FRUIT JAM 5KG PET JAR X 4','Nos','FG',20.04,2000,1800,1800,1000,2,4,90,360,25,6,1,0,'2025-07-01 22:21:22',NULL,NULL),(240,'','OR25000LPB-PD','ORANGE PREPARATION LOTTE 25KG BUCKET','Nos','FG',20,2000,960,960,1000,1,1,48,48,25,1,1,0,'2025-07-01 22:21:22',NULL,NULL),(241,'FILLING','ST25000LFB-PD','STRAWBERRY FILLING LOTTE 25KG BUCKET','Nos','FG',20,2000,960,960,1000,1,1,48,48,25,1,1,0,'2025-07-01 22:21:22',NULL,NULL),(242,'FILLING','MF25000MFB-PD','MIXED FRUIT MUFFIN FILLING 25KG BUCKET','Nos','FG',20,2000,1800,1800,1000,2,1,90,90,25,2,1,0,'2025-07-01 22:21:22',NULL,NULL),(243,'JAM','ST0350SBG-PE','STRAWBERRY SABY JAM 350GM','Nos','FG',4.26,2000,1250,1250,1000,1,12,293,3516,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(244,'JAM','MF0350SBG-PE','MIXED FRUIT SABY JAM 350GM','Nos','FG',4.26,2000,1250,1250,1000,1,12,293,3516,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(245,'JAM','PN0350SBG-PE','PINEAPPLE SABY JAM 350GM','Nos','FG',4.26,2000,1250,1250,1000,1,12,293,3516,25,59,1,0,'2025-07-01 22:21:22',NULL,NULL),(246,'JAM','ST5000SBP-PE','STRAWBERRY SABY JAM 5KG','Nos','FG',20.04,2000,1800,1800,1000,2,4,90,360,25,6,1,0,'2025-07-01 22:21:22',NULL,NULL),(247,'JAM','MF5000SBP-PE','MIXED FRUIT SABY JAM 5KG','Nos','FG',20.04,2000,1800,1800,1000,2,4,90,360,25,6,1,0,'2025-07-01 22:21:22',NULL,NULL),(248,'JAM','AT0370CLG-PE','APRICOT CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(249,'JAM','BK0370CLG-PE','BLACKBERRY CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(250,'JAM','BR0370CLG-PE','BLUEBERRY CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(251,'JAM','CR0370CLG-PE','CHERRY CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(252,'JAM','MF0370CLG-PE','MIXED FRUIT CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(253,'JAM','MG0370CLG-PE','MANGO CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(254,'JAM','OR0370CLG-PE','ORANGE CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(255,'JAM','PN0370CLG-PE','PINEAPPLE CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(256,'JAM','RO0370CLG-PE','ROSE CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(257,'JAM','RP0370CLG-PE','RASPBERRY CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(258,'JAM','ST0370CLG-PE','STRAWBERRY CLASSY JAM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(259,'JAM','ST5000PFJ-PE','FOOD PLANET STRAWBERRY JAM 5KG','Nos','FG',20.4,2000,2004,2000,1000,2,4,98,392,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(260,'JAM','MF5000PFJ-PE','FOOD PLANET MIXFRUIT JAM 5KG','Nos','FG',20.4,2000,2004,2000,1000,2,4,98,392,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(261,'JAM','PN5000PFJ-PE','FOOD PLANET PINEAPPLE JAM 5KG','Nos','FG',20.4,2000,2004,2000,1000,2,4,98,392,25,7,1,0,'2025-07-01 22:21:22',NULL,NULL),(262,'JAM','ST0370RAG-PE','ROYAL ARM STRAWBERRY JAM 370GM x 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(263,'JAM','PN0370RAG-PE','ROYAL ARM PINEAPPLE JAM 370GM x 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(264,'JAM','MG0370RAG-PE','ROYAL ARM MANGO JAM 370GM x 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(265,'JAM','OR0370RAG-PE','ROYAL ARM ORANGE JAM 370GM x 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(266,'JAM','MF0370RAG-PE','ROYAL ARM MIX FRUIT JAM 370GM x 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(267,'JAM','AT0370RAG-PE','ROYAL ARM APRICOT JAM 370GM x 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(268,'JAM','CR0370RAG-PE','ROYAL ARM CHERRY JAM 370GM x 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(269,'JAM','RP0370RAG-PE','ROYAL ARM RASPBERRY JAM 370GM x 12','Nos','FG',4.5,2000,780,780,1000,1,12,173,2076,25,35,1,0,'2025-07-01 22:21:22',NULL,NULL),(270,'JAM','ST0450HPG-PE','HAPPY STRAWBERRY JAM 450 GM X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(271,'JAM','MF0450HPG-PE','HAPPY MIXED FRUIT JAM 450 GM X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:22',NULL,NULL),(272,'JAM','OR0450HPG-PE','HAPPY ORANGE JAM 450 GM X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(273,'JAM','PN0350MJG-PE','MAVERA PINEAPPLE JAM 350GM X 12','Nos','FG',4.26,2000,1065,1065,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(274,'JAM','AT0350MJG-PE','MAVERA APRICOT JAM 350GM X 12','Nos','FG',4.26,2000,1065,1065,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(275,'JAM','FG0350MJG-PE','MAVERA FIG JAM 350GM X 12','Nos','FG',4.26,2000,1065,1065,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(276,'JAM','ST0350MJG-PE','MAVERA STRAWBERRY JAM 350GM X 12','Nos','FG',4.26,2000,1065,1065,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(277,'JAM','MF0350MJG-PE','MAVERA MIXED FRUIT JAM 350GM X 12','Nos','FG',4.26,2000,1065,1065,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(278,'PUREE','AM2000SAP-PD','PENTE VUNA ALPHONSO MANGO PUREE 2KG X 6 POUCH','Nos','FG',5.46,1000,900,900,1000,1,6,165,990,25,17,1,0,'2025-07-01 22:21:23',NULL,NULL),(279,'JAM','PN0450FMG-PE','Farmade Pineapple Jam 450gm x 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(280,'JAM','OR0450FMG-PE','Farmade Orange Jam 450gm x 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(281,'JAM','MG0450FMG-PE','Farmade Mango Jam 450gm x 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(282,'JAM','ST0450FMG-PE','Farmade Strawberry Jam 450gm x 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(283,'JAM','MF0450FMG-PE','Farmade Mixedfruit Jam 450gm x 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(284,'JAM','ST0450JTG-PE','TAMARA STRAWBERRY JAM 450GM X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(285,'JAM','MF0450JTG-PE','TAMARA MIXFRUIT JAM 450GM X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(286,'JAM','OR0450JTG-PE','TAMARA ORANGE JAM 450GM X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(287,'PULP','NM1000CNP-PD','AL KABIR NEELAM MANGO PULP','Nos','FG',1,1000,900,900,1000,1,1,900,900,25,15,1,0,'2025-07-01 22:21:23',NULL,NULL),(288,'FILLING','MF25000MFB-PD','MIXED FRUIT MUFFIN FILLING 25KG BUCKET','Nos','FG',1,2000,2004,2000,1000,2,1,2000,2000,25,33,1,0,'2025-07-01 22:21:23',NULL,NULL),(289,'JAM','OR0450FMG-PE','ORANGE FARMADE JAM 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(290,'JAM','PN0450FMG-PE','PINEAPPLE FARMADE JAM 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(291,'JAM','MF0450FMG-PE','MIXED FRUIT FARMADE JAM 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(292,'JAM','ST0450FMG-PE','STRAWBERRY FARMADE JAM 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(293,'JAM','MG0450FMG-PE','MANGO FARMADE JAM 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(294,'JAM','OR0450JTG-PE','ORANGE JAM TAMARA 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(295,'JAM','MF0450JTG-PE','MIXED FRUIT JAM TAMARA 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(296,'JAM','ST0450JTG-PE','STRAWBERRY JAM TAMARA 450GM GLASS BOTTLE X 12','Nos','FG',5.46,2000,1365,1365,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(297,'RTD','NM1000CNP-PD','NEELAM MANGO CONCENTRATE AL KABIR 1KG POUCH','Nos','FG',1,1000,900,900,1000,1,12,900,10800,25,180,1,0,'2025-07-01 22:21:23',NULL,NULL),(298,'JAM','OM4000JMP-D','ORANGE MARMALADE JAM 4KG PET JAR','Nos','FG',16,2000,1800,1800,1000,2,4,113,452,25,8,1,0,'2025-07-01 22:21:23',NULL,NULL),(299,'JAM','AT0370RAG-PE','APRICOT JAM ROYAL ARM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,1125,1125,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(300,'JAM','PN0370RAG-PE','PINEAPPLE JAM ROYAL ARM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,1125,1125,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(301,'JAM','MG0370RAG-PE','MANGO JAM ROYAL ARM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,1125,1125,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(302,'JAM','RP0370RAG-PE','RASPBERRY JAM ROYAL ARM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,1125,1125,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(303,'JAM','MF0370RAG-PE','MIXED FRUIT JAM ROYAL ARM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,1125,1125,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(304,'JAM','ST0370RAG-PE','STRAWBERRY JAM ROYAL ARM 370GM GLASS BOTTLE X 12','Nos','FG',4.5,2000,1125,1125,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(305,'RTD','MG1000GFP-PD','MANGO GO FRUIT 1LTR PET BOTTLE X 12','Nos','FG',12.6,2100,2100,2100,1000,2,12,167,2004,25,33,1,0,'2025-07-01 22:21:23',NULL,NULL),(306,'JAM','MF5000PFJ-PE','MIXED FRUIT JAM FOOD PLANET 5KG JAR X 4','Nos','FG',20,2000,2004,2000,1000,2,4,100,400,25,7,1,0,'2025-07-01 22:21:23',NULL,NULL),(307,'','ITEM-SFG656','NATURAL STRAWBERRY FRUIT PREPARATION','Nos','FG',3,1000,700,700,1000,1,1,0,0,25,12,1,0,'2025-07-01 22:21:23',NULL,NULL),(308,'JAM','RA1000JMP-E','RED APPLE JAM 1KG EXPORT X 12 YEMEN','Nos','FG',12.12,2000,1800,1800,1000,2,12,149,1788,25,30,1,0,'2025-07-01 22:21:23',NULL,NULL),(309,'JAM','ST1000JMP-E','STRAWBERRY JAM 1KG X 12 EXPORT YEMEN','Nos','FG',12.12,2000,1800,1800,1000,2,12,149,1788,25,30,1,0,'2025-07-01 22:21:23',NULL,NULL),(310,'JAM','MF1000JMP-E','MIXED FRUIT JAM 1KG YEMEN','Nos','FG',12.12,2000,1800,1800,1000,2,12,149,1788,25,30,1,0,'2025-07-01 22:21:23',NULL,NULL),(311,'JAM','ST0350JMG-E','STRAWBERRY JAM 350GM GLASS BOTTLE X 12','Nos','FG',4.26,2000,1065,1065,1000,1,12,250,3000,25,50,1,0,'2025-07-01 22:21:23',NULL,NULL),(312,'JAM','','MALAS STRAWBERRY JAM 1KG X 12 EXPORT YEMEN','Nos','FG',12.12,2000,1800,1800,1000,2,12,149,1788,25,30,1,0,'2025-07-01 22:21:23',NULL,NULL),(313,'CRUSH','MG0750CRP-D','MANGO CRUSH 750ML PET BOTTLE PLAIN','Nos','FG',11.16,2000,2160,2000,1000,2,12,179,2148,25,36,1,0,'2025-07-01 22:21:23',NULL,NULL),(314,'CRUSH','LI0750CRP-D','LITCHI CRUSH 750ML PET BOTTLE','Nos','FG',11.16,2000,1800,1800,1000,2,12,161,1932,25,32,1,0,'2025-07-01 22:21:23',NULL,NULL),(315,'CRUSH','LI0750CRP-E','MALAS LITCHI CRUSH 750ML X 12','Nos','FG',11.16,2000,1800,1800,1000,2,12,161,1932,25,32,1,0,'2025-07-01 22:21:23',NULL,NULL),(316,'CRUSH','LI1000CRP-DMT','LITCHI CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,2000,1800,1800,1000,2,12,120,1440,25,24,1,0,'2025-07-01 22:21:23',NULL,NULL),(317,'CRUSH','LI5000CRP-D','LITCHI CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,2000,1800,1800,1000,2,2,144,288,25,5,1,0,'2025-07-01 22:21:23',NULL,NULL),(318,'','RP3000FNP-PD','RASPBERRY FRUIT PREPARATION NATURALS 3KG POUCH X 4','nos','FG',12,500,400,400,1000,0,4,33,132,25,2,1,0,'2025-07-01 22:21:23',NULL,NULL),(319,'','ST3000FNP-PD','STRAWBERRY FRUIT PREP\'N NATURALS 3KG POUCH X 4','nos','FG',12,500,400,400,1000,0,4,33,132,25,2,1,0,'2025-07-01 22:21:23',NULL,NULL),(320,'JAM','MB2500JMB-E','MIXED BERRY JAM 2.5KG BUCKET X 4 EXPORT','nos','FG',10.02,1000,800,800,1000,1,4,80,320,25,5,1,0,'2025-07-01 22:21:23',NULL,NULL),(321,'JAM','MG2500JMB-E','MANGO JAM 2.5KG BUCKET X 4 EXPORT','nos','FG',10.02,1000,800,800,1000,1,4,80,320,25,5,1,0,'2025-07-01 22:21:23',NULL,NULL),(322,'JAM','MF2500JMB-E','MIXED FRUIT JAM 2.5KG BUCKET X 4 EXPORT','nos','FG',10.02,1000,800,800,1000,1,4,80,320,25,5,1,0,'2025-07-01 22:21:23',NULL,NULL),(323,'JAM','PN2500JMB-E','PINEAPPLE JAM 2.5KG BUCKET X 4 EXPORT','nos','FG',10.02,1000,800,800,1000,1,4,80,320,25,5,1,0,'2025-07-01 22:21:23',NULL,NULL),(324,'JAM','PF2500JMB-E','PASSION FRUIT JAM 2.5KG BUCKET X 4 EXPORT','nos','FG',10.02,1000,800,800,1000,1,4,80,320,25,5,1,0,'2025-07-01 22:21:23',NULL,NULL),(326,'JAM','PN5000FVP-PE','FRUIT VALLEY PINEAPPLE JAM 5KG PET JAR X 4','nos','FG',20.04,2000,1800,1800,1000,2,4,90,360,25,6,1,0,'2025-07-01 22:21:23',NULL,NULL),(327,'JELLY','ITEM-SFG160','MAZELLO KACHA AAM JELLY','Nos','FG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(328,'JELLY','ITEM-SFG364','STRAWBERRY FRUTZA XL (STICK)','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(329,'JELLY','ITEM-SFG159','MAZELLO GUAVA JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(330,'JELLY','ITEM-SFG444','COLA JELLY FRUIT STONE STICK','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(331,'JELLY','ITEM-SFG222','D\'MART MAZZA STRAWBERRY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(332,'JELLY','ITEM-SFG168','MELLO JELS ORANGE','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(333,'JELLY','ITEM-SFG157','MAZELLO ORANGE JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(334,'JELLY','ITEM-SFG443','MANGO MASALA JELLY MAZZA STICK','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(335,'JELLY','ITEM-SFG158','MAZELLO STRAWBERRY JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(336,'JELLY','ITEM-SFG170','MELLO JELS GRAPE','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(337,'JELLY','ITEM-SFG161','MAZELLO LITCHI JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(338,'JELLY','ITEM-SFG375','GUAVA MASALA FRUTZA XL (STICK)','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(339,'JELLY','ITEM-SFG219','D\'MART MAZZA GUAVA','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(340,'JELLY','ITEM-SFG483','ORANGE JELLY DMART','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(341,'JELLY','ITEM-SFG068','STRAWBERRY FROOGLE','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(342,'JELLY','ITEM-SFG404','IMLI MASALA FRUTZA XL (STICK)','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(343,'JELLY','ITEM-SFG302','ASLI STRAWBERRY JELLY ORIENT FOOD','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(344,'JELLY','ITEM-SFG303','ASLI KACCHA AAM JELLY ORIENT FOOD','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(345,'JELLY','ITEM-SFG318','ASLI ORANGE JELLY ORIENT FOOD','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(346,'JELLY','ITEM-SFG319','ASLI IMALI JELLY ORIENT FOOD','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(347,'JELLY','ITEM-SFG441','IMLI MASALA JELLY MAZZA STICK','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(348,'JELLY','ITEM-SFG018','GUAVA FROOGLE','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(349,'JELLY','ITEM-SFG020','IMLI FROOGLE','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(350,'JELLY','ITEM-SFG023','KACHI KAIRI FROOGLE','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(351,'JELLY','ITEM-SFG035','LITCHI FROOGLE','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(352,'JELLY','ITEM-SFG263','FRUITSTONE IMLI MASALA','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(353,'JELLY','ITEM-SFG169','MELLO JELS STRAWBERRY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(354,'JELLY','ITEM-SFG421','GUAVA MASALA FRUIT STONE','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(355,'JELLY','ITEM-SFG264','FRUITSTONE GREEN MANGO MASALA','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(356,'JELLY','ITEM-SFG478','GRAPE JELLY DMART','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(357,'JELLY','ITEM-SFG439','LOTTE GUAVA JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(358,'JELLY','ITEM-SFG438','LOTTE ORANGE JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(359,'JELLY','ITEM-SFG440','LOTTE STRAWBERRY JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(360,'JELLY','ITEM-SFG374','GREEN MANGO MASALA FRUTZA XL (STICK)','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(361,'JELLY','ITEM-SFG296','STRAWBERRY FROOGLE UNION EXPORT','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(362,'JELLY','ITEM-SFG058','PINEAPPLE FROOGLE','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(363,'JELLY','ITEM-SFG534','FRUITSTONE STRAWBERRY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(364,'JELLY','ITEM-SFG552','KALA KHATTA JELLY MAZZA STICK','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(365,'JELLY','ITEM-SFG551','JEERA MASALA JELLY MAZZA STICK','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(366,'JELLY','ITEM-SFG535','STRAWBERRY MAZELLO STICK','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(367,'JELLY','ITEM-SFG567','ITC RAW MANGO MASALA JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(368,'JELLY','ITEM-SFG566','ITC IMLI MASALA JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(369,'JELLY','ITEM-SFG577','WATERMELON MELLOJEL','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(370,'JELLY','ITEM-SFG580','ORANGE POPS D MART','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(371,'JELLY','ITEM-SFG581','GRAPES POPS D MART','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(372,'JELLY','ITEM-SFG617','STRAWBERRY KOSHAMBH JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(373,'JELLY','ITEM-SFG618','ORANGE KOSHAMBH JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(374,'JELLY','ITEM-SFG669','Orange jelly Fruitza XL','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(375,'JELLY','ITEM-SFG670','Litchi jelly Fruitza XL','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(376,'JELLY','ITEM-SFG560','JELLY TRAIL','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(377,'JELLY','ITEM-SFG686','KACHA AAM KOSHAMBH JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(378,'JELLY','ITEM-SFG687','GUAVA KOSHAMBH JELLY','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(379,'JELLY','ITEM-SFG579','COLA JELLY FRUTZA XL (STICK)','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(380,'JELLY','ITEM - SFG636','MANGO MASALA JELLY DS GROUP','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(381,'JELLY','ITEM- SFG635','GUAVA MASALA JELLY DS GROUP','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(382,'JELLY','ITEM-SFG634','IMLI MASALA JELLY DS GROUP','Kg','SFG',1,900,850,850,1000,0,0,850,0,10,0,1,0,'2025-07-01 22:21:23',NULL,NULL),(383,'SAUCE','CH1000CKP-D','CHOCOLATE SAUCE CAKE DRESSING 1LTR PET BOTTLE X 12','Nos','FG',15.6,2700,4290,2700,1000,3,12,173,2076,25,35,1,0,'2025-07-01 22:21:23',NULL,NULL),(384,'SYRUP','KK1000SYP-D','KALA KHATTA SYRUP 1000ML PET BOTTLE','Nos','FG',16.2,3000,5265,3000,1000,3,12,185,2220,25,37,1,0,'2025-07-01 22:21:23',NULL,NULL),(385,'SYRUP','RO1000SYP-DMT','ROSE SYRUP 1000ML PET BOTTLE MT','Nos','FG',15.9,3000,5167.5,3000,1000,3,12,189,2268,25,38,1,0,'2025-07-01 22:21:23',NULL,NULL),(386,'SYRUP','VR1000SYP-D','VARIYALI SYRUP 1000ML PET BOTTLE','Nos','FG',16.2,3000,5265,3000,1000,3,12,185,2220,25,37,1,0,'2025-07-01 22:21:23',NULL,NULL),(387,'SAUCE','MC1000SCP-D','MOCHA SAUCE 1LTR PET BOTTLE X 12','Nos','FG',15.6,2500,4290,2500,1000,3,12,160,1920,25,32,1,0,'2025-07-01 22:21:23',NULL,NULL),(388,'SYRUP','WT1000SYP-D','WATERMELON SYRUP 1000ML PET BOTTLE','Nos','FG',16.2,2450,5265,2450,1000,2,12,151,1812,25,30,1,0,'2025-07-01 22:21:23',NULL,NULL),(389,'CORDIAL','LI1000COP-D','LIME CORDIAL 1LTR PET BOTTLE','Nos','FG',15.6,3000,5070,3000,1000,3,12,192,2304,25,38,1,0,'2025-07-01 22:21:23',NULL,NULL),(390,'SAUCE','CH0200CSP-D','CHOCOLATE SAUCE 200ML PET BOTTLE','Nos','FG',6.24,2200,624,624,1000,1,24,100,2400,25,40,1,0,'2025-07-01 22:21:23',NULL,NULL),(391,'SYRUP','MG0250SYP-E','MANGO SYRUP 250ML PET BOTTLE X 24','Nos','FG',7.8,3000,3000.08,3000,1000,3,24,385,9240,25,154,1,0,'2025-07-01 22:21:23',NULL,NULL),(392,'SYRUP','OR0250SYP-E','ORANGE SYRUP 250ML PET BOTTLE X 24','Nos','FG',7.8,3000,3000.08,3000,1000,3,24,385,9240,25,154,1,0,'2025-07-01 22:21:23',NULL,NULL),(393,'SYRUP','ST0250SYP-E','STRAWBERRY SYRUP 250ML PET BOTTLE X 24','Nos','FG',7.8,3000,3000.08,3000,1000,3,24,385,9240,25,154,1,0,'2025-07-01 22:21:23',NULL,NULL),(394,'SYRUP','RO0250SYP-D','ROSE SYRUP 250ML PET BOTTLE X 24','Nos','FG',7.98,3000,1150,1150,1000,1,24,144,3456,25,58,1,0,'2025-07-01 22:21:23',NULL,NULL),(395,'MOCKTAIL','GM0250MKP-D','GREENMINT MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:23',NULL,NULL),(396,'MOCKTAIL','BL0250MKP-D','BLUE CURACAO MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(397,'MOCKTAIL','TM0250MKP-D','TRANSPARENT MINT MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,2000,2000,2000,1000,2,42,147,6174,25,103,1,0,'2025-07-01 22:21:24',NULL,NULL),(398,'MOCKTAIL','GR0250MKP-D','GRENADINE MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(399,'MOCKTAIL','KM0250MKP-D','KOKUM MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(400,'MOCKTAIL','GN0250MKP-D','GINGER & LIME MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(401,'MOCKTAIL','VN0250MKP-D','VANILLA MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(402,'MOCKTAIL','PC0250MKP-D','PINA COLADA MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(403,'MOCKTAIL','CM0250MKP-D','CARAMEL MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(404,'MOCKTAIL','PH0250MKP-D','PEACH MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(405,'MOCKTAIL','LT0250MKP-D','LEMON ICE TEA MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(406,'MOCKTAIL','PI0250MKP-D','PEACH ICE TEA MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(407,'MOCKTAIL','HZ0250MKP-D','HAZELNUT MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(408,'MOCKTAIL','GP0250MKP-D','GRAPE MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(409,'MOCKTAIL','RP0250MKP-D','RASPBERRY MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,3000.08,3000,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(410,'MOCKTAIL','IC0250MKP-D','IRISH COFFEE MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,2999.75,2999.75,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(411,'MOCKTAIL','CP0250MKP-D','CITRUS PUNCH MOCKTAIL 250ML PET BOTTLE','Nos','FG',13.65,3000,2999.75,2999.75,1000,3,42,220,9240,25,154,1,0,'2025-07-01 22:21:24',NULL,NULL),(412,'SAUCE','CH5000CKP-D','CHOCOLATE SAUCE CAKE DRESSING 5LTR PET BOTTLE X 2','Nos','FG',13,2600,3120,2600,1000,3,2,200,400,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(413,'MOCKTAIL','GM5000MKP-D','GREENMINT MOCKTAIL 5LTR PET BOTTLE','Nos','FG',13,3000,3120,3000,1000,3,2,231,462,25,8,1,0,'2025-07-01 22:21:24',NULL,NULL),(414,'SYRUP','RO5000SYP-D','ROSE SYRUP 5LTR PET BOTTLE','Nos','FG',13.5,3000,3240,3000,1000,3,2,222,444,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(415,'CRUSH','PN5000CRP-D','PINEAPPLE CRUSH 5LTR PET BOTTLE X 2','Nos','FG',12.5,2800,3324,2800,1000,3,2,224,448,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(416,'CORDIAL','BL5000MKP-D','BLUE CURACAO CORDIAL 5LTR','Nos','FG',13,3000,3120,3000,1000,3,2,231,462,25,8,1,0,'2025-07-01 22:21:24',NULL,NULL),(417,'SYRUP','BC5000RPP-E','Black Currant Syrup Royal Paan 5ltr Pet Bottle','Nos','FG',13,3000,3120,3000,1000,3,2,231,462,25,8,1,0,'2025-07-01 22:21:24',NULL,NULL),(418,'SYRUP','KH5000RPP-E','KHUS SYRUP ROYAL PAAN 5LTR PET BOTTLE X 2','Nos','FG',13.3,2100,3192,2100,1000,2,2,158,316,25,5,1,0,'2025-07-01 22:21:24',NULL,NULL),(419,'SYRUP','RO5000RPP-E','ROSE SYRUP ROYAL PAAN 5LTR PET BOTTLE X 2 EXPORT','Nos','FG',13.5,2100,324,324,1000,0,2,24,48,25,1,1,0,'2025-07-01 22:21:24',NULL,NULL),(420,'CRUSH','OR5000CRP-D','ORANGE CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,2800,3000,2800,1000,3,2,224,448,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(421,'CRUSH','MG5000CRP-D','MANGO CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,2800,3000,2800,1000,3,2,224,448,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(422,'CRUSH','GA5000CRP-D','GREEN APPLE CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,2800,3000,2800,1000,3,2,224,448,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(423,'CRUSH','LI5000CRP-D','LITCHI CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,2800,3000,2800,1000,3,2,224,448,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(424,'CRUSH','BC5000CRP-D','BLACK CURRANT CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,2800,3000,2800,1000,3,2,224,448,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(425,'CRUSH','BR5000CRP-D','BLUEBERRY CRUSH 5LTR PET BOTTLE X 2','Nos','FG',12.5,2800,3000,2800,1000,3,2,224,448,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(426,'CRUSH','BS5000CRP-D','BUTTERSCTOCH CRUSH 5LTR PET BOTTLE','Nos','FG',12.5,2800,3000,2800,1000,3,2,224,448,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(427,'SYRUP','SF5000RPP-E','SAFFRON SYRUP ROYAL PAAN 5LTR PET BOTTLEX2 EXPORT','Nos','FG',13.5,3000,3240,3000,1000,3,2,222,444,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(428,'SYRUP','PB5000RPP-PE','PAAN BANARASI SYRUP ROYAL PAAN 5LTR X 2 EXPORT','Nos','FG',13.5,3000,3240,3000,1000,3,2,222,444,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(429,'SYRUP','CB5000RPP-PE','COOKIER BUTTER SYRUP ROYAL PAAN 5LTR X 2 EXPORT','Nos','FG',13.5,3000,3240,3000,1000,3,2,222,444,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(430,'SYRUP','MB5000RPP-PE','MANGO BUTTER SYRUP ROYAL PAAN 5LTR X 2 EXPORT','Nos','FG',13.5,3000,3240,3000,1000,3,2,222,444,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(431,'SYRUP','RK5000RPP-PE','RABRI KULFI SYRUP ROYAL PAAN 5LTR X 2 EXPORT','Nos','FG',13.5,3000,3240,3000,1000,3,2,222,444,25,7,1,0,'2025-07-01 22:21:24',NULL,NULL),(432,'SAUCE','CH0500CSP-D','CHOCOLATE SAUCE 500ML PET BOTTLE','Nos','FG',7.8,2200,1560,1560,1000,2,12,200,2400,25,40,1,0,'2025-07-01 22:21:24',NULL,NULL),(433,'DUCHESS','GR0539DCP-PE','GRAPE DUCHESS 539GM PET BOTTLE X 18','Nos','FG',10,2100,1000,1500,1000,2,18,150,2700,25,45,1,0,'2025-07-01 22:21:24',NULL,NULL),(434,'DUCHESS','ST0539DCP-PE','STRAWBERRY DUCHESS 539GM PET BOTTLE X 18','Nos','FG',10,2100,1500,1500,1000,2,18,150,2700,25,45,1,0,'2025-07-01 22:21:24',NULL,NULL),(435,'CORDIAL','HS0710FPG-PE','HUSNI FRUIT CORDIAL 710ML GLASS BOTTLE X 12','Nos','FG',11.08,3000,3324,3000,1000,3,12,271,3252,25,54,1,0,'2025-07-01 22:21:24',NULL,NULL),(436,'SYRUP','RO0710FHG-E','FARHAD ROSE SYRUP 710ML GLASS BOTTLE X 12','Nos','FG',11.5,2000,3450,2000,1000,2,12,174,2088,25,35,1,0,'2025-07-01 22:21:24',NULL,NULL),(437,'SYRUP','HS0710FDG-PE','HUSNI FRUIT DRINK 710ML GLASS BOTTLE X 12','Nos','FG',11.08,3000,3324,3000,1000,3,12,271,3252,25,54,1,0,'2025-07-01 22:21:24',NULL,NULL),(438,'SYRUP','AR0710FCG-PE','ARMELA 710 ML EXPORT','Nos','FG',11.08,3000,3324,3000,1000,3,12,271,3252,25,54,1,0,'2025-07-01 22:21:24',NULL,NULL),(439,'CORDIAL','BM0710FCG-E','BIMSO FRUIT CORDIAL 710ML GLASS BOTTLE X 12','Nos','FG',11.08,3000,3324,3000,1000,3,12,271,3252,25,54,1,0,'2025-07-01 22:21:24',NULL,NULL),(440,'CORDIAL','MA0710FCG-E','MALAS FRUIT CORDIAL 710ML GLASS BOTTLE X 12','Nos','FG',11.08,3000,3324,3000,1000,3,12,271,3252,25,54,1,0,'2025-07-01 22:21:24',NULL,NULL),(441,'CORDIAL','TX0710FCG-E','TEXAS FRUIT CORDIAL 710ML GLASS BOTTLE X 12','Nos','FG',11.08,3000,3324,3000,1000,3,12,271,3252,25,54,1,0,'2025-07-01 22:21:24',NULL,NULL),(442,'SYRUP','MG0750SYP-D','ALPHANSO MANGO SYRUP 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(443,'SYRUP','KA0750SYP-D','KACHA AAM SYRUP 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(444,'SYRUP','OR0750SYP-D','ORANGE SYRUP 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(445,'SYRUP','RO0750SYP-D','ROSE SYRUP 750ML PET BOTTLE','Nos','FG',12.15,3000,3948.75,3000,1000,3,12,247,2964,25,49,1,0,'2025-07-01 22:21:24',NULL,NULL),(446,'MOCKTAIL','KM0750COP-D','KOKUM MOCKTAIL 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(447,'CORDIAL','BL0750MKP-D','BLUE CURACAO CORDIAL 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(448,'MOCKTAIL','TM0750MKP-D','TRANSPARENT MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(449,'MOCKTAIL','GM0750MKP-D','GREENMINT MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(450,'SYRUP','KK0750SYP-D','KALA KHATTA SYRUP 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(451,'MOCKTAIL','VN0750MKP-D','VANILLA MOCKTAIL 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(452,'SQUASH','LM0750SQP-D','LEMON SQUASH 750ML PET BOTTLE','Nos','FG',11.52,3000,3240,3000,1000,3,12,260,3120,25,52,1,0,'2025-07-01 22:21:24',NULL,NULL),(453,'SQUASH','MG0750SQP-D','MANGO SQUASH 750ML PET BOTTLE','Nos','FG',11.52,3000,3240,3000,1000,3,12,260,3120,25,52,1,0,'2025-07-01 22:21:24',NULL,NULL),(454,'SQUASH','OR0750SQP-D','ORANGE SQUASH 750ML PET BOTTLE','Nos','FG',11.52,3000,3510,3000,1000,3,12,260,3120,25,52,1,0,'2025-07-01 22:21:24',NULL,NULL),(455,'CORDIAL','LI0750COP-D','LIME CORDIAL 750ML PET BOTTLE','Nos','FG',11.7,3000,3510,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(456,'CORDIAL','LB0750SQP-D','LEMON BARLEY WATER CORDIAL 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(457,'SYRUP','PN0750SYP-D','PINEAPPLE SYRUP 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(458,'SYRUP','JR0750SHP-D','JEERA SHIKANJI 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,2000,2000,1000,2,12,171,2052,25,34,1,0,'2025-07-01 22:21:24',NULL,NULL),(459,'MOCKTAIL','GN0750COP-D','GINGER & LIME MOCKTAIL 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(460,'MOCKTAIL','IC0750MKP-D','IRISH COFFEE MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(461,'SYRUP','WT0750SYP-D','WATERMELON SYRUP 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(462,'SYRUP','ST0750SYP-D','STRAWBERRY SYRUP 750ML PET BOTTLE','Nos','FG',12.15,3000,3948.75,3000,1000,3,12,247,2964,25,49,1,0,'2025-07-01 22:21:24',NULL,NULL),(463,'SYRUP','PT0750SYP-D','PAAN SHOT SYRUP 750ML PET BOTTLE','Nos','FG',12.15,3000,3948.75,3000,1000,3,12,247,2964,25,49,1,0,'2025-07-01 22:21:24',NULL,NULL),(464,'SYRUP','JR0750COP-D','JEERA MASALA SYRUP 750ML PET BOTTLE','Nos','FG',12.15,3000,3948.75,3000,1000,3,12,247,2964,25,49,1,0,'2025-07-01 22:21:24',NULL,NULL),(465,'SYRUP','KH0750SYP-D','KHUS SYRUP 750ML PET BOTTLE','Nos','FG',12.15,3000,3948.75,3000,1000,3,12,247,2964,25,49,1,0,'2025-07-01 22:21:24',NULL,NULL),(466,'MOCKTAIL','PI0750MKP-D','PEACH ICE TEA MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(467,'MOCKTAIL','LT0750MKP-D','LEMON ICE TEA MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(468,'MOCKTAIL','GR0750MKP-D','GRENADINE MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(469,'CORDIAL','PC0750MKP-D','PINA COLADA CORDIAL 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(470,'MOCKTAIL','HZ0750MKP-D','HAZELNUT MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(471,'MOCKTAIL','CM0750MKP-D','CARAMEL MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(472,'SYRUP','RO0750SYP-E','MALAS ROSE SYRUP 750ML X 12','Nos','FG',12.15,3000,3948.75,3000,1000,3,12,247,2964,25,49,1,0,'2025-07-01 22:21:24',NULL,NULL),(473,'SYRUP','WT0750SYP-E','WATERMELON SYRUP 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(474,'SYRUP','KK0750SYP-E','MALAS KALA KHATTA SYRUP 750ML X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(475,'SYRUP','PT0750SYP-E','PAAN SHOT SYRUP 750ML PET BOTTLE X 12','Nos','FG',12.15,3000,3802.5,3000,1000,3,12,247,2964,25,49,1,0,'2025-07-01 22:21:24',NULL,NULL),(476,'MOCKTAIL','TM0750MKP-E','TRANSPARENT MINT MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,2000,3802.5,2000,1000,2,12,171,2052,25,34,1,0,'2025-07-01 22:21:24',NULL,NULL),(477,'MOCKTAIL','BL0750MKP-E','BLUE CURACAO MOCKTAIL 750ML PET BOTTLE','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(478,'MOCKTAIL','PH0750MKP-E','PEACH MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(479,'MOCKTAIL','KM0750MKP-E','KOKUM MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(480,'MOCKTAIL','PI0750MKP-E','PEACH ICE TEA MOCKTAIL 750 ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(481,'MOCKTAIL','LT0750MKP-E','LEMON ICE TEA MOCKTAIL 750 ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(482,'MOCKTAIL','RP0750MKP-E','RASPBERRY MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(483,'MOCKTAIL','GR0750MKP-E','GRAPE MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(484,'MOCKTAIL','GM0750MKP-E','GREEN MINT MOCKTAIL 750 ML PET BOTTLE X 12','Nos','FG',11.7,2700,3802.5,2700,1000,3,12,231,2772,25,46,1,0,'2025-07-01 22:21:24',NULL,NULL),(485,'MOCKTAIL','CP0750MKP-D','CITRUS PUNCH MOCKTAIL 750ML PET BOTTLE X 12','Nos','FG',11.7,3000,3802.5,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(486,'SYRUP','VR0750SYP-D','VARIYALI SYRUP 750ML PET BOTTLE','Nos','FG',12.15,3000,3802.5,3000,1000,3,12,247,2964,25,49,1,0,'2025-07-01 22:21:24',NULL,NULL),(487,'SYRUP','LS0750SYP-D','LIQUID SUGAR SYRUP 750ML PET BOTTLE X 12','Nos','FG',11.7,2000,2340,2000,1000,2,12,171,2052,25,34,1,0,'2025-07-01 22:21:24',NULL,NULL),(488,'CRUSH','GU0750CRP-D','GUAVA CRUSH 750ML PET BOTTLE','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,25,50,1,0,'2025-07-01 22:21:24',NULL,NULL),(489,'CRUSH','MG0750CRP-D','MANGO CRUSH 750ML PET BOTTLE','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,25,50,1,0,'2025-07-01 22:21:24',NULL,NULL),(490,'CRUSH','OR0750CRP-D','ORANGE CRUSH 750ML PET BOTTLE','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,25,50,1,0,'2025-07-01 22:21:24',NULL,NULL),(491,'CRUSH','LI0750CRP-D','LITCHI CRUSH 750ML PET BOTTLE','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,25,50,1,0,'2025-07-01 22:21:24',NULL,NULL),(492,'SYRUP','SR0750HSP-D','SHARBAT- E- RUHAAN 750ML PET BOTTLE','Nos','FG',11.7,2000,3510,2000,1000,2,12,171,2052,25,34,1,0,'2025-07-01 22:21:24',NULL,NULL),(493,'MOCKTAIL','PF0750MKP-D','PASSION FRUIT MOCKTAIL 750ML X 12','Nos','FG',11.7,2100,3510,2100,1000,2,12,179,2148,25,36,1,0,'2025-07-01 22:21:24',NULL,NULL),(494,'MOCKTAIL','PH0750MKP-D','PEACH MOCKTAIL 750ML PET BOTTLE','Nos','FG',11.7,3000,3510,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(495,'MOCKTAIL','GP0750MKP-D','GRAPE MOCKTAIL 750ML PET BOTTLE','Nos','FG',11.7,3000,3510,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:24',NULL,NULL),(496,'CRUSH','BC0750CRP-D','BLACK CURRANT CRUSH 750ML PET BOTTLE','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,25,50,1,0,'2025-07-01 22:21:24',NULL,NULL),(497,'CRUSH','BR0750CRP-D','BLUEBERRY CRUSH 750ML PET BOTTLE','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,25,50,1,0,'2025-07-01 22:21:24',NULL,NULL),(498,'CRUSH','BS0750CRP-D','BUTTERSCOTCH CRUSH 750ML PET BOTTLE','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,25,50,1,0,'2025-07-01 22:21:24',NULL,NULL),(499,'CRUSH','GA0750CRP-D','GREEN APPLE CRUSH 750ML PET BOTTLE','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,25,50,1,0,'2025-07-01 22:21:24',NULL,NULL),(500,'CRUSH','PN0750CRP-D','PINEAPPLE CRUSH 750ML PET BOTTLE','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,25,50,1,0,'2025-07-01 22:21:25',NULL,NULL),(501,'MOCKTAIL','RP0750MKP-D','RASPBERRY MOCKTAIL 750ML PET BOTTLE','Nos','FG',11.7,3000,3510,3000,1000,3,12,256,3072,25,51,1,0,'2025-07-01 22:21:25',NULL,NULL),(502,'SYRUP','CO5000TSP-D','COLA TURMERIC SYRUP 5LTR PET BOTTLE X 2','Nos','FG',12.5,2625,3000,2625,1000,3,2,210,420,25,7,1,0,'2025-07-01 22:21:25',NULL,NULL),(503,'SYRUP','GN5000TSP-D','GINGER TURMERIC SYRUP 5LTR PET BOTTLE X 2','Nos','FG',12.5,2625,3000,2625,1000,3,2,210,420,25,7,1,0,'2025-07-01 22:21:25',NULL,NULL),(504,'SYRUP','HZ5000TSP-D','HAZELNUT TURMERIC SYRUP 5LTR PET BOTTLE X 2','Nos','FG',12.5,2625,3000,2625,1000,3,2,210,420,25,7,1,0,'2025-07-01 22:21:25',NULL,NULL),(505,'SYRUP','ML5000TSP-D','MULBERRY TURMERIC SYRUP 5LTR PET BOTTLE X 2','Nos','FG',12.5,2625,3000,2625,1000,3,2,210,420,25,7,1,0,'2025-07-01 22:21:25',NULL,NULL),(506,'SYRUP','MPO5000TSP-D','MANGO+ORANGE+PEACH TURMERIC SYRUP 5LTR PET BOTTLE','Nos','FG',12.5,2625,3000,2625,1000,3,2,210,420,25,7,1,0,'2025-07-01 22:21:25',NULL,NULL),(507,'SYRUP','PF5000TSP-D','PASSION FRUIT TURMERIC SYRUP 5LTR PET BOTTLE X 2','Nos','FG',12.5,2625,3000,2625,1000,3,2,210,420,25,7,1,0,'2025-07-01 22:21:25',NULL,NULL),(508,'DUCHESS','GR0539DCP-PE12','GRAPE DUCHESS 539GM PET BOTTLE X 12','Nos','FG',6.47,1500,1550,1500,1000,2,12,232,2784,26,46,1,0,'2025-07-01 22:21:25',NULL,NULL),(509,'DUCHESS','ST0539DCP-PE12','STRAWBERRY DUCHESS 539GM PET BOTTLE X 12','Nos','FG',6.47,1500,1550,1500,1000,2,12,232,2784,26,46,1,0,'2025-07-01 22:21:25',NULL,NULL),(510,'CRUSH','BC1000CRP-DMT','MALAS BLACK CURRANT CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,2800,3000,2800,1000,3,12,187,2244,22,37,1,0,'2025-07-01 22:21:25',NULL,NULL),(511,'CRUSH','BC0250CRP-D','BLACK CURRANT CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,2800,750,900,1000,1,24,120,2880,22,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(512,'CRUSH','OR0250CRP-D','ORANGE CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,2800,750,900,1000,1,24,120,2880,22,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(513,'CRUSH','MG0250CRP-D','MANGO CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,2800,750,900,1000,1,24,120,2880,22,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(514,'CRUSH','BS0250CRP-D','BUTTER SCOTCH CRUSH 250ML PET BOTTLE X 24','Nos','FG',7.5,2800,750,900,1000,1,24,120,2880,22,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(515,'CRUSH','OR1000CRP-DMT','ORANGE CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,2800,2800,2800,1000,3,12,200,2400,22,40,1,0,'2025-07-01 22:21:25',NULL,NULL),(516,'CRUSH','MG1000CRP-DMT','MANGO CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,2800,2800,2800,1000,3,12,200,2400,22,40,1,0,'2025-07-01 22:21:25',NULL,NULL),(517,'CRUSH','BS1000CRP-DMT','BUTTERSCOTCH CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,2800,2800,2800,1000,3,12,187,2244,22,37,1,0,'2025-07-01 22:21:25',NULL,NULL),(518,'CRUSH','BR1000CRP-DMT','BLUEBERRY CRUSH 1LTR PET BOTTLE X 12','Nos','FG',15,2800,2800,2800,1000,3,12,187,2244,22,37,1,0,'2025-07-01 22:21:25',NULL,NULL),(519,'CRUSH','GA1000CRP-DMT','GREEN APPLE CRUSH 1LTR PET BOTTLE X 12','Nos','FG',15,2800,2800,2800,1000,3,12,187,2244,22,37,1,0,'2025-07-01 22:21:25',NULL,NULL),(520,'CORDIAL','HP0710FCG-PE','HAPPY FRUIT CORDIAL 710ML GLASS BOTTLE X 12','Nos','FG',11.08,3000,3324,3000,1000,3,12,271,3252,25,54,1,0,'2025-07-01 22:21:25',NULL,NULL),(521,'SAUCE','BS1000SUP-D','BUTTERSCOTCH SAUCE 1LTR','Nos','FG',15.6,2800,2800,2800,1000,3,12,179,2148,22,36,1,0,'2025-07-01 22:21:25',NULL,NULL),(522,'CRUSH','BS0750CRP-E','MALAS BUTTERSCOTCH CRUSH 750ML X 12','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,25,50,1,0,'2025-07-01 22:21:25',NULL,NULL),(523,'SYRUP','TN0750RCP-D','THANDAI SYRUP 750ML PET BOTTLE X 12','Nos','FG',12.15,2800,2000,2000,1000,2,12,165,1980,23,33,1,0,'2025-07-01 22:21:25',NULL,NULL),(524,'CRUSH','OR0750CRP-E','MALAS ORANGE CRUSH 750ML X 12','Nos','FG',11.25,2800,3375,2800,1000,3,12,249,2988,22,50,1,0,'2025-07-01 22:21:25',NULL,NULL),(525,'SYRUP','RO0750SYP-E','MALAS ROSE SYRUP 750ML X 12 ','Nos','FG',12.15,3000,3000,3000,1000,3,12,247,2964,22,49,1,0,'2025-07-01 22:21:25',NULL,NULL),(526,'RTD','OR1000RTTP-PD','PENTE VUNA ORANGE RTD 1LTR TETRA PACK X 12','Nos','FG',12.48,3000,3000,3000,1000,3,12,240,2880,22,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(527,'RTD','MF1000RTTP-PD','PENTE VUNA MIXED FRUIT RTD 1LTR TETRA PACK X 12','Nos','FG',12.48,3000,3000,3000,1000,3,12,240,2880,22,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(528,'RTD','ST1000RTTP-PD','PENTE VUNA STRAWBERRY RTD 1LTR TETRA PACK X 12','Nos','FG',12.72,3000,3000,3000,1000,3,12,236,2832,22,47,1,0,'2025-07-01 22:21:25',NULL,NULL),(529,'SYRUP','RO0750CNSP-E','ROSE CANADA SYRUP 750ML PET BOTTLE','Nos','FG',12,3000,3000,3000,1000,3,12,250,3000,22,50,1,0,'2025-07-01 22:21:25',NULL,NULL),(530,'SYRUP','BS0750CNSP-E','BUTTER SCOTCH CANADA SYRUP 750ML PET BOTTLE','Nos','FG',12,3000,3000,3000,1000,3,12,250,3000,22,50,1,0,'2025-07-01 22:21:25',NULL,NULL),(531,'SYRUP','PN0750CNSP-E','PINEAPPLE CANADA SYRUP 750ML PET BOTTLE','Nos','FG',11.7,3000,3000,3000,1000,3,12,256,3072,22,51,1,0,'2025-07-01 22:21:25',NULL,NULL),(532,'SYRUP','KA0750CNSP-E','KACHA AAM CANADA SYRUP 750ML PET BOTTLE','Nos','FG',11.7,3000,3000,3000,1000,3,12,256,3072,22,51,1,0,'2025-07-01 22:21:25',NULL,NULL),(533,'SYRUP','ST0750CNSP-E','STRAWBERRY CANADA SYRUP 750ML PET BOTTLE','Nos','FG',11.7,3000,3000,3000,1000,3,12,256,3072,22,51,1,0,'2025-07-01 22:21:25',NULL,NULL),(534,'SYRUP','PT0750CNSP-E','PAAN SHOT CANADA SYRUP 750ML PET BOTTLE','Nos','FG',11.7,3000,3000,3000,1000,3,12,256,3072,22,51,1,0,'2025-07-01 22:21:25',NULL,NULL),(535,'RTD','GU1000RTTP-PD','PENTE VUNA GUAVA RTD 1LTR TETRA PACK X 12','Nos','FG',12.48,3000,3000,3000,1000,3,12,240,2880,15,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(536,'RTD','MB1000RTTP-PD','PENTE VUNA MIXED BERRY RTD 1LTR TETRA PACK X 12','Nos','FG',12.48,3000,3000,3000,1000,3,12,240,2880,15,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(537,'RTD','ST1000RTTP-PD','PENTE VUNA STRAWBERRY RTD 1LTR TETRA PACK X 12','Nos','FG',12.48,3000,3000,3000,1000,3,12,240,2880,15,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(538,'RTD','PN1000RTTP-PD','PENTE VUNA PINEAPPLE RTD 1LTR TETRA PACK X 12','Nos','FG',12.48,3000,3000,3000,1000,3,12,240,2880,15,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(539,'RTD','LI1000RTTP-PD','PENTE VUNA LITCHI RTD 1LTR TETRA PACK X 12','Nos','FG',12.48,3000,3000,3000,1000,3,12,240,2880,15,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(540,'RTD','CN1000RTTP-PD','PENTE VUNA CRANBERRY RTD 1LTR TETRA PACK X 12','Nos','FG',12.48,3000,3000,3000,1000,3,12,240,2880,15,48,1,0,'2025-07-01 22:21:25',NULL,NULL),(541,'CRUSH','PN1000CRP-DMT','PINEAPPLE CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,2800,2800,2800,1000,3,12,187,2244,22,37,1,0,'2025-07-01 22:21:25',NULL,NULL),(542,'CRUSH','LI1000CRP-DMT','LITCHI CRUSH 1000ML PET BOTTLE MT','Nos','FG',15,2800,2800,2800,1000,3,12,187,2244,22,37,1,0,'2025-07-01 22:21:25',NULL,NULL),(543,'JAM','JM25000INSTJ-PD','JAM-IN','Kg','SFG',440,1500,1400,1400,1000,3,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(544,'JAM','MF25000MFB-PD','MIXED FRUIT MUFFIN FILLING 25KG BUCKET','Kg','SFG',390,750,700,700,1000,2,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(545,'FILLING','CH25000INSTJ-PD','CHOCOLATE CREAM FILL','Kg','SFG',425,900,800,800,1000,2,0,850,0,15,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(546,'JAM','MB10000INSTB-PD','PARLE MIXBERRY FRUIT PASTE','Kg','SFG',370,800,700,700,1000,2,0,850,0,15,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(547,'JAM','OR25000LPB-PD','ORANGE PREPARATION LOTTE 25KG BUCKET','Kg','SFG',480,1100,1050,1050,1000,2,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(548,'JAM','RF25000JMB-PD','RED FRUIT JAM 25KG BUCKET','Kg','SFG',550,1200,1000,1000,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(549,'JAM','MF25000SFB-PD','MIXED FRUIT SANDWICH FILLING 25KG BUCKET','Kg','SFG',350,500,500,500,1000,1,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(550,'JAM','ST25000JIB-PD','STRAWBERRY JAM IN 25KG BUCKET','Kg','SFG',440,1500,1400,1400,1000,3,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(551,'JAM','ST25000MFB-PD','STRAWBERRY MUFFIN FILLING 25KG BUCKET','Kg','SFG',470,700,700,700,1000,1,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(552,'JAM','BC25000JIB-PD','BLACK CURRANT JAM IN 25KG BUCKET','Kg','SFG',440,1500,1400,1400,1000,3,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(553,'PREPRATION','SC20000MAFB-PD','SOUR CHERRY MIO AMORE FLLING 20KG BUCKET','Kg','SFG',410,410,410,410,1000,1,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(554,'FILLING','CH20000WKB-PD','CHOCOLATE KREM WONDER WORKS 20KG BUCKET','Kg','SFG',420,1050,1050,1050,1000,3,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(555,'JAM','OR25000MPB-PD','ORANGE MUFFIN PREPARATION BRITANIA 25KG','Kg','SFG',470,600,600,600,1000,1,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(556,'JAM','ST25000SRB-PD','STRAWBERRY JAM SWISS ROLL 25KG BUCKET','Kg','SFG',390,800,800,750,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(557,'PREPRATION','ST1000OPB-PD','STRAWBERRY ORIPREP FRUIT PREPARATION 1KG','Kg','SFG',90,180,180,180,1000,2,0,850,0,12,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(558,'SYRUP','NG25000INSTB-PD','NOLEN GUR PREPARATION 25KG BUCKET','Kg','SFG',440,900,900,900,1000,2,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(559,'PREPRATION','RP20000DFB-PD','RASPBERRY DRUMFOOD PREPARATION 20KG BUCKET','Kg','SFG',410,850,850,850,1000,2,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(560,'FILLING','CM25000QFB-PD','CAREMAL QATAR FILLING 25KG BUCKET','Kg','SFG',340,700,700,700,1000,2,0,850,0,15,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(561,'SYRUP','VN25000DSB-PD','VANILLA DRUMFOOD SYRUP 25KG BUCKET','Kg','SFG',365,800,800,800,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(562,'JAM','ST10000INSTB-PD','FRUIT PASTE STRAWBERRY JAM UTH SUGAR FREE 10 KG','Kg','SFG',225,450,450,450,1000,2,0,850,0,15,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(563,'PREPRATION','MG20000HPB-PD','MANGO PREPARATION HUL 20KG BUCKET','Kg','SFG',300,300,300,300,1000,1,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(564,'FILLING','CM25000DBB-PD','CAREMAL DREAMBAKE FILLING 25KG BUCKET','Kg','SFG',365,900,800,800,1000,2,0,850,0,15,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(565,'FILLING','CM25000HFB-PD','CAREMAL FILLING HUL 25KG BUCKET','Kg','SFG',425,600,600,600,1000,1,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(566,'JAM','MB25000SRB-PD','MIXED BERRY JAM SWISS ROLL 25KG BUCKET','Kg','SFG',430,1200,1000,1000,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(567,'PREPRATION','ST25000YPB-PD','STRAWBERRY YOGHURT PREPARATION 25KG BUCKET','Kg','SFG',210,400,400,400,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(568,'SAUCE','CH25000MDSB-PD','CHOCOLATE SAUCE MOTHERS DAIRY 25KG BUCKET','Kg','SFG',400,900,800,900,1000,2,0,850,0,15,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(569,'PREPRATION','MB20000YPB-PD','MIXED BERRY YOGHURT PREPARATION 20KG BUCKET','Kg','SFG',375,700,700,700,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(570,'JAM','MF25000QMB-PD','MIXED FRUIT QATAR MILLS JAM 25KG BUCKET','Kg','SFG',435,700,700,700,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(571,'PREPRATION','MB1000OPB-PD','MIXED BERRY ORIPREP FRUIT PREPARATION 1KG','Kg','SFG',90,300,300,300,1000,3,0,850,0,15,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(572,'JAM','PN25000INSTJ-PD','PINEAPPLE SANDWICH FILL 25 KG','Kg','SFG',125,150,125,125,1000,1,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(573,'PREPRATION','GU10000OPB-PD','GUAVA ORIPREP FRUIT PREPARATION 10KG','Kg','SFG',90,300,300,300,1000,3,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(574,'PREPRATION','CR20000INSTB-PD','CHERRY PREPARATION 20KG BUCKET BASKIN & ROBBINS','Kg','SFG',180,350,300,350,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(575,'PREPRATION','BR20000HMPB-PD','BLUEBERRY HAVMOR PREPARATION 20KG BUCKET','Kg','SFG',180,250,250,250,1000,1,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(576,'JAM','ST25000JQB-PD','STRAWBERRY QATAR JAM 25KG BUCKET','Kg','SFG',300,800,800,800,1000,3,0,850,0,15,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(577,'PREPRATION','MB20000MDPB-PD','MIXED BERRY PREPARATION MOTHERS DAIRY 20KG BUCKET','Kg','SFG',475,800,800,800,1000,2,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(578,'PREPRATION','BN20000DFB-PD','BANANA DRUMFOOD PREPARATION 20KG BUCKET','Kg','SFG',500,600,600,600,1000,1,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(579,'JAM','SB25000BNB-PD','STRAWBERRY BANANA BINDER 25KG BUCKET','Kg','SFG',240,400,400,400,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(580,'JAM','BR25000SRB-PD','BLUEBERRY JAM SWISS ROLL 25KG BUCKET','Kg','SFG',440,1200,1000,1000,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(581,'JAM','AT25000SJB-PD','APRICOT SANDWICH JAM 25KG BUCKET','Kg','SFG',350,350,350,350,1000,1,0,850,0,16,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(582,'FILLING','CM25000FLB-PD','CARAMEL FILLING 25KG BUCKET','Kg','SFG',350,700,700,700,1000,2,0,850,0,15,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(583,'JAM','BR25000QFB-PD','BLUEBERRY QATAR FILLING 25KG BUCKET','Kg','SFG',270,500,500,500,1000,2,0,850,0,15,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(584,'PREPRATION','CR20000HMPB-PD','CHERRY HAVMOR PREPARATION 20KG BUCKET','Kg','SFG',180,360,360,360,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(585,'PREPRATION','BR20000DHB-PD','BLUEBERRY FILLING DAYAL HOUSE 20KG BAG','Kg','SFG',90,200,200,200,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(586,'FILLING','FG25000FLB-PD','FIG FILLING 25KG BUCKET','Kg','SFG',300,300,300,300,1000,1,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(587,'JAM','MF25000JJB-PD','MIXED FRUIT JAM SAJ 25KG BUCKET','Kg','SFG',300,600,600,600,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(588,'JAM','MG20000JPB-PD','MANGO JAM PEPSICO 20KG BUCKET','Kg','SFG',300,500,500,500,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(589,'JAM','ST20000JPB-PD','STRAWBERRY JAM PEPSICO 20KG BUCKET','Kg','SFG',300,500,500,500,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(590,'PREPRATION','PN20000OPB-PD','PINEAPPLE ORIPREP FRUIT PREPARATION 20KG BUCKET','Kg','SFG',90,300,300,300,1000,3,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(591,'PREPRATION','GU20000BRB-D','GUAVA PREPARATION 20KG BUCKET BASKIN & ROBBINS','Kg','SFG',96,300,300,300,1000,3,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(592,'PREPRATION','BR10000OPB-PD','BLUEBERRY ORIPREP FRUIT PREPARATION 10 KG','Kg','SFG',100,300,300,300,1000,3,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(593,'JAM','MF20000JPB-PD','MIXED FRUIT JAM PEPSICO 20KG BUCKET','Kg','SFG',400,500,500,500,1000,1,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(594,'JAM','DT25000PLB-PD','DATE PARLE JAM 25KG BUCKET','Kg','SFG',285,500,500,500,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(595,'JAM','BR25000BTB-PD','BLUEBERRY BRITANIA JAM 25KG BUCKET','Kg','SFG',350,500,500,500,1000,1,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(596,'PREPRATION','MB20000DFB-PD','DRUMFOOD MIXED BERRY PASTE 20KG BUCKET','Kg','SFG',250,400,400,400,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(597,'FILLING','FG20000HPPB-PD','FIG PASTE PREPARATION HUL 20KG BUCKET','Kg','SFG',200,500,500,500,1000,3,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(598,'PREPRATION','ST20000EGPB-PD','STRAWBERRY PREPARATION EPIGAMIA 20KG BUCKET','Kg','SFG',460,900,900,1000,1000,2,0,850,0,14,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(599,'GEL','ST2500GZB-D','STRAWBERRY GLAZE GEL','Kg','SFG',15,300,300,300,1000,20,0,850,0,25,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(600,'GEL','PN2500GZB-D','PINEAPPLE GLAZE GEL','Kg','SFG',15,300,300,300,1000,20,0,850,0,25,0,1,0,'2025-07-01 22:21:25',NULL,NULL),(601,'GEL','CH2500GZB-D','CHOCOLATE GLAZE GEL','Kg','SFG',15,300,300,300,1000,20,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(602,'GEL','NT2500GZB-D','NUETRAL GLAZE GEL','Kg','SFG',15,300,300,300,1000,20,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(603,'JAM','ST25000LFB-PD','STRAWBERRY FILLING LOTTE 25KG BUCKET','Kg','SFG',365,600,500,500,1000,1,0,850,0,16,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(604,'PREPRATION','MG25000FPB-PD','MANGO FRUIT PREPARATION 25KG BUCKET','Kg','SFG',375,350,350,350,1000,1,0,850,0,8,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(605,'PREPRATION','BR25000FPB-PD','BLUEBERRY FRUIT PREPARATION 25KG BUCKET','Kg','SFG',300,400,375,375,1000,1,0,850,0,8,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(606,'FILLING','CM25000TFB-PD','CARAMEL TAJIR FILLING 25KG BUCKET','Kg','SFG',350,700,700,700,1000,2,0,850,0,15,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(607,'FILLING','VN20000KPB-PD','VANILLA KREM FILL PREPARATION 20KG BUCKET','Kg','SFG',450,900,900,900,1000,2,0,850,0,16,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(608,'PREPRATION','ST25000DFB-PD','STRAWBERRY DRUMFOOD PREPARATION 25KG BUCKET','Kg','SFG',245,600,500,500,1000,2,0,850,0,16,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(609,'FILLING','BS25000FBB-PD','BUTTER SCOTCH BISKFARM FILLING 25KG BUCKET','kg','SFG',350,700,700,700,1000,2,0,850,0,16,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(610,'SYRUP','KB20000DSB-PD','KESAR BADAM DRUMFOOD SYRUP 20KG BUCKET','Kg','SFG',320,1000,1000,1000,1000,3,0,850,0,16,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(611,'SYRUP','NG25000RSB-PD','NOLEN GUR PREPARATION SAJ 25KG BUCKET','Kg','SFG',440,900,900,900,1000,2,0,850,0,16,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(612,'PREPRATION','PL25000HMPB-PD','PLUM HAVMOR PREPARATION 25KG BUCKET','Kg','SFG',400,400,400,400,1000,1,0,850,0,15,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(613,'PREPRATION','FO25000HSPB-PD','FIG & ORANGE HAVMOR SPREAD 25KG BUCKET','Kg','SFG',400,300,300,300,1000,1,0,850,0,16,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(614,'PREPRATION','BR20000HMPB-PD','BLUEBERRY HAVMOR PREPARATION 20KG BUCKET','Kg','SFG',160,160,160,160,1000,1,0,850,0,13,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(615,'FILLING','CM0600PTT-D','CARAMEL PASTE 600GM TUB X 12','Kg','SFG',330,450,450,450,1000,2,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(616,'JAM','MB25000RBB-PD','MIXED BERRY RITE BITE JAM 25 KG BUCKET','Kg','SFG',225,200,200,200,1000,1,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(617,'JAM','BR25000RBB-PD','BLUEBERRY RITE BITE JAM 25 KG BUCKET','kg','SFG',225,200,200,200,1000,1,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(618,'JAM','FD25000RBB-PD','FIG & DATE RITE BITE JAM 25KG BUCKET','Kg','SFG',225,200,200,200,1000,1,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(619,'FILLING','VN25000SPFB-PD','VANILLA FILLING SILVER PEAK 25KG BUCKET','Kg','SFG',300,650,600,600,1000,2,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(620,'FILLING','SC25000SPFB-PD','SALTED CARAMEL FILLING SILVER PEAK 25KG BUCKET','Kg','SFG',320,650,650,650,1000,2,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(621,'SAUCE','CM25000MDSB-PD','CARAMEL SAUCE MOTHERS DAIRY 25KG BUCKET','Kg','SFG',310,800,800,800,1000,3,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(622,'FILLING','CM20000BSB-PD','CARAMEL BRITANIA SYRUP 20KG BUCKET','kg','SFG',375,800,700,700,1000,2,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(623,'JAM','AT25000CMB-PD','APRICOT CREMICA JAM 25KG BUCKET','kg','SFG',225,225,225,225,1000,1,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(624,'JAM','ST25000CMB-PD','STRAWBERRY CREMICA JAM 25KG BUCKET','kg','SFG',225,225,225,225,1000,1,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(625,'FILLING','CT25000SPFB-PD','CHOCO HAZELNUT FILLING SILVER PEAK 25KG BUCKET','Kg','SFG',430,1000,960,960,1000,2,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(626,'JAM','RP25000SPJB-PD','RASPBERRY JAM SILVER PEAK 25KG BUCKET','Kg','SFG',350,700,650,650,1000,2,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(627,'FILLING','CH25000MDFB-PD','CHOCOLATE FILLING MOTHERS DAIRY 25KG BUCKET','Kg','SFG',350,800,700,700,1000,2,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(628,'FILLING','SC20000WKB-PD','SALTED CARAMEL KREM WONDER WORKS 20KG BUCKET','Kg','SFG',340,680,650,650,1000,2,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL),(629,'FILLING','MB20000WKB-PD','MIXED BERRY KREM WONDER WORKS 20KG BUCKET','Kg','SFG',360,650,600,600,1000,2,0,850,0,25,0,1,0,'2025-07-01 22:21:26',NULL,NULL);
/*!40000 ALTER TABLE `productmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiftschedule`
--

DROP TABLE IF EXISTS `shiftschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shiftschedule` (
  `ShiftScheduleId` bigint NOT NULL AUTO_INCREMENT,
  `EntryDate` date DEFAULT NULL,
  `MachineId` int DEFAULT NULL,
  `MachineRunMinutes` double DEFAULT NULL,
  `MachineHours` varchar(20) DEFAULT NULL,
  `ShiftTimeInMinutes` double DEFAULT NULL,
  `ShiftTimeInHours` varchar(20) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `ShiftMonthInt` int DEFAULT NULL,
  `ShiftMonth` varchar(45) DEFAULT NULL,
  `ShiftYear` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` text,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ShiftScheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiftschedule`
--

LOCK TABLES `shiftschedule` WRITE;
/*!40000 ALTER TABLE `shiftschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `shiftschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempdepartmentwisedesignationattendancereport`
--

DROP TABLE IF EXISTS `tempdepartmentwisedesignationattendancereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempdepartmentwisedesignationattendancereport` (
  `TempDepartmentWiseDesignationAttendanceReportId` bigint NOT NULL AUTO_INCREMENT,
  `ReportType` varchar(45) DEFAULT NULL,
  `FromDate` date DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `AMonth` int DEFAULT NULL,
  `AYear` int DEFAULT NULL,
  `DepartmentId` int DEFAULT NULL,
  `DesignationId` int DEFAULT NULL,
  `Total` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `FinancialYearId` int DEFAULT NULL,
  PRIMARY KEY (`TempDepartmentWiseDesignationAttendanceReportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempdepartmentwisedesignationattendancereport`
--

LOCK TABLES `tempdepartmentwisedesignationattendancereport` WRITE;
/*!40000 ALTER TABLE `tempdepartmentwisedesignationattendancereport` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempdepartmentwisedesignationattendancereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempholiday`
--

DROP TABLE IF EXISTS `tempholiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempholiday` (
  `TempHolidayId` int NOT NULL AUTO_INCREMENT,
  `HolidayDate` date DEFAULT NULL,
  `HolidayDay` text,
  `Festival` text,
  `HolidayType` varchar(100) DEFAULT NULL,
  `NationalHolidayFlag` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  PRIMARY KEY (`TempHolidayId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempholiday`
--

LOCK TABLES `tempholiday` WRITE;
/*!40000 ALTER TABLE `tempholiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempholiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uommaster`
--

DROP TABLE IF EXISTS `uommaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uommaster` (
  `uomid` int NOT NULL AUTO_INCREMENT,
  `uom` varchar(100) DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` int DEFAULT NULL,
  `ModifiedUserId` int DEFAULT NULL,
  PRIMARY KEY (`uomid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uommaster`
--

LOCK TABLES `uommaster` WRITE;
/*!40000 ALTER TABLE `uommaster` DISABLE KEYS */;
INSERT INTO `uommaster` VALUES (1,'NOS',1,0,'2025-01-06 12:53:59',NULL,NULL),(2,'LTR',1,0,'2025-01-06 12:53:59',NULL,NULL),(3,'KG',1,0,'2025-01-06 12:53:59',NULL,NULL),(4,'BOX',NULL,0,'2025-01-06 12:53:59',NULL,NULL),(5,'BAG',NULL,0,'2025-01-06 12:53:59',NULL,NULL),(6,'PACKET',NULL,0,'2025-01-06 12:53:59',NULL,NULL);
/*!40000 ALTER TABLE `uommaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploaddocuments`
--

DROP TABLE IF EXISTS `uploaddocuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploaddocuments` (
  `UploadDocumentId` int NOT NULL AUTO_INCREMENT,
  `EntryDate` date DEFAULT NULL,
  `FormId` int DEFAULT NULL,
  `TableId` int DEFAULT NULL,
  `DocumentId` int DEFAULT NULL,
  `DocumentPath` text,
  `DocumentName` text,
  `UserId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate_copy1` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UploadDocumentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploaddocuments`
--

LOCK TABLES `uploaddocuments` WRITE;
/*!40000 ALTER TABLE `uploaddocuments` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploaddocuments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrights`
--

DROP TABLE IF EXISTS `userrights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrights` (
  `UserRightsId` bigint NOT NULL AUTO_INCREMENT,
  `UserId` int DEFAULT NULL,
  `MenuId` int DEFAULT NULL,
  `AddFlag` int DEFAULT '0',
  `EditFlag` int DEFAULT NULL,
  `DeleteFlag` int DEFAULT NULL,
  `ViewFlag` int DEFAULT NULL,
  `ApprovalFlag` int DEFAULT NULL,
  `LoginId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserRightsId`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrights`
--

LOCK TABLES `userrights` WRITE;
/*!40000 ALTER TABLE `userrights` DISABLE KEYS */;
INSERT INTO `userrights` VALUES (2,3,1,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(3,3,2,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(4,3,3,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(5,3,4,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(6,3,5,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(7,3,6,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(8,3,7,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(9,3,8,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(10,3,9,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(11,3,10,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(12,3,11,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(13,3,12,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(14,3,13,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(15,3,14,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(16,3,15,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(17,3,16,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(18,3,17,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(19,3,18,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(20,3,19,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(21,3,20,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(22,3,21,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(23,3,22,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(24,3,23,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(25,3,24,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(26,3,25,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(27,3,26,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(28,3,27,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(29,3,28,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(30,3,29,1,1,1,1,1,1,0,'2025-04-29 16:22:17',NULL,'2025-04-29 16:22:17'),(60,1,1,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(61,1,3,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(62,1,4,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(63,1,7,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(64,1,8,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(65,1,9,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(66,1,10,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(67,1,11,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(68,1,12,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(69,1,13,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(70,1,14,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(71,1,15,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(72,1,16,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(73,1,17,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(74,1,18,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(75,1,19,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(76,1,20,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(77,1,21,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(78,1,22,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(79,1,23,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(80,1,24,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(81,1,25,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(82,1,26,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(83,1,27,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(84,1,28,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(85,1,29,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(86,1,30,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58'),(87,1,31,1,1,1,1,1,1,0,'2025-05-05 16:58:58',NULL,'2025-05-05 16:58:58');
/*!40000 ALTER TABLE `userrights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserId` bigint NOT NULL AUTO_INCREMENT,
  `UserTypeId` int DEFAULT NULL,
  `UserName` mediumtext,
  `Password` mediumtext,
  `EmployeeName` varchar(500) DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'50010','NE/fkpIN/6U=','Deepak Jamdade',0,'2025-04-25 13:22:28',NULL,'2025-04-25 13:22:28'),(2,2,'11','MNNAlAg0EZg=','Sumit Jadhav',0,'2025-04-26 11:09:43',NULL,'2025-04-26 11:09:43'),(3,2,'20050','MNNAlAg0EZg=','Suresh Anpat',0,'2025-04-29 16:21:49',NULL,'2025-04-29 16:21:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertypemaster`
--

DROP TABLE IF EXISTS `usertypemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertypemaster` (
  `UserTypeId` int NOT NULL,
  `UserType` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertypemaster`
--

LOCK TABLES `usertypemaster` WRITE;
/*!40000 ALTER TABLE `usertypemaster` DISABLE KEYS */;
INSERT INTO `usertypemaster` VALUES (1,'ADMINISTRATOR',0,'2024-01-02 11:44:21',NULL,'2024-01-02 11:44:21'),(2,'USER',0,'2024-01-02 11:44:21',NULL,'2024-01-02 11:44:21');
/*!40000 ALTER TABLE `usertypemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userwiselocation`
--

DROP TABLE IF EXISTS `userwiselocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userwiselocation` (
  `UserWiseLocationId` bigint NOT NULL AUTO_INCREMENT,
  `UserId` int DEFAULT NULL,
  `LocationId` int DEFAULT NULL,
  `LoginId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserWiseLocationId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userwiselocation`
--

LOCK TABLES `userwiselocation` WRITE;
/*!40000 ALTER TABLE `userwiselocation` DISABLE KEYS */;
INSERT INTO `userwiselocation` VALUES (5,3,6,1,0,'2025-04-29 16:22:31',NULL,'2025-04-29 16:22:31'),(9,1,1,1,0,'2025-05-05 15:12:37',NULL,'2025-05-05 15:12:37'),(10,1,2,1,0,'2025-05-05 15:12:37',NULL,'2025-05-05 15:12:37'),(11,1,3,1,0,'2025-05-05 15:12:37',NULL,'2025-05-05 15:12:37'),(12,1,4,1,0,'2025-05-05 15:12:37',NULL,'2025-05-05 15:12:37');
/*!40000 ALTER TABLE `userwiselocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weeklyplanning`
--

DROP TABLE IF EXISTS `weeklyplanning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weeklyplanning` (
  `WeeklyPlanningId` bigint NOT NULL AUTO_INCREMENT,
  `EntryDate` date DEFAULT NULL,
  `PlanningDate` date DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  `RequiredQuantity` double DEFAULT NULL,
  `ProductionDone` double DEFAULT '0',
  `BalanceQty` double DEFAULT '0',
  `Status` varchar(45) DEFAULT NULL,
  `Remarks` varchar(5000) DEFAULT NULL,
  `PerformanceInBoxes` double DEFAULT '0',
  `UserId` int DEFAULT NULL,
  `LocationId` int DEFAULT NULL,
  `CancelTag` int DEFAULT '0',
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` int DEFAULT NULL,
  `ModifiedUserId` int DEFAULT NULL,
  PRIMARY KEY (`WeeklyPlanningId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weeklyplanning`
--

LOCK TABLES `weeklyplanning` WRITE;
/*!40000 ALTER TABLE `weeklyplanning` DISABLE KEYS */;
/*!40000 ALTER TABLE `weeklyplanning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'malasoee'
--

--
-- Dumping routines for database 'malasoee'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_Backups_Save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Backups_Save`(
	in
    Flag			bool,
    Date_V			datetime,
    UserId_V		int
 )
BEGIN
if Flag = false then
	insert into 
		Backups
        (
			Local_Backup_Date,
			UserId	
        )
        values
        (
			Date_V,
			UserId_V	
        );
	else 
		insert into 
		Backups
        (
			Cloud_Backup_Date,
			UserId	
        )
        values
        (
			Date_V,
			UserId_V	
        );
	End if;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Backups_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Backups_Select`(
	in
    Flag	bool
)
BEGIN
	if Flag = false then	
		select 
			Local_Backup_Date,
			UserId	
		from
			Backups
         where 
			CancelTag=0 
            order by Local_Backup_Date desc;
	else 
		select 
			Cloud_Backup_Date,
			UserId	
		from
			Backups
         where 
			CancelTag=0 
            order by Cloud_Backup_Date desc;
	End if;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CategoriesNew_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CategoriesNew_Insert_Update_Delete`(
	in	
	CategoryId_V int,
	CategoryFName_V varchar(200),
	CategorySName_V varchar(50),
    OTFormula_V varchar(200),
	MinOT_V varchar(50),
	MaxOT_V int, 
	MaxOTMin_V varchar(45) ,
	ConsiderOnlyFirstAndLastPunchInAttCalculations_V int,
	GraceTimeForLateComingMins_V varchar(45), 
	NeglectLastInPunchForMissedOutPunch_V int, 
	GraceTimeForEarlyGoingMins_V varchar(45), 
	WeeklyOff1_V int, 
	WeeklyOff1Value_V varchar(45), 
	WeeklyOff2_V int, 
	WeeklyOff2Value_V varchar(45), 
	1st_V int, 
	2nd_V int, 
	3rd_V int, 
	4th_V int, 
	5th_V int ,
	ConsiderEarlyComingPunch_V int, 
	ConsiderLateGoingPunch_V int, 
	DeductBreakHoursFormWorkDuration_V int, 
	CalculateHalfDayifWorkDurationIsLessThan_V int, 
	CalculateHalfDayifWorkDurationIsLessThanMins_V varchar(45), 
	CalculationAbsentIfWorkDurationIsLessThan_V int, 
	CalculationAbsentIfWorkDurationIsLessThanMins_V varchar(45), 
	OnPartialDayCalculateHalfDayifWorkDurationisLessThan_V int, 
	OnPartialDayCalculateHalfDayifWorkDurationisLessThanMins_V varchar(45), 
	OnPartialDayCalculateAbsentDayifWorkDurationislessThan_V int, 
	OnPartialDayCalculateAbsentDayifWorkDurationislessThanMins_V varchar(45), 
	MarkWeeklyOffandHolidayasAbsentifPrefixDayisAbsent_V int, 
	MarkWeeklyOffandHolidayasAbsentifSuffixDayisAbsent_V int, 
	MWOHAbsentifBothPrefixandSuffixDayisAbsent_V int, 
	Mark_V int, 
	MarkValue_V varchar(45), 
	AbsentWhenLateForValue_V varchar(45) ,
	MarkHalfDayifLateBy_V int, 
	MarkHalfDayifLateByMins_V varchar(45), 
	MarkHalfDayifEarlyGoingBy_V int, 
	MarkHalfDayifEarlyGoingByMins_V varchar(45), 
 	UserId_V 			int,
    DeleteFlag_V		int
)
BEGIN
	IF CategoryId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					Categories 
				set 
					CancelTag=1 
                where 
					CategoryId=CategoryId_V;
			END;
		ELSE
			BEGIN
				update 
					Categories 
				set 
					CategoryFName=CategoryFName_V,
					CategorySName=CategorySName_V,
                    OTFormula=OTFormula_V,
					MinOT=MinOT_V,
					MaxOT=MaxOT_V, 
					MaxOTMin=MaxOTMin_V,
					ConsiderOnlyFirstAndLastPunchInAttCalculations=ConsiderOnlyFirstAndLastPunchInAttCalculations_V,
					GraceTimeForLateComingMins=GraceTimeForLateComingMins_V, 
					NeglectLastInPunchForMissedOutPunch=NeglectLastInPunchForMissedOutPunch_V, 
					GraceTimeForEarlyGoingMins=GraceTimeForEarlyGoingMins_V, 
					WeeklyOff1=WeeklyOff1_V, 
					WeeklyOff1Value=WeeklyOff1Value_V, 
					WeeklyOff2=WeeklyOff2_V, 
					WeeklyOff2Value=WeeklyOff2Value_V, 
					1st=1st_V, 
					2nd=2nd_V, 
					3rd=3rd_V, 
					4th=4th_V, 
					5th=5th_V,
					ConsiderEarlyComingPunch=ConsiderEarlyComingPunch_V, 
					ConsiderLateGoingPunch=ConsiderLateGoingPunch_V, 
					DeductBreakHoursFormWorkDuration=DeductBreakHoursFormWorkDuration_V, 
					CalculateHalfDayifWorkDurationIsLessThan=CalculateHalfDayifWorkDurationIsLessThan_V, 
					CalculateHalfDayifWorkDurationIsLessThanMins=CalculateHalfDayifWorkDurationIsLessThanMins_V, 
					CalculationAbsentIfWorkDurationIsLessThan=CalculationAbsentIfWorkDurationIsLessThan_V, 
					CalculationAbsentIfWorkDurationIsLessThanMins=CalculationAbsentIfWorkDurationIsLessThanMins_V, 
					OnPartialDayCalculateHalfDayifWorkDurationisLessThan=OnPartialDayCalculateHalfDayifWorkDurationisLessThan_V, 
					OnPartialDayCalculateHalfDayifWorkDurationisLessThanMins=OnPartialDayCalculateHalfDayifWorkDurationisLessThanMins_V, 
					OnPartialDayCalculateAbsentDayifWorkDurationislessThan=OnPartialDayCalculateAbsentDayifWorkDurationislessThan_V, 
					OnPartialDayCalculateAbsentDayifWorkDurationislessThanMins=OnPartialDayCalculateAbsentDayifWorkDurationislessThanMins_V, 
					MarkWeeklyOffandHolidayasAbsentifPrefixDayisAbsent=MarkWeeklyOffandHolidayasAbsentifPrefixDayisAbsent_V, 
					MarkWeeklyOffandHolidayasAbsentifSuffixDayisAbsent=MarkWeeklyOffandHolidayasAbsentifSuffixDayisAbsent_V, 
					MWOHAbsentifBothPrefixandSuffixDayisAbsent=MWOHAbsentifBothPrefixandSuffixDayisAbsent_V, 
					Mark=Mark_V, 
					MarkValue=MarkValue_V, 
					AbsentWhenLateForValue=AbsentWhenLateForValue_V,
					MarkHalfDayifLateBy=MarkHalfDayifLateBy_V, 
					MarkHalfDayifLateByMins=MarkHalfDayifLateByMins_V, 
					MarkHalfDayifEarlyGoingBy=MarkHalfDayifEarlyGoingBy_V, 
                    MarkHalfDayifEarlyGoingByMins=MarkHalfDayifEarlyGoingByMins_V,
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					CategoryId=CategoryId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into Categories
				(
					CategoryFName,
					CategorySName,
                    OTFormula,
					MinOT,
					MaxOT, 
					MaxOTMin,
					ConsiderOnlyFirstAndLastPunchInAttCalculations,
					GraceTimeForLateComingMins, 
					NeglectLastInPunchForMissedOutPunch, 
					GraceTimeForEarlyGoingMins, 
					WeeklyOff1, 
					WeeklyOff1Value, 
					WeeklyOff2, 
					WeeklyOff2Value, 
					1st, 
					2nd, 
					3rd, 
					4th, 
					5th,
					ConsiderEarlyComingPunch, 
					ConsiderLateGoingPunch, 
					DeductBreakHoursFormWorkDuration, 
					CalculateHalfDayifWorkDurationIsLessThan, 
					CalculateHalfDayifWorkDurationIsLessThanMins, 
					CalculationAbsentIfWorkDurationIsLessThan, 
					CalculationAbsentIfWorkDurationIsLessThanMins, 
					OnPartialDayCalculateHalfDayifWorkDurationisLessThan, 
					OnPartialDayCalculateHalfDayifWorkDurationisLessThanMins, 
					OnPartialDayCalculateAbsentDayifWorkDurationislessThan, 
					OnPartialDayCalculateAbsentDayifWorkDurationislessThanMins, 
					MarkWeeklyOffandHolidayasAbsentifPrefixDayisAbsent, 
					MarkWeeklyOffandHolidayasAbsentifSuffixDayisAbsent, 
					MWOHAbsentifBothPrefixandSuffixDayisAbsent, 
					Mark, 
					MarkValue, 
					AbsentWhenLateForValue,
					MarkHalfDayifLateBy, 
					MarkHalfDayifLateByMins, 
					MarkHalfDayifEarlyGoingBy,
                    MarkHalfDayifEarlyGoingByMins,
				 	UserId
				) 
				values
				(
					CategoryFName_V,
					CategorySName_V,
                    OTFormula_V,
					MinOT_V,
					MaxOT_V, 
					MaxOTMin_V,
					ConsiderOnlyFirstAndLastPunchInAttCalculations_V,
					GraceTimeForLateComingMins_V, 
					NeglectLastInPunchForMissedOutPunch_V, 
					GraceTimeForEarlyGoingMins_V, 
					WeeklyOff1_V, 
					WeeklyOff1Value_V, 
					WeeklyOff2_V, 
					WeeklyOff2Value_V, 
					1st_V, 
					2nd_V, 
					3rd_V, 
					4th_V, 
					5th_V,
					ConsiderEarlyComingPunch_V, 
					ConsiderLateGoingPunch_V, 
					DeductBreakHoursFormWorkDuration_V, 
					CalculateHalfDayifWorkDurationIsLessThan_V, 
					CalculateHalfDayifWorkDurationIsLessThanMins_V, 
					CalculationAbsentIfWorkDurationIsLessThan_V, 
					CalculationAbsentIfWorkDurationIsLessThanMins_V, 
					OnPartialDayCalculateHalfDayifWorkDurationisLessThan_V, 
					OnPartialDayCalculateHalfDayifWorkDurationisLessThanMins_V, 
					OnPartialDayCalculateAbsentDayifWorkDurationislessThan_V, 
					OnPartialDayCalculateAbsentDayifWorkDurationislessThanMins_V, 
					MarkWeeklyOffandHolidayasAbsentifPrefixDayisAbsent_V, 
					MarkWeeklyOffandHolidayasAbsentifSuffixDayisAbsent_V, 
					MWOHAbsentifBothPrefixandSuffixDayisAbsent_V, 
					Mark_V, 
					MarkValue_V, 
					AbsentWhenLateForValue_V,
					MarkHalfDayifLateBy_V, 
					MarkHalfDayifLateByMins_V, 
					MarkHalfDayifEarlyGoingBy_V,
                    MarkHalfDayifEarlyGoingByMins_V,
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Categories_By_CategoryId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Categories_By_CategoryId`(
	in
    CategoryId_V	int 
)
BEGIN			
	select 
		CategoryId,
		CategoryFName,
		CategorySName,
		OTFormula,
		MinOT,
		MaxOT, 
		MaxOTMin,
		ConsiderOnlyFirstAndLastPunchInAttCalculations,
		GraceTimeForLateComingMins, 
		NeglectLastInPunchForMissedOutPunch, 
		GraceTimeForEarlyGoingMins, 
		WeeklyOff1, 
		WeeklyOff1Value, 
		WeeklyOff2, 
		WeeklyOff2Value, 
		1st, 
		2nd, 
		3rd, 
		4th, 
		5th,
		ConsiderEarlyComingPunch, 
		ConsiderLateGoingPunch, 
		DeductBreakHoursFormWorkDuration, 
		CalculateHalfDayifWorkDurationIsLessThan, 
		CalculateHalfDayifWorkDurationIsLessThanMins, 
		CalculationAbsentIfWorkDurationIsLessThan, 
		CalculationAbsentIfWorkDurationIsLessThanMins, 
		OnPartialDayCalculateHalfDayifWorkDurationisLessThan, 
		OnPartialDayCalculateHalfDayifWorkDurationisLessThanMins, 
		OnPartialDayCalculateAbsentDayifWorkDurationislessThan, 
		OnPartialDayCalculateAbsentDayifWorkDurationislessThanMins, 
		MarkWeeklyOffandHolidayasAbsentifPrefixDayisAbsent, 
		MarkWeeklyOffandHolidayasAbsentifSuffixDayisAbsent, 
		MWOHAbsentifBothPrefixandSuffixDayisAbsent, 
		Mark, 
		MarkValue, 
		AbsentWhenLateForValue,
		MarkHalfDayifLateBy, 
		MarkHalfDayifLateByMins, 
		MarkHalfDayifEarlyGoingBy,
		MarkHalfDayifEarlyGoingByMins
	from
		categories 
	where 
		CancelTag=0 and CategoryId=CategoryId_V; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Categories_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Categories_CheckExist`(
	in
	CategoryId_V	int,
    CategoryFName_V	nvarchar(100) 
)
BEGIN	
	select 
		CategoryFName 
	from 
		categories 
	where 
		CancelTag=0 and 
		CategoryFName=CategoryFName_V and 
        CategoryId != CategoryId_V;		
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Categories_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Categories_FillGrid`(
	in
    CategoryFName_V	nvarchar(100),
    Search_V			bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				CategoryId,
				CategoryFName,
				CategorySName,
                OTFormula,
				MinOT,
				MaxOT, 
				MaxOTMin,
				ConsiderOnlyFirstAndLastPunchInAttCalculations,
				GraceTimeForLateComingMins, 
				NeglectLastInPunchForMissedOutPunch, 
				GraceTimeForEarlyGoingMins, 
				WeeklyOff1, 
				WeeklyOff1Value, 
				WeeklyOff2, 
				WeeklyOff2Value, 
				1st, 
				2nd, 
				3rd, 
				4th, 
				5th,
				ConsiderEarlyComingPunch, 
				ConsiderLateGoingPunch, 
				DeductBreakHoursFormWorkDuration, 
				CalculateHalfDayifWorkDurationIsLessThan, 
				CalculateHalfDayifWorkDurationIsLessThanMins, 
				CalculationAbsentIfWorkDurationIsLessThan, 
				CalculationAbsentIfWorkDurationIsLessThanMins, 
				OnPartialDayCalculateHalfDayifWorkDurationisLessThan, 
				OnPartialDayCalculateHalfDayifWorkDurationisLessThanMins, 
				OnPartialDayCalculateAbsentDayifWorkDurationislessThan, 
				OnPartialDayCalculateAbsentDayifWorkDurationislessThanMins, 
				MarkWeeklyOffandHolidayasAbsentifPrefixDayisAbsent, 
				MarkWeeklyOffandHolidayasAbsentifSuffixDayisAbsent, 
				MWOHAbsentifBothPrefixandSuffixDayisAbsent, 
				Mark, 
				MarkValue, 
				AbsentWhenLateForValue,
				MarkHalfDayifLateBy, 
				MarkHalfDayifLateByMins, 
				MarkHalfDayifEarlyGoingBy,
                MarkHalfDayifEarlyGoingByMins
			from
				categories 
			where 
				CancelTag=0                 
				order by CategoryFName asc;
		END;    
	ELSE
		BEGIN			
			select
				CategoryId,
				CategoryFName,
				CategorySName,
                OTFormula,
				MinOT,
				MaxOT, 
				MaxOTMin,
				ConsiderOnlyFirstAndLastPunchInAttCalculations,
				GraceTimeForLateComingMins, 
				NeglectLastInPunchForMissedOutPunch, 
				GraceTimeForEarlyGoingMins, 
				WeeklyOff1, 
				WeeklyOff1Value, 
				WeeklyOff2, 
				WeeklyOff2Value, 
				1st, 
				2nd, 
				3rd, 
				4th, 
				5th,
				ConsiderEarlyComingPunch, 
				ConsiderLateGoingPunch, 
				DeductBreakHoursFormWorkDuration, 
				CalculateHalfDayifWorkDurationIsLessThan, 
				CalculateHalfDayifWorkDurationIsLessThanMins, 
				CalculationAbsentIfWorkDurationIsLessThan, 
				CalculationAbsentIfWorkDurationIsLessThanMins, 
				OnPartialDayCalculateHalfDayifWorkDurationisLessThan, 
				OnPartialDayCalculateHalfDayifWorkDurationisLessThanMins, 
				OnPartialDayCalculateAbsentDayifWorkDurationislessThan, 
				OnPartialDayCalculateAbsentDayifWorkDurationislessThanMins, 
				MarkWeeklyOffandHolidayasAbsentifPrefixDayisAbsent, 
				MarkWeeklyOffandHolidayasAbsentifSuffixDayisAbsent, 
				MWOHAbsentifBothPrefixandSuffixDayisAbsent, 
				Mark, 
				MarkValue, 
				AbsentWhenLateForValue,
				MarkHalfDayifLateBy, 
				MarkHalfDayifLateByMins, 
				MarkHalfDayifEarlyGoingBy,
                MarkHalfDayifEarlyGoingByMins
			from
				categories 
			where 
				CancelTag=0 and
				CategoryFName LIKE CONCAT('%' , CategoryFName_V , '%') 
				order by CategoryFName asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ChangePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ChangePassword`(
	in
	ID_V				int,
	Password_V		MEDIUMTEXT
)
BEGIN
	update 
		Login 
	set 
		Password=Password_V 
	where 
		ID=ID_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ChangePassword_ExpensesPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ChangePassword_ExpensesPassword`(
	in
	ID_V					int,
	ExpensesPassword_V		varchar(100)
)
BEGIN
	update 
		Login 
	set 
		ExpensesPassword=ExpensesPassword_V 
	where 
		ID=ID_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CityVillageMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CityVillageMaster_CheckExist`(
	in
    CityVillageId_V		int,
    TalukaId_V			int,
    DistrictId_V 		int,
    ContryId_V 			int,
    StateId_V 			int,
	CityVillageName_V 	longtext 
)
BEGIN
	select 
		CityVillageId 
	from 
		CityVillageMaster 
	where 
		CancelTag=0 and 
        ContryId=ContryId_V and
        StateId=StateId_V and
        DistrictId=DistrictId_V and
        TalukaId=TalukaId_V and
        CityVillageName=CityVillageName_V and 
        CityVillageId != CityVillageId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CityVillageMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CityVillageMaster_FillGrid`(
	in
    CityVillageName_V	nvarchar(100),
    Search_V			bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				CVM.CityVillageId,
				CVM.ContryId,
                CM.ContryName as 'Contry Name',
				CVM.StateId,
                SM.StateName as 'State Name',
				CVM.DistrictId,
				DM.DistrictName as 'District Name',
                CVM.TalukaId,
                TM.TalukaName as 'Taluka Name',
                CVM.CityVillageName as 'City/Village Name',
                CVM.Pincode
			from
				CityVillageMaster CVM inner join
				TalukaMaster TM on TM.TalukaId=CVM.TalukaId inner join 
                DistrictMaster DM on DM.DistrictId=TM.DistrictId inner join 
                ContryMaster CM on CM.ContryId=TM.ContryId inner join
                StateMaster SM on TM.StateId=SM.StateId  
			where 
				CVM.CancelTag=0 and
				TM.CancelTag=0 and
				DM.CancelTag=0 and
				SM.CancelTag=0 and
                CM.CancelTag=0                 
				order by CVM.CityVillageName asc;
		END;    
	ELSE
		BEGIN			
			select 
				CVM.CityVillageId,
				CVM.ContryId,
                CM.ContryName as 'Contry Name',
				CVM.StateId,
                SM.StateName as 'State Name',
				CVM.DistrictId,
				DM.DistrictName as 'District Name',
                CVM.TalukaId,
                TM.TalukaName as 'Taluka Name',
                CVM.CityVillageName as 'City/Village Name',
                CVM.Pincode
			from
				CityVillageMaster CVM inner join
				TalukaMaster TM on TM.TalukaId=CVM.TalukaId inner join 
                DistrictMaster DM on DM.DistrictId=TM.DistrictId inner join 
                ContryMaster CM on CM.ContryId=TM.ContryId inner join
                StateMaster SM on TM.StateId=SM.StateId  
			where 
				CVM.CancelTag=0 and
				TM.CancelTag=0 and
				DM.CancelTag=0 and
				SM.CancelTag=0 and
                CM.CancelTag=0 and              
			    TM.CityVillageName LIKE CONCAT('%' , CityVillageName_V , '%') 
				order by CVM.CityVillageName asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CityVillageMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CityVillageMaster_Insert_Update_Delete`(
	in	
   	CityVillageId_V		int,
	ContryId_V 			int,
	StateId_V 			int,
	DistrictId_V 		int,
	TalukaId_V			int,
	CityVillageName_V 	longtext, 
    Pincode_V			int,
	UserId_V 			int,
    DeleteFlag_V		int
)
BEGIN
	IF CityVillageId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					CityVillageMaster 
				set 
					CancelTag=1 
                where 
					CityVillageId=CityVillageId_V;
			END;
		ELSE
			BEGIN
				update 
					CityVillageMaster 
				set 
					ContryId=ContryId_V,
					StateId=StateId_V, 
                    DistrictId=DistrictId_V,
                    TalukaId=TalukaId_V,
                    CityVillageName=CityVillageName_V,
                    Pincode=Pincode_V,
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					CityVillageId=CityVillageId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into CityVillageMaster
				(
					ContryId,
                    StateId,
                    DistrictId,
                    TalukaId,
					CityVillageName,
                    Pincode,
				 	UserId
				) 
				values
				(
					ContryId_V,
                    StateId_V,
                    DistrictId_V,
                    TalukaId_V,
					CityVillageName_V, 
                    Pincode_V,
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Collection_Report_User_Wise` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Collection_Report_User_Wise`(
	in
    FromDate_V		date,
    ToDate_V		date 
)
BEGIN
	select 
		BT.ID,
        BT.ID as 'SrNo',
        B.EntryDate as 'Bill Date',
        BT.BillId as 'BillNo',
        L1.FullName as 'Cashier',
        L.FullName as 'Doctor Name',
        B.PatientId as 'Patient Id',
        CONCAT(P.Salutation, ' ',  P.LastName , ' ' , P.FirstName , ' ',  P.MiddleName) as 'Patient Name',
        BT.CategoryId,
        BT.BillTypeId,
        BT.Qty,
        BT.Amount,
        B.UserId 
	from 
		Bill B inner join 
        BillTransaction BT on BT.BillId=B.ID inner join 
        OPDPatient OP on OP.ID=B.CommanId inner join 
        Patient P on P.ID=B.PatientId inner join
        Login L on L.ID=OP.DoctorId inner join
        Login L1 on L1.ID=OP.UserId
	where 
		B.CancelTag=0 and
        BT.CancelTag=0 and
        OP.CancelTag=0 and 
        P.CancelTag=0 and
		B.BillStatus='Paid' and 
        B.EntryDate between FromDate_V and ToDate_V  
         
	order by 
		BT.BillId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ComboBox_All` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ComboBox_All`(
	IN 
    ValueMember_V		longtext,
    DisplayMember_V		longtext,
    TableName_V 		longtext 
)
BEGIN
 SET @t1 = CONCAT(' SELECT ', ValueMember_V, ', ', DisplayMember_V, ' FROM ',TableName_V );
 PREPARE stmt3 FROM @t1;
 EXECUTE stmt3;
 DEALLOCATE PREPARE stmt3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CompanyProfile_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CompanyProfile_FillGrid`(
)
BEGIN
	select 
		C.CompanyId,
		C.CompanyName as 'Company Name',
		C.RegisteredAddress as 'Registered Address', 
		C.UnitsAddressDetails as 'Units Address Details', 
		AM.ContryId,
      	CM.ContryName as 'Contry Name',
		AM.StateId,
		SM.StateName as 'State Name',
		AM.DistrictId,
		DM.DistrictName as 'District Name',
		AM.TalukaId,
		TM.TalukaName as 'Taluka Name',
		AM.CityVillageId,
		CVM.CityVillageName as 'City/Village Name',
		C.AreaId, 
        AM.AreaName as 'Area Name',
		C.EmailId,
		C.Website, 
		C.ContactNumber as 'Contact Number', 
		C.EstablishmentDate as 'Establishment Date', 
		C.DateOfIncorporation as 'Date of Incorporation', 
		C.RegistrationNumber as 'Registration Number', 
		C.FactoryLicenseNumber as 'Factory License Number', 
		C.UdyogAadharNumber as 'Udyog Aadhar Number', 
		C.FSSAINo as 'FSSAI No', 
		C.GSTIN, 
		C.PANNo as 'PAN No', 
		C.TANNo as 'TAN No', 
		C.PFEstablishmentID as 'PF Establishment ID', 
		C.ESICEstablishmentID as 'ESIC Establishment ID', 
		C.PTRCNo as 'PTRC No', 
		C.PTECNo as 'PTEC No', 
		C.LWFNo as 'LWF No', 
		C.LabourLicenseRegNo as 'Labour License Reg No', 
		C.LabourLicenseDate as 'Labour License Date', 
		C.TotalEmployeeAsPerLicense as 'Total Employee as Per License', 
		C.BRCRegNo as 'BRC Reg No', 
		C.BRCRegisteredDate as 'BRC Registered Date', 
		C.ISORegNo as 'ISO Reg No', 
		C.ISORegisteredDate as 'ISO Registered Date', 
		C.BankName as 'Bank Name', 
		C.AccountNo as 'Account No', 
		C.BranchName as 'Branch Name', 
		C.MICRNo as 'MICR No', 
		C.IFSCCode as 'IFSC Code', 
		C.UserId
	from
		CompanyProfile C inner join 
		AreaMaster AM on AM.AreaId=C.AreaId inner join 
		CityVillageMaster CVM on AM.CityVillageId=CVM.CityVillageId inner join
		TalukaMaster TM on TM.TalukaId=CVM.TalukaId inner join 
		DistrictMaster DM on DM.DistrictId=TM.DistrictId inner join 
		ContryMaster CM on CM.ContryId=TM.ContryId inner join
		StateMaster SM on TM.StateId=SM.StateId  
	where 
		C.CancelTag=0 and
		AM.CancelTag=0 and
		CVM.CancelTag=0 and
		TM.CancelTag=0 and
		DM.CancelTag=0 and
		SM.CancelTag=0 and
		CM.CancelTag=0 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CompanyProfile_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CompanyProfile_Insert_Update_Delete`(
	CompanyId_V int,
	CompanyName_V varchar(1000),
	RegisteredAddress_V text, 
	UnitsAddressDetails_V text, 
	AreaId_V int, 
	EmailId_V varchar(200),
	Website_V varchar(200), 
	ContactNumber_V varchar(200), 
	EstablishmentDate_V date, 
	DateOfIncorporation_V date, 
	RegistrationNumber_V varchar(200), 
	FactoryLicenseNumber_V text, 
	UdyogAadharNumber_V varchar(50), 
	FSSAINo_V text, 
	GSTIN_V varchar(50), 
	PANNo_V varchar(50), 
	TANNo_V varchar(50), 
	PFEstablishmentID_V varchar(50), 
	ESICEstablishmentID_V varchar(50), 
	PTRCNo_V varchar(50), 
	PTECNo_V varchar(50), 
	LWFNo_V varchar(50), 
	LabourLicenseRegNo_V varchar(50), 
	LabourLicenseDate_V varchar(50), 
	TotalEmployeeAsPerLicense_V varchar(50), 
	BRCRegNo_V varchar(50), 
	BRCRegisteredDate_V date, 
	ISORegNo_V varchar(50), 
	ISORegisteredDate_V date, 
	BankName_V varchar(500),  
	AccountNo_V varchar(50), 
	BranchName_V varchar(50), 
	MICRNo_V varchar(50), 
	IFSCCode_V varchar(50), 
	UserId_V int,
    DeleteFlag_V		int
)
BEGIN
IF CompanyId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					CompanyProfile 
				set 
					CancelTag=1 
                where 
					CompanyId=CompanyId_V;
			END;
		ELSE
			BEGIN
				update 
					CompanyProfile 
				set 
					CompanyName=CompanyName_V,
					RegisteredAddress=RegisteredAddress_V, 
					UnitsAddressDetails=UnitsAddressDetails_V, 
					AreaId=AreaId_V, 
					EmailId=EmailId_V,
					Website=Website_V, 
					ContactNumber=ContactNumber_V, 
					EstablishmentDate=EstablishmentDate_V, 
					DateOfIncorporation=DateOfIncorporation_V, 
					RegistrationNumber=RegistrationNumber_V, 
					FactoryLicenseNumber=FactoryLicenseNumber_V, 
					UdyogAadharNumber=UdyogAadharNumber_V, 
					FSSAINo=FSSAINo_V, 
					GSTIN=GSTIN_V, 
					PANNo=PANNo_V, 
					TANNo=TANNo_V, 
					PFEstablishmentID=PFEstablishmentID_V, 
					ESICEstablishmentID=ESICEstablishmentID_V, 
					PTRCNo=PTRCNo_V, 
					PTECNo=PTECNo_V, 
					LWFNo=LWFNo_V, 
					LabourLicenseRegNo=LabourLicenseRegNo_V, 
					LabourLicenseDate=LabourLicenseDate_V, 
					TotalEmployeeAsPerLicense=TotalEmployeeAsPerLicense_V, 
					BRCRegNo=BRCRegNo_V, 
					BRCRegisteredDate=BRCRegisteredDate_V, 
					ISORegNo=ISORegNo_V, 
					ISORegisteredDate=ISORegisteredDate_V, 
					BankName=BankName_V, 
					AccountNo=AccountNo_V, 
					BranchName=BranchName_V, 
					MICRNo=MICRNo_V, 
					IFSCCode=IFSCCode_V, 
                    ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					CompanyId=CompanyId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into CompanyProfile
				(
					CompanyName,
					RegisteredAddress, 
					UnitsAddressDetails, 
					AreaId, 
					EmailId,
					Website, 
					ContactNumber, 
					EstablishmentDate, 
					DateOfIncorporation, 
					RegistrationNumber, 
					FactoryLicenseNumber, 
					UdyogAadharNumber, 
					FSSAINo, 
					GSTIN, 
					PANNo, 
					TANNo, 
					PFEstablishmentID, 
					ESICEstablishmentID, 
					PTRCNo, 
					PTECNo, 
					LWFNo, 
					LabourLicenseRegNo, 
					LabourLicenseDate, 
					TotalEmployeeAsPerLicense, 
					BRCRegNo, 
					BRCRegisteredDate, 
					ISORegNo, 
					ISORegisteredDate, 
					BankName, 
					AccountNo, 
					BranchName, 
					MICRNo, 
					IFSCCode, 
                    UserId
				) 
				values
				(
					CompanyName_V,
					RegisteredAddress_V, 
					UnitsAddressDetails_V, 
					AreaId_V, 
					EmailId_V,
					Website_V, 
					ContactNumber_V, 
					EstablishmentDate_V, 
					DateOfIncorporation_V, 
					RegistrationNumber_V, 
					FactoryLicenseNumber_V, 
					UdyogAadharNumber_V, 
					FSSAINo_V, 
					GSTIN_V, 
					PANNo_V, 
					TANNo_V, 
					PFEstablishmentID_V, 
					ESICEstablishmentID_V, 
					PTRCNo_V, 
					PTECNo_V, 
					LWFNo_V, 
					LabourLicenseRegNo_V, 
					LabourLicenseDate_V, 
					TotalEmployeeAsPerLicense_V, 
					BRCRegNo_V, 
					BRCRegisteredDate_V, 
					ISORegNo_V, 
					ISORegisteredDate_V, 
					BankName_V, 
					AccountNo_V, 
					BranchName_V, 
					MICRNo_V, 
					IFSCCode_V, 
               	 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CompanyProfile_Report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CompanyProfile_Report`(
	
)
BEGIN
	select 
		C.CompanyId,
		C.CompanyName,
		C.RegisteredAddress, 
		C.UnitsAddressDetails, 
		AM.ContryId,
      	CM.ContryName,
		AM.StateId,
		SM.StateName,
		AM.DistrictId,
		DM.DistrictName,
		AM.TalukaId,
		TM.TalukaName,
		AM.CityVillageId,
		CVM.CityVillageName,
		C.AreaId, 
        AM.AreaName,
		C.EmailId,
		C.Website, 
		C.ContactNumber, 
		C.EstablishmentDate, 
		C.DateOfIncorporation, 
		C.RegistrationNumber, 
		C.FactoryLicenseNumber, 
		C.UdyogAadharNumber, 
		C.FSSAINo, 
		C.GSTIN, 
		C.PANNo, 
		C.TANNo, 
		C.PFEstablishmentID, 
		C.ESICEstablishmentID, 
		C.PTRCNo, 
		C.PTECNo, 
		C.LWFNo, 
		C.LabourLicenseRegNo, 
		C.LabourLicenseDate, 
		C.TotalEmployeeAsPerLicense, 
		C.BRCRegNo, 
		C.BRCRegisteredDate, 
		C.ISORegNo, 
		C.ISORegisteredDate, 
		C.BankName, 
		C.AccountNo, 
		C.BranchName, 
		C.MICRNo, 
		C.IFSCCode,
		C.CompanyLogo
	from
		CompanyProfile C inner join 
		AreaMaster AM on AM.AreaId=C.AreaId inner join 
		CityVillageMaster CVM on AM.CityVillageId=CVM.CityVillageId inner join
		TalukaMaster TM on TM.TalukaId=CVM.TalukaId inner join 
		DistrictMaster DM on DM.DistrictId=TM.DistrictId inner join 
		ContryMaster CM on CM.ContryId=TM.ContryId inner join
		StateMaster SM on TM.StateId=SM.StateId  
	where 
		C.CancelTag=0 and
		AM.CancelTag=0 and
		CVM.CancelTag=0 and
		TM.CancelTag=0 and
		DM.CancelTag=0 and
		SM.CancelTag=0 and
		CM.CancelTag=0 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CompOffApplication_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CompOffApplication_CheckExist`(
	in
    CompOffApplicationId_V 	bigint,
	EmployeeId_V 			bigint, 
	LeaveTypeId_V 			int,
	CompOffDate_V 			date
)
BEGIN
	select 
		CompOffApplicationId 
	from 
		CompOffApplication 
	where 
		CancelTag=0 and 
		EmployeeId=EmployeeId_V and 
		LeaveTypeId=LeaveTypeId_V and
		CompOffDate=CompOffDate_V and 
        CompOffApplicationId != CompOffApplicationId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CompOffApplication_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CompOffApplication_FillGrid`(
		in
        UserType_V		varchar(100),
        UserId_V		int,
        LocationId_V 	int,
        DepartmentId_V	int
)
BEGIN	
	IF UserType_V='ADMIN' OR UserType_V='ADMINISTRATOR' THEN
		BEGIN
			select 
				COA.CompOffApplicationId,
				COA.EntryDate as ' Entry Date',
				COA.EmployeeId, 
				LM.LocationName,
				DM.Department,
				E.EmployeeName as 'Employee Name',
				DES.Designation,
				COA.LeaveTypeId,
				L.LeaveTypeFName  as 'Comp off Type',
				COA.CompOffDate as 'Comp Off Date',
				COA.CompOffDay as 'Comp Off Day', 
				COA.HolidayType as 'Holiday Type', 
				COA.Festival, 
				COA.CompOffReason as 'Comp Off Reason',  
				COA.WorkRemarks as 'Work Remarks', 
                COA.CompStatus as 'Status',
                COA.CompOffDueDate as 'Comp Off Due Date',
				COA.CompOffUsedFlag
			from
				compoffapplication COA inner join 
				leavetypes L on L.LeaveTypeId=COA.LeaveTypeId inner join
				Employees E on E.EmployeeId=COA.EmployeeId inner join 
				DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
				DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
				LocationMaster LM on LM.LocationId=E.LocationId
			where 
				L.CancelTag=0 and
				COA.CancelTag=0 and
				E.CancelTag=0 and
				DM.CancelTag=0 and
				DES.CancelTag=0 and
				LM.CancelTag=0
				order by COA.CompOffDate asc;
		  END;
	ELSEIF UserType_V = 'PLANT HEAD' OR UserType_V = 'MANAGER' THEN
		BEGIN
			  select 
				COA.CompOffApplicationId,
				COA.EntryDate as ' Entry Date',
				COA.EmployeeId, 
				LM.LocationName,
				DM.Department,
				E.EmployeeName as 'Employee Name',
				DES.Designation,
				COA.LeaveTypeId,
				L.LeaveTypeFName  as 'Comp off Type',
				COA.CompOffDate as 'Comp Off Date',
				COA.CompOffDay as 'Comp Off Day', 
				COA.HolidayType as 'Holiday Type', 
				COA.Festival, 
				COA.CompOffReason as 'Comp Off Reason',  
				COA.WorkRemarks as 'Work Remarks', 
                COA.CompStatus as 'Status',
                COA.CompOffDueDate as 'Comp Off Due Date',
				COA.CompOffUsedFlag
			from
				compoffapplication COA inner join 
				leavetypes L on L.LeaveTypeId=COA.LeaveTypeId inner join
				Employees E on E.EmployeeId=COA.EmployeeId inner join 
				DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
				DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
				LocationMaster LM on LM.LocationId=E.LocationId
			where 
				L.CancelTag=0 and
				COA.CancelTag=0 and
				E.CancelTag=0 and
				DM.CancelTag=0 and
				DES.CancelTag=0 and
				LM.CancelTag=0 and
				LM.LocationId IN (select LocationId from locationwisedepartmentusers where PlantHeadId=UserId_V)
				order by COA.CompOffDate asc;
			END;
	ELSEIF UserType_V = 'INCHARGE' OR UserType_V = 'SENIOR OFFICER' THEN
		BEGIN
			 Select
				COA.CompOffApplicationId,
				COA.EntryDate as ' Entry Date',
				COA.EmployeeId, 
				LM.LocationName,
				DM.Department,
				E.EmployeeName as 'Employee Name',
				DES.Designation,
				COA.LeaveTypeId,
				L.LeaveTypeFName  as 'Comp off Type',
				COA.CompOffDate as 'Comp Off Date',
				COA.CompOffDay as 'Comp Off Day', 
				COA.HolidayType as 'Holiday Type', 
				COA.Festival, 
				COA.CompOffReason as 'Comp Off Reason',  
				COA.WorkRemarks as 'Work Remarks', 
                COA.CompStatus as 'Status',
                COA.CompOffDueDate as 'Comp Off Due Date',
				COA.CompOffUsedFlag
			from
				compoffapplication COA inner join 
				leavetypes L on L.LeaveTypeId=COA.LeaveTypeId inner join
				Employees E on E.EmployeeId=COA.EmployeeId inner join 
				DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
				DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
				LocationMaster LM on LM.LocationId=E.LocationId
			where 
				L.CancelTag=0 and
				COA.CancelTag=0 and
				E.CancelTag=0 and
				DM.CancelTag=0 and
				DES.CancelTag=0 and
				LM.CancelTag=0 and
                 E.LocationId IN (select LocationId from locationwisedepartmentusers where InchargeId=UserId_V) and
                E.DepartmentId IN (select DepartmentId from locationwisedepartmentusers where InchargeId=UserId_V);
			END;
	ELSE
		BEGIN
			Select
              	COA.CompOffApplicationId,
				COA.EntryDate as ' Entry Date',
				COA.EmployeeId, 
				LM.LocationName,
				DM.Department,
				E.EmployeeName as 'Employee Name',
				DES.Designation,
				COA.LeaveTypeId,
				L.LeaveTypeFName  as 'Comp off Type',
				COA.CompOffDate as 'Comp Off Date',
				COA.CompOffDay as 'Comp Off Day', 
				COA.HolidayType as 'Holiday Type', 
				COA.Festival, 
				COA.CompOffReason as 'Comp Off Reason',  
				COA.WorkRemarks as 'Work Remarks', 
                COA.CompStatus as 'Status',
                COA.CompOffDueDate as 'Comp Off Due Date',
				COA.CompOffUsedFlag
			from
				compoffapplication COA inner join 
				leavetypes L on L.LeaveTypeId=COA.LeaveTypeId inner join
				Employees E on E.EmployeeId=COA.EmployeeId inner join 
				DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
				DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
				LocationMaster LM on LM.LocationId=E.LocationId
			where 
				L.CancelTag=0 and
				COA.CancelTag=0 and
				E.CancelTag=0 and
				DM.CancelTag=0 and
				DES.CancelTag=0 and
				LM.CancelTag=0 and
                E.EmployeeId=UserId_V;
		END;
    END IF;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CompOffApplication_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CompOffApplication_Insert_Update_Delete`(
	in	
	CompOffApplicationId_V 	bigint,
	EntryDate_V 			date,
	EmployeeId_V 			bigint, 
	LeaveTypeId_V 			int,
	CompOffDate_V 			date, 
	CompOffDay_V 			varchar(45), 
	HolidayType_V 			varchar(45), 
	Festival_V 				varchar(500), 
	CompOffReason_V 		text, 
	WorkRemarks_V 			text, 
	CompOffUsedFlag_V 		int, 
    CompStatus_V			varchar(500),
    CompOffDueDate_V		date,
 	UserId_V 				int,
    DeleteFlag_V			int,
    FinancialYearId_V		int
)
BEGIN
	IF CompOffApplicationId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					compoffapplication 
				set 
					CancelTag=1 
                where 
					CompOffApplicationId=CompOffApplicationId_V;
			END;
		ELSE
			BEGIN
				update 
					compoffapplication 
				set 
					EntryDate=EntryDate_V,
					EmployeeId=EmployeeId_V, 
					LeaveTypeId=LeaveTypeId_V,
					CompOffDate=CompOffDate_V, 
					CompOffDay=CompOffDay_V, 
					HolidayType=HolidayType_V, 
					Festival=Festival_V, 
					CompOffReason=CompOffReason_V, 
					WorkRemarks=WorkRemarks_V, 
					CompOffUsedFlag=CompOffUsedFlag_V,
                    CompStatus=CompStatus_V,
                    CompOffDueDate=CompOffDueDate_V,
                    ModifiedUserId=UserId_V 
				where 
					CancelTag=0 and 
					CompOffApplicationId=CompOffApplicationId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into compoffapplication
				(
					EntryDate,
					EmployeeId, 
					LeaveTypeId,
					CompOffDate, 
					CompOffDay, 
					HolidayType, 
					Festival, 
					CompOffReason, 
					WorkRemarks, 
					CompOffUsedFlag,
                    CompStatus,
                    CompOffDueDate,
					UserId,
                    FinancialYearId
				) 
				values
				(
					EntryDate_V,
					EmployeeId_V,
                    LeaveTypeId_V,
					CompOffDate_V,
					CompOffDay_V, 
					HolidayType_V,
                    Festival_V,
                    CompOffReason_V,
                    WorkRemarks_V,
                    CompOffUsedFlag_V,
                    CompStatus_V,
                    CompOffDueDate_V,
                    UserId_V,
                    FinancialYearId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CompOffApplication_Update_CompStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CompOffApplication_Update_CompStatus`(	
	IN
    CompOffApplicationId_V 	bigint,
    CompStatus_V 			varchar(100),
    Remarks_V 				varchar(1000) 
)
BEGIN
	update compoffapplication set
		CompStatus=CompStatus_V,
        Remarks=Remarks_V
	where
		CancelTag=0 and
        CompOffApplicationId=CompOffApplicationId_V;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ContractorMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ContractorMaster_FillGrid`(
)
BEGIN
	select 
		C.ContractorId,
		C.RegisterNo as "Register No", 
        C.VendorNumber as "Vendor Number",
		C.ContractorName as "Contractor Name", 
		C.Address,  
		AM.ContryId,
      	CM.ContryName as 'Contry Name',
		AM.StateId,
		SM.StateName as 'State Name',
		AM.DistrictId,
		DM.DistrictName as 'District Name',
		AM.TalukaId,
		TM.TalukaName as 'Taluka Name',
		AM.CityVillageId,
		CVM.CityVillageName as 'City/Village Name',
		C.AreaId, 
        AM.AreaName as 'Area Name',
		C.ProprietorName as "Proprietor Name",
		C.MobileNumber as "Mobile Number", 
		C.EmailId, 
		C.JoiningDate as "Joinng Date", 
		C.GSTIN, 
		C.PFEstablishmentID as "PF Istablishment ID", 
		C.ESICEstablishmentID  as "ESIC Establishment ID", 
        C.LWFNo as "LWF No",
		C.PTRCNo,
		C.PTECNo, 
		C.ContractRenewalDate, 
		C.LabourLicenseNo, 
		C.TotalEmployeeAsPerLicense, 
		C.UdyogAadharNo,
		C.AadharNo, 
		C.PANCardNumber, 
		C.PaymentMode, 
		C.BankName, 
		C.AccountNo, 
		C.BranchName,
		C.MICRNo, 
		C.IFSCCode
	from
		ContractorMaster C inner join 
		AreaMaster AM on AM.AreaId=C.AreaId inner join 
		CityVillageMaster CVM on AM.CityVillageId=CVM.CityVillageId inner join
		TalukaMaster TM on TM.TalukaId=CVM.TalukaId inner join 
		DistrictMaster DM on DM.DistrictId=TM.DistrictId inner join 
		ContryMaster CM on CM.ContryId=TM.ContryId inner join
		StateMaster SM on TM.StateId=SM.StateId  
	where 
		C.CancelTag=0 and
		AM.CancelTag=0 and
		CVM.CancelTag=0 and
		TM.CancelTag=0 and
		DM.CancelTag=0 and
		SM.CancelTag=0 and
		CM.CancelTag=0 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ContractorMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ContractorMaster_Insert_Update_Delete`(
	IN
	ContractorId_V 				int,
	RegisterNo_V 				varchar(200), 
    VendorNumber_V				varchar(200), 
	ContractorName_V 			varchar(500), 
	Address_V 					text, 
	AreaId_V					int ,
	ProprietorName_V 			varchar(200), 
	MobileNumber_V 				bigint, 
	EmailId_V 					varchar(100),
	JoiningDate_V 				date, 
	GSTIN_V 					varchar(20), 
	PFEstablishmentID_V 		varchar(100), 
	ESICEstablishmentID_V 		varchar(100), 
    LWFNo_V						varchar(200), 
	PTRCNo_V 					varchar(100), 
	PTECNo_V 					varchar(100), 
	ContractRenewalDate_V 		date, 
	LabourLicenseNo_V 			varchar(100),
	TotalEmployeeAsPerLicense_V varchar(100), 
	UdyogAadharNo_V 			varchar(50), 
	AadharNo_V 					varchar(50), 
	PANCardNumber_V 			varchar(50), 
	PaymentMode_V 				varchar(50), 
	BankName_V 					varchar(500),  
	AccountNo_V 				varchar(50), 
	BranchName_V 				varchar(50), 
	MICRNo_V 					varchar(50), 
	IFSCCode_V 					varchar(50), 
	UserId_V 					int,
    DeleteFlag_V				int
)
BEGIN
IF ContractorId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					ContractorMaster 
				set 
					CancelTag=1 
                where 
					ContractorId=ContractorId_V;
			END;
		ELSE
			BEGIN
				update 
					ContractorMaster 
				set 
					RegisterNo=RegisterNo_V, 
                    VendorNumber=VendorNumber_V,
					ContractorName=ContractorName_V, 
					Address=Address_V, 
					AreaId=AreaId_V,
					ProprietorName=ProprietorName_V, 
					MobileNumber=MobileNumber_V, 
					EmailId=EmailId_V,
					JoiningDate=JoiningDate_V, 
					GSTIN=GSTIN_V, 
					PFEstablishmentID=PFEstablishmentID_V, 
					ESICEstablishmentID=ESICEstablishmentID_V, 
                    LWFNo=LWFNo_V,
					PTRCNo=PTRCNo_V, 
					PTECNo=PTECNo_V, 
					ContractRenewalDate=ContractRenewalDate_V, 
					LabourLicenseNo=LabourLicenseNo_V,
					TotalEmployeeAsPerLicense=TotalEmployeeAsPerLicense_V, 
					UdyogAadharNo=UdyogAadharNo_V, 
					AadharNo=AadharNo_V, 
					PANCardNumber=PANCardNumber_V, 
					PaymentMode=PaymentMode_V, 
					BankName=BankName_V,  
					AccountNo=AccountNo_V, 
					BranchName=BranchName_V, 
					MICRNo=MICRNo_V, 
					IFSCCode=IFSCCode_V, 
	                ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					ContractorId=ContractorId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into ContractorMaster
				(
					ContractorId,
					RegisterNo, 
                    VendorNumber,
					ContractorName, 
					Address, 
					AreaId,
					ProprietorName, 
					MobileNumber, 
					EmailId,
					JoiningDate, 
					GSTIN, 
					PFEstablishmentID, 
					ESICEstablishmentID, 
                    LWFNo,
                    PTRCNo, 
					PTECNo, 
					ContractRenewalDate, 
					LabourLicenseNo,
					TotalEmployeeAsPerLicense, 
					UdyogAadharNo, 
					AadharNo, 
					PANCardNumber, 
					PaymentMode, 
					BankName, 
					AccountNo, 
					BranchName, 
					MICRNo, 
					IFSCCode, 
                    UserId
				) 
				values
				(
					ContractorId_V,
					RegisterNo_V, 
                    VendorNumber_V,
					ContractorName_V, 
					Address_V, 
					AreaId_V,
					ProprietorName_V, 
					MobileNumber_V, 
					EmailId_V,
					JoiningDate_V, 
					GSTIN_V, 
					PFEstablishmentID_V, 
					ESICEstablishmentId_V, 
                    LWFNo_V,
					PTRCNo_V, 
					PTECNo_V, 
					ContractRenewalDate_V, 
					LabourLicenseNo_V,
					TotalEmployeeAsPerLicense_V, 
					UdyogAadharNo_V, 
					AadharNo_V, 
					PANCardNumber_V, 
					PaymentMode_V, 
					BankName_V, 
					AccountNo_V, 
					BranchName_V, 
					MICRNo_V, 
					IFSCCode_V, 
               	 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ContryMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ContryMaster_CheckExist`(
	in
    ContryId_V 		int,
	ContryName_V 	longtext 
)
BEGIN
	select 
		ContryId 
	from 
		ContryMaster 
	where 
		CancelTag=0 and 
        ContryName=ContryName_V and 
        ContryId != ContryId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ContryMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ContryMaster_FillGrid`(
	in
    ContryName_V	nvarchar(100),
    Search_V		bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				ContryId,
				ContryName as 'Contry Name' 
			from 
				ContryMaster 
			where 
				CancelTag=0 order by ContryName asc;
		END;    
	ELSE
		BEGIN			
			select 
				ContryId,
				ContryName as 'Contry Name'
			from 
				ContryMaster 
			where 
				CancelTag=0 and
                ContryName LIKE CONCAT('%' , ContryName_V , '%') 
				order by ContryName asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ContryMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ContryMaster_Insert_Update_Delete`(
	in	
	ContryId_V		int,
	ContryName_V 	NVARCHAR(500), 
	UserId_V 		int,
    DeleteFlag_V	int
)
BEGIN
	IF ContryId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					ContryMaster 
				set 
					CancelTag=1 
                where 
					ContryId=ContryId_V;
			END;
		ELSE
			BEGIN
				update 
					ContryMaster 
				set 
					ContryName=ContryName_V, 
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					ContryId=ContryId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into ContryMaster
				(
					ContryName,  
				 	UserId
				) 
				values
				(
					ContryName_V,  
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DepartmentMaster_ById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DepartmentMaster_ById`(
	IN
    DepartmentId_V	varchar(50),
    SearchBy	    varchar(50)
)
BEGIN
	Select
		DepartmentId,
		Department,
		InchargeName as 'Incharge Name', 
		ContactPerson as 'Contact Person', 
		MobileNumber as 'Mobile Number', 
		EmailId, 
		ExtensionNo, 
		Description
	from
		DepartmentMaster 
	where 
		CancelTag=0 and
		DepartmentId=DepartmentId_V
		order by Department asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DepartmentMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DepartmentMaster_FillGrid`(
	IN
	Department_V	nvarchar(500),
    Search_V		bool
)
BEGIN
	IF Search_V = FALSE THEN
		BEGIN
			Select
				DepartmentId,
				Department,
				InchargeName as 'Incharge Name', 
				ContactPerson as 'Contact Person', 
				MobileNumber as 'Mobile Number', 
				EmailId, 
				ExtensionNo, 
				Description
			from
				DepartmentMaster 
			where 
				CancelTag=0  
				order by Department asc;
			END;
	ELSE
		Begin
			Select
				DepartmentId,
				Department,
				InchargeName as 'Incharge Name', 
				ContactPerson as 'Contact Person', 
				MobileNumber as 'Mobile Number', 
				EmailId, 
				ExtensionNo, 
				Description
			from
				DepartmentMaster 
			where 
				CancelTag=0 and
				Department LIKE CONCAT('%' , Department_V , '%') 
				order by Department asc;
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DepartmentMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DepartmentMaster_Insert_Update_Delete`(
	IN
	DepartmentId_V 		bigint,
	Department_V 		varchar(100),
	InchargeName_V 		varchar(200), 
	ContactPerson_V 	varchar(200), 
	MobileNumber_V 		varchar(100), 
	EmailId_V 			varchar(200), 
	ExtensionNo_V 		varchar(20), 
	Description_V 		varchar(500), 
	UserId_V 			int,
    DeleteFlag_V		int
)
BEGIN
IF DepartmentId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					departmentmaster 
				set 
					CancelTag=1 
                where 
					DepartmentId=DepartmentId_V;
			END;
		ELSE
			BEGIN
				update 
					departmentmaster 
				set 
					Department=Department_V,
					InchargeName=InchargeName_V, 
					ContactPerson=ContactPerson_V, 
					MobileNumber=MobileNumber_V, 
					EmailId=EmailId_V, 
					ExtensionNo=ExtensionNo_V, 
					Description=Description_V, 
					ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					DepartmentId=DepartmentId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into departmentmaster
				(
					Department,
					InchargeName, 
					ContactPerson, 
					MobileNumber, 
					EmailId, 
					ExtensionNo, 
					Description, 
					UserId
				) 
				values
				(
					Department_V,
					InchargeName_V, 
					ContactPerson_V, 
					MobileNumber_V, 
					EmailId_V, 
					ExtensionNo_V, 
					Description_V, 
					UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DepartmentSummaryReport_GetReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DepartmentSummaryReport_GetReport`(
	IN
    AMonth_V 	int,
	AYear_V 	int
)
BEGIN
	select
		DSR.DepartmentSummaryReportId,
		DSR.AMonth,
		DSR.AYear,
        lm.LocationId,
        lm.LocationName,
		DSR.DepartmentId, 
        dm.Department,
		DSR.TotalP,
		DSR.TotalA,
		DSR.TotalH,
		DSR.TotalHP,
		DSR.TotalWO,
		DSR.TotalWOP,
		DSR.TotalOnLeave,
		DSR.TotalONOD, 
		DSR.TotalOnOT,
		DSR.TotalLateComming,
		DSR.TotalEarlyGoing,
		DSR.TotalMissedInPunch,
		DSR.TotalMissedOutPunch,
		DSR.TotalEmployee
	from
		departmentsummaryreport DSR inner join 
		departmentmaster dm on dm.DepartmentId=DSR.DepartmentId inner join
		locationmaster lm on lm.LocationId=dm.LocationId
	where
		DSR.CancelTag=0 and
		dm.CancelTag=0 and
		lm.CancelTag=0 and
		DSR.AMonth=AMonth_V and
		DSR.AYear=AYear_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DesignationMaster_By_Designation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DesignationMaster_By_Designation`(
	in	
    Designation_V		longtext
)
BEGIN
	select 
		DesignationId,
        	Designation,
        	Grade,
        	DesignationCategory, 
		Leaves,
		OvertimeFlag
	from 
		DesignationMaster 
	where 
		CancelTag=0 and
        Designation=Designation_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DesignationMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DesignationMaster_CheckExist`(
	in
    DesignationId_V 		int,
	Designation_V 			longtext 
)
BEGIN
	select 
		DesignationId 
	from 
		DesignationMaster 
	where 
		CancelTag=0 and 
        Designation=Designation_V and 
        DesignationId != DesignationId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DesignationMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DesignationMaster_FillGrid`(
	in
    Designation_V	nvarchar(100),
    Search_V		bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				DesignationId,
				Designation,
                Grade,
				DesignationCategory,
				Leaves, 
				OvertimeFlag
			from 
				DesignationMaster 
			where 
				CancelTag=0 order by Designation asc;
		END;    
	ELSE
		BEGIN			
			select 
				DesignationId,
				Designation,
                Grade,
                DesignationCategory,
				Leaves, 
				OvertimeFlag
			from 
				DesignationMaster 
			where 
				CancelTag=0 and
                Designation LIKE CONCAT('%' , Designation_V , '%') 
				order by Designation asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DesignationMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DesignationMaster_Insert_Update_Delete`(
	in	
	DesignationId_V			int,
	Designation_V 			NVARCHAR(500), 
    Grade_V 				NVARCHAR(500), 
    DesignationCategory_V	varchar(100),
	Leaves_V				double, 
	OvertimeFlag_V 			int,
	UserId_V 				int,
    DeleteFlag_V			int
)
BEGIN
	IF DesignationId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					DesignationMaster 
				set 
					CancelTag=1 
                where 
					DesignationId=DesignationId_V;
			END;
		ELSE
			BEGIN
				update 
					DesignationMaster 
				set 
					Designation=Designation_V, 
                    Grade=Grade_V,
                    DesignationCategory=DesignationCategory_V,
					Leaves=Leaves_V, 
					OvertimeFlag=OvertimeFlag_V,
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					DesignationId=DesignationId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into DesignationMaster
				(
					Designation, 
                    Grade,
                    DesignationCategory,
					Leaves, 
					OvertimeFlag,
				 	UserId
				) 
				values
				(
					Designation_V,
                    Grade_V,
                    DesignationCategory_V,
                    Leaves_V,
                    OvertimeFlag_V,
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DistrictMaster_By_StateId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DistrictMaster_By_StateId`(
	IN
    SearchType_V	nvarchar(100),
    StateId_V		int
)
BEGIN
	IF SearchType_V = 'State' THEN
		begin
			select DistrictId,StateId,ContryId,DistrictName from DistrictMaster 
            where CancelTag=0 and StateId=StateId_V;
        end;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DistrictMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DistrictMaster_CheckExist`(
	in
    DistrictId_V 		int,
    ContryId_V 		int,
    StateId_V 		int,
	DistrictName_V 	longtext 
)
BEGIN
	select 
		DistrictId 
	from 
		DistrictMaster 
	where 
		CancelTag=0 and 
        DistrictName=DistrictName_V and 
        ContryId=ContryId_V and
        StateId=StateId_V and
        DistrictId != DistrictId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DistrictMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DistrictMaster_FillGrid`(
	in
    DistrictName_V	nvarchar(100),
    Search_V		bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				DM.DistrictId,
                DM.ContryId,
                CM.ContryName as 'Contry Name',
				DM.StateId,
                SM.StateName as 'State Name',
				DM.DistrictName as 'District Name'
			from 
				DistrictMaster DM inner join 
                ContryMaster CM on CM.ContryId=DM.ContryId inner join
                StateMaster SM on DM.StateId=SM.StateId  
			where 
				DM.CancelTag=0 and
				SM.CancelTag=0 and
                CM.CancelTag=0                 
				order by DM.DistrictName asc;
		END;    
	ELSE
		BEGIN			
			select 
				DM.DistrictId,
                DM.ContryId,
                CM.ContryName as 'Contry Name',
				DM.StateId,
                SM.StateName as 'State Name',
				DM.DistrictName as 'District Name'
			from 
				DistrictMaster DM inner join 
                ContryMaster CM on CM.ContryId=DM.ContryId inner join
                StateMaster SM on DM.StateId=SM.StateId  
			where 
				DM.CancelTag=0 and
				SM.CancelTag=0 and
                CM.CancelTag=0 and                 
			    DM.DistrictName LIKE CONCAT('%' , DistrictName_V , '%') 
				order by DM.DistrictName asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DistrictMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DistrictMaster_Insert_Update_Delete`(
	in	
    DistrictId_V	int,
    ContryId_V		int,
    StateId_V		int,
	DistrictName_V 	NVARCHAR(500), 
	UserId_V 		int,
    DeleteFlag_V	int
)
BEGIN
	IF DistrictId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					DistrictMaster 
				set 
					CancelTag=1 
                where 
					DistrictId=DistrictId_V;
			END;
		ELSE
			BEGIN
				update 
					DistrictMaster 
				set 
					ContryId=ContryId_V,
					StateId=StateId_V, 
                    DistrictName=DistrictName_V,
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					DistrictId=DistrictId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into DistrictMaster
				(
					ContryId,
                    StateId,
					DistrictName,  
				 	UserId
				) 
				values
				(
					ContryId_V,
                    StateId_V,
					DistrictName_V,  
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DocumentMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DocumentMaster_CheckExist`(
	in
    DocumentId_V		int,
    FormId_V 			int,
 	DocumentName_V		longtext 
)
BEGIN
	select 
		DocumentId 
	from 
		documentmaster 
	where 
		CancelTag=0 and 
        FormId=FormId_V and
        DocumentName=DocumentName_V and 
        DocumentId != DocumentId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DocumentMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DocumentMaster_FillGrid`(
	in
    DocumentName_V		nvarchar(500),
    Search_V			bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				DM.DocumentId,
				DM.FormId,
                FM.FormName as 'Form Name',
				DM.DocumentName  as 'Document Name'
			from
				documentmaster DM inner join 
                formmaster FM on DM.FormId=DM.FormId 
			where 
				DM.CancelTag=0 and
				FM.CancelTag=0
			order by FM.FormName asc;
		END;    
	ELSE
		BEGIN			
			select 
				DM.DocumentId,
				DM.FormId,
                FM.FormName as 'Form Name',
				DM.DocumentName  as 'Document Name'
			from
				documentmaster DM inner join 
                formmaster FM on DM.FormId=DM.FormId 
			where 
				DM.CancelTag=0 and
				FM.CancelTag=0 and
				DM.DocumentName LIKE CONCAT('%' , DocumentName_V , '%') 
				order by FM.FormName asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DocumentMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DocumentMaster_Insert_Update_Delete`(
	in	
    DocumentId_V		int,
    FormId_V 			int,
 	DocumentName_V		longtext, 
	UserId_V 			int,
    DeleteFlag_V		int
)
BEGIN
	IF DocumentId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					documentmaster 
				set 
					CancelTag=1 
                where 
					DocumentId=DocumentId_V;
			END;
		ELSE
			BEGIN
				update 
					documentmaster 
				set 
					DocumentId=DocumentId_V,
					FormId=FormId_V,
					DocumentName=DocumentName_V,
                    ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					DocumentId=DocumentId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into documentmaster
				(
					DocumentId,
					FormId,
					DocumentName,
                    UserId
				) 
				values
				(
					DocumentId_V,
                    FormId_V,
                    DocumentName_V,
                   	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DocumentMaster_Select_ComboBox` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DocumentMaster_Select_ComboBox`(
IN
	FormName_V 		text 
)
BEGIN
	Select 
		DM.DocumentId,
		DM.FormId,
        FM.FormName,
		DM.DocumentName
	from DocumentMaster DM inner join 
		 FormMaster FM on FM.FormId=DM.FormId 
	where FM.CancelTag=0 and Dm.CancelTag=0 and FM.FormName=FormName_V
    order by DM.DocumentName asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployeeExperience_Save_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployeeExperience_Save_Update`(
	IN
	EmployeeExperienceId_V 		bigint,
	EmployeeId_V 				bigint, 
    OrganizationName_V			VARCHAR(1000),
 	OrganizationAddress_V 		varchar(1000), 
	StartDate_V 				date, 
	EndDate_V 					date, 
	Designation_V 				varchar(200), 
	GrossSalaryPE_V 			varchar(45),
	UserId_V 					int,
    DeleteFlag_V				bool
)
BEGIN
	IF EmployeeExperienceId_V !=0 THEN
		IF DeleteFlag_V = true THEN
			Begin	
				update 
					employeeexperience 
				set
					CancelTag=1
				where 
					CancelTag=0 and
					EmployeeExperienceId=EmployeeExperienceId_V;
			end;
        ELSE
			Begin	
				update 
					employeeexperience 
				set
					EmployeeId=EmployeeId_V, 
					OrganizationName=OrganizationName_V,
					OrganizationAddress=OrganizationAddress_V, 
					StartDate=StartDate_V, 
					EndDate=EndDate_V, 
					Designation=Designation_V, 
					GrossSalaryPE=GrossSalaryPE_V,
					ModifiedUserId=UserId_V
				where 
					CancelTag=0 and
					EmployeeExperienceId=EmployeeExperienceId_V;
			end;
		END IF;
	ELSE
		Begin
			insert into employeeexperience
			(
				EmployeeId, 
				OrganizationName,
				OrganizationAddress, 
				StartDate, 
				EndDate, 
				Designation, 
				GrossSalaryPE,
				UserId
			)
			values
			(
				EmployeeId_V,
				OrganizationName_V, 
				OrganizationAddress_V, 
				StartDate_V, 
				EndDate_V, 
                Designation_V,
                GrossSalaryPE_V,
                UserId_V 
			);
		end;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployeeExperience_Select_By_EmployeeId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployeeExperience_Select_By_EmployeeId`(
	IN
    EmployeeId_V int
)
BEGIN
	select 
		EmployeeExperienceId,
		EmployeeId, 
		OrganizationName as 'Organization Name',
		OrganizationAddress as 'Organization Address',
		StartDate as 'Start Date',
		EndDate as 'End Date',
        Designation,
		GrossSalaryPE as 'Gross Salary' 
	from 
		employeeexperience
	where 
		CancelTag=0 and
        EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployeeFamily_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployeeFamily_Delete`(
	EmployeeFamilyId_V 	bigint
 )
BEGIN
	update employeefamily set
		CancelTag=1
	where 
		CancelTag=0 and
		EmployeeFamilyId=EmployeeFamilyId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployeeFamily_Save_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployeeFamily_Save_Update`(
	IN
	EmployeeFamilyId_V 	bigint,
	EmployeeId_V 		bigint, 
	MemberName_V 		varchar(100), 
	Relationship_V 		varchar(45), 
	Gender_V 			varchar(45), 
	DOB_V 				date, 
	IsResidingWith_V 	varchar(20),
	DependentOnYou_V 	varchar(20), 
	PANCard_V 			varchar(20),
	AadharCard_V 		varchar(20), 
	ContactNo_V 		varchar(100), 
	IsPrimaryNominee_V 	varchar(10),
    DeleteFlag_V		int
)
BEGIN
	IF EmployeeFamilyId_V !=0 THEN
		 
			Begin	
				update employeefamily set
					MemberName=MemberName_V, 
					Relationship=Relationship_V, 
					Gender=Gender_V, 
					DOB=DOB_V, 
					IsResidingWith=IsResidingWith_V, 
					DependentOnYou=DependentOnYou_V, 
					PANCard=PANCard_V,
					AadharCard=AadharCard_V, 
					ContactNo=ContactNo_V, 
					IsPrimaryNominee=IsPrimaryNominee_V 
				where 
					CancelTag=0 and
					EmployeeFamilyId=EmployeeFamilyId_V;
			end;
        
	ELSE
		Begin
			insert into employeefamily
			(
				EmployeeId,
				MemberName, 
				Relationship, 
				Gender, 
				DOB, 
				IsResidingWith, 
				DependentOnYou, 
				PANCard,
				AadharCard, 
				ContactNo, 
				IsPrimaryNominee 
			)
			values
			(
				EmployeeId_V,
				MemberName_V, 
				Relationship_V, 
				Gender_V, 
				DOB_V, 
				IsResidingWith_V, 
				DependentOnYou_V, 
				PANCard_V,
				AadharCard_V, 
				ContactNo_V, 
				IsPrimaryNominee_V 
			);
		end;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployeeFamily_Select_By_EmployeeId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployeeFamily_Select_By_EmployeeId`(
	IN
    EmployeeId_V int
)
BEGIN
	select 
		EmployeeFamilyId,
		EmployeeId,
		MemberName as 'Member Name', 
		Relationship, 
		Gender, 
		DOB, 
		IsResidingWith, 
		DependentOnYou, 
		PANCard as 'PAN Card',
		AadharCard as 'Aadhar Card', 
		ContactNo as 'Contact No', 
		IsPrimaryNominee
	from 
		EmployeeFamily
	where 
		CancelTag=0 and
        EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployeeQualification_Save_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployeeQualification_Save_Update`(
	IN
	EmployeeQualificationId_V 	bigint,
	EmployeeId_V 				bigint, 
    Qualification_V				VARCHAR(1000),
    Stream_V					VARCHAR(1000),
    College_V 					varchar(1000),
    University_V				varchar(1000),
	YearOfPassing_V 			int,
    Grade_V						varchar(100),
	UserId_V 					int,
    DeleteFlag_V				bool
)
BEGIN
	IF EmployeeQualificationId_V !=0 THEN
		IF DeleteFlag_V = true THEN
			Begin	
				update 
					EmployeeQualification 
				set
					CancelTag=1
				where 
					CancelTag=0 and
					EmployeeQualificationId=EmployeeQualificationId_V;
			end;
        ELSE
			Begin	
				update 
					EmployeeQualification 
				set
					EmployeeId=EmployeeId_V, 
					Qualification=Qualification_V,
					Stream=Stream_V,
					College=College_V,
                    University=University_V,
					YearOfPassing=YearOfPassing_V,
                    Grade=Grade_V,
					ModifiedUserId=UserId_V
				where 
					CancelTag=0 and
					EmployeeQualificationId=EmployeeQualificationId_V;
			end;
		END IF;
	ELSE
		Begin
			insert into EmployeeQualification
			(
				EmployeeId, 
				Qualification,
				Stream,
				College,
                University,
				YearOfPassing,
                Grade,
				UserId
			)
			values
			(
				EmployeeId_V,
				Qualification_V, 
				Stream_V, 
				College_V, 
                University_V,
				YearOfPassing_V, 
                Grade_V,
				UserId_V 
			);
		end;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployeeQualification_Select_By_EmployeeId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployeeQualification_Select_By_EmployeeId`(
	IN
    EmployeeId_V int
)
BEGIN
	select 
		EmployeeQualificationId,
		EmployeeId, 
		Qualification,
		Stream,
		College,
        University,
		YearOfPassing as 'Year of Passing',
        Grade
	from 
		EmployeeQualification
	where 
		CancelTag=0 and
        EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployeeSkill_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployeeSkill_Delete`(
	EmployeeSkillId_V 	bigint
 )
BEGIN
	update employeeskill set
		CancelTag=1
	where 
		CancelTag=0 and
		EmployeeSkillId=EmployeeSkillId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployeeSkill_Grid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployeeSkill_Grid`(
	EmployeeId_V 		bigint 
)
BEGIN
	select 
		EmployeeSkillId,
		EmployeeId, 
		Skills, 
		YearsOfExperience, 
		Comments 
	from
		EmployeeSkill
	where
		CancelTag=0 and
        EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployeeSkill_Save_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployeeSkill_Save_Update`(
	EmployeeSkillId_V 	bigint,
	EmployeeId_V 		bigint, 
	Skills_V 			varchar(200), 
	YearsOfExperience_V varchar(10), 
	Comments_V 			varchar(2000), 
	UserId_V 			int
)
BEGIN
	if EmployeeSkillId_V !=0 THEN
		BEGIN
			update EmployeeSkill set
				EmployeeId=EmployeeId_V, 
				Skills=Skills_V, 
				YearsOfExperience=YearsOfExperience_V, 
				Comments=Comments_V, 
				ModifiedUserId=UserId_V 
			where
				CancelTag=0 and
                EmployeeSkillId=EmployeeSkillId_V;
		END;
	ELSE
		BEGIN
			insert into EmployeeSkill
            (
				EmployeeId, 
				Skills, 
				YearsOfExperience, 
				Comments, 
				UserId
			)
			Values
            (
				EmployeeId_V,
                Skills_V,
                YearsOfExperience_V,
                Comments_V,
                UserId_V
            );
		END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_By_EmployeeCode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_By_EmployeeCode`(
	in
    EmployeeCode_V	int 
)
BEGIN
	select 
		E.EmployeeId,
        E.ESSLEmployeeId,
		E.EmployeeCode as 'Code',
		E.EmpInital,
		E.EmployeeName as 'Employee Name', 
		E.Gender, 
		E.DOB, 
		E.Age, 
		E.MaritalStatus as 'Marital Status',  
		E.MarriageDate as 'Marital Date',   
		E.PersonalEmailID as 'Personal Email',   
		E.MobileNo as 'Mobile No', 
		E.OfficialEmailID as 'Official Email',
		E.BloodGroup as 'Blood Group',
		E.AadharCardNumber as 'Aadhar Card Number',
		E.PanCardNumber as 'PAN Card Number',
		E.FatherName as 'Father Name', 
		E.MotherName as 'Mother Name', 
		E.DrivingLicenseNumber as 'Driving License Number', 
		E.PersonalIdentificationMark as 'Personal Identification Mark', 
		E.PhysicalDisability, 
		E.DescriptionOfPhysicalDisability,
		E.DOJ, 
		E.TotalYearsService, 
		E.ContractorId, 
		CM.ContractorName as 'Contractor Name',
		E.EmployementTypeId, 
		ETM.EmployementType as 'Employement Type',
		E.DepartmentId, 
		DM.Department,
		E.DesignationId, 
		DESM.Designation,
		E.JobProfile, 
		E.CategoryId, 
		CT.CategoryFName as 'Category F Name',
		E.LocationId,
		LM.LocationName as 'Location Name',
		E.ReportingTo,
		E.Nationality,
		E.Address,
        E.AreaId, 
		E.SameAsPA,
		E.Address1,
        E.AreaId1,
		E.NomineeName,
		E.NomineeRelationship,
		E.NomineeAddress, 
		E.NomineeDOB,
		E.NomineeContactNo,
		E.NomineeFor,
		E.NomineeBankName,
		E.NomineeAccountNo,
		E.NomineeIFSCCode,
		E.NomineeMICRCode,
		E.EmergancyContactName,
		E.EmergancyContactMobileNumber,
		E.EmergancyContactWorkPhone, 
		E.EmergancyContactRelationship,
		E.EmergancyContactHomePhone,
		E.SkillLanguage, 
		E.SkillFluency, 
		E.SkillAbilityWrite,
		E.SkillAbilityRead, 
		E.SkillAbilitySpeak, 
		E.SkillAbilityUnderstand,
		E.SkillType,
		E.CostCenter as 'Cost Center',
		E.SalaryMonthlyBasic,
		E.SalaryMonthlyHRA,
		E.SalaryMonthlyEducationAllowance, 
		E.SalaryMonthlyConveyanceAllowance,
		E.SalaryMonthlyOtherAllowance, 
		E.SalaryMonthlyGrossSalary, 
		E.SalaryMonthlyTaxDeducted,
		E.SalaryMonthlyProvidentFund,
		E.SalaryMonthlyNetSalary,
		E.SalaryAnualBasic,
		E.SalaryAnualHRA,
		E.SalaryAnualEducationAllowance,
		E.SalaryAnualConveyanceAllowance,
		E.SalaryAnualOtherAllowance, 
		E.SalaryAnualGrossSalary, 
		E.SalaryAnualTaxDeducted,
		E.SalaryAnualProvidentFund,
		E.SalaryAnualNetSalary,
		E.SalaryPaymentMode,
		E.SalaryBank, 
		E.SalaryAccountNo,
		E.SalaryBranchName, 
		E.SalaryMICRNo,
		E.SalaryIFSCCode, 
		E.SalaryPaymentMode1,
		E.SalaryBank1, 
		E.SalaryAccountNo1, 
		E.SalaryBranchName1,
		E.SalaryMICRNo1,
		E.SalaryIFSCCode1,
		E.PFMemberIDNo, 
		E.UANNumber, 
		E.ESICNo, 
		E.LWFLINNo,
		E.PassportType, 
		E.PassportNo,
		E.IssuesDate, 
		E.RenewalDate,
		E.DateOfExpiry, 
		E.Citizenship, 
		E.DateOfJoining, 
		E.ConfirmDate, 
		E.PFStartDate, 
		E.DateOfRetirement, 
		E.DateOfExit, 
		E.A1, 
		E.A2, 
		E.A3, 
		E.DOR, 
		E.DOC, 
		E.EmployeeCodeInDevice, 
		E.EmployeeRFIDNumber,
		E.Status, 
		E.RecordStatus,
		E.EmployeeDeviceGroup,
        E.TotalLeave,
        E.BalanceLeave,
        sg.ShiftGroupFName,
        E.ShiftGroupId,
        E.NewFlag,
		E.FlagC,
		E.OverTimeApplicable,
        E.CompOff,
		E.CompOffUsed,
		E.CompOffBalance,
        E.FlexibleHoursFlag
	from
		Employees E inner join contractormaster CM on CM.ContractorId=E.ContractorId inner join
		employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
		departmentmaster DM on DM.DepartmentId=E.DepartmentId inner join
		designationmaster DESM on DESM.DesignationId=E.DesignationId inner join
		categories CT on CT.CategoryId=E.CategoryId inner join
		locationmaster LM on LM.LocationId=E.LocationId inner join
        shiftgroups sg on sg.ShiftGroupId=E.ShiftGroupId
	where
		E.CancelTag=0 and
		CM.CancelTag=0 and
		ETM.CancelTag=0 and
		DM.CancelTag=0 and
		DESM.CancelTag=0 and
		CT.CancelTag=0 and
		LM.CancelTag=0 and
        sg.CancelTag=0 and
		E.EmployeeCode=EmployeeCode_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_By_EmployeeId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_By_EmployeeId`(
	in
    EmployeeId_V	int 
)
BEGIN
	select 
		E.EmployeeId, 
		E.EmployeeCode as 'Code',
		E.EmpInital,
		E.EmployeeName as 'Employee Name', 
		E.Gender, 
		E.DOB, 
		E.Age, 
		E.MaritalStatus as 'Marital Status',  
		E.MarriageDate as 'Marital Date',   
		E.PersonalEmailID as 'Personal Email',   
		E.MobileNo as 'Mobile No', 
		E.OfficialEmailID as 'Official Email',
		E.BloodGroup as 'Blood Group',
		E.AadharCardNumber as 'Aadhar Card Number',
		E.PanCardNumber as 'PAN Card Number',
		E.FatherName as 'Father Name', 
		E.MotherName as 'Mother Name', 
		E.DrivingLicenseNumber as 'Driving License Number', 
		E.PersonalIdentificationMark as 'Personal Identification Mark', 
		E.PhysicalDisability, 
		E.DescriptionOfPhysicalDisability,
		E.DOJ, 
		E.TotalYearsService, 
		E.ContractorId, 
		CM.ContractorName as 'Contractor Name',
		E.EmployementTypeId, 
		ETM.EmployementType as 'Employement Type',
		E.DepartmentId, 
		DM.Department,
		E.DesignationId, 
		DESM.Designation,
		E.JobProfile, 
		E.CategoryId, 
		CT.CategoryFName as 'Category F Name',
		E.LocationId,
		LM.LocationName as 'Location Name',
		E.ReportingTo,
		E.Nationality,
		E.Address,
        E.AreaId, 
		E.SameAsPA,
		E.Address1,
        E.AreaId1,
		E.NomineeName,
		E.NomineeRelationship,
		E.NomineeAddress, 
		E.NomineeDOB,
		E.NomineeContactNo,
		E.NomineeFor,
		E.NomineeBankName,
		E.NomineeAccountNo,
		E.NomineeIFSCCode,
		E.NomineeMICRCode,
		E.EmergancyContactName,
		E.EmergancyContactMobileNumber,
		E.EmergancyContactWorkPhone, 
		E.EmergancyContactRelationship,
		E.EmergancyContactHomePhone,
		E.SkillLanguage, 
		E.SkillFluency, 
		E.SkillAbilityWrite,
		E.SkillAbilityRead, 
		E.SkillAbilitySpeak, 
		E.SkillAbilityUnderstand,
		E.SkillType,
		E.CostCenter as 'Cost Center',
		E.SalaryMonthlyBasic,
		E.SalaryMonthlyHRA,
		E.SalaryMonthlyEducationAllowance, 
		E.SalaryMonthlyConveyanceAllowance,
		E.SalaryMonthlyOtherAllowance, 
		E.SalaryMonthlyGrossSalary, 
		E.SalaryMonthlyTaxDeducted,
		E.SalaryMonthlyProvidentFund,
		E.SalaryMonthlyNetSalary,
		E.SalaryAnualBasic,
		E.SalaryAnualHRA,
		E.SalaryAnualEducationAllowance,
		E.SalaryAnualConveyanceAllowance,
		E.SalaryAnualOtherAllowance, 
		E.SalaryAnualGrossSalary, 
		E.SalaryAnualTaxDeducted,
		E.SalaryAnualProvidentFund,
		E.SalaryAnualNetSalary,
		E.SalaryPaymentMode,
		E.SalaryBank, 
		E.SalaryAccountNo,
		E.SalaryBranchName, 
		E.SalaryMICRNo,
		E.SalaryIFSCCode, 
		E.SalaryPaymentMode1,
		E.SalaryBank1, 
		E.SalaryAccountNo1, 
		E.SalaryBranchName1,
		E.SalaryMICRNo1,
		E.SalaryIFSCCode1,
		E.PFMemberIDNo, 
		E.UANNumber, 
		E.ESICNo, 
		E.LWFLINNo,
		E.PassportType, 
		E.PassportNo,
		E.IssuesDate, 
		E.RenewalDate,
		E.DateOfExpiry, 
		E.Citizenship, 
		E.DateOfJoining, 
		E.ConfirmDate, 
		E.PFStartDate, 
		E.DateOfRetirement, 
		E.DateOfExit, 
		E.A1, 
		E.A2, 
		E.A3, 
		E.DOR, 
		E.DOC, 
		E.EmployeeCodeInDevice, 
		E.EmployeeRFIDNumber,
		E.Status, 
		E.RecordStatus,
		E.EmployeeDeviceGroup,
        sg.ShiftGroupFName,
        E.OverTimeApplicable,
        E.FlexibleHoursFlag,
        CT.WeeklyOff1Value,
        E.ShiftGroupId,
        E.OpeningLeave,
		E.TotalLeave,
		E.CurrentLeave,
		E.TotalApplicableLeave,
		E.EnjoyLeave,
		E.BalanceLeave
	from
		Employees E inner join contractormaster CM on CM.ContractorId=E.ContractorId inner join
		employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
		departmentmaster DM on DM.DepartmentId=E.DepartmentId inner join
		designationmaster DESM on DESM.DesignationId=E.DesignationId inner join
		categories CT on CT.CategoryId=E.CategoryId inner join
		locationmaster LM on LM.LocationId=E.LocationId inner join
        shiftgroups sg on sg.ShiftGroupId=E.ShiftGroupId
	where
		E.CancelTag=0 and
		CM.CancelTag=0 and
		ETM.CancelTag=0 and
		DM.CancelTag=0 and
		DESM.CancelTag=0 and
		CT.CancelTag=0 and
		LM.CancelTag=0 and
        sg.CancelTag=0 and
		E.EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_By_Id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_By_Id`(
	in
    EmployeeId_V	int
)
BEGIN
	select 
		E.EmployeeId,
		E.EmployeeCode,
		E.EmployeeName,
		E.Gender,
		E.DepartmentId,
        D.Department,
		E.DesignationId,
        DM.Designation,
		E.CategoryId,
        CT.CategoryFName,
		E.EmployementTypeId, 
        ETM.EmployementType,
		E.Status, 
		E.RecordStatus,
		E.EmployeeDeviceGroup,
		E.LocationId,
        L.LocationName,
		E.ContractorId,
        CM.ContractorName,
		E.ShiftGroupId,
		E.DeviceId,
		E.GeofenceId
	from
		Employees E	inner join
		LocationMaster L on L.LocationId=E.LocationId inner join
		departmentmaster D on D.DepartmentId=E.DepartmentId inner join
		designationmaster DM on DM.DesignationId=E.DesignationId inner join
		employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
		LocationMaster C on C.LocationId=E.LocationId inner join
		contractormaster CM on CM.ContractorId=E.ContractorId inner join
		Categories CT on CT.CategoryId=E.CategoryId   
	where 
		E.EmployeeCode=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_CheckExist_By_EmployeeId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_CheckExist_By_EmployeeId`(
	in
    EmployeeCode_V	int
)
BEGIN
	select * from Employees 
    where EmployeeCode=EmployeeCode_V and CancelTag=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_ComboBox_By_Department` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_ComboBox_By_Department`(
	IN
    DepartmentId_V		int
)
BEGIN
	select 
				E.EmployeeId, 
				E.EmployeeCode as 'Code',
				E.EmpInital,
				E.EmployeeName as 'Employee Name', 
				E.Gender, 
				E.DOB, 
				E.Age, 
                E.MobileNo as 'Mobile No', 
                E.PersonalEmailID as 'Personal Email',   
				E.OfficialEmailID as 'Official Email',
                E.BloodGroup as 'Blood Group',
                E.AadharCardNumber as 'Aadhar Card Number',
				E.PanCardNumber as 'PAN Card Number',
                CM.ContractorName as 'Contractor Name',
				ETM.EmployementType as 'Employement Type',
				CT.CategoryFName as 'Category F Name',
				LM.LocationName as 'Location Name',
                DM.Department,
                DESM.Designation,
				E.JobProfile as 'Job Profile', 
                E.Status
			from
				Employees E inner join 
                contractormaster CM on CM.ContractorId=E.ContractorId inner join
                employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
                departmentmaster DM on DM.DepartmentId=E.DepartmentId inner join
                designationmaster DESM on DESM.DesignationId=E.DesignationId inner join
                categories CT on CT.CategoryId=E.CategoryId inner join
                locationmaster LM on LM.LocationId=E.LocationId  
			where
				E.CancelTag=0 and
                CM.CancelTag=0 and
                ETM.CancelTag=0 and
                DM.CancelTag=0 and
                DESM.CancelTag=0 and
                CT.CancelTag=0 and
                LM.CancelTag=0  and
                E.DepartmentId=DepartmentId_V 
                order by E.EmployeeName asc;	 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_ComboBox_By_DepartmentId_LocationId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_ComboBox_By_DepartmentId_LocationId`(
	IN
    LocationId_V		int,
    DepartmentId_V		int
)
BEGIN
	select 
				E.EmployeeId, 
				E.EmployeeCode as 'Code',
				E.EmpInital,
				E.EmployeeName as 'Employee Name', 
				E.Gender, 
				E.DOB, 
				E.Age, 
                E.MobileNo as 'Mobile No', 
                E.PersonalEmailID as 'Personal Email',   
				E.OfficialEmailID as 'Official Email',
                E.BloodGroup as 'Blood Group',
                E.AadharCardNumber as 'Aadhar Card Number',
				E.PanCardNumber as 'PAN Card Number',
                CM.ContractorName as 'Contractor Name',
				ETM.EmployementType as 'Employement Type',
				CT.CategoryFName as 'Category F Name',
				LM.LocationName as 'Location Name',
                DM.Department,
                DESM.Designation,
				E.JobProfile as 'Job Profile', 
                E.Status
			from
				Employees E inner join 
                contractormaster CM on CM.ContractorId=E.ContractorId inner join
                employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
                departmentmaster DM on DM.DepartmentId=E.DepartmentId inner join
                designationmaster DESM on DESM.DesignationId=E.DesignationId inner join
                categories CT on CT.CategoryId=E.CategoryId inner join
                locationmaster LM on LM.LocationId=E.LocationId  
			where
				E.CancelTag=0 and
                CM.CancelTag=0 and
                ETM.CancelTag=0 and
                DM.CancelTag=0 and
                DESM.CancelTag=0 and
                CT.CancelTag=0 and
                LM.CancelTag=0  and
                E.LocationId=LocationId_V  and
                E.DepartmentId=DepartmentId_V and
                E.EmployeeId NOT IN(select EmployeeId from Login where CancelTag=0) 
                order by E.EmployeeName asc;	 
		
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_ComboBox_By_DepartmentId_LocationId_Without_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_ComboBox_By_DepartmentId_LocationId_Without_Login`(
	IN
    LocationId_V		int,
    DepartmentId_V		int
)
BEGIN
	select 
				E.EmployeeId, 
				E.EmployeeCode as 'Code',
				E.EmpInital,
				E.EmployeeName as 'Employee Name', 
				E.Gender, 
				E.DOB, 
				E.Age, 
                E.MobileNo as 'Mobile No', 
                E.PersonalEmailID as 'Personal Email',   
				E.OfficialEmailID as 'Official Email',
                E.BloodGroup as 'Blood Group',
                E.AadharCardNumber as 'Aadhar Card Number',
				E.PanCardNumber as 'PAN Card Number',
                CM.ContractorName as 'Contractor Name',
				ETM.EmployementType as 'Employement Type',
				CT.CategoryFName as 'Category F Name',
				LM.LocationName as 'Location Name',
                DM.Department,
                DESM.Designation,
				E.JobProfile as 'Job Profile', 
                E.Status
			from
				Employees E inner join 
                contractormaster CM on CM.ContractorId=E.ContractorId inner join
                employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
                departmentmaster DM on DM.DepartmentId=E.DepartmentId inner join
                designationmaster DESM on DESM.DesignationId=E.DesignationId inner join
                categories CT on CT.CategoryId=E.CategoryId inner join
                locationmaster LM on LM.LocationId=E.LocationId  
			where
				E.CancelTag=0 and
                CM.CancelTag=0 and
                ETM.CancelTag=0 and
                DM.CancelTag=0 and
                DESM.CancelTag=0 and
                CT.CancelTag=0 and
                LM.CancelTag=0  and
                E.LocationId=LocationId_V  and
                E.DepartmentId=DepartmentId_V  
                order by E.EmployeeName asc;	 
		
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_ComboBox_By_LocationId_UserType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_ComboBox_By_LocationId_UserType`(
	IN
    LocationId_V	int,
    UserType_V		varchar(200)
)
BEGIN
	 select 
				E.EmployeeId, 
				E.EmployeeCode as 'Code',
				E.EmpInital,
				E.EmployeeName as 'Employee Name', 
				E.Gender, 
				E.DOB, 
				E.Age, 
                E.MobileNo as 'Mobile No', 
                E.PersonalEmailID as 'Personal Email',   
				E.OfficialEmailID as 'Official Email',
                E.BloodGroup as 'Blood Group',
                E.AadharCardNumber as 'Aadhar Card Number',
				E.PanCardNumber as 'PAN Card Number',
                CM.ContractorName as 'Contractor Name',
				ETM.EmployementType as 'Employement Type',
				CT.CategoryFName as 'Category F Name',
				LM.LocationName as 'Location Name',
                DM.Department,
                DESM.Designation,
				E.JobProfile as 'Job Profile', 
                E.Status
			from
				Employees E inner join 
                contractormaster CM on CM.ContractorId=E.ContractorId inner join
                employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
                departmentmaster DM on DM.DepartmentId=E.DepartmentId inner join
                designationmaster DESM on DESM.DesignationId=E.DesignationId inner join
                categories CT on CT.CategoryId=E.CategoryId inner join
                locationmaster LM on LM.LocationId=E.LocationId  inner join 
                Login Logi on Logi.EmployeeId=E.EmployeeId
			where
				E.CancelTag=0 and
                CM.CancelTag=0 and
                ETM.CancelTag=0 and
                DM.CancelTag=0 and
                DESM.CancelTag=0 and
                CT.CancelTag=0 and
                LM.CancelTag=0  and
                Logi.CancelTag=0 and
                E.LocationId=LocationId_V and
                DESM.Designation=UserType_V
                order by E.EmployeeName asc;	 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_Contact_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_Contact_Update`(
	IN
	EmployeeId_V		int,
	Nationality_V 		varchar(100), 
	Address_V 			varchar(500), 
	AreaId_V 			int,
	PoliceStationId_V 	int, 
	SameAsPA_V 			int, 
	Address1_V 			varchar(500),
	AreaId1_V 			int, 
	PoliceStationId1_V 	int,
    UserId_V			int
)
BEGIN
	update Employees set
		Nationality=Nationality_V, 
		Address=Address_V, 
		AreaId=AreaId_V,
		PoliceStationId=PoliceStationId_V, 
		SameAsPA=SameAsPA_V, 
		Address1=Address1_V,
		AreaId1=AreaId1_V, 
		PoliceStationId1=PoliceStationId1_V,
        ModifiedUserId=UserId_V
	where
		EmployeeId=EmployeeId_V and
        CancelTag=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_Delete`(
	EmployeeId_V 	bigint,
    UserId_V 	bigint
 )
BEGIN
	update employees set
		CancelTag=1,
        ModifiedUserId=UserId_V
	where 
		CancelTag=0 and
		EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_Dependents_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_Dependents_Update`(
	IN
    EmployeeId_V	int,
    FamilyDetailsName_V varchar(100), 
	FamilyDetailsRelationship_V varchar(45), 
	FamilyDetailsGender_V varchar(45), 
	FamilyDetailsIsResidingWith_V varchar(10), 
	FamilyDetailsIsDependentOnYou_V varchar(10), 
	FamilyDetailsPANCard_V varchar(20), 
	FamilyDetailsAadharCard_V varchar(20), 
	FamilyDetailsContactNo_V varchar(100), 
	IsPrimary_V varchar(10), 
	NomineeName_V varchar(100),
	NomineeRelationship_V varchar(100), 
	NomineeAddress_V varchar(500), 
	NomineeDOB_V date, 
	NomineeContactNo_V varchar(100), 
	NomineeFor_V varchar(45), 
	NomineeBankName_V varchar(200), 
	NomineeAccountNo_V varchar(100), 
	NomineeIFSCCode_V varchar(100), 
	NomineeMICRCode_V varchar(100), 
	EmergancyContactName_V varchar(100), 
	EmergancyContactMobileNumber_V varchar(100), 
	EmergancyContactWorkPhone_V varchar(100), 
	EmergancyContactRelationship_V varchar(100),
	EmergancyContactHomePhone_V varchar(100) 
)
BEGIN
	Begin
		update Employees set
			FamilyDetailsName=FamilyDetailsName_V, 
			FamilyDetailsRelationship=FamilyDetailsRelationship_V, 
			FamilyDetailsGender=FamilyDetailsGender_V, 
			FamilyDetailsIsResidingWith=FamilyDetailsIsResidingWith_V, 
			FamilyDetailsIsDependentOnYou=FamilyDetailsIsDependentOnYou_V, 
			FamilyDetailsPANCard=FamilyDetailsPANCard_V, 
			FamilyDetailsAadharCard=FamilyDetailsAadharCard_V, 
			FamilyDetailsContactNo=FamilyDetailsContactNo_V, 
			IsPrimary=IsPrimary_V, 
			NomineeName=NomineeName_V,
			NomineeRelationship=NomineeRelationship_V, 
			NomineeAddress=NomineeAddress_V, 
			NomineeDOB=NomineeDOB_V, 
			NomineeContactNo=NomineeContactNo_V, 
			NomineeFor=NomineeFor_V, 
			NomineeBankName=NomineeBankName_V, 
			NomineeAccountNo=NomineeAccountNo_V, 
			NomineeIFSCCode=NomineeIFSCCode_V, 
			NomineeMICRCode=NomineeMICRCode_V, 
			EmergancyContactName=EmergancyContactName_V, 
			EmergancyContactMobileNumber=EmergancyContactMobileNumber_V, 
			EmergancyContactWorkPhone=EmergancyContactWorkPhone_V, 
			EmergancyContactRelationship=EmergancyContactRelationship_V,
			EmergancyContactHomePhone=EmergancyContactHomePhone_V
		where 
			EmployeeId=EmployeeId_V and
			CancelTag=0;
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_FillBy_LocationAndUserType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_FillBy_LocationAndUserType`(
	IN
    LocationId_V	int,
    UserType_V		varchar(200)
)
BEGIN
	select 
		LM.LocationName as 'Location Name',
        E.EmployeeId, 
		E.EmployeeCode as 'Code',
		E.EmployeeName as 'Employee Name', 
		DM.Designation
	from
		Employees E inner join 
        locationmaster LM on LM.LocationId=E.LocationId  inner join 
        designationmaster DM on DM.DesignationId=E.DesignationId 
	where
		E.CancelTag=0 and
		LM.CancelTag=0  and
		DM.CancelTag=0 and
        DM.Designation=UserType_V and 
        E.Status='Working' and
        E.LocationId=LocationId_V
		order by E.EmployeeName asc;	 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_FillGrid`(
	in
    EmployeeName_V	nvarchar(100),
    Search_V		bool,
    NewFlag_V		int,
    EmployeeCode_V	int
)
BEGIN
	IF Search_V = FALSE THEN
		if EmployeeCode_V=0 then
			BEGIN	
				select 
					E.EmployeeId, 
					E.EmployeeCode as 'Employee Code',
					E.EmpInital,
					E.EmployeeName as 'Employee Name', 
					E.Gender, 
					E.DOB, 
					E.Age, 
					E.MobileNo as 'Mobile No', 
					E.PersonalEmailID as 'Personal Email',   
					E.OfficialEmailID as 'Official Email',
					E.BloodGroup as 'Blood Group',
					E.AadharCardNumber as 'Aadhar Card Number',
					E.PanCardNumber as 'PAN Card Number',
					CM.ContractorName as 'Contractor Name',
					ETM.EmployementType as 'Employement Type',
					CT.CategoryFName as 'Category F Name',
					LM.LocationName as 'Location Name',
					DM.Department,
					DESM.Designation,
					E.JobProfile as 'Job Profile', 
					E.Status,
					E.NewFlag,
                    E.DOJ
				from
					Employees E inner join 
					contractormaster CM on CM.ContractorId=E.ContractorId inner join
					employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
					departmentmaster DM on DM.DepartmentId=E.DepartmentId inner join
					designationmaster DESM on DESM.DesignationId=E.DesignationId inner join
					categories CT on CT.CategoryId=E.CategoryId inner join
					locationmaster LM on LM.LocationId=E.LocationId  
				where
					E.CancelTag=0 and
					CM.CancelTag=0 and
					ETM.CancelTag=0 and
					DM.CancelTag=0 and
					DESM.CancelTag=0 and
					CT.CancelTag=0 and
					LM.CancelTag=0 and
					E.NewFlag=NewFlag_V
					order by E.EmployeeCode asc;
				end;
			else
				BEGIN	
					select 
						E.EmployeeId, 
						E.EmployeeCode as 'Employee Code',
						E.EmpInital,
						E.EmployeeName as 'Employee Name', 
						E.Gender, 
						E.DOB, 
						E.Age, 
						E.MobileNo as 'Mobile No', 
						E.PersonalEmailID as 'Personal Email',   
						E.OfficialEmailID as 'Official Email',
						E.BloodGroup as 'Blood Group',
						E.AadharCardNumber as 'Aadhar Card Number',
						E.PanCardNumber as 'PAN Card Number',
						CM.ContractorName as 'Contractor Name',
						ETM.EmployementType as 'Employement Type',
						CT.CategoryFName as 'Category F Name',
						LM.LocationName as 'Location Name',
						DM.Department,
						DESM.Designation,
						E.JobProfile as 'Job Profile', 
						E.Status,
						E.NewFlag,
						E.DOJ
					from
						Employees E inner join 
						contractormaster CM on CM.ContractorId=E.ContractorId inner join
						employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
						departmentmaster DM on DM.DepartmentId=E.DepartmentId inner join
						designationmaster DESM on DESM.DesignationId=E.DesignationId inner join
						categories CT on CT.CategoryId=E.CategoryId inner join
						locationmaster LM on LM.LocationId=E.LocationId  
					where
						E.CancelTag=0 and
						CM.CancelTag=0 and
						ETM.CancelTag=0 and
						DM.CancelTag=0 and
						DESM.CancelTag=0 and
						CT.CancelTag=0 and
						LM.CancelTag=0 and
						E.EmployeeCode=EmployeeCode_V
						order by E.EmployeeCode asc;	
                end;
			end if;
	ELSE
		BEGIN			
			select 
				E.EmployeeId, 
				E.EmployeeCode as 'Employee Code',
				E.EmpInital,
				E.EmployeeName as 'Employee Name', 
				E.Gender, 
				E.DOB, 
				E.Age, 
                E.MobileNo as 'Mobile No', 
                E.PersonalEmailID as 'Personal Email',   
				E.OfficialEmailID as 'Official Email',
                E.BloodGroup as 'Blood Group',
                E.AadharCardNumber as 'Aadhar Card Number',
				E.PanCardNumber as 'PAN Card Number',
                CM.ContractorName as 'Contractor Name',
				ETM.EmployementType as 'Employement Type',
				CT.CategoryFName as 'Category F Name',
				LM.LocationName as 'Location Name',
                DM.Department,
                DESM.Designation,
				E.JobProfile as 'Job Profile', 
                E.Status,
                E.NewFlag,
				E.DOJ
			from
				Employees E inner join 
                contractormaster CM on CM.ContractorId=E.ContractorId inner join
                employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
                departmentmaster DM on DM.DepartmentId=E.DepartmentId inner join
                designationmaster DESM on DESM.DesignationId=E.DesignationId inner join
                categories CT on CT.CategoryId=E.CategoryId inner join
                locationmaster LM on LM.LocationId=E.LocationId  
			where
				E.CancelTag=0 and
                CM.CancelTag=0 and
                ETM.CancelTag=0 and
                DM.CancelTag=0 and
                DESM.CancelTag=0 and
                CT.CancelTag=0 and
                LM.CancelTag=0 and
				E.EmployeeName LIKE CONCAT('%' , EmployeeName_V , '%') 
				order by E.EmployeeCode asc;	
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_Insert_ESSLData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_Insert_ESSLData`(
	IN
    EmployeeId_V 			bigint,
	EmployeeCode_V 			bigint, 
	EmployeeName_V 			varchar(100), 
	Gender_V 				varchar(15), 
	DepartmentId_V 			int, 
	DesignationId_V 		varchar(100), 
	CategoryId_V 			int, 
	EmployeeCodeInDevice_V 	int,
	EmployeeRFIDNumber_V 	varchar(45), 
	EmployementTypeId_V		int, 
	Status_V 				varchar(45), 
	RecordStatus_V 			int,
	EmployeeDeviceGroup_V 	varchar(50), 
	LocationId_V 			int, 
	ContractorId_V 			int, 
	ShiftGroupId_V 			int, 
	DeviceId_V 				int,
	GeofenceId_V 			int,
    NewFlag_V				int
)
BEGIN
	begin
			insert into Employees
			(
				EmployeeCode, 
				EmployeeName, 
				Gender, 
				DepartmentId, 
				DesignationId, 
				CategoryId, 
				EmployeeCodeInDevice,
				EmployeeRFIDNumber, 
				EmployementTypeId, 
				Status, 
				RecordStatus,
				EmployeeDeviceGroup, 
				LocationId, 
				ContractorId, 
				ShiftGroupId, 
				DeviceId,
				GeofenceId,
				NewFlag
			)
			values
			(
				EmployeeCode_V, 
				EmployeeName_V, 
				Gender_V,
				DepartmentId_V , 
				DesignationId_V, 
				CategoryId_V, 
				EmployeeCodeInDevice_V,
				EmployeeRFIDNumber_V, 
				EmployementTypeId_V, 
				Status_V, 
				RecordStatus_V,
				EmployeeDeviceGroup_V, 
				LocationId_V, 
				ContractorId_V, 
				ShiftGroupId_V, 
				DeviceId_V,
				GeofenceId_V,
				NewFlag_V
			);
		end;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_ListBox_LikeSearch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_ListBox_LikeSearch`(
	 IN
	 SearchText_V	 varchar(200),
     SearchType_V	 varchar(20)
)
BEGIN
	IF SearchType_V = 'Text' THEN
		select 
			E.EmployeeId,
            E.EmployeeCode,
			CONCAT(E.EmployeeName,'-', E.EmployeeCode,'-', DM.Designation) AS EmpData,
            E.DepartmentId, 
			E.DesignationId,
            DM.Designation
		from 
			Employees E	inner join
			LocationMaster L on L.LocationId=E.LocationId inner join
			departmentmaster D on D.DepartmentId=E.DepartmentId inner join
            designationmaster DM on DM.DesignationId=E.DesignationId inner join
			employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
			LocationMaster C on C.LocationId=E.LocationId inner join
			contractormaster CM on CM.ContractorId=E.ContractorId inner join
			Categories CT on CT.CategoryId=E.CategoryId   
		where 
			E.CancelTag=0 and 
            L.CancelTag=0 and 
            D.CancelTag=0 and 
            DM.CancelTag=0 and 
            ETM.CancelTag=0 and 
            C.CancelTag=0 and 
            CM.CancelTag=0 and
            CT.CancelTag=0 and
			(REPLACE(E.EmployeeName, ' ','') LIKE CONCAT('%', REPLACE(SearchText_V, ' ','') ,'%') );
	ELSE
		select 
			E.EmployeeId,
            E.EmployeeCode,
			CONCAT(E.EmployeeName,'-', E.EmployeeCode,'-', DM.Designation) AS EmpData,
            E.DepartmentId, 
			E.DesignationId,
            DM.Designation
		from 
			Employees E	inner join
			LocationMaster L on L.LocationId=E.LocationId inner join
			departmentmaster D on D.DepartmentId=E.DepartmentId inner join
            designationmaster DM on DM.DesignationId=E.DesignationId inner join
			employementtypemaster ETM on ETM.EmployementTypeId=E.EmployementTypeId inner join
			LocationMaster C on C.LocationId=E.LocationId inner join
			contractormaster CM on CM.ContractorId=E.ContractorId inner join
			Categories CT on CT.CategoryId=E.CategoryId   
		where 
			E.CancelTag=0 and 
            L.CancelTag=0 and 
            D.CancelTag=0 and 
            DM.CancelTag=0 and 
            ETM.CancelTag=0 and 
            C.CancelTag=0 and 
            CM.CancelTag=0 and
            CT.CancelTag=0;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_Nominee_Emergancy_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_Nominee_Emergancy_Update`(
	IN
    EmployeeId_V					int,
    NomineeName_V	 				varchar(100), 
	NomineeRelationship_V 			varchar(100), 
	NomineeAddress_V 				varchar(500), 
	NomineeDOB_V 					date, 
	NomineeContactNo_V 				varchar(100), 
	NomineeFor_V 					varchar(45), 
	NomineeBankName_V 				varchar(200), 
	NomineeAccountNo_V 				varchar(100), 
	NomineeIFSCCode_V 				varchar(100), 
	NomineeMICRCode_V 				varchar(100), 
	EmergancyContactName_V 			varchar(100), 
	EmergancyContactMobileNumber_V 	varchar(100), 
	EmergancyContactWorkPhone_V 	varchar(100),
	EmergancyContactRelationship_V 	varchar(100), 
	EmergancyContactHomePhone_V 	varchar(100) 
)
BEGIN
	update Employees set
		NomineeName=NomineeName_V, 
		NomineeRelationship=NomineeRelationship_V, 
		NomineeAddress=NomineeAddress_V, 
		NomineeDOB=NomineeDOB_V, 
		NomineeContactNo=NomineeContactNo_V, 
		NomineeFor=NomineeFor_V, 
		NomineeBankName=NomineeBankName_V, 
		NomineeAccountNo=NomineeAccountNo_V, 
		NomineeIFSCCode=NomineeIFSCCode_V, 
		NomineeMICRCode=NomineeMICRCode_V, 
		EmergancyContactName=EmergancyContactName_V, 
		EmergancyContactMobileNumber=EmergancyContactMobileNumber_V, 
		EmergancyContactWorkPhone=EmergancyContactWorkPhone_V,
		EmergancyContactRelationship=EmergancyContactRelationship_V, 
		EmergancyContactHomePhone=EmergancyContactHomePhone_V
	where
		EmployeeId=EmployeeId_V and
        CancelTag=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_OpeningLeave_Grid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_OpeningLeave_Grid`(
	EmployeeId_V 		bigint 
)
BEGIN
	select 
		EmployeeId, 
        TotalLeave,
		OpeningLeave, 
		BalanceLeave 
	from
		Employees
	where
		CancelTag=0 and
        EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_OpeningLeave_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_OpeningLeave_Update`(
	IN
	EmployeeId_V	int,
    OpeningLeave_V 	varchar(100), 
	BalanceLeave_V 	varchar(45) 
)
BEGIN
	update Employees set
		OpeningLeave=OpeningLeave_V, 
		BalanceLeave=BalanceLeave_V 
	where
		CancelTag=0 and
		EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_Profile_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_Profile_Insert_Update_Delete`(
	IN
	EmployeeId_V 						bigint, 
	EmployeeCode_V 						bigint ,
	EmpInital_V 						varchar(10),
	EmployeeName_V 						varchar(100), 
	Gender_V 							varchar(15), 
	DOB_V 								date, 
	Age_V 								int, 
	MaritalStatus_V 					varchar(45), 
	MarriageDate_V 						date, 
	PersonalEmailID_V 					varchar(200),
	MobileNo_V 							varchar(200), 
	OfficialEmailID_V 					varchar(200),
	BloodGroup_V 						varchar(10),
	AadharCardNumber_V 					varchar(20),
	PanCardNumber_V 					varchar(20),
	FatherName_V						varchar(100), 
	MotherName_V						varchar(100),
	DrivingLicenseNumber_V 				varchar(20), 
	PersonalIdentificationMark_V		varchar(500), 
	PhysicalDisability_V 				int, 
	DescriptionOfPhysicalDisability_V 	varchar(500),
	DOJ_V 								date, 
	TotalYearsService_V 				varchar(10), 
	ContractorId_V 						int, 
	EmployementTypeId_V 				int, 
	DepartmentId_V 						int, 
	DesignationId_V 					int, 
	JobProfile_V 						varchar(200), 
	CategoryId_V 						int, 
	LocationId_V 						int,
	ShiftGroupId_V 						int,
    Status_V 							varchar(45),
    OverTimeApplicable_V				int,
    FlexibleHoursFlag_V					int,
    DateOfExit_V 						date,
    UserId_V							int,
    FinancialYearId_V					int
)
BEGIN
	IF(EXISTS(SELECT * FROM Employees WHERE EmployeeId = EmployeeId_V)) THEN
		update Employees set
			EmpInital=EmpInital_V,
			EmployeeName=EmployeeName_V, 
			Gender=Gender_V, 
			DOB=DOB_V, 
			Age=Age_V, 
			MaritalStatus=MaritalStatus_V, 
			MarriageDate=MarriageDate_V, 
			PersonalEmailID=PersonalEmailID_V,
			MobileNo=MobileNo_V, 
			OfficialEmailID=OfficialEmailID_V,
			BloodGroup=BloodGroup_V,
			AadharCardNumber=AadharCardNumber_V,
			PanCardNumber=PanCardNumber_V,
			FatherName=FatherName_V, 
			MotherName=MotherName_V,
			DrivingLicenseNumber=DrivingLicenseNumber_V, 
			PersonalIdentificationMark=PersonalIdentificationMark_V, 
			PhysicalDisability=PhysicalDisability_V, 
			DescriptionOfPhysicalDisability=DescriptionOfPhysicalDisability_V,
			DOJ=DOJ_V, 
			TotalYearsService=TotalYearsService_V, 
			ContractorId=ContractorId_V, 
			EmployementTypeId=EmployementTypeId_V, 
			DepartmentId=DepartmentId_V, 
			DesignationId=DesignationId_V, 
			JobProfile=JobProfile_V, 
			CategoryId=CategoryId_V, 
			LocationId=LocationId_V,
			ShiftGroupId=ShiftGroupId_V,
            Status=Status_V,
            NewFlag=0,
            OverTimeApplicable=OverTimeApplicable_V,
            FlexibleHoursFlag=FlexibleHoursFlag_V,
            DateOfExit=DateOfExit_V,
            ModifiedUserId=UserId_V,
			ModifiedDate=NOW(),
            FinancialYearId=FinancialYearId_V
		where 
			EmployeeId=EmployeeId_V and
            CancelTag=0;
	else
		insert into Employees 
        (
			EmployeeId, 
			EmployeeCode,
			EmpInital,
			EmployeeName, 
			Gender, 
			DOB, 
			Age, 
			MaritalStatus, 
			MarriageDate, 
			PersonalEmailID,
			MobileNo, 
			OfficialEmailID,
			BloodGroup,
			AadharCardNumber,
			PanCardNumber,
			FatherName, 
			MotherName,
			DrivingLicenseNumber, 
			PersonalIdentificationMark, 
			PhysicalDisability, 
			DescriptionOfPhysicalDisability,
			DOJ, 
			TotalYearsService, 
			ContractorId, 
			EmployementTypeId, 
			DepartmentId, 
			DesignationId, 
			JobProfile, 
			CategoryId, 
			LocationId,
			ShiftGroupId,
            Status,
            OverTimeApplicable,
            FlexibleHoursFlag,
            DateOfExit,
            UserId,
            FinancialYearId
        )
        values
        (
			EmployeeId_V, 
			EmployeeCode_V, 
			EmpInital_V,
			EmployeeName_V, 
			Gender_V, 
			DOB_V, 
			Age_V, 
			MaritalStatus_V, 
			MarriageDate_V, 
			PersonalEmailID_V,
			MobileNo_V, 
			OfficialEmailID_V,
			BloodGroup_V,
			AadharCardNumber_V,
			PanCardNumber_V,
			FatherName_V, 
			MotherName_V,
			DrivingLicenseNumber_V, 
			PersonalIdentificationMark_V, 
			PhysicalDisability_V, 
			DescriptionOfPhysicalDisability_V,
			DOJ_V, 
			TotalYearsService_V, 
			ContractorId_V, 
			EmployementTypeId_V, 
			DepartmentId_V, 
			DesignationId_V, 
			JobProfile_V, 
			CategoryId_V, 
			LocationId_V,
			ShiftGroupId_V,
            Status_V,
            OverTimeApplicable_V,
            FlexibleHoursFlag_V,
            DateOfExit_V,
            UserId_V,
            FinancialYearId_V
        );
	End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_Qualification_Education_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_Qualification_Education_Update`(
	IN
	EmployeeId_V	int,
    QualificationEducation_V varchar(100), 
	QualificationSpeciazation_V varchar(45), 
	QualificationStartDate_V date,
	QualificationEndDate_V date, 
	QualificationScoreClass_V varchar(100), 
	QualificationYear_V varchar(100), 
	QualificationRemarks_V varchar(200), 
	ExperienceEmployer_V varchar(200), 
	ExperienceBranch_V varchar(200), 
	ExperienceLocation_V varchar(200), 
	ExperienceDesignation_V varchar(100), 
	ExperienceCTC_V varchar(10), 
	ExperienceGrossSalary_V varchar(20), 
	ExperienceStartDate_V date, 
	ExperienceEndDate_V date, 
	ExperienceManager_V varchar(200), 
	ExperienceManagerContactNo_V varchar(100), 
	ExperienceIndustryType_V varchar(200), 
	ExperienceRemarks_V varchar(200) 
)
BEGIN
	update Employees set
		    QualificationEducation=QualificationEducation_V, 
			QualificationSpeciazation=QualificationSpeciazation_V, 
			QualificationStartDate=QualificationStartDate_V,
			QualificationEndDate=QualificationEndDate_V, 
			QualificationScoreClass=QualificationScoreClass_V, 
			QualificationYear=QualificationYear_V, 
			QualificationRemarks=QualificationRemarks_V, 
			ExperienceEmployer=ExperienceEmployer_V, 
			ExperienceBranch=ExperienceBranch_V, 
			ExperienceLocation=ExperienceLocation_V, 
			ExperienceDesignation=ExperienceDesignation_V, 
			ExperienceCTC=ExperienceCTC_V, 
			ExperienceGrossSalary=ExperienceGrossSalary_V, 
			ExperienceStartDate=ExperienceStartDate_V, 
			ExperienceEndDate=ExperienceEndDate_V, 
			ExperienceManager=ExperienceManager_V, 
			ExperienceManagerContactNo=ExperienceManagerContactNo_V, 
			ExperienceIndustryType=ExperienceIndustryType_V, 
			ExperienceRemarks=ExperienceRemarks_V
		where
			CancelTag=0 and
            EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_Salary_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_Salary_Update`(
	IN
    EmployeeId_V	int,
    CostCenter_V	nvarchar(500),
    SalaryMonthlyBasic_V varchar(20),
    SalaryMonthlyHRA_V varchar(20), 
	SalaryMonthlyEducationAllowance_V varchar(20), 
	SalaryMonthlyConveyanceAllowance_V varchar(20), 
	SalaryMonthlyOtherAllowance_V varchar(20), 
	SalaryMonthlyGrossSalary_V varchar(20), 
    SalaryMonthlyTaxDeducted_V varchar(10), 
	SalaryMonthlyProvidentFund_V varchar(10), 
	SalaryMonthlyNetSalary_V varchar(10), 
 	SalaryAnualBasic_V varchar(20), 
	SalaryAnualHRA_V varchar(20), 
	SalaryAnualEducationAllowance_V varchar(20), 
	SalaryAnualConveyanceAllowance_V varchar(20), 
	SalaryAnualOtherAllowance_V varchar(20), 
	SalaryAnualGrossSalary_V varchar(20), 
    SalaryAnualTaxDeducted_V varchar(10), 
	SalaryAnualProvidentFund_V varchar(10), 
	SalaryAnualNetSalary_V varchar(10), 
	SalaryPaymentMode_V varchar(100), 
	SalaryBank_V varchar(200), 
	SalaryAccountNo_V varchar(50), 
	SalaryBranchName_V varchar(200), 
	SalaryMICRNo_V varchar(100),
	SalaryIFSCCode_V varchar(20), 
	SalaryPaymentMode1_V varchar(100), 
	SalaryBank1_V varchar(200), 
	SalaryAccountNo1_V varchar(50), 
	SalaryBranchName1_V varchar(200), 
	SalaryMICRNo1_V varchar(100), 
	SalaryIFSCCode1_V varchar(20),
    UserId_V		int
 
)
BEGIN
	update Employees set
		CostCenter=CostCenter_V,
        SalaryMonthlyBasic=SalaryMonthlyBasic_V,
		SalaryMonthlyHRA=SalaryMonthlyHRA_V, 
		SalaryMonthlyEducationAllowance=SalaryMonthlyEducationAllowance_V, 
		SalaryMonthlyConveyanceAllowance=SalaryMonthlyConveyanceAllowance_V, 
		SalaryMonthlyOtherAllowance=SalaryMonthlyOtherAllowance_V, 
		SalaryMonthlyGrossSalary=SalaryMonthlyGrossSalary_V, 
		SalaryMonthlyTaxDeducted=SalaryMonthlyTaxDeducted_V, 
		SalaryMonthlyProvidentFund=SalaryMonthlyProvidentFund_V, 
		SalaryMonthlyNetSalary=SalaryMonthlyNetSalary_V,
		SalaryAnualBasic=SalaryAnualBasic_V, 
		SalaryAnualHRA=SalaryAnualHRA_V, 
		SalaryAnualEducationAllowance=SalaryAnualEducationAllowance_V, 
		SalaryAnualConveyanceAllowance=SalaryAnualConveyanceAllowance_V, 
		SalaryAnualOtherAllowance=SalaryAnualOtherAllowance_V, 
		SalaryAnualGrossSalary=SalaryAnualGrossSalary_V, 
        SalaryAnualTaxDeducted=SalaryAnualTaxDeducted_V, 
		SalaryAnualProvidentFund=SalaryAnualProvidentFund_V, 
		SalaryAnualNetSalary=SalaryAnualNetSalary_V, 
		SalaryPaymentMode=SalaryPaymentMode_V, 
		SalaryBank=SalaryBank_V, 
		SalaryAccountNo=SalaryAccountNo_V, 
		SalaryBranchName=SalaryBranchName_V, 
		SalaryMICRNo=SalaryMICRNo_V,
		SalaryIFSCCode=SalaryIFSCCode_V, 
		SalaryPaymentMode1=SalaryPaymentMode1_V, 
		SalaryBank1=SalaryBank1_V, 
		SalaryAccountNo1=SalaryAccountNo1_V, 
		SalaryBranchName1=SalaryBranchName1_V, 
		SalaryMICRNo1=SalaryMICRNo1_V, 
		SalaryIFSCCode1=SalaryIFSCCode1_V,
        ModifiedUserId=UserId_V,
			ModifiedDate=NOW()
	where
		CancelTag=0 and
        EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employees_Skill_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employees_Skill_Update`(
	IN
    EmployeeId_V	int,
    SkillLanguage_V varchar(20), 
	SkillFluency_V varchar(45), 
	SkillAbilityWrite_V VARCHAR(10), 
	SkillAbilityRead_V VARCHAR(10),
	SkillAbilitySpeak_V VARCHAR(10), 
	SkillAbilityUnderstand_V VARCHAR(10), 
	SkillType_V varchar(100),
    UserId_V	int
)
BEGIN
	update Employees set
		SkillLanguage=SkillLanguage_V, 
		SkillFluency=SkillFluency_V, 
		SkillAbilityWrite=SkillAbilityWrite_V, 
		SkillAbilityRead=SkillAbilityRead_V,
		SkillAbilitySpeak=SkillAbilitySpeak_V, 
		SkillAbilityUnderstand=SkillAbilityUnderstand_V, 
		SkillType=SkillType_V,
        ModifiedUserId=UserId_V,
			ModifiedDate=NOW()
	where
		CancelTag=0 and
        EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Employee_PF_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Employee_PF_Update`(
	IN
    EmployeeId_V	int,
	PFMemberIDNo_V varchar(100), 
	UANNumber_V varchar(100), 
	ESICNo_V varchar(100), 
	LWFLINNo_V varchar(100), 
	PassportType_V varchar(20) ,
	PassportNo_V varchar(30), 
	IssuesDate_V date, 
	RenewalDate_V date, 
	DateOfExpiry_V date, 
	Citizenship_V varchar(50), 
	DateOfJoining_V date, 
	ConfirmDate_V date, 
	PFStartDate_V date, 
	DateOfRetirement_V date, 
	DateOfExit_V date, 
	A1_V date, 
	A2_V date, 
	A3_V date,
    UserId_V							int
)
BEGIN
	update Employees set
		PFMemberIDNo=PFMemberIDNo_V, 
		UANNumber=UANNumber_V, 
		ESICNo=ESICNo_V, 
		LWFLINNo=LWFLINNo_V, 
		PassportType=PassportType_V,
		PassportNo=PassportNo_V, 
		IssuesDate=IssuesDate_V, 
		RenewalDate=RenewalDate_V, 
		DateOfExpiry=DateOfExpiry_V, 
		Citizenship=Citizenship_V, 
		DateOfJoining=DateOfJoining_V, 
		ConfirmDate=ConfirmDate_V, 
		PFStartDate=PFStartDate_V, 
		DateOfRetirement=DateOfRetirement_V, 
		DateOfExit=DateOfExit_V, 
		A1=A1_V, 
		A2=A2_V, 
		A3=A3_V,
        ModifiedUserId=UserId_V,
			ModifiedDate=NOW()
	where 
		EmployeeId=EmployeeId_V and
        CancelTag=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployementTypeMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployementTypeMaster_CheckExist`(
	in
    EmployementTypeId_V	int,
	EmployementType_V 		longtext 
)
BEGIN
	select 
		EmployementTypeId 
	from 
		EmployementTypeMaster 
	where 
		CancelTag=0 and 
        EmployementType=EmployementType_V and 
        EmployementTypeId != EmployementTypeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployementTypeMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployementTypeMaster_FillGrid`(
	in
    EmployementType_V	longtext,
    Search_V			bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				EmployementTypeId,
				EmployementType as 'Employement Type', 
				Description 
			from 
				EmployementTypeMaster 
			where 
				CancelTag=0;
		END;    
	ELSE
		BEGIN			
			select 
				EmployementTypeId,
				EmployementType as 'Employement Type', 
				Description 
			from 
				EmployementTypeMaster 
			where 
				CancelTag=0 and
                EmployementType LIKE CONCAT('%' , EmployementType_V , '%');
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EmployementTypeMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EmployementTypeMaster_Insert_Update_Delete`(
	in	
	EmployementTypeId_V 	int, 
	EmployementType_V 		varchar(100), 
	Description_V 			varchar(500),
	UserId_V 				int,
    DeleteFlag_V			int
)
BEGIN
	IF EmployementTypeId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					EmployementTypeMaster 
				set 
					CancelTag=1 
                where 
					EmployementTypeId=EmployementTypeId_V;
			END;
		ELSE
			BEGIN
				update 
					EmployementTypeMaster 
				set 
					EmployementType=EmployementType_V, 
					Description=Description_V, 
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					EmployementTypeId=EmployementTypeId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into EmployementTypeMaster
				(
					EmployementType, 
					Description, 
					UserId
				) 
				values
				(
					EmployementType_V,
					Description_V, 
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ExpensesHead_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ExpensesHead_CheckExist`(
	in
	ID_V 					bigint,
	ExpensesHeadMain_V 		longtext
)
BEGIN
	select 
		ID,
        ExpensesHeadMain 
	from 
		ExpensesHead 
	where 
		CancelTag=0 and
        ID!=ID_V and
        ExpensesHeadMain=ExpensesHeadMain_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ExpensesHead_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ExpensesHead_FillGrid`(
	in
    SearchFlag_V		bool,
    ExpensesHead_V		text
)
BEGIN
	if SearchFlag_V = false then
		select 
			ID,
			ExpensesHeadMain as "Expenses Head"
		from 
			ExpensesHead 
		where 
			CancelTag=0;
	else
		select 
			ID,
			ExpensesHeadMain as "Expenses Head"
		from 
			ExpensesHead 
		where 
			CancelTag=0 and
			ExpensesHeadMain LIKE CONCAT('%' , ExpensesHead_V , '%');
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ExpensesHead_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ExpensesHead_Insert_Update_Delete`(
	in
    ID_V					bigint,
	ExpensesHeadMain_V		LONGTEXT,
	UserId_V 				INT(11),
    ModifiedUserId_V 		int(11),
    DeleteFlag_V			int
)
BEGIN
	IF ID_V !=0 THEN
		IF DeleteFlag_V =1 THEN
			BEGIN
				update 
					ExpensesHead 
				set 
					CancelTag=1 
                where 
					ID=ID_V ;
			END;
		ELSE
			BEGIN
				update 
					ExpensesHead 
				set 
					ExpensesHeadMain=ExpensesHeadMain_V,
					ModifiedUserId=ModifiedUserId_V 
				where 
					CancelTag=0 and 
					ID=ID_V;
			END;
		END IF;
	ELSE
		Begin
			insert into ExpensesHead
				(
					ExpensesHeadMain, 
					UserId
				) 
				values
				(
					ExpensesHeadMain_V, 
					UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Expenses_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Expenses_FillGrid`(
	in
	SearchFlag_V		bool,
	FromDate_V 			date,
    ToDate_V 			date,
    UserId_V			int
)
BEGIN
	IF SearchFlag_V  = true THEN
		 Select 
			ID,
			EntryDate, 
			ExpensesHeadId, 
			ExpensesHead, 
			ExpensesDescription, 
			Amount, 
			PaymentType, 
			ChequeDate,
			ChequeBankName,
			ChequeNumber, 
			NEFTDate, 
			NEFTBankName,
			NEFTAccountNumber, 
			ModifiedUserId
		from 
			Expenses
        where 
			CancelTag=0 and
            UserId=UserId_V and
		    DATE(EntryDate) between FromDate_V and ToDate_V;
	ELSE
		Select 
			ID,
			EntryDate, 
			ExpensesHeadId, 
			ExpensesHead, 
			ExpensesDescription, 
			Amount, 
			PaymentType, 
			ChequeDate,
			ChequeBankName,
			ChequeNumber, 
			NEFTDate, 
			NEFTBankName,
			NEFTAccountNumber, 
			ModifiedUserId
		from 
			Expenses
        where 
			UserId=UserId_V and
			CancelTag=0 ;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Expenses_FillGrid_Report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Expenses_FillGrid_Report`(
	in
    QueryString_V		nvarchar(5000),
    FromDate_V			date,
    ToDate_V			date
)
BEGIN
	select 
		ID,
        EntryDate,
        ExpensesHeadId,
        ExpensesHead,
        ExpensesDescription,
        Amount,
        PaymentType,
        ChequeDate,
        ChequeBankName,
        ChequeNumber,
        NEFTDate,
        NEFTBankName,
        NEFTAccountNumber,
        UserId 
	from 
		Expenses 
	where
		QueryString_V and 
        EntryDate between 'FromDate_V' and  'ToDate_V';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Expenses_Insert_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Expenses_Insert_Update`(
	in
	ID_V					bigint(20),
	EntryDate_V 			date, 
	ExpensesHeadId_V		int(11), 
	ExpensesHead_V 			longtext, 
	ExpensesDescription_V 	longtext, 
	Amount_V 				double, 
	PaymentType_V 			mediumtext, 
	ChequeDate_V 			date,
	ChequeBankName_V 		longtext,
	ChequeNumber_V 			mediumtext, 
	NEFTDate_V 				date, 
	NEFTBankName_V 			longtext,
	NEFTAccountNumber_V 	longtext, 
	UserId_V  				bigint(20),
    DeleteFlag_V			int
)
BEGIN
	IF ID_V !=0 THEN
		if DeleteFlag_V=0 then
			update Expenses set
				EntryDate=EntryDate_V, 
				ExpensesHeadId=ExpensesHeadId_V, 
				ExpensesHead=ExpensesHead_V, 
				ExpensesDescription=ExpensesDescription_V, 
				Amount=Amount_V, 
				PaymentType=PaymentType_V, 
				ChequeDate=ChequeDate_V,
				ChequeBankName=ChequeBankName_V,
				ChequeNumber=ChequeNumber_V, 
				NEFTDate=NEFTDate_V, 
				NEFTBankName=NEFTBankName_V,
				NEFTAccountNumber=NEFTAccountNumber_V, 
				ModifiedUserId=UserId_V
			where 
				ID=ID_V and
				CancelTag=0;
		ELSE
			update Expenses set
				CancelTag=1
			where 
				ID=ID_V and
				CancelTag=0;
		END IF;
	ELSE
		insert into Expenses
        (
			EntryDate, 
			ExpensesHeadId, 
			ExpensesHead, 
			ExpensesDescription, 
			Amount, 
			PaymentType, 
			ChequeDate,
			ChequeBankName,
			ChequeNumber, 
			NEFTDate, 
			NEFTBankName,
			NEFTAccountNumber, 
			UserId
		)
        values
        (
			EntryDate_V, 
			ExpensesHeadId_V, 
			ExpensesHead_V, 
			ExpensesDescription_V, 
			Amount_V, 
			PaymentType_V, 
			ChequeDate_V,
			ChequeBankName_V,
			ChequeNumber_V, 
			NEFTDate_V, 
			NEFTBankName_V,
			NEFTAccountNumber_V, 
			UserId_V
        );
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Expenses_Report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Expenses_Report`(
	in
	FromDate_V 			date,
    ToDate_V 			date,
    UserId_V			int
)
BEGIN
 	 Select 
		ID,
		EntryDate, 
		ExpensesHeadId, 
		ExpensesHead, 
		ExpensesDescription, 
		Amount, 
		PaymentType, 
		ChequeDate,
		ChequeBankName,
		ChequeNumber, 
		NEFTDate, 
		NEFTBankName,
		NEFTAccountNumber, 
		ModifiedUserId
	from 
		Expenses
	where 
		CancelTag=0 and
        UserId=UserId_V and
		DATE(EntryDate) between FromDate_V and ToDate_V;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Fee_Collection_Report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Fee_Collection_Report`(
	in
    FromDate_V 				date,
    ToDate_V 				date 
 )
BEGIN
	select 
		O.ID,
        O.EntryDate as "Date",
        O.TokenNumber,
        O.PatientId,
        P.PatientName,
        P.Address,
        P.MobileNumber,
        P.SexAge,
        O.Fee,
        O.PaidFee,
        O.PendingFee  
	from 
		OPD O inner join 
        Patient P on P.ID=O.PatientId 
	where 
		P.CancelTag=0 and 
        O.CancelTag=0 and 
        DATE(O.EntryDate) between FromDate_V and ToDate_V
        order by O.EntryDate desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Fee_Pending_Report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Fee_Pending_Report`(
	in
    SearchFlag_V		bool,
    SearchText_V 		text,
	ID_V				bigint
)
BEGIN
	if SearchFlag_V = false then
		select 
			ID,
			EntryDate,
			PatientName,
			Address,
			MobileNumber,
			SexAge,
			Balance,
			UserId 
		from 
			Patient 
		where 
			CancelTag=0 and 
			Balance >0 ;
	else
		if ID_V = 0 then
			select 
				ID,
				EntryDate,
				PatientName,
				Address,
				MobileNumber,
				SexAge,
				Balance,
				UserId 
			from 
				Patient 
			where 
				CancelTag=0 and 
				Balance >0 and
                PatientName LIKE CONCAT('%', SearchText_V , '%');
		else
			select 
				ID,
				EntryDate,
				PatientName,
				Address,
				MobileNumber,
				SexAge,
				Balance,
				UserId 
			from 
				Patient 
			where 
				CancelTag=0 and 
				Balance >0 and
                ID=ID_V;
		END IF;
     END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_FillGrid_Designation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_FillGrid_Designation`()
BEGIN
	select 
		ID,
        Designation 
	from 
		DesignationMaster 
	where 
		CancelTag=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_FillGrid_Login_By_DesignationId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_FillGrid_Login_By_DesignationId`(
	in
    DesignationId_V	int
)
BEGIN
	select 
		ID,
		DesignationId,
        FullName,
        Gender,
        DOB,
        Age,
        BloodGroup,
        CurrentAddress,
        AsAbove,
        PermenentAddress,
        MobileNo1,
        MobileNo2,
        EmailId,
        Qualification,
        RegNo,
        Speciality,
        Experience,
        DateOfJoining 
	from 
		Login 
	where 
		CancelTag=0 and 
        DesignationId=DesignationId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_FormMaster_Get_FormId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_FormMaster_Get_FormId`(
	IN
    FormName_V	text
)
BEGIN
	select 
		FormId,
        FormName,
        HeaderName
	from FormMaster 
    where FormName=FormName_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetMaxId_All_Table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetMaxId_All_Table`(
	TableName		Text
)
BEGIN
	select MAX(ID) from ClinicProDB.TableName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetTableId_By_ColumnName_TableName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetTableId_By_ColumnName_TableName`(
	IN 
    Id_V		mediumtext,	
	TableName_V longtext 
)
BEGIN
		declare v_table nvarchar(100);
        declare v_column nvarchar(100);
          
        set v_table = CONCAT(TableName_V);
        set v_column = CONCAT(Id_V);
        
        SET @s = CONCAT('select ', v_column, ' from ' , v_table);  
        PREPARE stmt FROM @s; 
        EXECUTE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Get_All_TableId_By_Name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Get_All_TableId_By_Name`(
	in
    SelectMaster_V 	nvarchar(100),
    ColumnData_V	nvarchar(500)
)
BEGIN
	IF SelectMaster_V = 'locationmaster' THEN
		select LocationId,LocationName from locationmaster where CancelTag=0 and LocationName=ColumnData_V;
	ELSEIF SelectMaster_V = 'departmentmaster' THEN
		select DepartmentId,Department from departmentmaster where CancelTag=0 and Department=ColumnData_V;
	ELSEIF SelectMaster_V = 'designationmaster' THEN
		select DesignationId,Designation from designationmaster where CancelTag=0 and Designation=ColumnData_V;
    ELSEIF SelectMaster_V = 'categories' THEN
		select CategoryId,CategoryFName from categories where CancelTag=0 and CategoryFName=ColumnData_V;
	ELSEIF SelectMaster_V = 'employementtypemaster' THEN
		select EmployementTypeId,EmployementType from employementtypemaster where CancelTag=0 and EmployementType=ColumnData_V;
	ELSEIF SelectMaster_V = 'contractormaster' THEN
		select ContractorId,ContractorName from contractormaster where CancelTag=0 and ContractorName=ColumnData_V;
	ELSEIF SelectMaster_V = 'companyprofile' THEN
		select CompanyId,CompanyName from companyprofile where CancelTag=0 and CompanyName=ColumnData_V;
	ELSEIF SelectMaster_V = 'shiftgroups' THEN
		select ShiftGroupId,ShiftGroupFName from shiftgroups where CancelTag=0 and ShiftGroupFName=ColumnData_V;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Get_Pincode_By_CityVillageId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Get_Pincode_By_CityVillageId`(
	IN
    AreaId_V int 
)
BEGIN
	select 
		CVM.CityVillageId,
        CVM.Pincode 
    from
		CityVillageMaster CVM inner join
        AreaMaster AM on AM.CityVillageId=CVM.CityVillageId
	where 
        CVM.CancelTag=0 and 
        AM.CancelTag=0 and 
        AM.AreaId=AreaId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_HolidayMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_HolidayMaster_CheckExist`(
	in
	HolidayId_V 	int,
	HolidayDate_V 	date
)
BEGIN
	select 
		HolidayId 
	from 
		holidaymaster 
	where 
		CancelTag=0 and 
        HolidayDate=HolidayDate_V and 
        HolidayId != HolidayId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_HolidayMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_HolidayMaster_FillGrid`(
	IN
    Festival_V		varchar(500),
    Search_V		bool
)
BEGIN
	IF Search_V = FALSE THEN
		BEGIN
			Select
				HolidayId,
				HolidayDate as 'Holiday Date',
				HolidayDay as 'Holiday Day',
				Festival,
				NationalHolidayFlag,
                		HolidayType as 'Holiday Type'
			from
				holidaymaster 
			where 
				 CancelTag=0
				order by HolidayDate asc;
			END;
	ELSE
		Begin
			Select
				HolidayId,
				HolidayDate as 'Holiday Date',
				HolidayDay as 'Holiday Day',
				Festival,
				NationalHolidayFlag,
                		HolidayType as 'Holiday Type'
			from
				holidaymaster 
			where 
				 CancelTag=0 and
				 Festival LIKE CONCAT('%' , Festival_V , '%') 
				 order by HolidayDate asc;
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_HolidayMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_HolidayMaster_Insert_Update_Delete`(
	IN
    HolidayId_V				bigint,
	HolidayDate_V 			date,
	HolidayDay_V 			text, 
	Festival_V 				text,
	NationalHolidayFlag_V 	int,   
    HolidayType_V			varchar(200),
	UserId_V 				int,
    DeleteFlag_V			int
)
BEGIN
IF HolidayId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					holidaymaster 
				set 
					CancelTag=1 
                where 
					HolidayId=HolidayId_V;
			END;
		ELSE
			BEGIN
				update 
					holidaymaster 
				set 
					HolidayDate=HolidayDate_V,
					HolidayDay=HolidayDay_V, 
					Festival=Festival_V,
					NationalHolidayFlag=NationalHolidayFlag_V,
                    HolidayType=HolidayType_V,
					ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					HolidayId=HolidayId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into holidaymaster
				(
					HolidayDate,
					HolidayDay, 
					Festival,
				    NationalHolidayFlag,
                    HolidayType,
					UserId
				) 
				values
				(
					HolidayDate_V,
					HolidayDay_V, 
					Festival_V,
				    NationalHolidayFlag_V,
                    HolidayType_V,
					UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Insert_Update_Delete_Select_LoginUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Insert_Update_Delete_Select_LoginUsers`(
		in
		Id_V			bigint(20),
        UserTypeId_V	int,
        DepartmentId_V	int,
        UserName_V		nvarchar(50),
        Search_V		nvarchar(50) 
)
BEGIN
	 IF Search_V = 'Select' THEN
		select
			LU.Id,
			LU.UserTypeId,
            UTM.UserType as 'User Type',
			LU.DepartmentId,
            DM.Department as 'Department Name',
			LU.UserName as 'User Name'
		from 
			LoginUsers LU 
            inner join DepartmentMaster DM on LU.DepartmentId=DM.DepartmentId 
            inner join usertypemaster UTM on UTM.Id=LU.UserTypeId
		where 
			LU.CancelTag=0 and DM.CancelTag=0 and UTM.CancelTag=0;
	ELSEIF Search_V = 'Insert' THEN
		insert into LoginUsers
        (
			UserTypeId,
			DepartmentId,
			UserName
		)
        values
        (
			UserTypeId_V,
			DepartmentId_V,
			UserName_V
        );
	ELSEIF Search_V = 'Update' THEN
		Update LoginUsers set
        	UserTypeId=UserTypeId_V,
			DepartmentId=DepartmentId_V,
			UserName=UserName_V
		 where Id=Id_V and CancelTag=0; 
	ELSE
		 Update LoginUsers set
        	CancelTag=1 
		 where Id=Id_V and CancelTag=0; 
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_JobProfileMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_JobProfileMaster_CheckExist`(
	in
    JobProfileId_V	int,
	JobProfile_V 	longtext 
)
BEGIN
	select 
		JobProfileId 
	from 
		jobprofilemaster 
	where 
		CancelTag=0 and 
        JobProfile=JobProfile_V and 
        JobProfileId != JobProfileId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_JobProfileMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_JobProfileMaster_FillGrid`(
	in
    JobProfile_V	nvarchar(100),
    Search_V		bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				JobProfileId,
				JobProfile as 'Job Profile',
                JobProfileFileName as 'Job Profile File Name'
			from 
				JobProfileMaster 
			where 
				CancelTag=0 order by JobProfile asc;
		END;    
	ELSE
		BEGIN			
			select 
				JobProfileId,
				JobProfile as 'Job Profile',
                JobProfileFileName as 'Job Profile File Name' 
			from 
				JobProfileMaster 
			where 
				CancelTag=0 and
                JobProfile LIKE CONCAT('%' , JobProfile_V , '%') 
				order by JobProfile asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_JobProfileMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_JobProfileMaster_Insert_Update_Delete`(
	in	
	JobProfileId_V		 int,
	JobProfile_V 		 longtext,
    JobProfileFileName_V longtext,
	UserId_V 			 int,
    DeleteFlag_V		 int
)
BEGIN
	IF JobProfileId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					JobProfileMaster 
				set 
					CancelTag=1 
                where 
					JobProfileId=JobProfileId_V;
			END;
		ELSE
			BEGIN
				update 
					JobProfileMaster 
				set 
					JobProfile=JobProfile_V, 
                    JobProfileFileName=JobProfileFileName_V,
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					JobProfileId=JobProfileId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into JobProfileMaster
				(
					JobProfile, 
                    JobProfileFileName,
				 	UserId
				) 
				values
				(
					JobProfile_V,  
                    JobProfileFileName_V,
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveApplication_By_EmployeeId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveApplication_By_EmployeeId`(
		in
        EmployeeId_V	 int,
        CheckDate_V		 date
)
BEGIN
 	Select
		LA.LeaveApplicationId,
		LA.EntryDate,
		LA.EmployeeId,
		LM.LocationName,
		DM.Department,
		E.EmployeeName,
		DES.Designation,
		LA.FromDate,
		LA.ToDate,
		LA.TotalDays,
		LT.LeaveTypeFName,
		LA.LeaveReason,
		LA.LeaveStatus,
		E.TotalLeave,
		LA.LeaveTypeId,
        LA.IsRevertLeave
	from
		LeaveApplication LA inner join 
		leavetypes LT on LT.LeaveTypeId=LA.LeaveTypeId inner join
		Employees E on E.EmployeeId=LA.EmployeeId inner join 
		DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
		DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
		LocationMaster LM on LM.LocationId=E.LocationId
	where 
		LA.CancelTag=0 and
		LT.CancelTag=0 and
		E.CancelTag=0 and
		DM.CancelTag=0 and
		DES.CancelTag=0 and
		LM.CancelTag=0 and
		LA.EmployeeId=EmployeeId_V and
        LA.LeaveStatus='Completed' and
        LA.AttendanceFlag=0 and
        CheckDate_V between La.FromDate and LA.ToDate;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveApplication_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveApplication_CheckExist`(
	in
    LeaveApplicationId_V bigint,
 	EmployeeId_V bigint, 
    FromDate_V	date,
    ToDate_V	date 
)
BEGIN
	select
		LeaveApplicationId
    from
		leaveapplication 
	where
		EmployeeId=EmployeeId_V  and
    	CancelTag=0 and 
        LeaveApplicationId != LeaveApplicationId_V and 
        FromDate >= FromDate_V and ToDate <= ToDate_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveApplication_Count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveApplication_Count`(
	in
    UserType_V		varchar(100),
	LocationId_V	int,
    DepartmentId_V 	int
)
BEGIN
	IF UserType_V = 'ADMIN' THEN
		Begin
			select 
				Count(*)
			from
				LeaveApplication LA inner join 
				Employees E on E.EmployeeId=LA.EmployeeId inner join 
                DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
                DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
                LocationMaster LM on LM.LocationId=E.LocationId
			where
				LA.CancelTag=0 and
                E.CancelTag=0 and
                DM.CancelTag=0 and
                DES.CancelTag=0 and
                LM.CancelTag=0 and
                LA.LeaveStatus IN('FINAL APPROVED');
        End;
	ELSEIF UserType_V = 'PLANT HEAD' THEN
		Begin
			select 
				Count(*)
			from
				LeaveApplication LA inner join 
				Employees E on E.EmployeeId=LA.EmployeeId inner join 
                DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
                DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
                LocationMaster LM on LM.LocationId=E.LocationId
			where
				LA.CancelTag=0 and
                E.CancelTag=0 and
                DM.CancelTag=0 and
                DES.CancelTag=0 and
                LM.CancelTag=0 and
                E.LocationId=LocationId_V  and
                LA.LeaveStatus IN('DEPARTMENT HEAD APPROVED');
        End;
	ELSEIF UserType_V = 'INCHARGE' THEN
		Begin
			select 
				Count(*)
			from
				LeaveApplication LA inner join 
				Employees E on E.EmployeeId=LA.EmployeeId inner join 
                DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
                DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
                LocationMaster LM on LM.LocationId=E.LocationId
			where
				LA.CancelTag=0 and
                E.CancelTag=0 and
                DM.CancelTag=0 and
                DES.CancelTag=0 and
                LM.CancelTag=0 and
                E.LocationId=LocationId_V  and
                E.DepartmentId=DepartmentId_V and 
                LA.LeaveStatus IN('DEPARTMENT HEAD APPROVED');
        End;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveApplication_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveApplication_FillGrid`(
		in
        UserType_V		varchar(100),
        UserId_V		int,
        LocationId_V 	int,
        DepartmentId_V	int
)
BEGIN
	IF UserType_V='ADMIN' OR UserType_V='ADMINISTRATOR' THEN
		BEGIN
			  Select
				LA.LeaveApplicationId,
				LA.EntryDate as 'Date',
				LA.EmployeeId,
                LM.LocationName,
                DM.Department,
				E.EmployeeName as 'Employee Name',
                DES.Designation,
				LA.FromDate as 'From Date',
				LA.ToDate as 'To Date',
                LA.TotalDays as 'Total Days',
				LT.LeaveTypeFName as 'Leave Type',
				LA.LeaveReason as 'Leave Reason',
				LA.LeaveStatus as 'Leave Status',
                E.TotalLeave,
                LA.LeaveTypeId,
                LA.IsRevertLeave 
			from
				LeaveApplication LA inner join 
                leavetypes LT on LT.LeaveTypeId=LA.LeaveTypeId inner join
				Employees E on E.EmployeeId=LA.EmployeeId inner join 
                DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
                DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
                LocationMaster LM on LM.LocationId=E.LocationId
			where 
				LA.CancelTag=0 and
                LT.CancelTag=0 and
                E.CancelTag=0 and
                DM.CancelTag=0 and
                DES.CancelTag=0 and
                LM.CancelTag=0;
        END;
   	ELSEIF UserType_V = 'PLANT HEAD' OR UserType_V = 'MANAGER' THEN
		BEGIN
			  Select
				LA.LeaveApplicationId,
				LA.EntryDate as 'Date',
				LA.EmployeeId,
                LM.LocationName,
                DM.Department,
				E.EmployeeName as 'Employee Name',
                DES.Designation,
				LA.FromDate as 'From Date',
				LA.ToDate as 'To Date',
                LA.TotalDays as 'Total Days',
				LT.LeaveTypeFName as 'Leave Type',
				LA.LeaveReason as 'Leave Reason',
				LA.LeaveStatus as 'Leave Status',
                E.TotalLeave,
                LA.LeaveTypeId,
                LA.IsRevertLeave 
			from
				LeaveApplication LA inner join 
                leavetypes LT on LT.LeaveTypeId=LA.LeaveTypeId inner join
				Employees E on E.EmployeeId=LA.EmployeeId inner join 
                DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
                DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
                LocationMaster LM on LM.LocationId=E.LocationId
			where 
				LA.CancelTag=0 and
                LT.CancelTag=0 and
                E.CancelTag=0 and
                DM.CancelTag=0 and
                DES.CancelTag=0 and
                LM.CancelTag=0 and
                LM.LocationId IN (select LocationId from locationwisedepartmentusers where PlantHeadId=UserId_V) and
                E.DepartmentId IN (select DepartmentId from locationwisedepartmentusers where PlantHeadId=UserId_V);              
			END;
	ELSEIF UserType_V = 'INCHARGE' OR UserType_V = 'SENIOR OFFICER' THEN
		BEGIN
			 Select
				LA.LeaveApplicationId,
				LA.EntryDate as 'Date',
				LA.EmployeeId,
                LM.LocationName,
                DM.Department,
				E.EmployeeName as 'Employee Name',
                DES.Designation,
				LA.FromDate as 'From Date',
				LA.ToDate as 'To Date',
                LA.TotalDays as 'Total Days',
				LT.LeaveTypeFName as 'Leave Type',
				LA.LeaveReason as 'Leave Reason',
				LA.LeaveStatus as 'Leave Status',
                E.TotalLeave,
                LA.LeaveTypeId,
                LA.IsRevertLeave 
			from
				LeaveApplication LA inner join 
                leavetypes LT on LT.LeaveTypeId=LA.LeaveTypeId inner join
				Employees E on E.EmployeeId=LA.EmployeeId inner join 
                DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
                DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
                LocationMaster LM on LM.LocationId=E.LocationId
			where 
				LA.CancelTag=0 and
                LT.CancelTag=0 and
                E.CancelTag=0 and
                DM.CancelTag=0 and
                DES.CancelTag=0 and
                LM.CancelTag=0 and
                E.LocationId IN (select LocationId from locationwisedepartmentusers where InchargeId=UserId_V) and
                E.DepartmentId IN (select DepartmentId from locationwisedepartmentusers where InchargeId=UserId_V);
			END;
	ELSE
		BEGIN
			  Select
				LA.LeaveApplicationId,
				LA.EntryDate as 'Date',
				LA.EmployeeId,
                LM.LocationName,
                DM.Department,
				E.EmployeeName as 'Employee Name',
                DES.Designation,
				LA.FromDate as 'From Date',
				LA.ToDate as 'To Date',
                LA.TotalDays as 'Total Days',
				LT.LeaveTypeFName as 'Leave Type',
				LA.LeaveReason as 'Leave Reason',
				LA.LeaveStatus as 'Leave Status',
                E.TotalLeave,
                LA.LeaveTypeId,
                LA.IsRevertLeave 
			from
				LeaveApplication LA inner join 
                leavetypes LT on LT.LeaveTypeId=LA.LeaveTypeId inner join
				Employees E on E.EmployeeId=LA.EmployeeId inner join 
                DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
                DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
                LocationMaster LM on LM.LocationId=E.LocationId
			where 
				LA.CancelTag=0 and
                LT.CancelTag=0 and
                E.CancelTag=0 and
                DM.CancelTag=0 and
                DES.CancelTag=0 and
                LM.CancelTag=0 and
                E.EmployeeId=UserId_V;
			END;
    END IF;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveApplication_FillGrid_CompOff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveApplication_FillGrid_CompOff`(
		in
        EmployeeId_V int
)
BEGIN
	Select
		LA.LeaveApplicationId,
		LA.EntryDate as 'Date',
		LA.EmployeeId,
		LM.LocationName,
		DM.Department,
		E.EmployeeName as 'Employee Name',
		DES.Designation,
		LA.FromDate as 'From Date',
		LA.ToDate as 'To Date',
		LA.TotalDays as 'Total Days',
		LT.LeaveTypeFName as 'Leave Type',
		LA.LeaveReason as 'Leave Reason',
		LA.LeaveStatus as 'Leave Status',
		E.TotalLeave,
		LA.LeaveTypeId,
        LA.ReferanceCompOffLeaveApplicationId
	from
		LeaveApplication LA inner join 
		leavetypes LT on LT.LeaveTypeId=LA.LeaveTypeId inner join
		Employees E on E.EmployeeId=LA.EmployeeId inner join 
		DepartmentMaster DM on DM.DepartmentId=E.DepartmentId inner join
		DesignationMaster DES on DES.DesignationId=E.DesignationId inner join
		LocationMaster LM on LM.LocationId=E.LocationId
	where 
		LA.CancelTag=0 and
		LT.CancelTag=0 and
		E.CancelTag=0 and
		DM.CancelTag=0 and
		DES.CancelTag=0 and
		LM.CancelTag=0 and
        LT.LeaveTypeFName='Compensation Off' and
        LA.CompOffUsedFlag=0 and
        LA.IsCompensationOff=1 and
        LA.EmployeeId=EmployeeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveApplication_Get_Leave_Count_By_EmployeeId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveApplication_Get_Leave_Count_By_EmployeeId`(
	IN
    EmployeeId_V	int,
    LeaveStatus_V	varchar(200)
)
BEGIN
	select 
		COALESCE(SUM(TotalDays),0)
	from 
		LeaveApplication
    where 
		CancelTag=0 and
        EmployeeId=EmployeeId_V and
        LA.LeaveStatus=LeaveStatus_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveApplication_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveApplication_Insert_Update_Delete`(
	in
    LeaveApplicationId_V 	bigint,
    EntryDate_V 			date,
	EmployeeId_V 			bigint, 
	FromDate_V 				date, 
	ToDate_V 				date, 
    TotalDays_V 			varchar(45), 
	LeaveTypeId_V 			int, 
	LeaveReason_V 			text, 
	LeaveStatus_V 			varchar(100), 
    Remarks_V				varchar(1000),
    IsRevertLeave_V			int,
    UserId_V 				int,
    DeleteFlag_V 			int,
    FinancialYearId_V		int
)
BEGIN
IF LeaveApplicationId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					leaveapplication 
				set 
					CancelTag=1,
                    Remarks=Remarks_V
                where 
					LeaveApplicationId=LeaveApplicationId_V;
			END;
            
            begin
				update Employees set
					BalanceLeave=TotalLeave- (select COALESCE(SUM(TotalDays),0) from LeaveApplication  where CancelTag=0 and EmployeeId=EmployeeId_V and LeaveStatus='HR APPROVED')
                 where 
					CancelTag=0 and
                    EmployeeId=EmployeeId_V;
            END;
		ELSE
			BEGIN
				update 
					leaveapplication 
				set 
					LeaveApplicationId=LeaveApplicationId_V,
                    EntryDate=EntryDate_V,
					EmployeeId=EmployeeId_V,
					FromDate=FromDate_V,
					ToDate=ToDate_V,
                    TotalDays=TotalDays_V,
					LeaveTypeId=LeaveTypeId_V,
					LeaveReason=LeaveReason_V, 
					LeaveStatus=LeaveStatus_V,
                    IsRevertLeave=IsRevertLeave_V,
					ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					LeaveApplicationId=LeaveApplicationId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into leaveapplication
				(
					LeaveApplicationId,
                    EntryDate,
					EmployeeId,
					FromDate,
					ToDate,
                    TotalDays,
					LeaveTypeId,
					LeaveReason, 
					LeaveStatus,
                    IsRevertLeave,
					UserId,
                    FinancialYearId
				) 
				values
				(
					LeaveApplicationId_V,
                    EntryDate_V,
					EmployeeId_V,
					FromDate_V,
					ToDate_V,
                    TotalDays_V,
					LeaveTypeId_V,
					LeaveReason_V, 
					LeaveStatus_V,
					IsRevertLeave_V,
                    UserId_V,
                    FinancialYearId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveApplication_Update_LeaveStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveApplication_Update_LeaveStatus`(	
	IN
    LeaveApplicationId_V 	bigint,
    LeaveStatus_V 			varchar(100),
    Remarks_V 				varchar(1000),
    EmployeeId_V			int,
    BalanceLeave_V			varchar(50),
    UserType_V				varchar(100)
)
BEGIN
	update LeaveApplication set
		LeaveStatus=LeaveStatus_V,
        Remarks=Remarks_V
	where
		CancelTag=0 and
        LeaveApplicationId=LeaveApplicationId_V;
        
	if UserType_V='ADMINISTRATOR' OR UserType_V='HR OFFICER' then
		update Employees set
			BalanceLeave=(TotalLeave+OpeningLeave)-(select COALESCE(SUM(TotalDays),0) from LeaveApplication where CancelTag=0 and EmployeeId=EmployeeId_V and LeaveStatus='HR Approved')
		where 
			CancelTag=0 and
			EmployeeId=EmployeeId_V;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveMaster_FillGrid`(
	in
    LeaveTypeFName_V	longtext,
    Search_V			bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				LeaveTypeId,
				LeaveTypeFName as 'Leave Name', 
				Description  
			from 
				LeaveTypes 
			where 
				CancelTag=0;
		END;    
	ELSE
		BEGIN			
			select 
				LeaveTypeId,
				LeaveTypeFName as 'Leave Name', 
				Description  
			from 
				LeaveTypes 
			where 
				CancelTag=0 and
                LeaveTypes LIKE CONCAT('%' , LeaveTypes_V , '%');
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveTypes_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveTypes_CheckExist`(
	in
    LeaveTypeId_V 		int,
	LeaveTypeFName_V 	longtext 
)
BEGIN
	select 
		LeaveTypeId_V 
	from 
		LeaveTypes 
	where 
		CancelTag=0 and 
        LeaveTypeFName=LeaveTypeFName_V and 
        LeaveTypeId != LeaveTypeId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveTypes_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveTypes_FillGrid`(
	in
    LeaveTypeFName_V	longtext,
    Search_V			bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				LeaveTypeId,
				LeaveTypeFName as 'Leave Name', 
				Description  
			from 
				LeaveTypes 
			where 
				CancelTag=0;
		END;    
	ELSE
		BEGIN			
			select 
				LeaveTypeId,
				LeaveTypeFName as 'Leave Name', 
				Description  
			from 
				LeaveTypes 
			where 
				CancelTag=0 and
                LeaveTypes LIKE CONCAT('%' , LeaveTypes_V , '%');
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveTypes_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveTypes_Insert_Update_Delete`(
	in	
	LeaveTypeId_V		int,
	LeaveTypeFName_V 	varchar(100), 
	Description_V 	varchar(500),
	UserId_V 		int,
    DeleteFlag_V	int
)
BEGIN
	IF LeaveTypeId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					LeaveTypes 
				set 
					CancelTag=1 
                where 
					LeaveTypeId=LeaveTypeId_V;
			END;
		ELSE
			BEGIN
				update 
					LeaveTypes 
				set 
					LeaveTypeFName=LeaveTypeFName_V, 
					Description=Description_V,
					ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					LeaveTypeId=LeaveTypeId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into LeaveTypes
				(
					LeaveTypeFName, 
					Description, 
				 	UserId
				) 
				values
				(
					LeaveTypeFName_V, 
					Description_V, 
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LeaveTypes_Insert_Update_Delete1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LeaveTypes_Insert_Update_Delete1`(
	in	
	LeaveTypeId_V		int,
	LeaveTypeFName_V 	varchar(100), 
	Description_V 	varchar(500),
	UserId_V 		int,
    DeleteFlag_V	int
)
BEGIN
	IF LeaveTypeId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					LeaveTypes 
				set 
					CancelTag=1 
                where 
					LeaveTypeId=LeaveTypeId_V;
			END;
		ELSE
			BEGIN
				update 
					LeaveTypes 
				set 
					LeaveTypeFName=LeaveTypeFName_V, 
					Description=Description_V,
					ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					LeaveTypeId=LeaveTypeId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into LeaveTypes
				(
					LeaveTypeFName, 
					Description, 
				 	UserId
				) 
				values
				(
					LeaveTypeFName_V, 
					Description_V, 
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LocationMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LocationMaster_CheckExist`(
	in
    LocationId_V 		int,
	LocationName_V 		longtext 
)
BEGIN
	select 
		LocationId 
	from 
		LocationMaster 
	where 
		CancelTag=0 and 
        LocationName=LocationName_V and 
        LocationId != LocationId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LocationMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LocationMaster_FillGrid`(
	in
    LocationName_V	longtext,
    Search_V		bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				LocationId,
				LocationName as 'Lacation Name', 
				Description, 
				ContactPerson as 'Contact Person',  
				MobileNumber as 'Mobile Number',  
				ExtensionNo  as 'Extension Number' 
			from 
				LocationMaster 
			where 
				CancelTag=0;
		END;    
	ELSE
		BEGIN			
			select 
				LocationId,
				LocationName as 'Lacation Name', 
				Description, 
				ContactPerson as 'Contact Person',  
				MobileNumber as 'Mobile Number',  
				ExtensionNo  as 'Extension Number' 
			from 
				LocationMaster 
			where 
				CancelTag=0 and
                LocationName LIKE CONCAT('%' , LocationName_V , '%');
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LocationMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LocationMaster_Insert_Update_Delete`(
	in	
	LocationId_V 	int, 
	LocationName_V 	varchar(100), 
	Description_V 	varchar(500), 
	ContactPerson_V varchar(100), 
	MobileNumber_V 	bigint,  
	ExtensionNo_V 	int, 
	UserId_V 		int,
    DeleteFlag_V	int
)
BEGIN
	IF LocationId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					LocationMaster 
				set 
					CancelTag=1 
                where 
					LocationId=LocationId_V ;
			END;
		ELSE
			BEGIN
				update 
					LocationMaster 
				set 
					LocationName=LocationName_V, 
					Description=Description_V, 
					ContactPerson=ContactPerson_V, 
					MobileNumber=MobileNumber_V, 
					ExtensionNo=ExtensionNo_V, 
					ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					LocationId=LocationId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into LocationMaster
				(
					LocationName, 
					Description, 
					ContactPerson, 
					MobileNumber, 
					ExtensionNo, 
					UserId
				) 
				values
				(
					LocationName_V, 
					Description_V, 
					ContactPerson_V, 
					MobileNumber_V,
					ExtensionNo_V,
					UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LocationWiseDepartmentUsers_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LocationWiseDepartmentUsers_FillGrid`(
	in
    DepartmentName_V	varchar(500),
    Search_V			bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				lwd.LocationWiseDepartmentId,
                lwd.LocationId,
                LM.LocationName as 'Location Name',
				lwd.DepartmentId,
                d.Department,
				lwd.InchargeId, 
                E.EmployeeName as 'Incharge Name',
				lwd.PlantHeadId,
                E1.EmployeeName as 'Manager Name',
				lwd.HRId,
				E2.EmployeeName as 'HR Name'
		from locationwisedepartmentusers lwd inner join 
				departmentmaster d on d.DepartmentId=lwd.DepartmentId inner join
				locationmaster LM on lwd.LocationId=LM.LocationId inner join
				Employees E on E.EmployeeId=lwd.InchargeId inner join
				Employees E1 on E1.EmployeeId=lwd.PlantHeadId inner join
				Employees E2 on E2.EmployeeId=lwd.HRId
			where 
				lwd.CancelTag=0 and
				LM.CancelTag=0 and
                E.CancelTag=0 and
                E1.CancelTag=0 and
                E2.CancelTag=0
                order by LM.LocationName asc;
		END;    
	ELSE
		BEGIN			
			select 
				lwd.LocationWiseDepartmentId,
                lwd.LocationId,
                LM.LocationName as 'Location Name',
				lwd.DepartmentId,
                d.Department,
				lwd.InchargeId, 
                E.EmployeeName as 'Incharge Name',
				lwd.PlantHeadId,
                E1.EmployeeName as 'Manager Name',
				lwd.HRId,
				E2.EmployeeName as 'HR Name'
		from locationwisedepartment lwd inner join 
				departmentmaster d on d.DepartmentId=lwd.DepartmentId inner join
				locationmaster LM on lwd.LocationId=LM.LocationId inner join
				Employees E on E.EmployeeId=lwd.InchargeId inner join
				Employees E1 on E1.EmployeeId=lwd.PlantHeadId inner join
				Employees E2 on E2.EmployeeId=lwd.HRId
			where 
				lwd.CancelTag=0 and
				LM.CancelTag=0 and
                E.CancelTag=0 and
                E1.CancelTag=0 and
                E2.CancelTag=0 and
                d.Department LIKE CONCAT('%' , DepartmentName_V , '%') 
				order by LM.LocationName asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LocationWiseDepartment_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LocationWiseDepartment_Delete`(
	in	
    LocationId_V		int  
)
BEGIN
 	delete from LocationWiseDepartment 
    where LocationId=LocationId_V and CancelTag=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LocationWiseDepartment_Delete_All` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LocationWiseDepartment_Delete_All`(
	in	
    LocationId_V		int  
)
BEGIN
	update LocationWiseDepartment set CancelTag=1 where LocationId=LocationId_V and CancelTag=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LocationWiseDepartment_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LocationWiseDepartment_FillGrid`(
	in
    LocationName_V 		mediumtext,
    SearchFlag_V		bool 
)
BEGIN
	IF SearchFlag_V = false then
		Select
			distinct
			SG.LocationName as 'Location Name',
            SGS.LocationId
		from 
			LocationWiseDepartment SGS  inner join 
            LocationMaster SG on SG.LocationId= SGS.LocationId 
		 where 
			SGS.CancelTag=0 and
            SG.CancelTag=0;
	else
		Select
            distinct
			SG.LocationName as 'Location Name',
            SGS.LocationId
		from 
			LocationWiseDepartment SGS  inner join 
            LocationMaster SG on SG.LocationId= SGS.LocationId 
		 where 
			SGS.CancelTag=0 and
            SG.CancelTag=0 and
            SG.LocationName like CONCAT('%', LocationName_V , '%')  
            order by SG.LocationName asc;
       END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LocationWiseDepartment_FillGrid_DepartmentName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LocationWiseDepartment_FillGrid_DepartmentName`(
	in
    LocationId_V		int 
)
BEGIN
	 
		Select
			SGS.LocationId,
            SG.LocationName,
            SGS.DepartmentId
		from 
			LocationWiseDepartment SGS  inner join 
            LocationMaster SG on SG.LocationId= SGS.LocationId 
		 where 
			SGS.CancelTag=0 and
            SG.CancelTag=0 and 
            SGS.LocationId=LocationId_V;
	 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LocationWiseDepartment_Get_Department_By_LocationId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LocationWiseDepartment_Get_Department_By_LocationId`(
	in
    LocationId_V		int 
)
BEGIN
	Select
		D.DepartmentId,
		D.Department 
	from 
		LocationWiseDepartment LWD  inner join 
		DepartmentMaster D on D.DepartmentId= LWD.DepartmentId 
	 where 
		LWD.CancelTag=0 and
		D.CancelTag=0 and 
		LWD.LocationId=LocationId_V 
        order by D.Department asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LocationWiseDepartment_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LocationWiseDepartment_Insert_Update_Delete`(
	in	
    LocationId_V			int,
	DepartmentId_V 			int,
 	UserId_V 				int 
)
BEGIN
 	insert into locationwisedepartment
		(
			LocationId,
            DepartmentId,
			UserId
		) 
		values
		(
			LocationId_V,
            DepartmentId_V,
			UserId_V
		);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LoginUsers_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LoginUsers_CheckExist`(
	in
	LoginId_V		bigint(20),
	UserName_V		nvarchar(50) 
)
BEGIN
	select 
		LoginId,
        UserName 
	from 
		Login 
	where 
		CancelTag=0 and
        LoginId!=LoginId_V and
        UserName=UserName_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Login_By_UserName_Password` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Login_By_UserName_Password`( 
	in
	UserName_V		MEDIUMTEXT,
	Password_V		MEDIUMTEXT	
)
BEGIN			
	select 
		L.LoginId,
		UTM.UserType,
		LM.LocationName,
		DME.Department,
		L.UserName,
		E.EmployeeName, 
		DM.Designation,
		L.UserTypeId,
		L.EmployeeId,
		E.DesignationId,
		E.DepartmentId,
		E.LocationId,
        L.Password
	from 
		Login L inner join
		UserTypeMaster UTM on L.UserTypeId=UTM.UserTypeId inner join
		Employees E on E.EmployeeId=L.EmployeeId inner join
		DesignationMaster DM on DM.DesignationId=E.DesignationId inner join
		departmentmaster DME on DME.DepartmentId=E.DepartmentId inner join
		LocationMaster LM on LM.LocationId=E.LocationId
	where 
		L.CancelTag=0 and 
		UTM.CancelTag=0 and 
		E.CancelTag=0 and
		DM.CancelTag=0 and
		E.CancelTag=0 and
		DME.CancelTag=0 and
        LM.CancelTag=0 and
        L.UserName=UserName_V and
		L.Password=Password_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Login_ChangePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Login_ChangePassword`(
	in
	LoginId_V		int,
	Password_V		MEDIUMTEXT
)
BEGIN
	update 
		Login 
	set 
		Password=Password_V 
	where 
		LoginId=LoginId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Login_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Login_CheckExist`(
	in
	LoginId_V		bigint(20),
	UserName_V		nvarchar(50) 
)
BEGIN
	select 
		LoginId,
        UserName 
	from 
		Login 
	where 
		CancelTag=0 and
        LoginId!=LoginId_V and
        UserName=UserName_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Login_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Login_FillGrid`(
	in
    EmployeeName_V	varchar(100),
    Search_V	bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				L.LoginId,
				UTM.UserType as 'User Type',
                LM.LocationName as 'Location',
                DME.Department,
				L.UserName as 'User Name',
                E.EmployeeName as 'Employee Name', 
				DM.Designation,
                L.UserTypeId,
				L.EmployeeId,
				E.DesignationId,
				E.DepartmentId,
				E.LocationId
			from 
				Login L inner join
                UserTypeMaster UTM on L.UserTypeId=UTM.UserTypeId inner join
				Employees E on E.EmployeeId=L.EmployeeId inner join
				DesignationMaster DM on DM.DesignationId=E.DesignationId inner join
				departmentmaster DME on DME.DepartmentId=E.DepartmentId inner join
				LocationMaster LM on LM.LocationId=E.LocationId
			where 
				L.CancelTag=0 and 
                UTM.CancelTag=0 and 
				E.CancelTag=0 and
				DM.CancelTag=0 and
				E.CancelTag=0 and
                LM.CancelTag=0 and
				DME.CancelTag=0 
                order by E.EmployeeName asc;
		END;    
	ELSE
		BEGIN			
			select 
				L.LoginId,
				UTM.UserType as 'User Type',
                LM.LocationName as 'Location',
                DME.Department,
				L.UserName as 'User Name',
                E.EmployeeName as 'Employee Name', 
				DM.Designation,
                L.UserTypeId,
				L.EmployeeId,
				E.DesignationId,
				E.DepartmentId,
				E.LocationId
			from 
				Login L inner join
                UserTypeMaster UTM on L.UserTypeId=UTM.UserTypeId inner join
				Employees E on E.EmployeeId=L.EmployeeId inner join
				DesignationMaster DM on DM.DesignationId=E.DesignationId inner join
				departmentmaster DME on DME.DepartmentId=E.DepartmentId inner join
				LocationMaster LM on LM.LocationId=E.LocationId
			where 
				L.CancelTag=0 and 
                UTM.CancelTag=0 and 
				E.CancelTag=0 and
				DM.CancelTag=0 and
				E.CancelTag=0 and
                LM.CancelTag=0 and
				DME.CancelTag=0 and
				E.EmployeeName LIKE CONCAT('%' , EmployeeName_V , '%') 
				order by E.EmployeeName asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Login_Insert_Update_Delete_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Login_Insert_Update_Delete_Select`(
		in
		LoginId_V		bigint(20),
        UserTypeId_V	int,
        UserName_V		nvarchar(50),
        EmployeeId_V	int,
       	UserId_V 		int,
		DeleteFlag_V	int 
)
BEGIN
IF LoginId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					Login 
				set 
					CancelTag=1 
                where 
					LoginId=LoginId_V;
			END;
		ELSE
			BEGIN
				update 
					Login 
				set 
					UserTypeId=UserTypeId_V,
					EmployeeId=EmployeeId_V,
					Password='MNNAlAg0EZg=',
					ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					LoginId=LoginId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into Login
				(
					UserTypeId,
					UserName,
                    Password,
					EmployeeId,
       	 			UserId
				) 
				values
				(
					UserTypeId_V,
					UserName_V,
                    'MNNAlAg0EZg=',
					EmployeeId_V,
					UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MacAddressTable_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MacAddressTable_CheckExist`(
	in
	ID_V 			int,
	MachinName_V 	longtext 
)
BEGIN
	select 
		ID 
	from 
		macaddresstable 
	where 
		CancelTag=0 and 
        MachinName=MachinName_V and 
        ID != ID_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MacAddressTable_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MacAddressTable_FillGrid`(
	in
    MachinName_V	nvarchar(100),
    Search_V		bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				ID,
				MachinName as 'Computer Name' 
			from 
				macaddresstable 
			where 
				CancelTag=0 order by MachinName asc;
		END;    
	ELSE
		BEGIN			
			select 
				ID,
				MachinName as 'Computer Name' 
			from 
				macaddresstable 
			where 
				CancelTag=0 and
                MachinName LIKE CONCAT('%' , MachinName_V , '%') 
				order by MachinName asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MacAddressTable_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MacAddressTable_Insert_Update_Delete`(
	in	
	ID_V			int,
	MachinName_V 	NVARCHAR(500), 
	UserId_V 		int,
    DeleteFlag_V	int
)
BEGIN
	IF ID_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					macaddresstable 
				set 
					CancelTag=1 
                where 
					ID=ID_V;
			END;
		ELSE
			BEGIN
				update 
					macaddresstable 
				set 
					MachinName=MachinName_V, 
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					ID=ID_V;
			END;
		END IF;
	ELSE
		Begin
			insert into macaddresstable
				(
					MachinName,  
				 	UserId
				) 
				values
				(
					MachinName_V,  
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MACAddressTable_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MACAddressTable_Select`(
	in
    macaddress_V	varchar(100)
)
BEGIN
	select
		macaddress
	from 
		macaddresstable
	where 
		MachinName=macaddress_V and
        CancelTag=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ManpowerRequirements_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ManpowerRequirements_FillGrid`(
	IN
	ManpowerId_V 				bigint 
)
BEGIN
	select
		MR.ManpowerRequirementsId,
		MR.ManpowerId, 
		MR.DesignationId,
        dm.Designation,
		MR.NoOfCandidates, 
		MR.Skill, 
		MR.Gender 
	from
		ManpowerRequirements MR inner join 
        designationmaster dm on dm.DesignationId=MR.DesignationId
	where
		MR.ManpowerId=ManpowerId_V and
        MR.CancelTag=0 and
        dm.CancelTag=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ManpowerRequirements_Save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ManpowerRequirements_Save`(
	IN
	ManpowerId_V 				bigint, 
	DesignationId_V 			int, 
	NoOfCandidates_V 			int, 
	Skill_V 					varchar(1000), 
	Gender_V 					varchar(10), 
	UserId_V 					int,
    FinancialYearId_V			int
)
BEGIN
	insert into ManpowerRequirements
    (
		ManpowerId, 
		DesignationId, 
		NoOfCandidates, 
		Skill, 
		Gender, 
		UserId,
        FinancialYearId
    )
    values
    (
		ManpowerId_V, 
		DesignationId_V, 
		NoOfCandidates_V, 
		Skill_V, 
		Gender_V, 
		UserId_V,
        FinancialYearId_V
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Manpower_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Manpower_FillGrid`(
	IN
	ReasonOfRequest_V	nvarchar(500),
    Search_V			bool
)
BEGIN
	IF Search_V = FALSE THEN
		BEGIN
			Select
				M.ManpowerId,
				M.EntryDate as 'Date', 
				M.LocationId, 
                L.LocationName as 'Location Name',
				M.DepartmentId, 
                D.Department,
				M.InchargeId, 
                E.EmployeeName as 'Raised Request by',
				M.DateOfRequisition as 'Date of Requisition', 
				M.ExpectedDate as 'Expected Date',
				M.ReasonOfRequest  as 'Reason of Request',
				M.Remarks,
                M.Status, 
				M.Reply
			from
				Manpower M inner join 
                locationmaster L on L.LocationId=M.LocationId inner join
                departmentmaster D on D.DepartmentId=M.DepartmentId inner join
                employees E on E.EmployeeId=M.InchargeId
			where 
				M.CancelTag=0 and
                L.CancelTag=0 and
                D.CancelTag=0 and
                E.CancelTag=0 
			order by M.DateOfRequisition asc;
		END;
	ELSE
		Begin
			Select
				M.ManpowerId,
				M.EntryDate as 'Date', 
				M.LocationId, 
                L.LocationName as 'Location Name',
				M.DepartmentId, 
                D.Department,
				M.InchargeId, 
                E.EmployeeName as 'Raised Request by',
				M.DateOfRequisition as 'Date of Requisition', 
				M.ExpectedDate as 'Expected Date',
				M.ReasonOfRequest  as 'Reason of Request',
				M.Remarks,
                M.Status, 
				M.Reply
			from
				Manpower M inner join 
                locationmaster L on L.LocationId=M.LocationId inner join
                departmentmaster D on D.DepartmentId=M.DepartmentId inner join
                employees E on E.EmployeeId=M.InchargeId
			where 
				M.CancelTag=0 and
                L.CancelTag=0 and
                D.CancelTag=0 and
                E.CancelTag=0 and
				ReasonOfRequest LIKE CONCAT('%' , ReasonOfRequest_V , '%') 
				order by M.DateOfRequisition asc;
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Manpower_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Manpower_Insert_Update_Delete`(
	IN
    ManpowerId_V 		bigint,
	EntryDate_V 		date, 
	LocationId_V 		int, 
	DepartmentId_V 		int, 
	InchargeId_V 		int, 
	DateOfRequisition_V date, 
	ExpectedDate_V 		date, 
	ReasonOfRequest_V 	varchar(1000),
	Remarks_V 			varchar(1000), 
    Status_V 			varchar(100), 
    Reply_V 			varchar(2000),
	UserId_V 			int,
    DeleteFlag_V	int
)
BEGIN
	IF ManpowerId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					Manpower 
				set 
					CancelTag=1 
                where 
					ManpowerId=ManpowerId_V;
			END;
		ELSE
			BEGIN
				update 
					Manpower 
				set 
					EntryDate=EntryDate_V, 
					LocationId=LocationId_V, 
					DepartmentId=DepartmentId_V, 
					InchargeId=InchargeId_V, 
					DateOfRequisition=DateOfRequisition_V, 
					ExpectedDate=ExpectedDate_V, 
					ReasonOfRequest=ReasonOfRequest_V,
					Remarks=Remarks_V, 
                    Status=Status_V, 
					Reply=Reply_V,
					ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					ManpowerId=ManpowerId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into Manpower
				(
					EntryDate, 
					LocationId, 
					DepartmentId, 
					InchargeId, 
					DateOfRequisition, 
					ExpectedDate, 
					ReasonOfRequest,
					Remarks, 
                    Status, 
					Reply,
					UserId
				) 
				values
				(
					EntryDate_V, 
					LocationId_V, 
					DepartmentId_V, 
					InchargeId_V, 
					DateOfRequisition_V, 
					ExpectedDate_V, 
					ReasonOfRequest_V,
					Remarks_V, 
                    Status_V,
                    Reply_V,
					UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MasterTable_Select_ComboBox` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MasterTable_Select_ComboBox`(
	in
    SelectMaster_V 	nvarchar(100)
)
BEGIN
	IF SelectMaster_V = 'usertypemaster' THEN
		select UserTypeId,UserType from usertypemaster where CancelTag=0 order by UserType asc;
    ELSEIF SelectMaster_V = 'departmentmaster' THEN
		select DepartmentId,Department from departmentmaster where CancelTag=0 order by Department asc;
	ELSEIF SelectMaster_V = 'monthmaster' THEN
		select Id,MonthName from monthmaster;
	ELSEIF SelectMaster_V = 'designationmaster' THEN
		select DesignationId,Designation from designationmaster where CancelTag=0 order by Designation asc;
	ELSEIF SelectMaster_V = 'employementtypemaster' THEN
		select EmployementTypeId,EmployementType from employementtypemaster where CancelTag=0 order by EmployementType asc;
	ELSEIF SelectMaster_V = 'categories' THEN
		select CategoryId,CategoryFName from categories where CancelTag=0 order by CategoryFName asc;
	ELSEIF SelectMaster_V = 'locationmaster' THEN
		select LocationId,LocationName from locationmaster where CancelTag=0 order by LocationName asc;
	ELSEIF SelectMaster_V = 'contrymaster' THEN
		select ContryId,ContryName from contrymaster where CancelTag=0 order by ContryName asc;
	ELSEIF SelectMaster_V = 'statemaster' THEN
		select StateId,StateName from statemaster where CancelTag=0 order by StateName asc;
	ELSEIF SelectMaster_V = 'contractormaster' THEN
		select ContractorId,ContractorName from contractormaster where CancelTag=0 order by ContractorName asc;
	ELSEIF SelectMaster_V = 'bankmaster' THEN
		select BankId,BankName from bankmaster where CancelTag=0 order by BankName asc;
	ELSEIF SelectMaster_V = 'leavetypes' THEN
		select LeaveTypeId,LeaveTypeFName from leavetypes where CancelTag=0 order by LeaveTypeFName asc;
	ELSEIF SelectMaster_V = 'employees' THEN
		select EmployeeId,EmployeeName from employees where CancelTag=0 order by EmployeeName asc;
	ELSEIF SelectMaster_V = 'attendancestatusmaster' THEN
		select AttendanceStatusId,AttendanceStatus from attendancestatusmaster where CancelTag=0 order by AttendanceStatus asc;
	ELSEIF SelectMaster_V = 'shiftgroups' THEN
		select ShiftGroupId,ShiftGroupFName from shiftgroups order by ShiftGroupFName asc;
	ELSEIF SelectMaster_V = 'jobprofilemaster' THEN
		select JobProfileId,JobProfile from jobprofilemaster order by JobProfile asc;
	ELSEIF SelectMaster_V = 'memotemplatemaster' THEN
		select MemoTemplateMasterId,MemoSubject from memotemplatemaster where LetterType='Memo' and CancelTag=0 order by MemoSubject asc;
	ELSEIF SelectMaster_V = 'memotemplatemasterletter' THEN
		select MemoTemplateMasterId,MemoSubject from memotemplatemaster where LetterType='Letter' and CancelTag=0 order by MemoSubject asc;
	ELSEIF SelectMaster_V = 'formmaster' THEN
		select FormId,FormName,HeaderName from formmaster where CancelTag=0 order by HeaderName asc;
   	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MemoTemplateMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MemoTemplateMaster_CheckExist`(
	in
    MemoTemplateMasterId_V	int,
	MemoSubject_V 			longtext,
    LetterType_V			longtext
)
BEGIN
	select 
		MemoTemplateMasterId 
	from 
		memotemplatemaster 
	where 
		CancelTag=0 and 
        MemoSubject=MemoSubject_V and 
        LetterType=LetterType_V and
        MemoTemplateMasterId != MemoTemplateMasterId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MemoTemplateMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MemoTemplateMaster_FillGrid`(
	in
    MemoSubject_V	nvarchar(100),
    LetterType_V	nvarchar(100),
    Search_V		bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				MemoTemplateMasterId,
                MemoSubject as 'Memo Subject',
                MemoTemplate as 'Memo Template' 
			from 
				memotemplatemaster 
			where 
				CancelTag=0 and 
                LetterType=LetterType_V
                order by MemoSubject asc;
		END;    
	ELSE
		BEGIN			
			select 
				MemoTemplateMasterId,
                MemoSubject as 'Memo Subject',
                MemoTemplate as 'Memo Template' 
			from 
				memotemplatemaster 
			where 
				CancelTag=0 and
                MemoSubject LIKE CONCAT('%' , MemoSubject_V , '%') and 
                LetterType=LetterType_V
				order by MemoSubject asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MemoTemplateMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MemoTemplateMaster_Insert_Update_Delete`(
	in	
	MemoTemplateMasterId_V	int,
	MemoSubject_V 			longtext,
    MemoTemplate_V			longtext,
    LetterType_V			longtext,
	UserId_V 				int,
    DeleteFlag_V			int
)
BEGIN
	IF MemoTemplateMasterId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					memotemplatemaster 
				set 
					CancelTag=1 
                where 
					MemoTemplateMasterId=MemoTemplateMasterId_V;
			END;
		ELSE
			BEGIN
				update 
					memotemplatemaster 
				set 
					MemoSubject=MemoSubject_V, 
                    MemoTemplate=MemoTemplate_V, 
                    LetterType=LetterType_V,
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					MemoTemplateMasterId=MemoTemplateMasterId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into memotemplatemaster
				(
					MemoSubject, 
                    MemoTemplate,
                    LetterType,
				 	UserId
				) 
				values
				(
					MemoSubject_V, 
                    MemoTemplate_V, 
                    LetterType_V,
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Memo_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Memo_CheckExist`(
	in
	MemoId_V					bigint(20),
	MemoTemplateMasterId_V		bigint(20),
    LetterType_V				varchar(45)
)
BEGIN
	select 
		MemoId,
        MemoTemplateMasterId 
	from 
		Memo 
	where 
		CancelTag=0 and
        MemoId!=MemoId_V and
        MemoTemplateMasterId=MemoTemplateMasterId_V and
        LetterType=LetterType_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Memo_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Memo_FillGrid`(
	in
    EmployeeName_V	nvarchar(100),
    Search_V		bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				M.MemoId,
				M.EntryDate as 'Memo Date',
				M.EmployeeId,
                E.EmployeeName as 'Employee Name',
				M.LocationId,
                L.LocationName as 'Location',
				M.MemoTemplateMasterId,
                MTM.MemoSubject as 'Memo Subject',
                MTM.MemoTemplate as 'Memo Template' 
			from 
				memo M inner join Employees E on E.EmployeeId=M.EmployeeId inner join
                locationmaster L on L.LocationId=M.LocationId inner join
                memotemplatemaster MTM on MTM.MemoTemplateMasterId=M.MemoTemplateMasterId
			where 
				E.CancelTag=0 and
                L.CancelTag=0 and
                MTM.CancelTag=0 
                order by M.EntryDate desc;
		END;    
	ELSE
		BEGIN			
			select 
				M.MemoId,
				M.EntryDate as 'Memo Date',
				M.EmployeeId,
                E.EmployeeName as 'Employee Name',
				M.LocationId,
                L.LocationName as 'Location',
				M.MemoTemplateMasterId,
                MTM.MemoSubject as 'Memo Subject',
                MTM.MemoTemplate as 'Memo Template' 
			from 
				memo M inner join Employees E on E.EmployeeId=M.EmployeeId inner join
                locationmaster L on L.LocationId=M.LocationId inner join
                memotemplatemaster MTM on MTM.MemoTemplateMasterId=M.MemoTemplateMasterId
			where 
				E.CancelTag=0 and
                L.CancelTag=0 and
                MTM.CancelTag=0 and
                E.EmployeeName LIKE CONCAT('%' , EmployeeName_V , '%') 
				order by M.EntryDate desc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Memo_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Memo_Insert_Update_Delete`(
	in	
	MemoId_V 				int,
	EntryDate_V 			date, 
    EntryTime_V				time,
    LocationId_V 			int,
    DepartmentId_V 			int,
	EmployeeId_V 			int,
	MemoTemplateMasterId_V 	int,
    LetterType_V 			varchar(50),
    MemoFine_V				int,
    LetterData_V 			text,
	UserId_V 				int,
    DeleteFlag_V			int,
    FinancialYearId_V		int
)
BEGIN
	IF MemoId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					memo 
				set 
					CancelTag=1 
                where 
					MemoId=MemoId_V;
			END;
		ELSE
			BEGIN
				update 
					Memo 
				set 
					EntryDate=EntryDate_V, 
                    EntryTime=EntryTime_V, 
					LocationId=LocationId_V,
                    DepartmentId=DepartmentId_V,
                    EmployeeId=EmployeeId_V,
					MemoTemplateMasterId=MemoTemplateMasterId_V,
                    LetterType=LetterType_V,
                    LetterData=LetterData_V,
                    MemoFine=MemoFine_V,
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					MemoId=MemoId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into memo
				(
					EntryDate, 
                    EntryTime, 
                    LocationId,
                    DepartmentId,
					EmployeeId,
					MemoTemplateMasterId,
                    LetterType,
                    MemoFine,
                    LetterData,
				 	UserId,
                    FinancialYearId
				) 
				values
				(
					EntryDate_V, 
                    EntryTime_V,
                    LocationId_V,
                    DepartmentId_V,
					EmployeeId_V,
					MemoTemplateMasterId_V, 
                    LetterType_V,
                    MemoFine_V,
                    LetterData_V,
				 	UserId_V,
                    FinancialYearId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MonthlyAttendanceReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MonthlyAttendanceReport`(
	IN
    AttendanceDate_V	date 
)
BEGIN
	select
		AL.Id, 
		AL.EntryDate,
		AL.attendancelogid,
		AL.AttendanceDate,
		AL.EmployeeId,
        EM.EmployeeCode,
        EM.EmployeeName,
        EM.Gender,
		AL.InTime,
		AL.InDeviceId,
		AL.OutTime,
		AL.OutDeviceId,
		AL.Duration,
		AL.LateBy,
		AL.EarlyBy, 
		AL.IsOnLeave,
		AL.LeaveType,
		AL.LeaveDuration,
		AL.WeeklyOff,
		AL.Holiday,
		AL.LeaveRemarks,
		AL.PunchRecords,
		AL.ShiftId,
		AL.Present,
		AL.Absent,
		AL.Status,
		AL.StatusCode,
		AL.P1Status,
		AL.P2Status,
		AL.P3Status,
		AL.IsonSpecialOff, 
		AL.SpecialOffType,
		AL.SpecialOffRemark,
		AL.SpecialOffDuration,
		AL.OverTime,
		AL.OverTimeE,
		AL.MissedOutPunch,
		AL.MissedInPunch, 
		AL.C1, 
		AL.C2, 
		AL.C3, 
		AL.C4, 
		AL.C5, 
		AL.C6, 
		AL.C7, 
		AL.Remarks, 
		AL.LeaveTypeId, 
		AL.LossOfHours
	from AttendanceLogs AL join EmployeeMaster EM
    where Month(AttendanceDate)=Month(AttendanceDate) and
	EM.EmployeeId=AL.EmployeeId;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_NotesMaster_Save_With_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_NotesMaster_Save_With_CheckExist`(
	in
    Notes_V	 		text,
    UserId_V			int
)
BEGIN
	IF ( SELECT EXISTS (SELECT 1 FROM NotesMaster WHERE Notes=Notes_V) ) THEN 
        SELECT 'EXISTS';
	ELSE
       insert into 
			NotesMaster
			(
				Notes,
                UserId
			) 
            values
            (
				Notes_V,
                UserId_V
			);
    END IF; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_NotesMaster_Select_By_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_NotesMaster_Select_By_ID`(
	in
    ID_V	bigint
)
BEGIN
	select 
		ID,
        Notes 
	from 
		NotesMaster 
	where 
		CancelTag=0 and 
        ID=ID_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Notes_By_Text` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Notes_By_Text`(
	in
    Notes_V		text
)
BEGIN
	select
		ID,
        Notes 
	from 
		NotesMaster 
	where 
		CancelTag=0 and 
        Notes LIKE CONCAT('%', Notes_V , '%')
        order by Notes desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ReportData_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ReportData_Insert`(
	IN
	MonthNumber_V int,
	MonthYear_V int, 
	EmpId_V bigint
)
BEGIN
	IF EXISTS (SELECT *
             FROM ReportData
             WHERE MonthNumber=MonthNumber_V AND 
             MonthYear=MonthYear_V and 
             EmpId=EmpId_V) THEN
		BEGIN
			select Max(Id) from ReportData where CancelTag=0;
		END;
	ELSE
		insert into ReportData
		(
			MonthNumber,
			MonthYear, 
			EmpId 
		)
		values
		(
			MonthNumber_V,
			MonthYear_V,
			EmpId_V 
		);
        
        select Max(Id) from ReportData where CancelTag=0;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ReportData_Insert_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ReportData_Insert_Update`(
	IN
	Id_V bigint,
	ColumnNames_V 	text 
)
BEGIN
	declare v_ColumnNames text;
    set v_ColumnNames = CONCAT(ColumnNames_V);
    
    BEGIN
			SET @s = CONCAT(v_ColumnNames);  
			PREPARE stmt FROM @s; 
			EXECUTE stmt;
	END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ReportData_Update_Total_Values` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ReportData_Update_Total_Values`(
	IN
	Id_V bigint,
    TotalDays_V varchar(100), 
	TotalPresent_V varchar(100), 
	TotalAbsent_V varchar(100), 
	TotalDuration_V varchar(100), 
    TotalOT_V varchar(100), 	
	TotalLate_V varchar(100),
    EmployeeName_V	varchar(100)
 )
BEGIN
	update ReportData set
		TotalDays=TotalDays_V, 
		TotalPresent=TotalPresent_V,
		TotalAbsent=TotalAbsent_V,
		TotalDuration=TotalDuration_V,
        TotalOT=TotalOT_V,
		TotalLate=TotalLate_V,
        EmployeeName=EmployeeName_V
	where
		CancelTag=0 and
        Id=Id_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ReportData_ViewAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ReportData_ViewAll`()
BEGIN
	select
		*
	from
		ReportData;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Report_Query` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Report_Query`(
	IN 
    ColumnNames_V 	text,
    TableNames_V 	text,
    OrderBy_V		text,
    GroupBy_V		text
)
BEGIN
	    declare v_ColumnNames text;
        declare v_TableNames text;
        declare v_OrderBy text;
        declare v_GroupBy text;
		           
		set v_ColumnNames = CONCAT(ColumnNames_V);
		set v_TableNames = CONCAT(TableNames_V);
		set v_OrderBy = CONCAT(OrderBy_V);
		set v_GroupBy = CONCAT(GroupBy_V);
        
        SET @s = CONCAT('select ', v_ColumnNames, ' from ' , v_TableNames,v_OrderBy,v_GroupBy);  
        PREPARE stmt FROM @s; 
        EXECUTE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_SelectAll_Data_By_TableName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SelectAll_Data_By_TableName`(
	IN 
	TableName_V longtext 
)
BEGIN
	 SET @t1 = CONCAT('SELECT Max(ID) FROM ',TableName_V );
	 PREPARE stmt3 FROM @t1;
	 EXECUTE stmt3;
	 DEALLOCATE PREPARE stmt3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Select_ExpensesCredentials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Select_ExpensesCredentials`(
	UserId_V				int,
	ExpensesPassword_V		varchar(100)
)
BEGIN
	select 
		ID,
        UserName,
        Password,
        FullName,
        UserType
    from 
		Login 
	where 
		CancelTag=0 and 
        ExpensesPassword=ExpensesPassword_V and 
        Id=UserId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Select_Login_By_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Select_Login_By_ID`(
	in
    ID_V	int
)
BEGIN
	select 
		ID,
        UserName,
        Password,
        UserType 
	from 
		Login 
	where 
		CancelTag=0 and 
        ID=ID_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Select_Staff_By_Designation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Select_Staff_By_Designation`(
	in
    Designation_V		longtext		
)
BEGIN
	select 
		S.ID,
        S.DesignationId,
        S.FullName,
        S.Gender,
        S.DOB,
        S.Age,
        S.BloodGroup,
        S.CurrentAddress,
        S.AsAbove,
        S.PermenentAddress,
        S.MobileNo1,
        S.MobileNo2,
        S.EmailId,
        S.Qualification,
        S.RegNo,
        S.Speciality,
        S.Experience,
        S.DateOfJoining 
	from 
		Login S inner join 
        DesignationMaster D on D.ID=S.DesignationId 
	where 
		S.CancelTag=0 and 
        D.Designation=Designation_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Select_UserType_In_Cashier_Receiption` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Select_UserType_In_Cashier_Receiption`(
	 
 )
BEGIN
	select 
		ID,
        UserName,
        Password,
        UserType 
	from 
		Login 
	where 
		CancelTag=0 and 
        UserType IN('Cashier','Reception');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ShiftGroupMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ShiftGroupMaster_FillGrid`(
	IN
    ShiftGroupFName_V	nvarchar(500),
    Search_V		bool
)
BEGIN
	IF Search_V = FALSE THEN
		BEGIN
			Select
				ShiftGroupId,
				ShiftGroupFName,
				ShiftGroupSName
			from
				ShiftGroups  
			where 
				CancelTag=0  order by ShiftGroupFName asc;
			END;
	ELSE
		Begin
			Select
				ShiftGroupId,
				ShiftGroupFName,
				ShiftGroupSName
			from
				ShiftGroups  
			where 
				CancelTag=0   and
				ShiftGroupFName LIKE CONCAT('%' , ShiftGroupFName_V , '%') 
				order by ShiftGroupFName asc;
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ShiftGroupShifts_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ShiftGroupShifts_Delete`(
	in	
    ShiftGroupId_V		int  
)
BEGIN
 	delete from ShiftGroupShifts 
    where ShiftGroupId=ShiftGroupId_V and CancelTag=0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ShiftGroupShifts_Delete_All` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ShiftGroupShifts_Delete_All`(
	in	
    ShiftGroupId_V		int  
)
BEGIN
	update ShiftGroupShifts set CancelTag=1 where ShiftGroupId=ShiftGroupId_V and CancelTag=0;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ShiftGroupShifts_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ShiftGroupShifts_FillGrid`(
	in
    ShiftGroupFName_V 		mediumtext,
    SearchFlag_V			bool 
)
BEGIN
	IF SearchFlag_V = false then
		Select
			distinct
			SG.ShiftGroupFName,
            SGS.ShiftGroupId
            
		from 
			shiftgroupshifts SGS  inner join 
            ShiftGroups SG on SG.ShiftGroupId= SGS.ShiftGroupId 
		 where 
			SGS.CancelTag=0 and
            SG.CancelTag=0;
	else
		Select
			SGS.ShiftGroupId,
            SG.ShiftGroupFName 
		from 
			shiftgroupshifts SGS  inner join 
            ShiftGroups SG on SG.ShiftGroupId= SGS.ShiftGroupId 
		 where 
			SGS.CancelTag=0 and
            SG.CancelTag=0 and
            SG.ShiftGroupFName like CONCAT('%', ShiftGroupFName_V , '%')  
            order by SG.ShiftGroupFName asc;
       END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ShiftGroupShifts_FillGrid_ShiftName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ShiftGroupShifts_FillGrid_ShiftName`(
	in
    ShiftGroupId_V		int 
)
BEGIN
	 
		Select
			SGS.ShiftGroupId,
            SG.ShiftGroupFName,
            SGS.ShiftId
		from 
			shiftgroupshifts SGS  inner join 
            ShiftGroups SG on SG.ShiftGroupId= SGS.ShiftGroupId 
		 where 
			SGS.CancelTag=0 and
            SG.CancelTag=0 and 
            SGS.ShiftGroupId=ShiftGroupId_V;
	 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ShiftGroupShifts_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ShiftGroupShifts_Insert_Update_Delete`(
	in	
    ShiftGroupId_V			int,
	ShiftId_V 				int,
 	UserId_V 				int 
)
BEGIN
 	insert into ShiftGroupShifts
		(
			ShiftGroupId,
            ShiftId,
			UserId
		) 
		values
		(
			ShiftGroupId_V,
            ShiftId_V,
			UserId_V
		);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ShiftGroups_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ShiftGroups_Insert_Update_Delete`(
	in	
    ShiftGroupId_V		int,
   	ShiftGroupFName_V	varchar(255),
	ShiftGroupSName_V 	varchar(255),
 	UserId_V 			int,
    DeleteFlag_V		int
)
BEGIN
	IF ShiftGroupId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					shiftgroups 
				set 
					CancelTag=1 
                where 
					ShiftGroupId=ShiftGroupId_V;
			END;
		ELSE
			BEGIN
				update 
					shiftgroups 
				set 
					ShiftGroupFName=ShiftGroupFName_V,
					ShiftGroupSName=ShiftGroupSName_V,
                    ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					ShiftGroupId=ShiftGroupId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into shiftgroups
				(
					ShiftGroupFName,
					ShiftGroupSName,
                    UserId
				) 
				values
				(
					ShiftGroupFName_V,
                    ShiftGroupSName_V,
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Shifts_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Shifts_Delete`(
	IN
    ShiftId_V bigint,
	UserId_V int 
)
BEGIN
	update 
		Shifts 
	set 
		CancelTag=1,
        ModifiedUserId=UserId_V 
	where 
		ShiftId=ShiftId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Shifts_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Shifts_FillGrid`(
	in
    ShiftFName_V	longtext,
    Search_V		bool
)
BEGIN
	IF Search_V = FALSE THEN
		BEGIN	
			select 
				ShiftId,
				ShiftFName, 
				ShiftSName, 
				BeginTime, 
				EndTime,
				Break1, 
				Break2, 
				Break1BeginTime, 
				Break2BeginTime, 
				Break1EndTime,
				Break2EndTime, 
				Break1Duration, 
				ShiftType, 
				PunchBeginDuration, 
				PunchEndDuration, 
				IsGraceTimeApplicable, 
				GraceTime, 
				IsPartialDayApplicable, 
				PartialDay, 
				PartialDayBeginTime, 
				PartialDayEndTime, 
				IsFlexibleShift,
                ShiftDuration
			from
				Shifts
			where 
				CancelTag=0;
		END;
	ELSE
		BEGIN			
			select 
				ShiftId,
				ShiftFName, 
				ShiftSName, 
				BeginTime, 
				EndTime,
				Break1, 
				Break2, 
				Break1BeginTime, 
				Break2BeginTime, 
				Break1EndTime,
				Break2EndTime, 
				Break1Duration, 
				ShiftType, 
				PunchBeginDuration, 
				PunchEndDuration, 
				IsGraceTimeApplicable, 
				GraceTime, 
				IsPartialDayApplicable, 
				PartialDay, 
				PartialDayBeginTime, 
				PartialDayEndTime, 
				IsFlexibleShift,
                ShiftDuration
			from
				Shifts
			where 
				CancelTag=0 and
				ShiftFName LIKE CONCAT('%' , ShiftFName_V , '%');
		END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Shifts_FillGrid_ById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Shifts_FillGrid_ById`(
	in
    ShiftId_V	int 
)
BEGIN
 
			select 
				ShiftId,
				ShiftFName, 
				ShiftSName, 
				BeginTime, 
				EndTime,
				Break1, 
				Break2, 
				Break1BeginTime, 
				Break2BeginTime, 
				Break1EndTime,
				Break2EndTime, 
                ShiftDuration,
				Break1Duration, 
				ShiftType, 
				PunchBeginDuration, 
				PunchEndDuration, 
				IsGraceTimeApplicable, 
				GraceTime, 
				IsPartialDayApplicable, 
				PartialDay, 
				PartialDayBeginTime, 
				PartialDayEndTime, 
				IsFlexibleShift,
                ShiftDurationHours
			from
				Shifts
			where 
				CancelTag=0 and ShiftId=ShiftId_V;
	 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Shifts_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Shifts_Insert_Update_Delete`(
	IN
    ShiftId_V bigint,
	ShiftFName_V varchar(300), 
	ShiftSName_V varchar(200), 
	BeginTime_V varchar(50), 
	EndTime_V varchar(45),
	Break1_V int, 
	Break2_V int, 
	Break1BeginTime_V varchar(50), 
	Break2BeginTime_V varchar(50), 
    Break1EndTime_V varchar(50), 
	Break2EndTime_V varchar(50), 
	Break1Duration_V int, 
	Break2Duration_V int, 
    ShiftDuration_V varchar(50),
	ShiftType_V varchar(50), 
	RecordStatus_V int, 
	PunchBeginDuration_V int, 
	PunchEndDuration_V int, 
	IsGraceTimeApplicable_V int, 
	GraceTime_V varchar(255), 
	IsPartialDayApplicable_V int, 
	PartialDay_V 				varchar(255), 
	PartialDayBeginTime_V 	varchar(255), 
	PartialDayEndTime_V 	varchar(255), 
	IsFlexibleShift_V 		int, 
    ShiftDurationHours_V	varchar(255), 
	UserId_V 				int,
    DeleteFlag_V			int
)
BEGIN
IF ShiftId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					shifts 
				set 
					CancelTag=1 
                where 
					ShiftId=ShiftId_V;
			END;
		ELSE
			BEGIN
				update shifts set
					ShiftId=ShiftId_V,
					ShiftFName=ShiftFName_V, 
					ShiftSName=ShiftSName_V, 
					BeginTime=BeginTime_V, 
					EndTime=EndTime_V,
					Break1=Break1_V, 
					Break2=Break2_V, 
					Break1BeginTime=Break1BeginTime_V, 
					Break2BeginTime=Break2BeginTime_V, 
                    Break1EndTime=Break1EndTime_V,
					Break2EndTime=Break2EndTime_V, 
					Break1Duration=Break1Duration_V, 
					Break2Duration=Break2Duration_V, 
                    ShiftDuration=ShiftDuration_V,
					ShiftType=ShiftType_V, 
					RecordStatus=RecordStatus_V, 
					PunchBeginDuration=PunchBeginDuration_V, 
					PunchEndDuration=PunchEndDuration_V, 
					IsGraceTimeApplicable=IsGraceTimeApplicable_V, 
					GraceTime=GraceTime_V, 
					IsPartialDayApplicable=IsPartialDayApplicable_V, 
					PartialDay=PartialDay_V, 
					PartialDayBeginTime=PartialDayBeginTime_V, 
					PartialDayEndTime=PartialDayEndTime_V, 
					IsFlexibleShift=IsFlexibleShift_V, 
                    ShiftDurationHours=ShiftDurationHours_V,
					ModifiedUserId=UserId_V 
			   where 
					ShiftId=ShiftId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into shifts
				(
					ShiftFName,
					ShiftSName,
					BeginTime,
					EndTime,
					Break1,
					Break2,
					Break1BeginTime,
					Break2BeginTime,
					Break1EndTime,
					Break2EndTime,
					Break1Duration,
					Break2Duration,
					ShiftDuration,
					ShiftType,
					RecordStatus,
					PunchBeginDuration,
					PunchEndDuration ,
					IsGraceTimeApplicable,
					GraceTime,
					IsPartialDayApplicable,
					PartialDay,
					PartialDayBeginTime,
					PartialDayEndTime,
					IsFlexibleShift,
                    ShiftDurationHours,
					UserId
				) 
				values
				(
					ShiftFName_V,
					ShiftSName_V,
					BeginTime_V,
					EndTime_V,
					Break1_V,
					Break2_V,
					Break1BeginTime_V,
					Break2BeginTime_V,
					Break1EndTime_V,
					Break2EndTime_V,
					Break1Duration_V,
					Break2Duration_V,
					ShiftDuration_V,
					ShiftType_V,
					RecordStatus_V,
					PunchBeginDuration_V,
					PunchEndDuration_V,
					IsGraceTimeApplicable_V,
					GraceTime_V,
					IsPartialDayApplicable_V,
					PartialDay_V,
					PartialDayBeginTime_V,
					PartialDayEndTime_V,
					IsFlexibleShift_V,
                    ShiftDurationHours_V,
					UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Shift_by_ShiftGroupId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Shift_by_ShiftGroupId`(
	in
    ShiftGroupId_V		int 
)
BEGIN
	Select
		SGS.ShiftGroupId,
		SG.ShiftGroupFName,
		SGS.ShiftId,
		s.ShiftFName,
		s.ShiftSName,
		s.BeginTime, 
		s.EndTime,
		s.Break1,
		s.Break2,
		s.Break1BeginTime,
		s.Break2BeginTime,
		s.Break1EndTime,
		s.Break2EndTime,
		s.Break1Duration,
		s.Break2Duration,
		s.ShiftType,
		s.RecordStatus,
		s.PunchBeginDuration,
		s.PunchEndDuration, 
		s.IsGraceTimeApplicable,
		s.GraceTime, 
		s.IsPartialDayApplicable,
		s.PartialDay,
		s.PartialDayBeginTime,
		s.PartialDayEndTime,
		s.IsFlexibleShift,
        s.ShiftDuration,
        s.ShiftDurationHours
	from 
		shiftgroupshifts SGS  inner join 
		ShiftGroups SG on SG.ShiftGroupId= SGS.ShiftGroupId inner join
		shifts s on s.ShiftId=SGS.ShiftId
	where 
		SGS.CancelTag=0 and
		SG.CancelTag=0 and 
		s.CancelTag=0 and 
		SGS.ShiftGroupId=ShiftGroupId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_SpectialistsMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SpectialistsMaster_FillGrid`()
BEGIN
	select ID,Speciallists from SpectialistsMaster;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_StateMaster_By_ContryId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_StateMaster_By_ContryId`(
	IN
    SearchType_V	nvarchar(100),
    ContryId_V		int
)
BEGIN
	IF SearchType_V = 'State' THEN
		begin
			select StateId,ContryId,StateName from StateMaster 
            where CancelTag=0 and ContryId=ContryId_V;
        end;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_StateMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_StateMaster_CheckExist`(
	in
    ContryId_V 		int,
    StateId_V 		int,
	StateName_V 	longtext 
)
BEGIN
	select 
		StateId 
	from 
		StateMaster 
	where 
		CancelTag=0 and 
        StateName=StateName_V and 
        ContryId=ContryId_V and
        StateId != StateId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_StateMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_StateMaster_FillGrid`(
	in
    StateName_V		nvarchar(100),
    Search_V		bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				SM.StateId,
				SM.ContryId,
                CM.ContryName as 'Contry Name',
				SM.StateName as 'State Name'
			from 
				StateMaster SM inner join
                ContryMaster CM on CM.ContryId=SM.ContryId
			where 
				SM.CancelTag=0 and
                CM.CancelTag=0                 
				order by SM.StateName asc;
		END;    
	ELSE
		BEGIN			
			select 
				SM.StateId,
				SM.ContryId,
                CM.ContryName as 'Contry Name',
				SM.StateName as 'State Name'
			from 
				StateMaster SM inner join
                ContryMaster CM on CM.ContryId=SM.ContryId
			where 
				SM.CancelTag=0 and
                CM.CancelTag=0 and
                SM.StateName LIKE CONCAT('%' , StateName_V , '%') 
				order by SM.StateName asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_StateMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_StateMaster_Insert_Update_Delete`(
	in	
    StateId_V		int,
	ContryId_V		int,
	StateName_V 	NVARCHAR(500), 
	UserId_V 		int,
    DeleteFlag_V	int
)
BEGIN
	IF StateId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					StateMaster 
				set 
					CancelTag=1 
                where 
					StateId=StateId_V;
			END;
		ELSE
			BEGIN
				update 
					StateMaster 
				set 
					ContryId=ContryId_V,
					StateName=StateName_V, 
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					StateId=StateId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into StateMaster
				(
					ContryId,
					StateName,  
				 	UserId
				) 
				values
				(
					ContryId_V,
					StateName_V,  
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_State_District_Area_Master_By_Id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_State_District_Area_Master_By_Id`(
	IN
    SearchType_V	nvarchar(100),
    SearchId_V		int
)
BEGIN
	IF SearchType_V = 'State' THEN
		begin
			select StateId,StateName from StateMaster 
            where CancelTag=0 and ContryId=SearchId_V;
        end;
	elseif SearchType_V = 'District' THEN
		begin
			select DistrictId,DistrictName from DistrictMaster 
            where CancelTag=0 and StateId=SearchId_V;
        end;
	elseif SearchType_V = 'Taluka' THEN
		begin
			select TalukaId,TalukaName from TalukaMaster 
            where CancelTag=0 and DistrictId=SearchId_V;
        end;
    elseif SearchType_V = 'CityVillage' THEN
		begin
			select CityVillageId,CityVillageName from CityVillageMaster 
            where CancelTag=0 and TalukaId=SearchId_V;
        end; 
	 elseif SearchType_V = 'Area' THEN
		begin
			select AreaId,AreaName from AreaMaster 
            where CancelTag=0 and CityVillageId=SearchId_V;
        end;    
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TalukaMaster_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TalukaMaster_CheckExist`(
	in
    TalukaId_V		int,
    DistrictId_V 	int,
    ContryId_V 		int,
    StateId_V 		int,
	TalukaName_V 	longtext 
)
BEGIN
	select 
		TalukaId 
	from 
		TalukaMaster 
	where 
		CancelTag=0 and 
        TalukaName=TalukaName_V and 
        ContryId=ContryId_V and
        StateId=StateId_V and
        DistrictId=DistrictId_V and
        TalukaId != TalukaId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TalukaMaster_FillGrid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TalukaMaster_FillGrid`(
	in
    TalukaName_V	nvarchar(100),
    Search_V		bool
)
BEGIN			
	IF Search_V = FALSE THEN
		BEGIN			
			select 
				TM.TalukaId,
                TM.ContryId,
                CM.ContryName as 'Contry Name',
				TM.StateId,
                SM.StateName as 'State Name',
				TM.DistrictId,
				DM.DistrictName as 'District Name',
                TM.TalukaName as 'Taluka Name'
			from
				TalukaMaster TM inner join 
                DistrictMaster DM on DM.DistrictId=TM.DistrictId inner join 
                ContryMaster CM on CM.ContryId=TM.ContryId inner join
                StateMaster SM on TM.StateId=SM.StateId  
			where 
				TM.CancelTag=0 and
				DM.CancelTag=0 and
				SM.CancelTag=0 and
                CM.CancelTag=0                 
				order by TM.TalukaName asc;
		END;    
	ELSE
		BEGIN			
			select 
				TM.TalukaId,
                TM.ContryId,
                CM.ContryName as 'Contry Name',
				TM.StateId,
                SM.StateName as 'State Name',
				TM.DistrictId,
				DM.DistrictName as 'District Name',
                TM.TalukaName as 'Taluka Name'
			from
				TalukaMaster TM inner join 
                DistrictMaster DM on DM.DistrictId=TM.DistrictId inner join 
                ContryMaster CM on CM.ContryId=TM.ContryId inner join
                StateMaster SM on TM.StateId=SM.StateId  
			where 
				TM.CancelTag=0 and
				DM.CancelTag=0 and
				SM.CancelTag=0 and
                CM.CancelTag=0 and          
			    TM.TalukaName LIKE CONCAT('%' , TalukaName_V , '%') 
				order by TM.TalukaName asc;
		END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TalukaMaster_Insert_Update_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TalukaMaster_Insert_Update_Delete`(
	in	
    TalukaId_V			int,
    ContryId_V			int,
    StateId_V			int,
    DistrictId_V		int,
    TalukaNameName_V 	NVARCHAR(500), 
	UserId_V 			int,
    DeleteFlag_V		int
)
BEGIN
	IF TalukaId_V !=0 THEN
		IF DeleteFlag_V=1 THEN
			BEGIN
				update 
					TalukaMaster 
				set 
					CancelTag=1 
                where 
					TalukaId=TalukaId_V;
			END;
		ELSE
			BEGIN
				update 
					TalukaMaster 
				set 
					ContryId=ContryId_V,
					StateId=StateId_V, 
                    DistrictId=DistrictId_V,
                    TalukaName=TalukaName_V,
				 	ModifiedUserId=UserId_V
				where 
					CancelTag=0 and 
					TalukaId=TalukaId_V;
			END;
		END IF;
	ELSE
		Begin
			insert into TalukaMaster
				(
					ContryId,
                    StateId,
                    DistrictId,
					TalukaName,  
				 	UserId
				) 
				values
				(
					ContryId_V,
                    StateId_V,
                    DistrictId_V,
					TalukaNameName_V,  
				 	UserId_V
				);
			END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TempDepartmentWiseDesignationAttendanceReport_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TempDepartmentWiseDesignationAttendanceReport_Insert`(
	IN
    TempDepartmentWiseDesignationAttendanceReportId_V bigint,
	ReportType_V varchar(45),
	FromDate_V date, 
	ToDate_V date,
	AMonth_V int, 
	AYear_V int, 
	DepartmentId_V int,
	DesignationId_V int, 
    Total_V	int,
	UserId_V int
)
BEGIN
	insert into TempDepartmentWiseDesignationAttendanceReport
    (
		ReportType,
		FromDate, 
		ToDate,
		AMonth, 
		AYear, 
		DepartmentId,
		DesignationId, 
        Total,
		UserId
    )
    values
    (
		ReportType_V,
		FromDate_V, 
		ToDate_V,
		AMonth_V, 
		AYear_V, 
		DepartmentId_V,
		DesignationId_V, 
        Total_V,
		UserId_V
   );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TempDepartmentWiseDesignationAttendanceReport_Report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TempDepartmentWiseDesignationAttendanceReport_Report`(
	IN
	ReportType_V varchar(45),
	FromDate_V date, 
	ToDate_V date,
	AMonth_V int, 
	AYear_V int 
)
BEGIN
	if ReportType_V='Monthly' THEN
		BEGIN
			select
				TDR.DepartmentId,
				D.Department,
				TDR.DesignationId,
				DM.Designation,
                TDR.Total
			from
				TempDepartmentWiseDesignationAttendanceReport TDR inner join
                departmentmaster D on D.DepartmentId=TDR.DepartmentId inner join
                designationmaster DM on DM.DesignationId=TDR.DesignationId 
			where
				TDR.CancelTag=0 and
                D.CancelTag=0 and
                DM.CancelTag=0 and
                TDR.AMonth=AMonth_V and 
                TDR.AYear=AYear_V; 
		END;
	ELSE 
		BEGIN
			select
				TDR.DepartmentId,
				D.Department,
				TDR.DesignationId,
				DM.Designation,
                TDR.Total
			from
				TempDepartmentWiseDesignationAttendanceReport TDR inner join
                departmentmaster D on D.DepartmentId=TDR.DepartmentId inner join
                designationmaster DM on DM.DesignationId=TDR.DesignationId 
			where
				TDR.CancelTag=0 and
                D.CancelTag=0 and
                DM.CancelTag=0 and
                TDR.FromDate=FromDate_V and
                TDR.ToDate=ToDate_V; 
		END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Test`(
	in
    EntryDate_V		datetime,
    EmployeeId_V	int
)
BEGIN
	insert into attendancelogs(EntryDate,EmployeeId) values(EntryDate_V,EmployeeId_V);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UploadDocuments_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_UploadDocuments_CheckExist`(
	IN
	UploadDocumentId_V	int, 
	FormId_V			int, 
	TableId_V			int, 
	DocumentId_V 		int 
)
BEGIN
	select 
		UploadDocumentId 
	from 
		UploadDocuments 
	where 
		CancelTag=0 and 
        FormId=FormId_V and
        TableId=TableId_V and
        DocumentId=DocumentId_V and
        UploadDocumentId != UploadDocumentId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UploadDocuments_Save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_UploadDocuments_Save`(
IN
	EntryDate_V 		date, 
	FormId_V			int, 
	TableId_V			int, 
	DocumentId_V 		int, 
	DocumentPath_V 		text, 
	DocumentName_V 		text, 
	UserId_V 			int,
    DeleteFlag_V		bool,
    UploadDocumentId_V	int
)
BEGIN
	if DeleteFlag_V = False then
		Begin	
			insert into UploadDocuments
			(
				EntryDate, 
				FormId, 
				TableId, 
				DocumentId, 
				DocumentPath, 
				DocumentName, 
				UserId
			)
			values
			(
				EntryDate_V, 
				FormId_V, 
				TableId_V, 
				DocumentId_V, 
				DocumentPath_V, 
				DocumentName_V, 
				UserId_V
			);
		END;
	else
		begin
			update 
				UploadDocuments 
			set CancelTag=1 
			where
				UploadDocumentId=UploadDocumentId_V and
				CancelTag=0;
		END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UploadDocuments_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_UploadDocuments_Select`(
IN
	FormId_V			int, 
	TableId_V			int 
)
BEGIN
	select
		UD.UploadDocumentId,
		UD.FormId, 
		UD.TableId, 
		UD.DocumentId,
        DM.DocumentName as "Document Name",
		UD.DocumentPath, 
		UD.DocumentName, 
		UD.UserId
    from 
		UploadDocuments UD inner join
		DocumentMaster DM on DM.DocumentId=UD.DocumentId
	where
		UD.CancelTag=0 and 
        DM.CancelTag=0 and
        UD.FormId=FormId_V and
        UD.TableId=TableId_V;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TuncateTables_Report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TuncateTables_Report`()
BEGIN
	truncate reportdata;
	truncate tempdepartmentwisedesignationattendancereport;
	truncate departmentsummaryreport;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-02 23:24:13
