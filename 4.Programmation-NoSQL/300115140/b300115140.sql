-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: world_x
-- ------------------------------------------------------
-- Server version	8.0.23

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-12  1:08:15



DROP TABLE IF EXISTS `registreetudiant`;  
/*!40101 SET @saved_cs_client = @@character_set_client */;  
/*!50503 SET character_set_client = utf8mb4 */;  
CREATE TABLE `registreetudiant` (  
  `registre_etudiant_id` int(11) NOT NULL AUTO_INCREMENT,  
  `registre_etudiants_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  
  `registre_etudiant_nom` varchar(255) COLLATE utf8_bin DEFAULT NULL,  
  `registre_etudiant_prenom` varchar(255) COLLATE utf8_bin DEFAULT NULL,  
  `registre_etudiant_identification` int(11) DEFAULT NULL,  
  `registre_etudiant_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,  
  `registre_etudiant_telephone` varchar(45) COLLATE utf8_bin DEFAULT NULL,`registre_etudiant_telefono2` varchar(45) COLLATE utf8_bin DEFAULT NULL,  
  `registre_etudiant_nom_college` varchar(255) COLLATE utf8_bin DEFAULT NULL,  
  `registre_etudiant_departement` varchar(45) COLLATE utf8_bin DEFAULT NULL,  
  `registre_etudiant_ville` varchar(45) COLLATE utf8_bin DEFAULT NULL,  
  `registre_etudiant_programme_classe` varchar(45) COLLATE utf8_bin DEFAULT NULL,  
  `registre_etudiant_observation` text COLLATE utf8_bin,  
  `registre_etudiant_examens` varchar(45) COLLATE utf8_bin DEFAULT NULL,  
  `registre_etudiant_file1` varchar(255) COLLATE utf8_bin DEFAULT NULL,`file1` varchar(255) COLLATE utf8_bin DEFAULT NULL,    
  `registre_etudiant_file2` varchar(255) COLLATE utf8_bin DEFAULT NULL,  
  PRIMARY KEY (`registre_etudiant_id`)  
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;  
/*!40101 SET character_set_client = @saved_cs_client */;  
  
--
-- Dumping data for table `registreetudiant`  
--

LOCK TABLES `registreetudiant` WRITE;  
/*!40000 ALTER TABLE `registronegocios` DISABLE KEYS */;  
INSERT INTO `registreetudiant` VALUES  
(1,'2019-10-17 16:56:48','ZACK', 'MOUSAOUI', '79955152', 'zack@BOREAL.com','6474244990', 'BOREAL', 'INFORMATIQUE',TORONTO', '1EREANNEE', 'NULL' , 'TESTS_ECRITS','1_1.pdf','1_2.pdf'),  
(2,'2019-11-13 16:56:48','NATHALIE', 'LASHOIRTZ', '79955123', 'BRICE@BOREAL.com','6474242341', 'BOREAL', 'INFORMATIQUE',TORONTO', '1EREANNEE', 'NULL' , 'TESTS_ECRITS','1_1.pdf','1_2.pdf'),  
(3,'2019-09-12 16:56:48','NENE, 'CAMEROUN', '74565123', 'NENE@BOREAL.com','4164242341', 'BOREAL', 'INFORMATIQUE',TORONTO', '1EREANNEE', 'NULL' , 'TESTS_ECRITS','1_1.pdf','1_2.pdf'),  
(4,'2019-10-01 16:56:48','RAMI', 'RAMA', '79955675', 'RAMA@BOREAL.com','5144242341', 'BOREAL', 'INFORMATIQUE',TORONTO', '1EREANNEE', 'NULL' , 'TESTS_ECRITS','1_1.pdf','1_2.pdf'),  
(5,'2019-10-02 16:56:48','EVE', 'LEVETOI', '72375123', 'EVE@BOREAL.com','6473462341', 'BOREAL', 'INFORMATIQUE',TORONTO', '1EREANNEE', 'NULL' , 'TESTS_ECRITS','1_1.pdf','1_2.pdf'),  
(6,'2019-10-05 16:56:48','ARIANNE', 'MADA', '72585123', 'ARIANNE@BOREAL.com','6474236741', 'BOREAL', 'INFORMATIQUE',TORONTO', '1EREANNEE', 'NULL' , 'TESTS_ECRITS','1_1.pdf','1_2.pdf'),  
(7,'2019-09-09 16:56:48','MEHDI', 'ALPHONSE', '79235123', 'MEHDI@BOREAL.com','6474256741', 'BOREAL', 'INFORMATIQUE',TORONTO', '1EREANNEE', 'NULL' , 'TESTS_ECRITS','1_1.pdf','1_2.pdf');  

UNLOCK TABLES;  
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;  

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;  
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;  
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;  
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;  
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;  
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;  
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;  

-- Dump completed on 2021-04-13  22:33:47   
               
               
