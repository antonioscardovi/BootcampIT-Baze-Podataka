-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: volonteri
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adresa`
--

DROP TABLE IF EXISTS `adresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adresa` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Ulica` varchar(64) NOT NULL,
  `Kucni broj` varchar(45) NOT NULL,
  `Postanski broj` varchar(45) NOT NULL,
  `Grad_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Adresa_Grad1_idx` (`Grad_ID`),
  CONSTRAINT `fk_Adresa_Grad1` FOREIGN KEY (`Grad_ID`) REFERENCES `grad` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresa`
--

LOCK TABLES `adresa` WRITE;
/*!40000 ALTER TABLE `adresa` DISABLE KEYS */;
INSERT INTO `adresa` VALUES (1,'Vukovarska','42','51000',1),(2,'Marsala Tita','12','51410',2),(3,'Istarska','7','51000',1),(4,'Ruziceva','114','51000',1),(5,'Smogorska cesta','67','51211 ',3),(6,'Marsala Tita','31','51410',2);
/*!40000 ALTER TABLE `adresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adresa_has_volonteri`
--

DROP TABLE IF EXISTS `adresa_has_volonteri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adresa_has_volonteri` (
  `Adresa_ID` int(11) NOT NULL,
  `Volonteri_OIB` int(11) NOT NULL,
  PRIMARY KEY (`Adresa_ID`,`Volonteri_OIB`),
  KEY `fk_Adresa_has_Volonteri_Volonteri1_idx` (`Volonteri_OIB`),
  KEY `fk_Adresa_has_Volonteri_Adresa1_idx` (`Adresa_ID`),
  CONSTRAINT `fk_Adresa_has_Volonteri_Adresa1` FOREIGN KEY (`Adresa_ID`) REFERENCES `adresa` (`ID`),
  CONSTRAINT `fk_Adresa_has_Volonteri_Volonteri1` FOREIGN KEY (`Volonteri_OIB`) REFERENCES `volonteri` (`VolonterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresa_has_volonteri`
--

LOCK TABLES `adresa_has_volonteri` WRITE;
/*!40000 ALTER TABLE `adresa_has_volonteri` DISABLE KEYS */;
INSERT INTO `adresa_has_volonteri` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6);
/*!40000 ALTER TABLE `adresa_has_volonteri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broj mobitela`
--

DROP TABLE IF EXISTS `broj mobitela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `broj mobitela` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Broj mobitela` varchar(12) DEFAULT NULL,
  `Telefon` varchar(21) DEFAULT NULL,
  `Volonteri_VolonterID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Broj mobitela_Volonteri1_idx` (`Volonteri_VolonterID`),
  CONSTRAINT `fk_Broj mobitela_Volonteri1` FOREIGN KEY (`Volonteri_VolonterID`) REFERENCES `volonteri` (`VolonterID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broj mobitela`
--

LOCK TABLES `broj mobitela` WRITE;
/*!40000 ALTER TABLE `broj mobitela` DISABLE KEYS */;
INSERT INTO `broj mobitela` VALUES (1,'0914891232',NULL,1),(2,'0987537676',NULL,2),(3,'0916758899','293954',3),(4,'0921135541',NULL,4),(5,'0915572323',NULL,5),(6,'0917874921',NULL,6),(7,'0951456667',NULL,1);
/*!40000 ALTER TABLE `broj mobitela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `email` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `e-mail` varchar(64) DEFAULT NULL,
  `Volonteri_VolonterID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Email_Volonteri1_idx` (`Volonteri_VolonterID`),
  CONSTRAINT `fk_Email_Volonteri1` FOREIGN KEY (`Volonteri_VolonterID`) REFERENCES `volonteri` (`VolonterID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (1,'matej.majkic@gmail.com',1),(2,'pero.peric@gmail.com',2),(3,'majaljutic91@gmail.com',3),(4,'kezokezic1@gmail.com',4),(5,'koky96@gmail.com',5),(6,'karla.matijevic@gmail.com',6),(7,'my_immortal7@yahoo.com',3);
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grad`
--

DROP TABLE IF EXISTS `grad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grad` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Grad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grad`
--

LOCK TABLES `grad` WRITE;
/*!40000 ALTER TABLE `grad` DISABLE KEYS */;
INSERT INTO `grad` VALUES (1,'Rijeka'),(2,'Opatija'),(3,'Matulji'),(4,'Osijek'),(5,'Karlovac');
/*!40000 ALTER TABLE `grad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `izvjesce`
--

DROP TABLE IF EXISTS `izvjesce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `izvjesce` (
  `idIzvjesce` int(11) NOT NULL AUTO_INCREMENT,
  `Opis izvjesca` varchar(45) DEFAULT NULL,
  `Datmu predavanja` date DEFAULT NULL,
  `Zaduzenja_idZaduzenje` int(11) NOT NULL,
  PRIMARY KEY (`idIzvjesce`),
  KEY `fk_Izvjesce_Zaduzenja1_idx` (`Zaduzenja_idZaduzenje`),
  CONSTRAINT `fk_Izvjesce_Zaduzenja1` FOREIGN KEY (`Zaduzenja_idZaduzenje`) REFERENCES `zaduzenja` (`idZaduzenje`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `izvjesce`
--

LOCK TABLES `izvjesce` WRITE;
/*!40000 ALTER TABLE `izvjesce` DISABLE KEYS */;
INSERT INTO `izvjesce` VALUES (1,'C++ Intro','2019-03-08',1),(2,'Baze podataka','2019-03-15',1),(3,'OOP','2019-04-01',1),(4,'C++ Intro','2019-01-07',4),(5,'Baze podataka','2019-01-14',4),(6,'OOP','2019-01-21',4),(7,'Prezentacije','2019-04-02',2),(8,'Poducavanje','2019-01-25',5),(9,'Cistoca','2019-04-05',3),(10,'Odrzavanje','2019-02-01',6);
/*!40000 ALTER TABLE `izvjesce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nagrade`
--

DROP TABLE IF EXISTS `nagrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nagrade` (
  `idNagrade` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv aktivnosti` varchar(45) DEFAULT NULL,
  `Broj sati` varchar(45) DEFAULT NULL,
  `Vrijednost` varchar(45) DEFAULT NULL,
  `Naziv ustanove` varchar(45) DEFAULT NULL,
  `Opis nagrade` varchar(45) DEFAULT NULL,
  `Datum pocetka` date DEFAULT NULL,
  `Datum zavrsetka` date DEFAULT NULL,
  `Zaduzenja_idZaduzenje` int(11) NOT NULL,
  PRIMARY KEY (`idNagrade`),
  KEY `fk_Nagrade_Zaduzenja1_idx` (`Zaduzenja_idZaduzenje`),
  CONSTRAINT `fk_Nagrade_Zaduzenja1` FOREIGN KEY (`Zaduzenja_idZaduzenje`) REFERENCES `zaduzenja` (`idZaduzenje`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nagrade`
--

LOCK TABLES `nagrade` WRITE;
/*!40000 ALTER TABLE `nagrade` DISABLE KEYS */;
INSERT INTO `nagrade` VALUES (1,'Putovanje','96','3800','Via','Put u Grucku','2019-07-01','2019-07-05',1),(2,'Trening','3000','3000','Blue Gym','Clanarina u teretani','2019-01-01','2019-12-29',4);
/*!40000 ALTER TABLE `nagrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt`
--

DROP TABLE IF EXISTS `projekt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `projekt` (
  `idProjekt` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(45) DEFAULT NULL,
  `Datum pocetka` date DEFAULT NULL,
  `Datum kraja` date DEFAULT NULL,
  PRIMARY KEY (`idProjekt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt`
--

LOCK TABLES `projekt` WRITE;
/*!40000 ALTER TABLE `projekt` DISABLE KEYS */;
INSERT INTO `projekt` VALUES (1,'Bootcamp IT','2019-03-04','2019-06-03'),(2,'Le Wagon','2019-01-12','2019-10-15');
/*!40000 ALTER TABLE `projekt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `troskovi`
--

DROP TABLE IF EXISTS `troskovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `troskovi` (
  `idTroskovi` int(11) NOT NULL AUTO_INCREMENT,
  `Vrsta naknade` varchar(45) DEFAULT NULL,
  `Iznos` int(11) DEFAULT NULL,
  `Svrha` varchar(45) DEFAULT NULL,
  `Datum isplate` date DEFAULT NULL,
  `Zaduzenja_idZaduzenje` int(11) NOT NULL,
  PRIMARY KEY (`idTroskovi`),
  KEY `fk_Troskovi_Zaduzenja1_idx` (`Zaduzenja_idZaduzenje`),
  CONSTRAINT `fk_Troskovi_Zaduzenja1` FOREIGN KEY (`Zaduzenja_idZaduzenje`) REFERENCES `zaduzenja` (`idZaduzenje`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `troskovi`
--

LOCK TABLES `troskovi` WRITE;
/*!40000 ALTER TABLE `troskovi` DISABLE KEYS */;
INSERT INTO `troskovi` VALUES (1,'Oprema',25000,'Za poducavanje','2019-01-15',1),(2,'Oprema',40000,'Izvrsavanje tecaja','2018-11-29',4),(3,'Laptop',8500,'Za rad','2019-01-15',2),(4,'Laptop',15000,'Poducavanje','2018-11-29',5);
/*!40000 ALTER TABLE `troskovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volonteri`
--

DROP TABLE IF EXISTS `volonteri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `volonteri` (
  `VolonterID` int(11) NOT NULL AUTO_INCREMENT,
  `Ime` varchar(45) DEFAULT NULL,
  `Prezime` varchar(45) DEFAULT NULL,
  `Spol` enum('Muski','Zenski','Drugo') DEFAULT NULL,
  PRIMARY KEY (`VolonterID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volonteri`
--

LOCK TABLES `volonteri` WRITE;
/*!40000 ALTER TABLE `volonteri` DISABLE KEYS */;
INSERT INTO `volonteri` VALUES (1,'Matej','Majkic','Muski'),(2,'Pero','Peric','Muski'),(3,'Maja','Ljutic','Zenski'),(4,'Darko','Kezic','Muski'),(5,'Marko','Konjevic','Muski'),(6,'Karla','Matijevic','Zenski');
/*!40000 ALTER TABLE `volonteri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volonteri_has_zanimanje`
--

DROP TABLE IF EXISTS `volonteri_has_zanimanje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `volonteri_has_zanimanje` (
  `Volonteri_OIB` int(11) NOT NULL,
  `Zanimanje_ID` int(11) NOT NULL,
  PRIMARY KEY (`Volonteri_OIB`,`Zanimanje_ID`),
  KEY `fk_Volonteri_has_Zanimanje_Zanimanje1_idx` (`Zanimanje_ID`),
  KEY `fk_Volonteri_has_Zanimanje_Volonteri1_idx` (`Volonteri_OIB`),
  CONSTRAINT `fk_Volonteri_has_Zanimanje_Volonteri1` FOREIGN KEY (`Volonteri_OIB`) REFERENCES `volonteri` (`VolonterID`),
  CONSTRAINT `fk_Volonteri_has_Zanimanje_Zanimanje1` FOREIGN KEY (`Zanimanje_ID`) REFERENCES `zanimanje` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volonteri_has_zanimanje`
--

LOCK TABLES `volonteri_has_zanimanje` WRITE;
/*!40000 ALTER TABLE `volonteri_has_zanimanje` DISABLE KEYS */;
INSERT INTO `volonteri_has_zanimanje` VALUES (1,1),(4,1),(3,2),(6,2),(2,4),(5,5);
/*!40000 ALTER TABLE `volonteri_has_zanimanje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaduzenja`
--

DROP TABLE IF EXISTS `zaduzenja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zaduzenja` (
  `idZaduzenje` int(11) NOT NULL AUTO_INCREMENT,
  `Opis posla` varchar(64) DEFAULT NULL,
  `Sati volonterstva` varchar(45) DEFAULT NULL,
  `Datum pocetka` date DEFAULT NULL,
  `Datum kraja` date DEFAULT NULL,
  `Projekt_idProjekt` int(11) NOT NULL,
  `Volonteri_VolonterID` int(11) NOT NULL,
  PRIMARY KEY (`idZaduzenje`),
  KEY `fk_Zaduzenja_Projekt1_idx` (`Projekt_idProjekt`),
  KEY `fk_Zaduzenja_Volonteri1_idx` (`Volonteri_VolonterID`),
  CONSTRAINT `fk_Zaduzenja_Projekt1` FOREIGN KEY (`Projekt_idProjekt`) REFERENCES `projekt` (`idProjekt`),
  CONSTRAINT `fk_Zaduzenja_Volonteri1` FOREIGN KEY (`Volonteri_VolonterID`) REFERENCES `volonteri` (`VolonterID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaduzenja`
--

LOCK TABLES `zaduzenja` WRITE;
/*!40000 ALTER TABLE `zaduzenja` DISABLE KEYS */;
INSERT INTO `zaduzenja` VALUES (1,'Poducavanje','8','2019-03-04','2019-06-03',1,1),(2,'Asistiranje','8','2019-03-04','2019-06-03',1,2),(3,'Ciscenje','8','2019-03-04','2019-06-03',1,3),(4,'Poducavanje','8','2019-01-12','2019-10-15',2,4),(5,'Asistiranje','8','2019-01-12','2019-10-15',2,5),(6,'Ciscenje','8','2019-01-12','2019-10-15',2,6);
/*!40000 ALTER TABLE `zaduzenja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zanimanje`
--

DROP TABLE IF EXISTS `zanimanje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zanimanje` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Zanimanje` varchar(64) DEFAULT NULL,
  `Status` enum('da','ne') DEFAULT NULL,
  `Iskustvo` enum('da','ne') DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zanimanje`
--

LOCK TABLES `zanimanje` WRITE;
/*!40000 ALTER TABLE `zanimanje` DISABLE KEYS */;
INSERT INTO `zanimanje` VALUES (1,'Software Developer','ne','da'),(2,'Cistac/ica','da','da'),(3,'Farmaceut','ne','da'),(4,'Junior Developer','da','da'),(5,'System Administrator','ne','ne');
/*!40000 ALTER TABLE `zanimanje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-02 15:31:28
