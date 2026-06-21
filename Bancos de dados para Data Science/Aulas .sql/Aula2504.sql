-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: aula1804
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `carros`
--

DROP TABLE IF EXISTS `carros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carros` (
  `idCarros` int NOT NULL AUTO_INCREMENT,
  `modelo` char(50) NOT NULL,
  `ano` int NOT NULL,
  `placa` char(20) NOT NULL,
  `zero` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idCarros`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carros`
--

LOCK TABLES `carros` WRITE;
/*!40000 ALTER TABLE `carros` DISABLE KEYS */;
INSERT INTO `carros` VALUES (27,'Onix',2024,'ABC1D23',0),(28,'HB20',2024,'EFG2H34',1),(29,'Polo',2024,'IJK3L45',0),(30,'Argo',2024,'MNO4P56',1),(31,'Mobi',2024,'QRS5T67',1),(32,'Kwid',2024,'UVW6X78',0),(33,'Cronos',2024,'YZA7B89',0),(34,'HB20S',2024,'BCD8E90',1),(35,'Saveiro',2024,'FGH9I12',0),(36,'Strada',2024,'JKL0M23',1),(37,'Yaris',2024,'NOP1Q34',0),(38,'City',2024,'RST2U45',1),(39,'Versa',2024,'VWX3Y56',0),(40,'C3',2024,'ZAB4C67',1),(41,'208',2024,'DEF5G78',0),(42,'Sandero',2023,'HIJ6K89',1),(43,'Logan',2024,'LMN7O90',0),(44,'Virtus',2024,'PQR8S12',1),(45,'Gol',2023,'TUV9W23',1),(46,'Uno',2021,'XYZ0A34',0),(47,'Palio',2017,'BCD1E45',1),(48,'Fiesta',2019,'FGH2I56',0),(49,'Ka',2021,'JKL3M67',0),(50,'Corsa',2012,'NOP4Q78',1),(51,'Celta',2015,'RST5U89',0),(52,'Voyage',2023,'VWX6Y90',1);
/*!40000 ALTER TABLE `carros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id_estado` int NOT NULL AUTO_INCREMENT,
  `Nome_Estado` varchar(30) NOT NULL,
  `Regiao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Acre','Norte'),(2,'Alagoas','Nordeste'),(3,'Amapá','Norte'),(4,'Amazonas','Norte'),(5,'Bahia','Nordeste'),(6,'Ceará','Nordeste'),(7,'Espírito Santo','Sudeste'),(8,'Goiás','Centro-Oeste'),(9,'Maranhão','Nordeste'),(10,'Mato Grosso','Centro-Oeste'),(11,'Mato Grosso do Sul','Centro-Oeste'),(12,'Minas Gerais','Sudeste'),(13,'Pará','Norte'),(14,'Paraíba','Nordeste'),(15,'Paraná','Sul'),(16,'Pernambuco','Nordeste'),(17,'Piauí','Nordeste'),(18,'Rio de Janeiro','Sudeste'),(19,'Rio Grande do Norte','Nordeste'),(20,'Rio Grande do Sul','Sul'),(21,'Rondônia','Norte'),(22,'Roraima','Norte'),(23,'Santa Catarina','Sul'),(24,'São Paulo','Sudeste'),(25,'Sergipe','Nordeste'),(26,'Tocantins','Norte');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacao`
--

DROP TABLE IF EXISTS `locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locacao` (
  `idLocacao` int NOT NULL AUTO_INCREMENT,
  `dataL` date NOT NULL,
  `valor` float NOT NULL,
  `data_devolucao` date NOT NULL,
  `kmsaida` int NOT NULL,
  `kmdevolucao` int NOT NULL,
  `id_proprietario` int DEFAULT NULL,
  `idCarros` int DEFAULT NULL,
  `idVendedor` int DEFAULT NULL,
  PRIMARY KEY (`idLocacao`),
  KEY `id_proprietario` (`id_proprietario`),
  KEY `idCarros` (`idCarros`),
  KEY `FK_Vendedor` (`idVendedor`),
  CONSTRAINT `FK_Vendedor` FOREIGN KEY (`idVendedor`) REFERENCES `vendedores` (`idVendedor`),
  CONSTRAINT `locacao_ibfk_1` FOREIGN KEY (`id_proprietario`) REFERENCES `proprietario` (`id_proprietario`),
  CONSTRAINT `locacao_ibfk_2` FOREIGN KEY (`idCarros`) REFERENCES `carros` (`idCarros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proprietario` (
  `id_proprietario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `CPF` varchar(30) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `IdEstado` int DEFAULT NULL,
  PRIMARY KEY (`id_proprietario`),
  UNIQUE KEY `CPF` (`CPF`),
  KEY `IdEstado` (`IdEstado`),
  CONSTRAINT `proprietario_ibfk_1` FOREIGN KEY (`IdEstado`) REFERENCES `estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprietario`
--

LOCK TABLES `proprietario` WRITE;
/*!40000 ALTER TABLE `proprietario` DISABLE KEYS */;
INSERT INTO `proprietario` VALUES (3,'Ricardo Oliveira Santos','123.456.789-01','Rua Augusta, 1500, Consolação, São Paulo-SP','(11) 98765-4321',14),(4,'Camila Ferreira Lima','234.567.890-02','Av. Paulista, 500, Bela Vista, São Paulo-SP','(11) 97654-3210',3),(5,'Marcos Vinícius Souza','345.678.901-03','Rua dos Pinheiros, 80, Pinheiros, São Paulo-SP','(11) 96543-2109',22),(6,'Beatriz Cavalcanti','456.789.012-04','Rua Domingos de Morais, 1200, Vila Mariana, São Paulo-SP','(11) 95432-1098',8),(7,'Thiago Silva Pereira','567.890.123-05','Rua Vergueiro, 3000, Vila Mariana, São Paulo-SP','(11) 94321-0987',26),(8,'Fernanda Gouveia','678.901.234-06','Al. Santos, 450, Cerqueira César, São Paulo-SP','(11) 93210-9876',5),(9,'Lucas Andrade Costa','789.012.345-07','Rua Clélia, 900, Lapa, São Paulo-SP','(11) 92109-8765',19),(10,'Juliana Martins','890.123.456-08','Av. Brigadeiro Faria Lima, 2000, Itaim Bibi, São Paulo-SP','(11) 91098-7654',11),(11,'André Luiz Rocha','901.234.567-09','Rua Voluntários da Pátria, 150, Santana, São Paulo-SP','(11) 99987-6543',1),(12,'Patrícia Mendes','012.345.678-10','Av. Rebouças, 1100, Jardim Paulista, São Paulo-SP','(11) 98876-5432',17),(13,'Felipe Almeida Prado','112.233.445-11','Rua Teodoro Sampaio, 2500, Pinheiros, São Paulo-SP','(11) 97765-4321',24),(14,'Renata Vasconcelos','223.344.556-12','Av. Ibirapuera, 2100, Moema, São Paulo-SP','(11) 96654-3210',6),(15,'Gustavo Henrique Dias','334.455.667-13','Rua Haddock Lobo, 800, Cerqueira César, São Paulo-SP','(11) 95543-2109',13),(16,'Larissa Duarte','445.566.778-14','Av. Santo Amaro, 3500, Brooklin, São Paulo-SP','(11) 94432-1098',20),(17,'Rodrigo Cardoso','556.677.889-15','Rua Bresser, 400, Brás, São Paulo-SP','(11) 93321-0987',2),(18,'Aline Barbosa','667.788.990-16','Rua da Consolação, 200, Centro, São Paulo-SP','(11) 92210-9876',9),(19,'Eduardo Xavier','778.899.001-17','Av. Pompeia, 600, Vila Pompeia, São Paulo-SP','(11) 91109-8765',15),(20,'Sônia Regina Silva','889.900.112-18','Rua Turiassu, 150, Perdizes, São Paulo-SP','(11) 90098-7654',25),(21,'Marcelo Augusto','990.011.223-19','Rua Afonso Braz, 500, Vila Nova Conceição, São Paulo-SP','(11) 98987-6543',4),(22,'Daniela Lopes','001.122.334-20','Rua João Cachoeira, 800, Itaim Bibi, São Paulo-SP','(11) 97876-5432',12),(23,'Sérgio Nogueira','112.233.445-21','Av. Eng. Luís Carlos Berrini, 1000, Brooklin, São Paulo-SP','(11) 96765-4321',21),(24,'Isabela Castro','223.344.556-22','Rua Oscar Freire, 300, Jardins, São Paulo-SP','(11) 95654-3210',7),(25,'Roberto Carlos Lima','334.455.667-23','Av. Jabaquara, 1800, Saúde, São Paulo-SP','(11) 94543-2109',18),(26,'Tatiane Souza','445.566.778-24','Rua Maria Paula, 100, Bela Vista, São Paulo-SP','(11) 93432-1098',10),(27,'Bruno Montenegro','556.677.889-25','Av. Cruzeiro do Sul, 2000, Santana, São Paulo-SP','(11) 92321-0987',23),(28,'Vanessa Ribeiro','667.788.990-26','Rua Itaim, 50, Itaim Bibi, São Paulo-SP','(11) 91210-9876',16);
/*!40000 ALTER TABLE `proprietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `idVendedor` int NOT NULL AUTO_INCREMENT,
  `nome` char(50) NOT NULL,
  `cpf` char(20) NOT NULL,
  `matriculaNovo` int NOT NULL,
  PRIMARY KEY (`idVendedor`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `matricula` (`matriculaNovo`),
  UNIQUE KEY `matriculaNovo` (`matriculaNovo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'Henrique Douglas','50511141807',22202507),(3,'Débora Siquera','312012310',22038844),(4,'Débora adsaSiquera','312dsadsa012310',220313124);
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-25 15:45:51
