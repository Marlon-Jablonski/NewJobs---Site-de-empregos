CREATE DATABASE  IF NOT EXISTS `db1newjobs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db1newjobs`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db1newjobs
-- ------------------------------------------------------
-- Server version	11.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `areaocupacional`
--

DROP TABLE IF EXISTS `areaocupacional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areaocupacional` (
  `areaocupacional_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nomearea` varchar(85) NOT NULL,
  PRIMARY KEY (`areaocupacional_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areaocupacional`
--

LOCK TABLES `areaocupacional` WRITE;
/*!40000 ALTER TABLE `areaocupacional` DISABLE KEYS */;
INSERT INTO `areaocupacional` VALUES (1,'Administração'),(2,'Vendas'),(3,'Marketing'),(4,'Informatica'),(5,'Produção'),(6,'Saude');
/*!40000 ALTER TABLE `areaocupacional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadcandidato`
--

DROP TABLE IF EXISTS `cadcandidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cadcandidato` (
  `candidato_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cpf` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `pretsalarial` int(11) NOT NULL,
  `dtnascimento` date NOT NULL,
  `login_candidato` varchar(50) NOT NULL,
  `senha_candidato` varchar(45) NOT NULL,
  `endereco_endereco_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`candidato_id`),
  KEY `fk_cadcandidato_endereco1_idx` (`endereco_endereco_id`),
  CONSTRAINT `fk_cadcandidato_endereco1` FOREIGN KEY (`endereco_endereco_id`) REFERENCES `endereco` (`endereco_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadcandidato`
--

LOCK TABLES `cadcandidato` WRITE;
/*!40000 ALTER TABLE `cadcandidato` DISABLE KEYS */;
INSERT INTO `cadcandidato` VALUES (45,'Pedro','Chagas','pedro.chagas@gmail.com',152276999,47999587,6000,'2005-04-20','pedro.chagas','pedro123',12),(46,'Marlon','Jablonski','marlon.jablonski@gmail.com',152698745,47996586,3000,'2002-09-22','marlon.jablonski','marlon123',14),(47,'Lucas','Klovisk','lucas.klovisk@gmail.com',145698785,47995625,2500,'2001-02-15','lucas.klovisk','lucas123',17);
/*!40000 ALTER TABLE `cadcandidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadempresa`
--

DROP TABLE IF EXISTS `cadempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cadempresa` (
  `cadempresa_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nomeempresa` varchar(60) NOT NULL,
  `cnpj` int(25) NOT NULL,
  `atividadeprincipal` varchar(100) NOT NULL,
  `telefone` int(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `login_empresa` varchar(45) NOT NULL,
  `senha_empresa` varchar(45) NOT NULL,
  `endereco_endereco_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`cadempresa_id`),
  KEY `fk_cadempresa_endereco1_idx` (`endereco_endereco_id`),
  CONSTRAINT `fk_cadempresa_endereco1` FOREIGN KEY (`endereco_endereco_id`) REFERENCES `endereco` (`endereco_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadempresa`
--

LOCK TABLES `cadempresa` WRITE;
/*!40000 ALTER TABLE `cadempresa` DISABLE KEYS */;
INSERT INTO `cadempresa` VALUES (1,'Unifique',225518700,'Internet, telefonia fixa e TV.',80087200,'unifique@redeunifique.com.br','unifique.redeunifique','unifique123',18),(2,'Taschibra',37412100,'Vendas e exportaçoes de iluminarias.',80070773,'taschibra@taschibra.com.br','taschibra.iluminarias','taschiba123',19);
/*!40000 ALTER TABLE `cadempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `cidade_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_cidade` varchar(45) NOT NULL,
  `estadouf_estadouf_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`cidade_id`),
  KEY `fk_cidade_estadouf1_idx` (`estadouf_estadouf_id`),
  CONSTRAINT `fk_cidade_estadouf1` FOREIGN KEY (`estadouf_estadouf_id`) REFERENCES `estadouf` (`estadouf_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (13,'Timbo',4),(14,'Indaial',4),(15,'Blumenau',4);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `endereco_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cdcodigopostal` int(11) NOT NULL,
  `nomerua` varchar(45) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(45) NOT NULL,
  `cidade_cidade_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`endereco_id`),
  KEY `fk_endereco_cidade1_idx` (`cidade_cidade_id`),
  CONSTRAINT `fk_endereco_cidade1` FOREIGN KEY (`cidade_cidade_id`) REFERENCES `cidade` (`cidade_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (12,8955474,'R.Egito',299,'casa',13),(13,8955474,'R.Amazonas',55,'apto',13),(14,8955474,'R.Italia',69,'casa',13),(15,8745000,'R.Rio de janeiro',774,'casa',14),(16,8745000,'R.Londres',288,'casa',14),(17,9856600,'R.Getulio',300,'apto',15),(18,8955474,'R.Duque de caxias',831,'empr.',13),(19,8745000,'KM 65, BR-470, 2135 - Encano do Norte',888,'empr.',14);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadouf`
--

DROP TABLE IF EXISTS `estadouf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadouf` (
  `estadouf_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nomeuf` varchar(45) NOT NULL,
  `codigouf` varchar(5) NOT NULL,
  PRIMARY KEY (`estadouf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadouf`
--

LOCK TABLES `estadouf` WRITE;
/*!40000 ALTER TABLE `estadouf` DISABLE KEYS */;
INSERT INTO `estadouf` VALUES (4,'Santa Catarina','SC'),(5,'Parana','PR');
/*!40000 ALTER TABLE `estadouf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusvaga`
--

DROP TABLE IF EXISTS `statusvaga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusvaga` (
  `status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_status` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusvaga`
--

LOCK TABLES `statusvaga` WRITE;
/*!40000 ALTER TABLE `statusvaga` DISABLE KEYS */;
INSERT INTO `statusvaga` VALUES (1,'Aberta'),(2,'Finalizada'),(3,'Em processo');
/*!40000 ALTER TABLE `statusvaga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagas`
--

DROP TABLE IF EXISTS `vagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vagas` (
  `vagas_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nomevaga` varchar(45) NOT NULL,
  `dsvaga` varchar(200) NOT NULL,
  `cadempresa_cadempresa_id` int(11) unsigned NOT NULL,
  `areaocupacional_areaocupacional_id` int(11) unsigned NOT NULL,
  `statusvaga_status_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`vagas_id`),
  KEY `fk_vagas_cadempresa1_idx` (`cadempresa_cadempresa_id`),
  KEY `fk_vagas_areaocupacional1_idx` (`areaocupacional_areaocupacional_id`),
  KEY `fk_vagas_statusvaga1_idx` (`statusvaga_status_id`),
  CONSTRAINT `fk_vagas_areaocupacional1` FOREIGN KEY (`areaocupacional_areaocupacional_id`) REFERENCES `areaocupacional` (`areaocupacional_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vagas_cadempresa1` FOREIGN KEY (`cadempresa_cadempresa_id`) REFERENCES `cadempresa` (`cadempresa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vagas_statusvaga1` FOREIGN KEY (`statusvaga_status_id`) REFERENCES `statusvaga` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagas`
--

LOCK TABLES `vagas` WRITE;
/*!40000 ALTER TABLE `vagas` DISABLE KEYS */;
INSERT INTO `vagas` VALUES (1,'Suporte Tec.','Providenciar contato de primeiro nível e apresentar soluções para problemas do cliente. Encaminhar devidamente questões não resolvidas a um superior de outro nível de suporte.',1,4,1),(2,'Estagiário Administrativo','O estagiário de administração é responsável por auxiliar nas atividades operacionais do departamento, separar documentos para clientes',2,1,3);
/*!40000 ALTER TABLE `vagas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagas_candidatadas`
--

DROP TABLE IF EXISTS `vagas_candidatadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vagas_candidatadas` (
  `cadcandidato_candidato_id` int(11) unsigned NOT NULL,
  `vagas_vagas_id` int(11) unsigned NOT NULL,
  `dt_candidatura` date NOT NULL,
  PRIMARY KEY (`cadcandidato_candidato_id`,`vagas_vagas_id`),
  KEY `fk_cadcandidato_has_vagas_vagas1_idx` (`vagas_vagas_id`),
  KEY `fk_cadcandidato_has_vagas_cadcandidato1_idx` (`cadcandidato_candidato_id`),
  CONSTRAINT `fk_cadcandidato_has_vagas_cadcandidato1` FOREIGN KEY (`cadcandidato_candidato_id`) REFERENCES `cadcandidato` (`candidato_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cadcandidato_has_vagas_vagas1` FOREIGN KEY (`vagas_vagas_id`) REFERENCES `vagas` (`vagas_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagas_candidatadas`
--

LOCK TABLES `vagas_candidatadas` WRITE;
/*!40000 ALTER TABLE `vagas_candidatadas` DISABLE KEYS */;
INSERT INTO `vagas_candidatadas` VALUES (45,1,'2023-09-11'),(46,2,'2023-06-27');
/*!40000 ALTER TABLE `vagas_candidatadas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 19:04:05
