-- MySQL dump 10.13  Distrib 8.0.46, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: school
-- ------------------------------------------------------
-- Server version	9.6.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'fea71688-4ad2-11f1-8540-d05432fe62f1:1-219';

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ects` decimal(4,1) NOT NULL,
  `semester` tinyint DEFAULT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teacher` (`teacher_id`),
  CONSTRAINT `chk_semester` CHECK ((`semester` between 1 and 4))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (1,'Intro to Programming','Computer Science',5.0,1,1),(2,'Calculus I','Mathematics',7.5,1,2),(3,'Classical Mechanics','Physics',7.5,1,3),(4,'General Chemistry','Chemistry',7.5,1,4),(5,'Cell Biology','Biology',5.0,1,5),(6,'Modern European History','History',5.0,1,6),(7,'Microeconomics','Economics',7.5,2,7),(8,'Danish Literature','Literature',5.0,2,8),(9,'Databases','Computer Science',7.5,2,9),(10,'Linear Algebra','Mathematics',7.5,2,10),(11,'Thermodynamics','Physics',5.0,2,11),(12,'Organic Chemistry','Chemistry',10.0,2,12),(13,'Genetics','Biology',7.5,3,13),(14,'Viking Age Studies','History',5.0,3,14),(15,'Macroeconomics','Economics',7.5,3,15),(16,'Creative Writing','Literature',5.0,3,16),(17,'Algorithms','Computer Science',10.0,3,17),(18,'Statistics','Mathematics',7.5,3,18),(19,'Quantum Physics','Physics',10.0,4,19),(20,'Biochemistry','Chemistry',7.5,4,20),(21,'Ecology','Biology',5.0,4,21),(22,'History of Science','History',5.0,4,22),(23,'Econometrics','Economics',10.0,4,23),(24,'World Literature','Literature',7.5,4,24),(25,'Web Development','Computer Science',7.5,NULL,25),(26,'Discrete Mathematics','Mathematics',5.0,NULL,26),(27,'Optics','Physics',5.0,NULL,27),(28,'Analytical Chemistry','Chemistry',7.5,NULL,28),(29,'Microbiology','Biology',7.5,NULL,29),(30,'Cold War History','History',5.0,NULL,30);
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Course` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (1,'Oliver','Andersen','oliver.andersen@student.example.dk','1998-01-01',1),(2,'Noah','Berg','noah.berg@student.example.dk','1999-06-08',8),(3,'Freja','Dahl','freja.dahl@student.example.dk','2000-11-15',15),(4,'Ida','Eriksen','ida.eriksen@student.example.dk','2001-04-22',22),(5,'William','Friis','william.friis@student.example.dk','2002-09-01',29),(6,'Emil','Gram','emil.gram@student.example.dk','2003-02-08',6),(7,'Alma','Hviid','alma.hviid@student.example.dk','2004-07-15',13),(8,'Clara','Iversen','clara.iversen@student.example.dk','1998-12-22',20),(9,'Lucas','Juhl','lucas.juhl@student.example.dk','1999-05-01',27),(10,'Ella','Kjær','ella.kjaer@student.example.dk','2000-10-08',4),(11,'Victor','Lauritsen','victor.lauritsen@student.example.dk','2001-03-15',11),(12,'Agnes','Mogensen','agnes.mogensen@student.example.dk','2002-08-22',18),(13,'Oscar','Nygaard','oscar.nygaard@student.example.dk','2003-01-01',25),(14,'Sofia','Overgaard','sofia.overgaard@student.example.dk','2004-06-08',2),(15,'Magnus','Pihl','magnus.pihl@student.example.dk','1998-11-15',9),(16,'Laura','Qvist','laura.qvist@student.example.dk','1999-04-22',16),(17,'Alfred','Riis','alfred.riis@student.example.dk','2000-09-01',23),(18,'Josefine','Skov','josefine.skov@student.example.dk','2001-02-08',30),(19,'Malthe','Toft','malthe.toft@student.example.dk','2002-07-15',7),(20,'Marie','Ulrich','marie.ulrich@student.example.dk','2003-12-22',14),(21,'August','Vestergaard','august.vestergaard@student.example.dk','2004-05-01',21),(22,'Nora','Winther','nora.winther@student.example.dk','1998-10-08',28),(23,'Carl','Ydemark','carl.ydemark@student.example.dk','1999-03-15',5),(24,'Astrid','Zachariassen','astrid.zachariassen@student.example.dk','2000-08-22',12),(25,'Valdemar','Aagaard','valdemar.aagaard@student.example.dk','2001-01-01',19),(26,'Karla','Bach','karla.bach@student.example.dk','2002-06-08',26),(27,'Elias','Clausen','elias.clausen@student.example.dk','2003-11-15',3),(28,'Silje','Damgaard','silje.damgaard@student.example.dk','2004-04-22',10),(29,'Villads','Ebbesen','villads.ebbesen@student.example.dk','1998-09-01',17),(30,'Olivia','Fogh','olivia.fogh@student.example.dk','1999-02-08',24),(31,'Liam','Beck','liam.beck@student.example.dk','1996-01-01',1),(32,'Mathilde','Christoffersen','mathilde.christoffersen@student.example.dk','1999-08-12',12),(33,'Aksel','Dalsgaard','aksel.dalsgaard@student.example.dk','2002-03-23',23),(34,'Cecilie','Engelbrecht','cecilie.engelbrecht@student.example.dk','1996-10-06',4),(35,'Storm','Foldager','storm.foldager@student.example.dk','1999-05-17',15),(36,'Filippa','Gade','filippa.gade@student.example.dk','2002-12-28',26),(37,'Mads','Hedegaard','mads.hedegaard@student.example.dk','1996-07-11',7),(38,'Johanne','Ipsen','johanne.ipsen@student.example.dk','1999-02-22',18),(39,'Anton','Jessen','anton.jessen@student.example.dk','2002-09-05',29),(40,'Rosa','Kragh','rosa.kragh@student.example.dk','1996-04-16',10),(41,'Tobias','Lykke','tobias.lykke@student.example.dk','1999-11-27',21),(42,'Selma','Mølgaard','selma.moelgaard@student.example.dk','2002-06-10',2),(43,'Jonas','Nissen','jonas.nissen@student.example.dk','1996-01-21',13),(44,'Maja','Ottesen','maja.ottesen@student.example.dk','1999-08-04',24),(45,'Benjamin','Plesner','benjamin.plesner@student.example.dk','2002-03-15',5),(46,'Emilie','Quist','emilie.quist@student.example.dk','1996-10-26',16),(47,'Rasmus','Rohde','rasmus.rohde@student.example.dk','1999-05-09',27),(48,'Thea','Schou','thea.schou@student.example.dk','2002-12-20',8),(49,'Sebastian','Terkelsen','sebastian.terkelsen@student.example.dk','1996-07-03',19),(50,'Naja','Thygesen','naja.thygesen@student.example.dk','1999-02-14',30),(51,'Gustav','Varming','gustav.varming@student.example.dk','2002-09-25',11),(52,'Liva','Wulff','liva.wulff@student.example.dk','1996-04-08',22),(53,'Mikkel','Ørum','mikkel.oerum@student.example.dk','1999-11-19',3),(54,'Sara','Aaby','sara.aaby@student.example.dk','2002-06-02',14),(55,'Jakob','Brix','jakob.brix@student.example.dk','1996-01-13',25),(56,'Anna','Callesen','anna.callesen@student.example.dk','1999-08-24',6),(57,'Philip','Duus','philip.duus@student.example.dk','2002-03-07',17),(58,'Caroline','Elkjær','caroline.elkjaer@student.example.dk','1996-10-18',28),(59,'Daniel','Fich','daniel.fich@student.example.dk','1999-05-01',9),(60,'Amalie','Grønbæk','amalie.groenbaek@student.example.dk','2002-12-12',20);
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher`
--

