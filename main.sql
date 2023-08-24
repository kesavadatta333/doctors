-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: doctors
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `ID` int DEFAULT NULL,
  `game` enum('ATHLETICS','ARCHERY','BADMINTON','BASKETBALL','BALL BADMINTON','CARROMS','CHESS','CYCLOTHON','WALKATHON','SWIMMING','TENNIKOIT','THROW','ROWING','ROLLER SKATING','FENCING','SHOOTING','TABLE TENNIS','LAWN TENNIS','CRICKET WHITE BALL','HARD TENNIS CRICKET','WOMEN BOX CRICKET','VOLLEY BALL','FOOTBALL','KHO KHO','KABADDI','THROW BALL','TUG OF WAR') DEFAULT NULL,
  `AMOUNT` int unsigned DEFAULT NULL,
  KEY `ID` (`ID`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `register` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (230020,'ARCHERY',30),(230021,'CRICKET WHITE BALL',30000),(230022,'HARD TENNIS CRICKET',20000),(230023,'CHESS',35),(230027,'ARCHERY',30),(230025,'CHESS',30),(230024,'BALL BADMINTON',20000),(230023,'CHESS',40),(230026,'ARCHERY',30),(230021,'BALL BADMINTON',7000),(230023,'BALL BADMINTON',0),(230027,'BADMINTON',1500),(230021,'BADMINTON',20),(230029,'ARCHERY',30),(230029,'BALL BADMINTON',20000),(230029,'BADMINTON',30),(230030,'ARCHERY',30),(230030,'BALL BADMINTON',40),(230031,'ARCHERY',30),(230032,'ATHLETICS',30),(230032,'ARCHERY',12),(230032,'BADMINTON',12),(230032,'CHESS',12),(230033,'FENCING',35),(230033,'BALL BADMINTON',0),(231004,'BADMINTON',30),(231004,'HARD TENNIS CRICKET',0),(230029,'HARD TENNIS CRICKET',0);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `game_name` varchar(30) NOT NULL,
  `amount` int unsigned DEFAULT NULL,
  `team_count` int DEFAULT NULL,
  PRIMARY KEY (`game_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES ('ARCHERY',1500,1),('ATHLETICS',1500,1),('BADMINTON',1500,2),('BALL BADMINTON',10000,7),('BASKETBALL',10000,9),('CARROMS',1500,2),('CHESS',1500,1),('CRICKET WHITE BALL',30000,14),('CYCLOTHON',1500,1),('FENCING',1500,1),('FOOTBALL',10000,11),('HARD TENNIS CRICKET',20000,14),('KABADDI',10000,10),('KHO KHO',10000,12),('LAWN TENNIS',1500,2),('ROLLER SKATING',1500,1),('ROWING',1500,1),('SHOOTING',1500,1),('SWIMMING',1500,1),('TABLE TENNIS',1500,2),('TENNIKOIT',1500,1),('THROWBALL',10000,10),('TUG OF WAR',5000,10),('VOLLEY BALL',10000,9),('WOMEN BOX CRICKET',10000,7);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individual_teams`
--

DROP TABLE IF EXISTS `individual_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `individual_teams` (
  `reqid` varchar(6) NOT NULL,
  `teamid` int DEFAULT NULL,
  `id` int DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `game` enum('ATHLETICS','ARCHERY','BADMINTON','BASKETBALL','BALL BADMINTON','CARROMS','CHESS','CYCLOTHON','WALKATHON','SWIMMING','TENNIKOIT','THROW','ROWING','ROLLER SKATING','FENCING','SHOOTING','TABLE TENNIS','LAWN TENNIS','CRICKET WHITE BALL','HARD TENNIS CRICKET','WOMEN BOX CRICKET','VOLLEY BALL','FOOTBALL','KHO KHO','KABADDI','THROW BALL','TUG OF WAR') DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `status` enum('Accepted','pending') DEFAULT 'pending',
  PRIMARY KEY (`reqid`),
  KEY `id` (`id`),
  KEY `teamid` (`teamid`),
  KEY `game` (`game`,`category`,`status`),
  CONSTRAINT `individual_teams_ibfk_1` FOREIGN KEY (`id`) REFERENCES `register` (`ID`),
  CONSTRAINT `individual_teams_ibfk_2` FOREIGN KEY (`teamid`) REFERENCES `sub_games` (`team_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individual_teams`
--

LOCK TABLES `individual_teams` WRITE;
/*!40000 ALTER TABLE `individual_teams` DISABLE KEYS */;
INSERT INTO `individual_teams` VALUES ('C4fE5j',289026,230022,'rama m','datta@codegnan.com','BADMINTON','Mens Doubles','pending');
/*!40000 ALTER TABLE `individual_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `ordid` int unsigned DEFAULT NULL,
  `id` int DEFAULT NULL,
  `game` enum('ATHLETICS','ARCHERY','BADMINTON','BASKETBALL','BALL BADMINTON','CARROMS','CHESS','CYCLOTHON','WALKATHON','SWIMMING','TENNIKOIT','THROW','ROWING','ROLLER SKATING','FENCING','SHOOTING','TABLE TENNIS','LAWN TENNIS','CRICKET WHITE BALL','HARD TENNIS CRICKET','WOMEN BOX CRICKET','VOLLEY BALL','FOOTBALL','KHO KHO','KABADDI','THROW BALL','TUG OF WAR') DEFAULT NULL,
  `amount` decimal(8,3) DEFAULT NULL,
  `status` enum('pending','Successfull') DEFAULT 'pending',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `transactionid` bigint unsigned DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (5026498,230020,'ARCHERY',30.000,'Successfull','2023-08-08 06:07:01',2308081655482),(36518736,1056,'CRICKET WHITE BALL',30.000,'pending','2023-08-08 06:19:10',NULL),(3818144,230021,'CRICKET WHITE BALL',30.000,'Successfull','2023-08-08 06:29:33',230808160456062),(56810539,1057,'HARD TENNIS CRICKET',35.000,'pending','2023-08-08 06:26:39',NULL),(26748173,230022,'HARD TENNIS CRICKET',30.000,'Successfull','2023-08-08 08:33:36',230808160474237),(94938831,230023,'CHESS',35.000,'Successfull','2023-08-08 09:10:50',230808160478918),(19128229,230021,'BADMINTON',1500.000,'pending','2023-08-08 10:31:28',NULL),(59192658,230021,'ATHLETICS',1500.000,'pending','2023-08-08 10:31:44',NULL),(89207968,230020,'BALL BADMINTON',10000.000,'pending','2023-08-08 10:35:09',NULL),(41089759,230020,'BALL BADMINTON',30.000,'pending','2023-08-08 10:35:48',NULL),(47830178,230021,'BADMINTON',1500.000,'pending','2023-08-08 10:38:27',NULL),(7023433,230021,'CARROMS',1500.000,'pending','2023-08-08 10:40:31',NULL),(82205593,230021,'ARCHERY',30.000,'pending','2023-08-08 10:42:07',NULL),(89378997,230021,'ARCHERY',30.000,'pending','2023-08-08 10:49:42',NULL),(69109144,230021,'ARCHERY',30.000,'pending','2023-08-08 10:52:28',NULL),(89055546,230021,'BALL BADMINTON',30.000,'Successfull','2023-08-08 11:19:31',230808160496275),(72585219,1060,'BADMINTON',30.000,'pending','2023-08-08 17:39:58',NULL),(45540566,1060,'BADMINTON',30.000,'pending','2023-08-08 17:40:26',NULL),(82655504,1060,'BADMINTON',30.000,'pending','2023-08-08 17:42:51',NULL),(49924388,1060,'ARCHERY',30.000,'pending','2023-08-08 17:51:06',NULL),(34301638,1063,'ARCHERY',35.000,'pending','2023-08-09 10:20:26',NULL),(16049108,1065,'',30.000,'pending','2023-08-09 10:21:29',NULL),(43485361,1064,'KHO KHO',30.000,'pending','2023-08-09 10:21:42',NULL),(53463467,230029,'ARCHERY',30.000,'Successfull','2023-08-09 11:03:42',230809160601870),(48887420,230029,'BALL BADMINTON',40.000,'Successfull','2023-08-09 11:04:32',230809160601975),(11453671,230029,'BADMINTON',30.000,'Successfull','2023-08-09 11:19:55',230809160603899),(65868572,230030,'ARCHERY',30.000,'Successfull','2023-08-09 13:06:21',230809160616222),(95293720,230030,'BALL BADMINTON',40.000,'Successfull','2023-08-09 13:20:40',230809160617889),(15857965,1069,'ARCHERY',30.000,'pending','2023-08-10 06:58:13',NULL),(50942751,230021,'SHOOTING',1500.000,'pending','2023-08-10 14:49:22',NULL),(50942751,230021,'ROLLER SKATING',1500.000,'pending','2023-08-10 14:49:22',NULL),(50942751,230021,'FENCING',1500.000,'pending','2023-08-10 14:49:22',NULL),(50942751,230021,'TENNIKOIT',1500.000,'pending','2023-08-10 14:49:22',NULL),(50942751,230021,'TABLE TENNIS',1500.000,'pending','2023-08-10 14:49:22',NULL),(14252568,230031,'ARCHERY',30.000,'Successfull','2023-08-11 12:36:10',230811160849095),(1529452,230022,'SHOOTING',1500.000,'pending','2023-08-11 13:18:50',NULL),(1529452,230022,'ROLLER SKATING',1500.000,'pending','2023-08-11 13:18:50',NULL),(1529452,230022,'FENCING',1500.000,'pending','2023-08-11 13:18:50',NULL),(1529452,230022,'TENNIKOIT',1500.000,'pending','2023-08-11 13:18:50',NULL),(1529452,230022,'TABLE TENNIS',1500.000,'pending','2023-08-11 13:18:50',NULL),(1529452,230022,'LAWN TENNIS',1500.000,'pending','2023-08-11 13:18:50',NULL),(83183230,230032,'ATHLETICS',30.000,'Successfull','2023-08-11 15:35:59',230811160861910),(65566361,230021,'ROLLER SKATING',1500.000,'pending','2023-08-11 15:35:01',NULL),(65566361,230021,'FENCING',1500.000,'pending','2023-08-11 15:35:01',NULL),(65566361,230021,'TENNIKOIT',1500.000,'pending','2023-08-11 15:35:01',NULL),(65566361,230021,'TABLE TENNIS',1500.000,'pending','2023-08-11 15:35:01',NULL),(65566361,230021,'LAWN TENNIS',1500.000,'pending','2023-08-11 15:35:01',NULL),(15715673,230032,'ARCHERY',12.000,'Successfull','2023-08-11 15:53:41',230811160863309),(15715673,230032,'BADMINTON',12.000,'Successfull','2023-08-11 15:53:41',230811160863309),(15715673,230032,'CHESS',12.000,'Successfull','2023-08-11 15:53:41',230811160863309),(80542639,230033,'FENCING',35.000,'Successfull','2023-08-12 16:17:39',230812160934101),(47839339,6,'LAWN TENNIS',4000.000,'pending','2023-08-14 13:49:28',NULL),(97855950,6,'LAWN TENNIS',3500.000,'pending','2023-08-14 13:50:50',NULL),(4703446,10,'ARCHERY',4000.000,'pending','2023-08-15 15:53:03',NULL),(26536206,11,'KABADDI',4000.000,'pending','2023-08-16 04:59:37',NULL),(63138756,13,'BADMINTON',30.000,'pending','2023-08-16 13:46:44',NULL),(42160847,231002,'KABADDI',30.000,'Successfull','2023-08-16 14:02:13',230816161212163),(80264890,15,'BADMINTON',30.000,'pending','2023-08-16 14:22:20',NULL),(16989135,231004,'BADMINTON',30.000,'Successfull','2023-08-16 15:27:33',230816161218532),(73621753,230021,'FOOTBALL',10000.000,'pending','2023-08-16 17:37:32',NULL),(41038832,231005,'BALL BADMINTON',35.000,'Successfull','2023-08-17 02:59:31',230817161233835),(76656624,230022,'ATHLETICS',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'ARCHERY',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'BADMINTON',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'CARROMS',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'CHESS',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'CYCLOTHON',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'SWIMMING',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'ROWING',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'SHOOTING',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'ROLLER SKATING',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'FENCING',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'TENNIKOIT',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'TABLE TENNIS',1500.000,'pending','2023-08-17 11:04:43',NULL),(76656624,230022,'LAWN TENNIS',1500.000,'pending','2023-08-17 11:04:43',NULL),(34873357,230022,'ROWING',1500.000,'pending','2023-08-17 11:14:31',NULL),(11708872,230022,'BADMINTON',1500.000,'pending','2023-08-17 11:20:35',NULL),(28376390,230022,'BADMINTON',1500.000,'pending','2023-08-17 11:47:22',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `PASSWORD` longblob,
  `mobileno` bigint DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `city` text,
  `address` text,
  `state` text,
  `country` text,
  `degree` varchar(10) DEFAULT NULL,
  `MCI_ID` varchar(20) DEFAULT NULL,
  `SHIRT_SIZE` enum('S','M','L','XL','XXL','XXXL','XXXXL') DEFAULT NULL,
  `food_preference` enum('Yes','No') DEFAULT 'No',
  `TandCs_acception` enum('YES') DEFAULT 'YES',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB AUTO_INCREMENT=231006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (230020,'Renuka','Nandivada','posieswarnandivada@gmail.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',9177806313,22,'Female','2023-08-09','hyderabad','vijayawada','Andhra Pradesh','India','MBBS','dasd121dsd','S','No','YES'),(230021,'Eswar ','Nandivada','eswar@codegnan.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',8907654390,22,'Male','2023-08-18','hyderabad','vijayawada','Andhra Pradesh','MD','MD','jhhjhhjhj','M','No','YES'),(230022,'rama','m','datta@codegnan.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',7766889955,36,'Male','2023-08-06','vijayawada','vijayawada','Andhra Pradesh','India','MD','cff34fsvsdvs','XL','No','YES'),(230023,'myron','s','obaidsk7865@gmail.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',9701296465,21,'Male','2002-09-10','pendyala','Masjid street','Andhra Pradesh','India','MBBS','342341','XL','No','YES'),(230024,'Rajendra','Kumar','diarysilk68@gmail.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',1478523690,50,'Male','2023-08-17','hyderabad','25-889-90','AP','India','MBBS','dasd121dsd','M','No','YES'),(230025,'Jagadeeswari','Kumar','eswar8nandivada@gmail.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',1472523690,50,'Female','2023-08-17','hyderabad','25-889-90','AP','India','MBBS','dasd121dsd','M','No','YES'),(230026,'Pila','Renuka','renukanandivada@gmail.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',1472523691,26,'Male','2023-08-17','hyderabad','25-889-90','AP','India','MBBS','dasd121dsd','M','No','YES'),(230027,'Pilla','Anil','rahul@codegnan.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',1472523656,26,'Male','2023-08-17','hyderabad','25-889-90','AP','India','MBBS','dasd121dsd','M','No','YES'),(230029,'rama','anji','z3191716@gmail.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',7766558899,44,'Male','2023-08-08','Vijayawada','vijayawada','Andhra Pradesh','India','MBBS','afWEFARC','XXL','No','YES'),(230030,'rama','m','mrvlkddatta333@gmail.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',8074991179,46,'Male','1998-08-13','vijayawada','vijayawada','Andhra Pradesh','India','MBBS','543216','XL','No','YES'),(230031,'Ambica ','Bellamkonda','ambica930@gmail.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',8765432103,23,'Female','2000-07-13','vijayawada','#29-90-98 Mumbai','Andhra Pradesh','India','MBBS','24344334','M','No','YES'),(230032,'Rama','eswar','dattumokkapati@gmail.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',8877668899,58,'Male','1999-08-15','vijayawada','vijayawada','Andhra Pradesh','India','MBBS','123545','XXL','No','YES'),(230033,'ram','ram','dvin3226@gmail.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',9014251353,55,'Male','2015-02-05','vijayawada','vijayawada','Maharashtra','India','MBBS','as123wsa','S','No','YES'),(231000,'Doctors','Olympiad','doctorsolympiad2023@gmail.com',_binary '$2b$12$ZQ2kcmLdBZFypB5ScY4FgeZ6W2wlElL1icNxk.9vMxGbzf0aIfyhu',1234567890,30,'Male','1993-08-16','New York','123 Main St','NY','USA','MD','MCI123456','L','No','YES'),(231004,'kesava','Jhende','kesava@codegnan.com',_binary '$2b$12$fzTtAILImAEoZ.M2KEvrYudM1SrYaAIqXrTpsrFmS2c0j8EkeBviC',8540769874,24,'Male','1999-06-24','vijayawada','#29-90-98 Hyd','Andhra Pradesh','India','MBBS','345435','XL','No','YES');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_games`
--

DROP TABLE IF EXISTS `sub_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_games` (
  `game` enum('ATHLETICS','ARCHERY','BADMINTON','BASKETBALL','BALL BADMINTON','CARROMS','CHESS','CYCLOTHON','JUMPS','WALKATHON','SWIMMING','TENNIKOIT','ROWING','ROLLER SKATING','FENCING','SHOOTING','TABLE TENNIS','LAWN TENNIS','CRICKET WHITE BALL','HARD TENNIS CRICKET','WOMEN BOX CRICKET','VOLLEY BALL','FOOTBALL','KHO KHO','KABADDI','THROW BALL','TUG OF WAR') DEFAULT NULL,
  `id` int DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `team_number` int DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `team_number` (`team_number`),
  KEY `id` (`id`),
  KEY `game` (`game`),
  CONSTRAINT `sub_games_ibfk_1` FOREIGN KEY (`id`) REFERENCES `register` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_games`
--

LOCK TABLES `sub_games` WRITE;
/*!40000 ALTER TABLE `sub_games` DISABLE KEYS */;
INSERT INTO `sub_games` VALUES ('ARCHERY',230020,'Men\'s singles',NULL,'2023-08-08 06:07:01'),('CHESS',230023,'Men\'s singles',NULL,'2023-08-08 09:10:50'),('HARD TENNIS CRICKET',230022,NULL,308878,'2023-08-08 13:45:10'),('BALL BADMINTON',230024,NULL,66807,'2023-08-09 02:34:01'),('ARCHERY',230029,'Men\'s singles',NULL,'2023-08-09 11:03:42'),('BALL BADMINTON',230029,NULL,834969,'2023-08-09 11:16:00'),('ARCHERY',230030,'Men\'s singles',NULL,'2023-08-09 13:06:21'),('BALL BADMINTON',230021,NULL,860379,'2023-08-10 08:06:30'),('ARCHERY',230031,'Men\'s singles',NULL,'2023-08-11 12:36:10'),('ARCHERY',230032,'Men\'s singles',NULL,'2023-08-11 15:53:41'),('CHESS',230032,'Men\'s singles',NULL,'2023-08-11 15:53:41'),('FENCING',230033,'Men\'s singles',NULL,'2023-08-12 16:17:39'),('BADMINTON',230021,'Mens Single',NULL,'2023-08-16 11:09:01'),('CRICKET WHITE BALL',230021,NULL,121004,'2023-08-17 06:21:33'),('BADMINTON',230029,'Mens Doubles',289026,'2023-08-17 11:39:46');
/*!40000 ALTER TABLE `sub_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `reqid` varchar(6) NOT NULL,
  `teamid` int DEFAULT NULL,
  `id` int DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `game` enum('ATHLETICS','ARCHERY','BADMINTON','BASKETBALL','BALL BADMINTON','CARROMS','CHESS','CYCLOTHON','JUMPS','WALKATHON','SWIMMING','TENNIKOIT','ROWING','ROLLER SKATING','FENCING','SHOOTING','TABLE TENNIS','LAWN TENNIS','CRICKET WHITE BALL','HARD TENNIS CRICKET','WOMEN BOX CRICKET','VOLLEY BALL','FOOTBALL','KHO KHO','KABADDI','THROW BALL','TUG OF WAR') DEFAULT NULL,
  `status` enum('Accepted','pending') DEFAULT 'pending',
  PRIMARY KEY (`reqid`),
  KEY `id` (`id`),
  KEY `teamid` (`teamid`),
  KEY `game` (`game`,`status`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`id`) REFERENCES `register` (`ID`),
  CONSTRAINT `teams_ibfk_2` FOREIGN KEY (`teamid`) REFERENCES `sub_games` (`team_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES ('A3fO4d',308878,230025,'Jagadeeswari Kumar','eswar8nandivada@gmail.com','HARD TENNIS CRICKET','pending'),('A7zF1c',121004,230024,'Rajendra Kumar','diarysilk68@gmail.com','CRICKET WHITE BALL','pending'),('U0uK3h',308878,230029,'rama anji','z3191716@gmail.com','HARD TENNIS CRICKET','Accepted'),('W3xL9r',308878,231004,'kesava Jhende','kesava@codegnan.com','HARD TENNIS CRICKET','Accepted');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporary`
--

DROP TABLE IF EXISTS `temporary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporary` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `PASSWORD` longblob,
  `mobileno` bigint DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `city` text,
  `address` text,
  `state` text,
  `country` text,
  `degree` varchar(10) DEFAULT NULL,
  `MCI_ID` varchar(20) DEFAULT NULL,
  `SHIRT_SIZE` enum('S','M','L','XL','XXL','XXXL','XXXXL') DEFAULT NULL,
  `food_preference` enum('Yes','No') DEFAULT 'No',
  `TandCs_acception` enum('YES') DEFAULT 'YES',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporary`
--

LOCK TABLES `temporary` WRITE;
/*!40000 ALTER TABLE `temporary` DISABLE KEYS */;
INSERT INTO `temporary` VALUES (2,'rama','anji','datta@gmail.com',_binary '$2b$12$h7g7Tzls0IT7JpFP4eIZ4upc/dyvnPKznktWtXdGkQQf0K.yMZN82',9988665544,22,'Male','2001-05-20','vijayawada','vijayawada','Andhra Pradesh','India','MBBS','63937','XL','No','YES'),(4,'rama','m','kesava@codegnan.com',_binary '$2b$12$vD9rKlMjQJbySoxdv96.xOdVr9J23Xl4kfuYSM4KeXrSKTXoB2nNS',6306306301,22,'Male','2001-05-12','vijayawada','vijayawada','Andhra Pradesh','India','MD','123545','XXL','No','YES'),(6,'ram','ram','kesavadattakd333@gmail.com',_binary '$2b$12$hU2rBPczzyDIHgq9QrT4HuTFdtEMTX/1XEc2hbmET1ZEQrer7kRM.',9014626340,32,'Male','1991-06-11','vijayawada','vijayawada','Andhra Pradesh','India','MBBS','sgfd','L','No','YES'),(7,'ram','ram','kesavadattakd333@gmail.com',_binary '$2b$12$lanpiFb09gbo2iMek/7AB.dAJNd.xHiVHWmMeAW24LewNNTZ5dHVO',9014626340,0,'Male','1991-06-11','vijayawada','vijayawada','Andhra Pradesh','India','MBBS','sgfd','L','No','YES'),(8,'ram','ram','kesavadattakd333@gmail.com',_binary '$2b$12$LJ9CK2l3i0F6AwM.JXIe8u6TH8AcBQY/Wy2cCe970rTkEjMWcAQ.6',9014626273,0,'Male','2023-08-17','vijayawada','vijayawada','Maharashtra','India','MBBS','sgfd','S','No','YES'),(9,'ram','ram','kesavadattakd333@gmail.com',_binary '$2b$12$UW.iSdnhc8.ND74YIaV0e.5p7Phzv0ne4v4.msYhHepT1CCpoCc/e',9014626230,0,'Male','2023-08-09','vijayawada','vijayawada','Manipur','India','MD','as123wsa','M','No','YES'),(10,'ram','ram','kesavadattakd333@gmail.com',_binary '$2b$12$gSLuMTSnNYEM687jBTBdWucfvl/oDNF7HmoraXtib.23c1RZt1ywO',9014626424,0,'Male','2023-08-10','Vijayawada ','vijayawada','Maharashtra','India','MD','Ajs383nn','XXL','No','YES'),(11,'shaik','obaid','obaid@codegnan.com',_binary '$2b$12$9T/lh7v0UAzCMOdYkKXwtuUl5tpflmKgj00fYwjqxkiLMHErrrOjS',9701296460,22,'Male','2001-10-16','pendyala','Masjid street','Andhra Pradesh','India','MBBS','A21','L','No','YES'),(13,'Kesava','Jhende','kesava@codegnan.com',_binary '$2b$12$0WQo/ylaNfJuenS0wkSZNumyCgHa9TBglHc1JDKoo6R0bh1d4piC2',987654321,32,'Male','1991-07-25','vijayawada','Vijayawada','Andhra Pradesh','India','MBBS','234345','M','No','YES'),(15,'Kesava','Jhende','kesava@codegnan.com',_binary '$2b$12$Gc513HemlCIU.5bvxesto.RiEBOiUZdQzPzINw/FyangLcGwCWqSa',987632154,29,'Male','1993-10-25','vijayawada','Vijayawada','Andhra Pradesh','India','MBBS','234345','M','No','YES'),(19,'floyd','D','mijah83736@bagonew.com',_binary '$2b$12$xKoUSjbSsoaR4qkWgIguc.Zi5yW2UptJfUmyxs2BgwWWBGGVetNxi',9701296461,23,'Male','2000-06-07','pendyala','Masjid street','Andhra Pradesh','India','MBBS','QW12','XL','No','YES');
/*!40000 ALTER TABLE `temporary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-24  9:15:43
