-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: c1_s1_n1_ex1_optica
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'oaklye',1),(2,'Ray-Ban',2),(3,'Prada',2),(4,'Persol',3),(5,'Meller',2),(6,'Optica',1);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Miquel','Debon','08013','mdebonbcn@gmail.com','2023-04-25',NULL),(2,'Daniel','Villagrasa','8013','danievilla@gmail.com','2023-04-26',1),(3,'eduard','debon','08013','edaurd@gmail.com','2023-04-26',NULL),(4,'manolo','villagrasa','08013','edaurd@gmail.com','2023-04-26',NULL),(5,'julia','fernandez','08000','julia@gmail.com','2023-04-26',NULL),(6,'Silvia','martinez','07023','edaurd@gmail.com','2023-04-26',NULL);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Jose'),(2,'Silvia'),(3,'NAtalia'),(4,'Manolo');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,2,'standart','azul','gris',34),(2,1,2,'standart','gris','gris',200),(3,2,2,'standart','verde','azul',60),(4,3,2,'standart','azul','azul',150),(5,4,2,'standart','azul','rosa',140),(6,4,2,'standart','roja','azul',120),(7,2,3,'premium','azul','gris',34),(8,4,-1,'multa','gris','gris',200),(9,5,3,'premium','azul','gris',34),(10,2,3,'premium','azul','red',100),(19,2,3,'premium','azul','red',100),(20,3,3,'premium','azul','red',100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (5,1,2,1,'1996-01-22'),(6,2,1,1,'2020-05-01'),(7,1,6,2,'2019-04-15'),(8,3,4,3,'2023-04-26'),(9,1,2,1,'2023-06-03'),(10,2,3,1,'2023-02-16');
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Manolo','sabadell','+3414d354213',NULL,'jdn3jn424C'),(2,'Silvia','martorell','+343243',NULL,'324324A'),(3,'Jordi','barcelona','4354934',NULL,'2875533C'),(4,'Marta','Tarragona',NULL,'3314535',NULL);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-26 17:34:45
