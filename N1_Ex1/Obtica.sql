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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id_brand` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  PRIMARY KEY (`id_brand`),
  KEY `brand_ibfk_1` (`supplier_id`),
  CONSTRAINT `brand_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'oaklye',1),(2,'Ray-Ban',2),(3,'Prada',2),(4,'Persol',3),(5,'Meller',2),(6,'Optica',1);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `cp` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `register_date` date NOT NULL,
  `by_client_id` int DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Miquel','Debon','08013','mdebonbcn@gmail.com','2023-04-25',NULL),(2,'Daniel','Villagrasa','8013','danievilla@gmail.com','2023-04-26',1),(3,'eduard','debon','08013','edaurd@gmail.com','2023-04-26',NULL),(4,'manolo','villagrasa','08013','edaurd@gmail.com','2023-04-26',NULL),(5,'julia','fernandez','08000','julia@gmail.com','2023-04-26',NULL),(6,'Silvia','martinez','07023','edaurd@gmail.com','2023-04-26',NULL);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id_employee` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_employee`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Jose'),(2,'Silvia'),(3,'NAtalia'),(4,'Manolo');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `brand_id` int NOT NULL,
  `graduation` int DEFAULT NULL,
  `frame` varchar(20) DEFAULT NULL,
  `frame_color` varchar(45) DEFAULT NULL,
  `glass_color` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  UNIQUE KEY `id_product_UNIQUE` (`id_product`),
  KEY `brand_idx` (`brand_id`),
  CONSTRAINT `brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id_brand`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,2,'standart','azul','gris',34),(2,1,2,'standart','gris','gris',200),(3,2,2,'standart','verde','azul',60),(4,3,2,'standart','azul','azul',150),(5,4,2,'standart','azul','rosa',140),(6,4,2,'standart','roja','azul',120),(7,2,3,'premium','azul','gris',34),(8,4,-1,'multa','gris','gris',200),(9,5,3,'premium','azul','gris',34),(10,2,3,'premium','azul','red',100),(19,2,3,'premium','azul','red',100),(20,3,3,'premium','azul','red',100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!50001 DROP VIEW IF EXISTS `queries`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `queries` AS SELECT 
 1 AS `NombreCliente`,
 1 AS `id_product`,
 1 AS `Marca`,
 1 AS `Precio`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `id_sale` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `product_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id_sale`),
  KEY `client_idx` (`client_id`),
  KEY `product_idx` (`product_id`),
  KEY `employ_idx` (`employee_id`),
  CONSTRAINT `client` FOREIGN KEY (`client_id`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `employ` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id_employee`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (5,1,2,1,'1996-01-22'),(6,2,1,1,'2020-05-01'),(7,1,6,2,'2019-04-15'),(8,3,4,3,'2023-04-26'),(9,1,2,1,'2023-06-03'),(10,2,3,1,'2023-02-16');
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id_supplier` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `direction` varchar(25) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `NIF` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Manolo','sabadell','+3414d354213',NULL,'jdn3jn424C'),(2,'Silvia','martorell','+343243',NULL,'324324A'),(3,'Jordi','barcelona','4354934',NULL,'2875533C'),(4,'Marta','Tarragona',NULL,'3314535',NULL);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `queries`
--

/*!50001 DROP VIEW IF EXISTS `queries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `queries` AS select `c`.`name` AS `NombreCliente`,`p`.`id_product` AS `id_product`,`b`.`name` AS `Marca`,`p`.`price` AS `Precio`,`s`.`date` AS `date` from (((`client` `c` left join `sale` `s` on((`c`.`id_client` = `s`.`client_id`))) left join `product` `p` on((`s`.`product_id` = `p`.`id_product`))) left join `brand` `b` on((`p`.`brand_id` = `b`.`id_brand`))) where ((`c`.`name` like '%miquel%') and (`s`.`date` between '1991-01-01' and '2023-04-26')) order by `s`.`date` desc */;
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

-- Dump completed on 2023-04-26 18:26:37
