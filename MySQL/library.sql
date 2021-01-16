-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `cyphr` int(11) DEFAULT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Book_name` varchar(255) DEFAULT NULL,
  `release_date` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Крейг Джон Дж.','Введение в робототехнику. Механика и управление ',2013,467),(2,'Джордан Джон','Роботы',2017,502),(3,'Дж. Бейктал','Конструируем роботов. Дроны. Руководство для начинающих',2017,561),(4,'Дж. Бейктал','Конструируем роботов. От А до Я. Полное руководство для начинающих',2019,207),(5,'Харрис Дэвид М. Харрис Сара Л.','Цифровая схемотехника и архитектура компьютера. Дополнение по архитектуре ARM',2018,27),(6,'Волынец А. Д.','Основы государственной политики в сфере робототехники и технологий искусственного интеллекта',2019,140),(7,'Незнамов Андрей Владимирович','Новые законы робототехники.',2018,542),(8,'Е.И. Юревич','Основы робототехники',2017,475),(9,'Васильков Юрий Викторович','Математическое моделирование объектов и систем автоматического управления',2020,265),(10,'Солем Ян Эрик','Программирование компьютерного зрения на Python',2016,229);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `given_books`
--

DROP TABLE IF EXISTS `given_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `given_books` (
  `cyphr` int(11) DEFAULT NULL,
  `readbil` int(11) DEFAULT NULL,
  `give_date` varchar(255) DEFAULT NULL,
  `return_date` varchar(255) DEFAULT NULL,
  `actual_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `given_books`
--

LOCK TABLES `given_books` WRITE;
/*!40000 ALTER TABLE `given_books` DISABLE KEYS */;
INSERT INTO `given_books` VALUES (4,5,'0.1 0.6 2020','0.1 0.7 2020','0.30 0.6 2020'),(1,2,'0.14 0.3 2020','0.14 0.4 2020','0.26 0.3 2020'),(3,1,'0.1 0.6 2020','0.1 0.7 2020','0.30 0.6 2020'),(7,6,'0.10 0.6 2019','0.10 0.7 2019','0.30 0.6 2019'),(5,3,'0.11 0.6 2019','0.11 0.7 2019','0.25 0.6 2019'),(2,4,'0.25 0.6 2019','0.25 0.7 2019','0.24 0.6 2019'),(8,9,'0.20 0.6 2019','0.20 0.7 2019','0.18 0.6 2019'),(6,7,'0.10 0.6 2019','0.10 0.7 2019','0.30 0.6 2019'),(1,6,'0.10 0.6 2019','0.10 0.7 2019','0.30 0.6 2019'),(1,10,'0.10 0.6 2019','0.10 0.7 2019','0.11 0.6 2019');
/*!40000 ALTER TABLE `given_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readers`
--

DROP TABLE IF EXISTS `readers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readers` (
  `readbil` int(11) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fathers_name` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readers`
--

LOCK TABLES `readers` WRITE;
/*!40000 ALTER TABLE `readers` DISABLE KEYS */;
INSERT INTO `readers` VALUES (1,'Сидоров','Андрей','Генадьевич','г.Москва ул.Ленина д.599'),(2,'Веслоухов','Олег','Валентинович','г.Москва ул.Ленина д.559'),(3,'Гамзатов','Артур','Трофимович','г.Москва ул.Большая д.5'),(4,'Малых','Виктор','Петрович','г.Москва ул.Пенина д.1'),(5,'Григорьев','Григорий','Григорьевич','г.Москва ул.Октябрьская д.13'),(6,'Большой','Адронный','Коллайдерович','г.Москва ул.Ученых ленинцев д.666'),(7,'Чернышов','Герман','Александрович','г.Апрелевка ул.Боровский тракт д.8'),(8,'Аланов','Алексей','Александрович','г.Сочи ул.Больших бровей д.1'),(9,'Гришин','Михаил','Юрьевич','г.Москва ул.Звезды Мишлен д.99'),(10,'Мужицкая','Наталья','Генадьевна','г.Москва ул.Брутальности д.9'),(11,'Петров','Александр','Алексеевич','г.Апрелевка ул.Горбатых д.14/88');
/*!40000 ALTER TABLE `readers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-16  4:09:11
