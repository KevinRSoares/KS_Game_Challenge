CREATE DATABASE  IF NOT EXISTS `jogodb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jogodb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jogodb
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

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
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `CodLog` int(11) NOT NULL AUTO_INCREMENT,
  `DesLog` varchar(80) NOT NULL,
  `DatHorLog` datetime NOT NULL,
  `TipLog` char(1) NOT NULL,
  PRIMARY KEY (`CodLog`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (30,'Novo jogador inserido: Kevin Ruan Soares','2018-08-23 18:52:36','C'),(31,'Novo jogador inserido: Felipe Becker','2018-08-23 18:53:39','C'),(32,'Novo jogador inserido: Sabrina','2018-08-23 18:59:41','C'),(33,'Usuário 41 iniciou partida de código 13.','2018-08-23 19:47:10','P'),(34,'Usuário 42 iniciou partida de código 14.','2018-08-23 19:47:19','P'),(35,'Usuário 43 iniciou partida de código 15.','2018-08-23 19:47:52','P'),(36,'Partida 13 finalizada_Pausada Data/Hora: 2018-08-23 19:48:18','2018-08-23 19:48:18','P'),(37,'Partida 14 finalizada_Pausada Data/Hora: 2018-08-23 19:48:29','2018-08-23 19:48:29','P'),(38,'Partida 15 finalizada_Pausada Data/Hora: 2018-08-23 19:48:48','2018-08-23 19:48:48','P'),(39,'Usuário 41 iniciou partida de código 16.','2018-08-26 22:33:44','P'),(40,'Partida 16 finalizada_Pausada Data/Hora: 2018-08-26 22:34:02','2018-08-26 22:34:02','P'),(41,'Novo jogador inserido: Kevin Soares','2018-09-09 22:48:07','C'),(42,'Novo jogador inserido: 123','2018-09-09 22:55:26','C'),(43,'Novo jogador inserido: teste','2018-09-09 23:47:27','C'),(45,'Email ou NickName duplicados: Email - Kevin@gmail.com | NickName - teste','2018-09-09 23:47:47','W'),(46,'Usuário 41 iniciou partida de código 17.','2018-09-16 22:42:15','P'),(47,'Partida 17 finalizada_Pausada Data/Hora: 2018-09-16 22:42:27','2018-09-16 22:42:27','P'),(48,'Novo jogador inserido: Pessoa1','2018-09-16 22:43:51','C'),(49,'Novo jogador inserido: pessoa2','2018-09-16 22:44:24','C'),(50,'Novo jogador inserido: pessoa3','2018-09-16 22:44:53','C'),(51,'Novo jogador inserido: pessoa4','2018-09-16 22:46:03','C'),(52,'Usuário 45 iniciou partida de código 18.','2018-09-16 22:46:52','P'),(53,'Partida 18 finalizada_Pausada Data/Hora: 2018-09-16 22:47:03','2018-09-16 22:47:03','P'),(54,'Usuário 46 iniciou partida de código 19.','2018-09-16 22:47:21','P'),(55,'Partida 19 finalizada_Pausada Data/Hora: 2018-09-16 22:47:31','2018-09-16 22:47:31','P'),(56,'Usuário 47 iniciou partida de código 20.','2018-09-16 22:47:39','P'),(57,'Partida 20 finalizada_Pausada Data/Hora: 2018-09-16 22:47:46','2018-09-16 22:47:46','P'),(58,'Usuário 48 iniciou partida de código 21.','2018-09-16 22:47:54','P'),(59,'Partida 21 finalizada_Pausada Data/Hora: 2018-09-16 22:48:03','2018-09-16 22:48:03','P'),(60,'Usuário 49 iniciou partida de código 22.','2018-09-16 22:48:10','P'),(61,'Partida 22 finalizada_Pausada Data/Hora: 2018-09-16 22:48:19','2018-09-16 22:48:19','P'),(62,'Usuário 50 iniciou partida de código 23.','2018-09-16 22:48:27','P'),(63,'Partida 23 finalizada_Pausada Data/Hora: 2018-09-16 22:48:35','2018-09-16 22:48:36','P');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partida` (
  `CodPar` int(11) NOT NULL AUTO_INCREMENT,
  `CodUsu` int(11) NOT NULL,
  `DatHorIniPar` datetime DEFAULT NULL,
  `PonPar` int(11) NOT NULL DEFAULT '0',
  `DatHorFimPar` datetime DEFAULT NULL,
  PRIMARY KEY (`CodPar`),
  KEY `usuario_partida_fk` (`CodUsu`),
  CONSTRAINT `usuario_partida_fk` FOREIGN KEY (`CodUsu`) REFERENCES `usuario` (`CodUsu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (13,41,'2018-08-23 19:47:10',110,'2018-08-23 19:48:18'),(14,42,'2018-08-23 19:47:19',120,'2018-08-23 19:48:29'),(15,43,'2018-08-23 19:47:52',200,'2018-08-23 19:48:48'),(16,41,'2018-08-26 22:33:44',500,'2018-08-26 22:34:02'),(17,41,'2018-09-16 22:42:15',5000,'2018-09-16 22:42:27'),(18,45,'2018-09-16 22:46:52',5050,'2018-09-16 22:47:03'),(19,46,'2018-09-16 22:47:21',2050,'2018-09-16 22:47:31'),(20,47,'2018-09-16 22:47:39',2050,'2018-09-16 22:47:46'),(21,48,'2018-09-16 22:47:54',2100,'2018-09-16 22:48:03'),(22,49,'2018-09-16 22:48:10',2133,'2018-09-16 22:48:19'),(23,50,'2018-09-16 22:48:27',2135,'2018-09-16 22:48:35');
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tr_log_delete_partida before delete
	on partida
	for each row
	begin
		declare descricao varchar(30) default "";
		set descricao = concat("Partida ", OLD.CodPar," deleteda!");
		
		call insere_log(descricao,'D');
	end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `rankinggeral`
--

DROP TABLE IF EXISTS `rankinggeral`;
/*!50001 DROP VIEW IF EXISTS `rankinggeral`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rankinggeral` AS SELECT 
 1 AS `NickName`,
 1 AS `Pontuacao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `relatorio_log`
--

DROP TABLE IF EXISTS `relatorio_log`;
/*!50001 DROP VIEW IF EXISTS `relatorio_log`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `relatorio_log` AS SELECT 
 1 AS `Descrição Log`,
 1 AS `Data e hora do Log`,
 1 AS `Tipo do Log`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `CodUsu` int(11) NOT NULL AUTO_INCREMENT,
  `NomUsu` varchar(45) NOT NULL,
  `EmaUsu` varchar(100) NOT NULL,
  `NicUsu` varchar(20) NOT NULL,
  `SenUsu` varchar(32) NOT NULL,
  `DatNasUsu` date NOT NULL,
  `DatCadUsu` datetime NOT NULL,
  `TipUsu` char(1) NOT NULL,
  PRIMARY KEY (`CodUsu`),
  UNIQUE KEY `EmaUsu_UNIQUE` (`EmaUsu`),
  UNIQUE KEY `NicUsu_UNIQUE` (`NicUsu`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COMMENT='Tabela de Usuário';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (41,'Kevin Ruan Soares','kevin_soares@estudante.sc.senai.br','KevinRSoares','202cb962ac59075b964b07152d234b70','2000-02-21','2018-08-23 18:52:36','A'),(42,'Felipe Becker','Felipe@gmail.com','FelipeB','202cb962ac59075b964b07152d234b70','1999-02-21','2018-08-23 18:53:39','J'),(43,'Sabrina','Sabrina@gmail.com','SabrinaMPutsch','202cb962ac59075b964b07152d234b70','2001-02-21','2018-08-23 18:59:41','J'),(44,'Kevin Soares','aleatorio@gmail.com','kru','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-09 22:48:07','A'),(45,'123','teste01@gmail.com','123','202cb962ac59075b964b07152d234b70','2000-02-21','2018-09-09 22:55:26','A'),(46,'teste','Kevin@gmail.com','teste','d41d8cd98f00b204e9800998ecf8427e','2000-02-21','2018-09-09 23:47:27','A'),(47,'Pessoa1','pessoa1@gmail.com','Pessoa1','202cb962ac59075b964b07152d234b70','1998-03-02','2018-09-16 22:43:51','J'),(48,'pessoa2','pessoa2@gmail.com','pessoa2','202cb962ac59075b964b07152d234b70','1999-06-05','2018-09-16 22:44:24','J'),(49,'pessoa3','pessoa3@gmail.com','','d41d8cd98f00b204e9800998ecf8427e','0000-00-00','2018-09-16 22:44:53','J'),(50,'pessoa4','pessoa4@gmail.com','pessoa4','202cb962ac59075b964b07152d234b70','1999-12-15','2018-09-16 22:46:03','J');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger tr_inseri_log_aluno before insert
on usuario
for each row
begin
	declare descricao varchar(500) default "";
    set new.CodUsu = new.CodUsu;
	set new.NomUsu = new.NomUsu;
    set descricao = concat("Novo jogador inserido: ", new.NomUsu);
    
	call insere_log(descricao,'C');
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'jogodb'
--

--
-- Dumping routines for database 'jogodb'
--
/*!50003 DROP FUNCTION IF EXISTS `media_potuacao_j` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `media_potuacao_j`(CoJog int) RETURNS int(11)
BEGIN 
	Declare MedPont int default 0;
    Select Avg(PonPar) from Partida Where not isnull(DatHorFimPar) and CodUsu = CoJog into MedPont;
	
RETURN MedPont;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Cadastra_Usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cadastra_Usuario`(
IN NoUsu varchar(45),/*Nome do Usuario*/ 
IN EmUsu varchar(100),/*Email*/ 
IN DtNaUsu Date,/*Data de Nascimento*/ 
IN NiUsu varchar(20),/*NickName/Login*/
IN SeUsu varchar(20),/*Senha*/
IN TiUsu char(1)/*Tipo de Usuário*/ 
)
BEGIN
	Declare DtCaUsu dateTime default now();/*Data de Cadastro de Usuario*/ 
	Declare desLog varchar(80);
	Declare Email_Nick_duplicado condition for sqlstate '23000';
	Declare exit handler for Email_Nick_duplicado
	begin
		Set desLog = concat('Email ou NickName duplicados: Email - ',EmUsu,' | NickName - ',NiUsu);
		call insere_log(desLog,'W');
		select 'Email ou NickName já cadastrados!';
	End;    
	Insert Into Usuario(NomUsu,EmaUsu,NicUsu,SenUsu,DatNasUsu,DatCadUsu,TipUsu)
		Values(NoUsu,EmUsu,NiUsu,md5(SeUsu),DtNaUsu,DtCaUsu,TiUsu);
		Select 'Jogador cadastrado com sucesso!';
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleta_partidas_abertas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleta_partidas_abertas`()
BEGIN
		DECLARE done INT DEFAULT FALSE;
		Declare CoPar int;
        DECLARE CursorDeletar CURSOR FOR select CodPar from Partida Where DatHorIniPar < date_sub(Now(), interval 3 day) and isnull(DatHorFimPar);
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		open CursorDeletar;
		read_loop: LOOP
			FETCH CursorDeletar INTO CoPar;
			IF done THEN
			  LEAVE read_loop;
			END IF;

			Delete from Partida Where CodPar = CoPar;

		END LOOP;

		#Fecha o cursor
		close CursorDeletar;        
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Finaliza_Pausa_Partida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Finaliza_Pausa_Partida`(
IN CoPar Int,/*Código do Usuario*/
IN CoPon Int /*Pontuação*/
)
BEGIN
	Declare desLog varchar(80);
    Declare DtFimPar DateTime default Now();
	
    Update Partida set PonPar = CoPon Where CodPar = CoPar;
	Update Partida set DatHorFimPar = DtFimPar Where CodPar = CoPar;
    
    Set DesLog = Concat('Partida ',CoPar,' finalizada_Pausada Data/Hora: ',DtFimPar);
    call insere_log(desLog,'P');    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Inicia_Partida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inicia_Partida`(
IN CoUsu Int,/*Código do Usuario*/
OUT CoPar Int /*Código da Partida Iniciada*/
)
BEGIN
	Declare desLog varchar(80);
	Insert Into Partida(CodUsu,DatHorIniPar)
		Values(CoUsu,Now());
	Select Max(CodPar) from Partida Where CodUsu = CoUsu into CoPar;
    Set DesLog = Concat('Usuário ',CoUsu,' iniciou partida de código ', CoPar,'.');
    call insere_log(desLog,'P');    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insere_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insere_log`(IN desLog varchar(80),IN tipoLog varchar(1))
BEGIN
	insert into log(DatHorLog, DesLog, TipLog) values(now(), deslog, tipoLog);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Reinicia_Partida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Reinicia_Partida`(
IN CoPar Int/*Código da Partida*/
)
BEGIN
	Declare desLog varchar(80);
    Declare DtIniPar DateTime default Now();
	
    Update Partida set PonPar = 0 Where CodPar = CoPar;
	Update Partida set DatHorIniPar = DtIniPar Where CodPar = CoPar;
    Update Partida set DatHorFimPar = null Where CodPar = CoPar;
    
    Set DesLog = Concat('Partida ',CoPar,' Reiniciada.');
    call insere_log(desLog,'P');    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `top10_individual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `top10_individual`(IN codigo int)
BEGIN
		select Ponpar from partida where CodUsu = codigo order by Ponpar desc limit 10;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `rankinggeral`
--

/*!50001 DROP VIEW IF EXISTS `rankinggeral`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rankinggeral` AS select `usuario`.`NicUsu` AS `NickName`,max(`partida`.`PonPar`) AS `Pontuacao` from (`partida` left join `usuario` on((`usuario`.`CodUsu` = `partida`.`CodUsu`))) group by `partida`.`CodUsu` order by `usuario`.`NicUsu`,max(`partida`.`PonPar`) desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `relatorio_log`
--

/*!50001 DROP VIEW IF EXISTS `relatorio_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `relatorio_log` AS select `log`.`DesLog` AS `Descrição Log`,`log`.`DatHorLog` AS `Data e hora do Log`,`log`.`TipLog` AS `Tipo do Log` from `log` */;
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

-- Dump completed on 2018-09-17 21:00:38
