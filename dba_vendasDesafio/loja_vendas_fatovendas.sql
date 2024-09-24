-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: loja_vendas
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `fatovendas`
--

DROP TABLE IF EXISTS `fatovendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fatovendas` (
  `ChaveVenda` int NOT NULL AUTO_INCREMENT,
  `ChaveData` int DEFAULT NULL,
  `ChaveProduto` int DEFAULT NULL,
  `ChaveCliente` int DEFAULT NULL,
  `ChaveLoja` int DEFAULT NULL,
  `ValorVenda` decimal(10,2) DEFAULT NULL,
  `Quantidade` int DEFAULT NULL,
  PRIMARY KEY (`ChaveVenda`),
  KEY `ChaveData` (`ChaveData`),
  KEY `ChaveProduto` (`ChaveProduto`),
  KEY `ChaveCliente` (`ChaveCliente`),
  KEY `ChaveLoja` (`ChaveLoja`),
  CONSTRAINT `fatovendas_ibfk_1` FOREIGN KEY (`ChaveData`) REFERENCES `dimensaodata` (`ChaveData`),
  CONSTRAINT `fatovendas_ibfk_2` FOREIGN KEY (`ChaveProduto`) REFERENCES `dimensaoproduto` (`ChaveProduto`),
  CONSTRAINT `fatovendas_ibfk_3` FOREIGN KEY (`ChaveCliente`) REFERENCES `dimensaocliente` (`ChaveCliente`),
  CONSTRAINT `fatovendas_ibfk_4` FOREIGN KEY (`ChaveLoja`) REFERENCES `dimensaoloja` (`ChaveLoja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fatovendas`
--

LOCK TABLES `fatovendas` WRITE;
/*!40000 ALTER TABLE `fatovendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fatovendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03 13:15:33