DROP TABLE IF EXISTS `Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teacher` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher`
--

LOCK TABLES `Teacher` WRITE;
/*!40000 ALTER TABLE `Teacher` DISABLE KEYS */;
INSERT INTO `Teacher` VALUES (1,'Anders','Jensen','anders.jensen@uni.example.dk','Computer Science'),(2,'Mette','Nielsen','mette.nielsen@uni.example.dk','Mathematics'),(3,'Lars','Hansen','lars.hansen@uni.example.dk','Physics'),(4,'Sofie','Pedersen','sofie.pedersen@uni.example.dk','Chemistry'),(5,'Henrik','Andersen','henrik.andersen@uni.example.dk','Biology'),(6,'Camilla','Christensen','camilla.christensen@uni.example.dk','History'),(7,'Jesper','Larsen','jesper.larsen@uni.example.dk','Economics'),(8,'Louise','Sørensen','louise.soerensen@uni.example.dk','Literature'),(9,'Mikkel','Rasmussen','mikkel.rasmussen@uni.example.dk','Computer Science'),(10,'Pernille','Jørgensen','pernille.joergensen@uni.example.dk','Mathematics'),(11,'Thomas','Petersen','thomas.petersen@uni.example.dk','Physics'),(12,'Karen','Madsen','karen.madsen@uni.example.dk','Chemistry'),(13,'Søren','Kristensen','soeren.kristensen@uni.example.dk','Biology'),(14,'Anne','Olsen','anne.olsen@uni.example.dk','History'),(15,'Morten','Thomsen','morten.thomsen@uni.example.dk','Economics'),(16,'Ida','Christiansen','ida.christiansen@uni.example.dk','Literature'),(17,'Rasmus','Poulsen','rasmus.poulsen@uni.example.dk','Computer Science'),(18,'Maria','Johansen','maria.johansen@uni.example.dk','Mathematics'),(19,'Peter','Møller','peter.moeller@uni.example.dk','Physics'),(20,'Julie','Mortensen','julie.mortensen@uni.example.dk','Chemistry'),(21,'Kasper','Knudsen','kasper.knudsen@uni.example.dk','Biology'),(22,'Emma','Jakobsen','emma.jakobsen@uni.example.dk','History'),(23,'Nikolaj','Jacobsen','nikolaj.jacobsen@uni.example.dk','Economics'),(24,'Katrine','Mikkelsen','katrine.mikkelsen@uni.example.dk','Literature'),(25,'Frederik','Olesen','frederik.olesen@uni.example.dk','Computer Science'),(26,'Signe','Frederiksen','signe.frederiksen@uni.example.dk','Mathematics'),(27,'Christian','Laursen','christian.laursen@uni.example.dk','Physics'),(28,'Helle','Henriksen','helle.henriksen@uni.example.dk','Chemistry'),(29,'Martin','Lund','martin.lund@uni.example.dk','Biology'),(30,'Nanna','Holm','nanna.holm@uni.example.dk','History');
/*!40000 ALTER TABLE `Teacher` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-16 15:46:06
