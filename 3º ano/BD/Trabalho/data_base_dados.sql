-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: JogosOlimpicos
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `Atleta`
--

DROP TABLE IF EXISTS `Atleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Atleta` (
  `Identificador` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(128) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Género` varchar(16) NOT NULL,
  `Peso` float NOT NULL,
  `Altura` float NOT NULL,
  PRIMARY KEY (`Identificador`),
  UNIQUE KEY `Identificador_UNIQUE` (`Identificador`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Atleta`
--

LOCK TABLES `Atleta` WRITE;
/*!40000 ALTER TABLE `Atleta` DISABLE KEYS */;
INSERT INTO `Atleta` VALUES (1,'João Silva','1998-05-15','Masculino',75.5,1.8),(2,'Maria Santos','1999-03-22','Feminino',62,1.7),(3,'Pedro Costa','1997-08-10','Masculino',68,1.75),(4,'Ana Oliveira','2000-01-30','Feminino',48,1.65),(5,'Michael Johnson','1996-11-20','Masculino',82,1.88),(6,'Sarah Wilson','1998-07-12','Feminino',48,1.62),(7,'Liu Wei','1999-09-05','Masculino',60,1.78),(8,'Yuki Tanaka','1997-04-18','Feminino',56,1.63),(9,'Zao Sheng','1996-12-28','Masculino',58,1.85),(10,'Emma Brown','2000-02-14','Feminino',60,1.68),(11,'Carla Rodriguez','1999-06-25','Masculino',72.5,1.82),(12,'Sofia Garcia','1998-08-17','Feminino',63.5,1.71),(13,'André Martin','1997-03-30','Masculino',80,1.9),(14,'Elena Popov','2000-04-12','Feminino',48,1.67),(15,'James Wilson','1996-09-08','Masculino',85.5,1.93),(16,'Nina Schmidt','1999-11-03','Feminino',61.5,1.69),(17,'Marco Rossi','1998-01-20','Masculino',73,1.81),(18,'Lucia Ferrari','1997-07-15','Feminino',57.5,1.64),(19,'David Kim','2000-05-28','Masculino',67,1.76),(20,'Anna Kowalski','1996-10-11','Feminino',64.5,1.73),(21,'Thomas Anderson','1998-12-05','Masculino',76,1.83),(22,'Laura Martinez','1997-02-22','Feminino',58,1.66),(23,'Ali Hassan','1999-08-14','Masculino',71.5,1.79),(24,'Marie Dubois','2000-03-09','Feminino',62.5,1.7),(25,'Alex Thompson','1996-07-31','Masculino',83,1.89),(26,'Carla Santos','1998-04-26','Feminino',60.5,1.68),(27,'Felipe Silva','1997-09-19','Masculino',74,1.82),(28,'Diana Chen','1999-01-07','Feminino',55.5,1.62),(29,'Viktor Petrov','2000-06-29','Masculino',79.5,1.86),(30,'Isabel Costa','1996-08-23','Feminino',63,1.71),(31,'Ricardo Torres','1998-10-16','Masculino',77.5,1.84),(32,'Sophie Martin','1997-05-02','Feminino',59.5,1.67),(33,'Kevin Lee','1999-12-25','Masculino',69.5,1.77),(34,'Maria Gonzalez','2000-07-18','Feminino',61,1.69),(35,'Paul White','1996-04-14','Masculino',81.5,1.87),(36,'Julia Wagner','1998-02-09','Feminino',64,1.72),(37,'Antonio Ferrari','1997-11-30','Masculino',75,1.83),(38,'Eva Nilsson','1999-03-15','Feminino',58.5,1.66),(39,'Mohammed Ahmed','2000-08-07','Masculino',72,1.8),(40,'Natalie Brown','1996-06-21','Feminino',62,1.7),(41,'Lucas Silva','1998-09-13','Masculino',78.5,1.85),(42,'Emma Wilson','1997-01-28','Feminino',57,1.65),(43,'Daniel Kim','1999-07-04','Masculino',70.5,1.78),(44,'Sara Garcia','2000-12-17','Feminino',61.5,1.69),(45,'Marco Rossi','1996-03-10','Masculino',76.5,1.84),(46,'Ana Paula','1998-05-24','Feminino',59,1.67),(47,'John Smith','1997-10-09','Masculino',82.5,1.88),(48,'Marie Claire','1999-02-01','Feminino',63.5,1.71),(49,'Zhang Wei','2000-09-26','Masculino',71,1.79),(50,'Lisa Taylor','1996-05-19','Feminino',60,1.68),(51,'Stick Stickes','2000-12-01','Masculino',69,1.7),(52,'Tecatito','1988-02-02','Masculino',60,1.67),(53,'Paulo','1990-03-08','Masculino',70.5,1.8),(54,'Checo Perez','1986-10-13','Masculino',68,1.76),(55,'Paula','1983-11-11','Feminino',48,1.5),(56,'Rafaela','1987-10-12','Feminino',47,1.53),(57,'Manuela','1986-09-13','Feminino',45,1.49),(58,'Fernanda','1986-09-13','Feminino',48,1.57),(59,'Gutmam','1986-09-13','Feminino',44,1.48),(60,'Heils','1986-09-13','Feminino',47,1.52),(61,'John','1988-07-13','Masculino',77.7,1.82),(62,'Johnson','1994-09-25','Masculino',80.9,1.81),(63,'Maguire','1992-10-30','Masculino',82.1,1.84),(64,'Hudson','1991-02-24','Masculino',83.7,1.86),(65,'Trycki','1987-05-16','Masculino',80.5,1.8),(66,'McQueen','1999-09-14','Masculino',75.5,1.79);
/*!40000 ALTER TABLE `Atleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categoria` (
  `Identificador` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(32) NOT NULL,
  `Genero` varchar(16) NOT NULL,
  `Peso` float DEFAULT NULL,
  `Duração` time DEFAULT NULL,
  `Distância` float DEFAULT NULL,
  `Identificador_Modalidade` int NOT NULL,
  PRIMARY KEY (`Identificador`),
  UNIQUE KEY `Identificador_UNIQUE` (`Identificador`),
  KEY `fk_Modalidade_idx` (`Identificador_Modalidade`),
  CONSTRAINT `fk_Modalidade` FOREIGN KEY (`Identificador_Modalidade`) REFERENCES `Modalidade` (`Identificador`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria`
--

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;
INSERT INTO `Categoria` VALUES (1,'100m','Masculino',NULL,'00:00:10',100,1),(2,'100m','Feminino',NULL,'00:00:11',100,1),(3,'200m','Masculino',NULL,'00:00:20',200,1),(4,'200m','Feminino',NULL,'00:00:22',200,1),(5,'Maratona','Masculino',NULL,'02:10:00',42195,1),(6,'Maratona','Feminino',NULL,'02:25:00',42195,1),(7,'100m Livres','Masculino',NULL,'00:00:48',100,2),(8,'100m Livres','Feminino',NULL,'00:00:53',100,2),(9,'200m Livres','Masculino',NULL,'00:01:45',200,2),(10,'200m Livres','Feminino',NULL,'00:01:55',200,2),(11,'Solo','Feminino',NULL,'00:02:30',NULL,3),(12,'Equipa','Feminino',NULL,'00:05:00',NULL,3),(13,'-60kg','Feminino',60,NULL,NULL,4),(14,'-73kg','Masculino',73,NULL,NULL,4),(15,'-48kg','Feminino',48,NULL,NULL,4),(16,'-57kg','Feminino',57,NULL,NULL,4),(17,'Equipa','Masculino',NULL,'00:40:00',NULL,5),(18,'Equipa','Feminino',NULL,'00:40:00',NULL,5),(19,'Equipa','Masculino',NULL,'00:40:00',NULL,6),(20,'Equipa','Feminino',NULL,'00:40:00',NULL,6),(21,'Singles','Masculino',NULL,'03:00:00',NULL,7),(22,'Singles','Feminino',NULL,'03:00:00',NULL,7),(23,'Estrada','Masculino',NULL,'06:00:00',234,8),(24,'Estrada','Feminino',NULL,'04:00:00',156,8),(25,'Equipa','Masculino',NULL,'01:30:00',NULL,9),(26,'Equipa','Feminino',NULL,'01:30:00',NULL,9),(27,'-58kg','Masculino',58,NULL,NULL,11),(28,'Florete','Masculino',NULL,NULL,NULL,12),(29,'Individual','Feminino',NULL,NULL,NULL,13),(30,'Elite','Masculino',NULL,'01:45:00',NULL,14);
/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `EdiçõesJogosOlimpicos`
--

DROP TABLE IF EXISTS `EdiçõesJogosOlimpicos`;
/*!50001 DROP VIEW IF EXISTS `EdiçõesJogosOlimpicos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `EdiçõesJogosOlimpicos` AS SELECT 
 1 AS `Pais_Organizador`,
 1 AS `Ano`,
 1 AS `Data_Inicio`,
 1 AS `Data_Fim`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Endereço`
--

DROP TABLE IF EXISTS `Endereço`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Endereço` (
  `Identificador` int NOT NULL AUTO_INCREMENT,
  `Morada` varchar(64) NOT NULL,
  `Localidade` varchar(32) NOT NULL,
  PRIMARY KEY (`Identificador`),
  UNIQUE KEY `Identificador_UNIQUE` (`Identificador`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Endereço`
--

LOCK TABLES `Endereço` WRITE;
/*!40000 ALTER TABLE `Endereço` DISABLE KEYS */;
INSERT INTO `Endereço` VALUES (1,'Stade de France','Saint-Denis'),(2,'Piscine Olympics','Paris'),(3,'Arena Bercy','Paris'),(4,'Centre Olympique','Paris'),(5,'Velodrome National','Saint-Quentin-en-Yvelines'),(6,'Parc des Princes','Paris'),(7,'Roland Garros','Paris'),(8,'Grand Palais','Paris'),(9,'La Defense Arena','Nanterre'),(10,'Stade Jean-Bouin','Paris');
/*!40000 ALTER TABLE `Endereço` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Equipa`
--

DROP TABLE IF EXISTS `Equipa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipa` (
  `Identificador` int NOT NULL AUTO_INCREMENT,
  `Identificador_Pais` int NOT NULL,
  `Identificador_Categoria` int NOT NULL,
  PRIMARY KEY (`Identificador`),
  UNIQUE KEY `Identificador_UNIQUE` (`Identificador`),
  KEY `fk_Pais_idx` (`Identificador_Pais`),
  KEY `fk_Categoria_idx` (`Identificador_Categoria`),
  CONSTRAINT `fk_Equipa_Categoria` FOREIGN KEY (`Identificador_Categoria`) REFERENCES `Categoria` (`Identificador`),
  CONSTRAINT `fk_Equipa_Pais` FOREIGN KEY (`Identificador_Pais`) REFERENCES `Pais` (`Identificador`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipa`
--

LOCK TABLES `Equipa` WRITE;
/*!40000 ALTER TABLE `Equipa` DISABLE KEYS */;
INSERT INTO `Equipa` VALUES (1,1,1),(2,2,1),(3,19,1),(4,1,2),(5,2,2),(6,20,2),(7,4,3),(8,5,3),(9,6,3),(10,10,4),(11,11,4),(12,12,4),(13,13,5),(14,14,5),(15,15,5),(16,10,7),(17,11,7),(18,12,7),(19,19,8),(20,20,8),(21,12,8),(22,13,9),(23,14,9),(24,15,9),(25,16,11),(26,17,11),(27,18,11),(28,16,12),(29,17,12),(30,18,12),(31,19,13),(32,20,13),(33,1,13),(34,19,14),(35,20,14),(36,1,14),(37,2,15),(38,3,15),(39,7,15),(40,8,5),(41,9,5);
/*!40000 ALTER TABLE `Equipa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Equipa_Atleta`
--

DROP TABLE IF EXISTS `Equipa_Atleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipa_Atleta` (
  `Identificador_Equipa` int NOT NULL,
  `Identificador_Atleta` int NOT NULL,
  PRIMARY KEY (`Identificador_Equipa`,`Identificador_Atleta`),
  KEY `fk_Equipa_idx` (`Identificador_Equipa`),
  KEY `fk_Atleta_idx` (`Identificador_Atleta`),
  CONSTRAINT `fk_Atleta` FOREIGN KEY (`Identificador_Atleta`) REFERENCES `Atleta` (`Identificador`),
  CONSTRAINT `fk_Equipa` FOREIGN KEY (`Identificador_Equipa`) REFERENCES `Equipa` (`Identificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipa_Atleta`
--

LOCK TABLES `Equipa_Atleta` WRITE;
/*!40000 ALTER TABLE `Equipa_Atleta` DISABLE KEYS */;
INSERT INTO `Equipa_Atleta` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8),(3,9),(4,10),(4,11),(4,12),(5,13),(5,14),(5,15),(6,16),(6,17),(6,18),(7,19),(7,20),(7,21),(8,22),(8,23),(8,24),(9,25),(9,26),(9,27),(10,28),(10,29),(10,30),(11,31),(11,32),(11,33),(12,34),(12,35),(12,36),(13,37),(13,38),(13,39),(14,40),(14,41),(14,42),(15,43),(15,44),(15,45),(16,28),(16,29),(16,30),(17,31),(17,32),(17,33),(18,34),(18,35),(18,36),(19,7),(19,8),(19,9),(20,16),(20,17),(20,18),(21,34),(21,35),(21,36),(22,37),(22,38),(22,39),(23,40),(23,41),(23,42),(24,43),(24,44),(24,45),(25,46),(25,47),(25,48),(26,49),(26,50),(26,51),(27,52),(27,53),(27,54),(28,46),(28,47),(28,48),(29,49),(29,50),(29,51),(30,52),(30,53),(30,54),(31,7),(31,8),(31,9),(32,16),(32,17),(32,18),(33,1),(33,2),(33,3),(34,7),(34,8),(34,9),(35,16),(35,17),(35,18),(36,1),(36,2),(36,3),(37,4),(37,6),(37,14),(38,55),(38,56),(38,57),(39,58),(39,59),(39,60),(40,61),(40,62),(40,63),(41,64),(41,65),(41,66);
/*!40000 ALTER TABLE `Equipa_Atleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Equipa_Prova`
--

DROP TABLE IF EXISTS `Equipa_Prova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipa_Prova` (
  `Identificador_Equipa` int NOT NULL,
  `Identificador_Prova` int NOT NULL,
  KEY `fk_Equipa_idx` (`Identificador_Equipa`),
  KEY `fk_Prova_idx` (`Identificador_Prova`),
  CONSTRAINT `fk_EquipaP_Equipa` FOREIGN KEY (`Identificador_Equipa`) REFERENCES `Equipa` (`Identificador`),
  CONSTRAINT `fk_EquipaP_Prova` FOREIGN KEY (`Identificador_Prova`) REFERENCES `Prova` (`Identificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipa_Prova`
--

LOCK TABLES `Equipa_Prova` WRITE;
/*!40000 ALTER TABLE `Equipa_Prova` DISABLE KEYS */;
INSERT INTO `Equipa_Prova` VALUES (9,1),(10,1),(9,4),(10,4),(3,7),(4,7),(5,13),(6,13),(7,21),(8,21),(9,25),(10,25);
/*!40000 ALTER TABLE `Equipa_Prova` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `EstatisticasPaises`
--

DROP TABLE IF EXISTS `EstatisticasPaises`;
/*!50001 DROP VIEW IF EXISTS `EstatisticasPaises`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `EstatisticasPaises` AS SELECT 
 1 AS `Pais`,
 1 AS `Numero_Atletas`,
 1 AS `Numero_Modalidades`,
 1 AS `Numero_Categorias`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Jogos_Olimpicos`
--

DROP TABLE IF EXISTS `Jogos_Olimpicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Jogos_Olimpicos` (
  `Identificador` int NOT NULL AUTO_INCREMENT,
  `Ano` varchar(4) NOT NULL,
  `Pais_Organizador` varchar(64) NOT NULL,
  `Contacto` varchar(64) NOT NULL,
  `Data_Inicio` date NOT NULL,
  `Data_Fim` date NOT NULL,
  PRIMARY KEY (`Identificador`),
  UNIQUE KEY `Identificador_UNIQUE` (`Identificador`),
  UNIQUE KEY `Ano_UNIQUE` (`Ano`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jogos_Olimpicos`
--

LOCK TABLES `Jogos_Olimpicos` WRITE;
/*!40000 ALTER TABLE `Jogos_Olimpicos` DISABLE KEYS */;
INSERT INTO `Jogos_Olimpicos` VALUES (1,'2024','França','paris2024@olympics.org','2024-07-26','2024-08-11');
/*!40000 ALTER TABLE `Jogos_Olimpicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Modalidade`
--

DROP TABLE IF EXISTS `Modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Modalidade` (
  `Identificador` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(32) NOT NULL,
  PRIMARY KEY (`Identificador`),
  UNIQUE KEY `Identificador_UNIQUE` (`Identificador`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Modalidade`
--

LOCK TABLES `Modalidade` WRITE;
/*!40000 ALTER TABLE `Modalidade` DISABLE KEYS */;
INSERT INTO `Modalidade` VALUES (1,'Atletismo'),(2,'Natação'),(3,'Ginástica'),(4,'Judo'),(5,'Basquetebol'),(6,'Voleibol'),(7,'Ténis'),(8,'Ciclismo'),(9,'Futebol'),(10,'Boxe'),(11,'Taekwondo'),(12,'Esgrima'),(13,'Tiro com Arco'),(14,'Triatlo'),(15,'Polo Aquático');
/*!40000 ALTER TABLE `Modalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pais`
--

DROP TABLE IF EXISTS `Pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pais` (
  `Identificador` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(64) NOT NULL,
  `Contacto` varchar(64) NOT NULL,
  PRIMARY KEY (`Identificador`),
  UNIQUE KEY `Identificador_UNIQUE` (`Identificador`),
  UNIQUE KEY `Nome_UNIQUE` (`Nome`),
  UNIQUE KEY `Contacto_UNIQUE` (`Contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pais`
--

LOCK TABLES `Pais` WRITE;
/*!40000 ALTER TABLE `Pais` DISABLE KEYS */;
INSERT INTO `Pais` VALUES (1,'Portugal','portugal@olympics.org'),(2,'França','france@olympics.org'),(3,'Brasil','brasil@olympics.org'),(4,'Estados Unidos','usa@olympics.org'),(5,'China','china@olympics.org'),(6,'Japão','japan@olympics.org'),(7,'Alemanha','germany@olympics.org'),(8,'Reino Unido','uk@olympics.org'),(9,'Austrália','australia@olympics.org'),(10,'Canadá','canada@olympics.org'),(11,'Espanha','spain@olympics.org'),(12,'Itália','italy@olympics.org'),(13,'Rússia','russia@olympics.org'),(14,'Holanda','netherlands@olympics.org'),(15,'Suécia','sweden@olympics.org'),(16,'África do Sul','southafrica@olympics.org'),(17,'Nova Zelândia','newzealand@olympics.org'),(18,'México','mexico@olympics.org'),(19,'Coreia do Sul','southkorea@olympics.org'),(20,'Índia','india@olympics.org');
/*!40000 ALTER TABLE `Pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `PaisesOrganizadores`
--

DROP TABLE IF EXISTS `PaisesOrganizadores`;
/*!50001 DROP VIEW IF EXISTS `PaisesOrganizadores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PaisesOrganizadores` AS SELECT 
 1 AS `Pais_Organizador`,
 1 AS `Ano`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Participação`
--

DROP TABLE IF EXISTS `Participação`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Participação` (
  `Identificador_JogosOlimpicos` int NOT NULL,
  `Identificador_Pais` int NOT NULL,
  PRIMARY KEY (`Identificador_JogosOlimpicos`,`Identificador_Pais`),
  KEY `fk_JogosOlimpicos_idx` (`Identificador_JogosOlimpicos`),
  KEY `fk_Pais_idx` (`Identificador_Pais`),
  CONSTRAINT `fk_JogosOlimpicos` FOREIGN KEY (`Identificador_JogosOlimpicos`) REFERENCES `Jogos_Olimpicos` (`Identificador`),
  CONSTRAINT `fk_Pais` FOREIGN KEY (`Identificador_Pais`) REFERENCES `Pais` (`Identificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participação`
--

LOCK TABLES `Participação` WRITE;
/*!40000 ALTER TABLE `Participação` DISABLE KEYS */;
INSERT INTO `Participação` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20);
/*!40000 ALTER TABLE `Participação` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prova`
--

DROP TABLE IF EXISTS `Prova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Prova` (
  `Identificador` int NOT NULL AUTO_INCREMENT,
  `Data` date NOT NULL,
  `Fase` varchar(32) NOT NULL,
  `Identificador_Categoria` int NOT NULL,
  `Identificador_Endereço` int NOT NULL,
  PRIMARY KEY (`Identificador`),
  UNIQUE KEY `Identificador_UNIQUE` (`Identificador`),
  KEY `fk_Categoria_idx` (`Identificador_Categoria`),
  KEY `fk_Endereço_idx` (`Identificador_Endereço`),
  CONSTRAINT `fk_Categoria` FOREIGN KEY (`Identificador_Categoria`) REFERENCES `Categoria` (`Identificador`),
  CONSTRAINT `fk_Endereço` FOREIGN KEY (`Identificador_Endereço`) REFERENCES `Endereço` (`Identificador`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prova`
--

LOCK TABLES `Prova` WRITE;
/*!40000 ALTER TABLE `Prova` DISABLE KEYS */;
INSERT INTO `Prova` VALUES (1,'2024-07-27','Eliminatória',1,1),(2,'2024-07-28','Semi-Final',1,1),(3,'2024-07-28','Final',1,1),(4,'2024-07-29','Eliminatória',2,1),(5,'2024-07-29','Semi-Final',2,1),(6,'2024-07-30','Final',2,1),(7,'2024-07-31','Eliminatória',3,1),(8,'2024-07-31','Final',3,1),(9,'2024-08-01','Eliminatória',4,1),(10,'2024-08-01','Final',4,1),(11,'2024-08-02','Final',5,1),(12,'2024-08-03','Final',6,1),(13,'2024-08-04','Eliminatória',7,2),(14,'2024-08-04','Semi-Final',7,2),(15,'2024-08-05','Final',7,2),(16,'2024-08-05','Eliminatória',8,2),(17,'2024-08-05','Semi-Final',8,2),(18,'2024-08-06','Final',8,2),(19,'2024-08-06','Eliminatória',9,2),(20,'2024-08-07','Final',9,2),(21,'2024-08-07','Qualificação',11,3),(22,'2024-08-08','Final',11,3),(23,'2024-08-08','Qualificação',12,3),(24,'2024-08-09','Final',12,3),(25,'2024-08-09','Eliminatória',13,4),(26,'2024-08-09','Final',13,4),(27,'2024-08-10','Eliminatória',14,4),(28,'2024-08-10','Final',14,4),(29,'2024-08-11','Eliminatória',15,4),(30,'2024-08-11','Final',15,4);
/*!40000 ALTER TABLE `Prova` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resultados`
--

DROP TABLE IF EXISTS `Resultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Resultados` (
  `Identificador` int NOT NULL AUTO_INCREMENT,
  `Identificador_Equipa` int NOT NULL,
  `Identificador_Prova` int NOT NULL,
  `Posição` int NOT NULL,
  PRIMARY KEY (`Identificador`),
  UNIQUE KEY `Identificador_UNIQUE` (`Identificador`),
  KEY `fk_Equipa1_idx` (`Identificador_Equipa`),
  KEY `fk_Prova_idx` (`Identificador_Prova`),
  CONSTRAINT `fk_Resultados_Equipa` FOREIGN KEY (`Identificador_Equipa`) REFERENCES `Equipa` (`Identificador`),
  CONSTRAINT `fk_Resultados_Prova` FOREIGN KEY (`Identificador_Prova`) REFERENCES `Prova` (`Identificador`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resultados`
--

LOCK TABLES `Resultados` WRITE;
/*!40000 ALTER TABLE `Resultados` DISABLE KEYS */;
INSERT INTO `Resultados` VALUES (1,1,1,1),(2,2,1,2),(3,3,1,3),(4,1,2,1),(5,2,2,2),(6,1,3,1),(7,2,3,2),(8,3,3,3),(9,4,4,1),(10,5,4,2),(11,4,5,1),(12,5,5,2),(13,4,6,1),(14,5,6,2),(15,6,6,3),(16,7,7,1),(17,8,7,2),(18,7,8,1),(19,8,8,2),(20,9,8,3),(21,10,13,1),(22,1,13,2),(23,10,14,1),(24,1,14,2),(25,10,15,1),(26,1,15,2),(27,2,15,3),(28,3,21,1),(29,4,21,2),(30,3,22,1),(31,4,22,2),(32,5,22,3),(33,6,25,1),(34,7,25,2),(35,6,26,1),(36,7,26,2),(37,8,26,3);
/*!40000 ALTER TABLE `Resultados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ResultadosFinais`
--

DROP TABLE IF EXISTS `ResultadosFinais`;
/*!50001 DROP VIEW IF EXISTS `ResultadosFinais`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ResultadosFinais` AS SELECT 
 1 AS `Modalidade`,
 1 AS `Categoria`,
 1 AS `Genero`,
 1 AS `Data_Final`,
 1 AS `Pais`,
 1 AS `Atletas`,
 1 AS `Posição`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `EdiçõesJogosOlimpicos`
--

/*!50001 DROP VIEW IF EXISTS `EdiçõesJogosOlimpicos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `EdiçõesJogosOlimpicos` AS select `Jogos_Olimpicos`.`Pais_Organizador` AS `Pais_Organizador`,`Jogos_Olimpicos`.`Ano` AS `Ano`,`Jogos_Olimpicos`.`Data_Inicio` AS `Data_Inicio`,`Jogos_Olimpicos`.`Data_Fim` AS `Data_Fim` from `Jogos_Olimpicos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `EstatisticasPaises`
--

/*!50001 DROP VIEW IF EXISTS `EstatisticasPaises`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `EstatisticasPaises` AS select `p`.`Nome` AS `Pais`,count(distinct `a`.`Identificador`) AS `Numero_Atletas`,count(distinct `m`.`Identificador`) AS `Numero_Modalidades`,count(distinct `c`.`Identificador`) AS `Numero_Categorias` from (((((`Pais` `p` join `Equipa` `e` on((`p`.`Identificador` = `e`.`Identificador_Pais`))) join `Equipa_Atleta` `ea` on((`e`.`Identificador` = `ea`.`Identificador_Equipa`))) join `Atleta` `a` on((`ea`.`Identificador_Atleta` = `a`.`Identificador`))) join `Categoria` `c` on((`e`.`Identificador_Categoria` = `c`.`Identificador`))) join `Modalidade` `m` on((`c`.`Identificador_Modalidade` = `m`.`Identificador`))) group by `p`.`Nome` order by `Numero_Atletas` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PaisesOrganizadores`
--

/*!50001 DROP VIEW IF EXISTS `PaisesOrganizadores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `PaisesOrganizadores` AS select `Jogos_Olimpicos`.`Pais_Organizador` AS `Pais_Organizador`,`Jogos_Olimpicos`.`Ano` AS `Ano` from `Jogos_Olimpicos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ResultadosFinais`
--

/*!50001 DROP VIEW IF EXISTS `ResultadosFinais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ResultadosFinais` AS select `m`.`Nome` AS `Modalidade`,`c`.`Nome` AS `Categoria`,`c`.`Genero` AS `Genero`,`p`.`Data` AS `Data_Final`,`pa`.`Nome` AS `Pais`,group_concat(`a`.`Nome` order by `a`.`Nome` ASC separator ', ') AS `Atletas`,`r`.`Posição` AS `Posição` from (((((((`Prova` `p` join `Categoria` `c` on((`p`.`Identificador_Categoria` = `c`.`Identificador`))) join `Modalidade` `m` on((`c`.`Identificador_Modalidade` = `m`.`Identificador`))) join `Resultados` `r` on((`p`.`Identificador` = `r`.`Identificador_Prova`))) join `Equipa` `e` on((`r`.`Identificador_Equipa` = `e`.`Identificador`))) join `Pais` `pa` on((`e`.`Identificador_Pais` = `pa`.`Identificador`))) join `Equipa_Atleta` `ea` on((`e`.`Identificador` = `ea`.`Identificador_Equipa`))) join `Atleta` `a` on((`ea`.`Identificador_Atleta` = `a`.`Identificador`))) where ((`p`.`Fase` = 'Final') and (`r`.`Posição` <= 3)) group by `m`.`Nome`,`c`.`Nome`,`c`.`Genero`,`p`.`Data`,`pa`.`Nome`,`r`.`Posição` order by `p`.`Data`,`r`.`Posição` */;
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

-- Dump completed on 2025-01-13 14:28:16
