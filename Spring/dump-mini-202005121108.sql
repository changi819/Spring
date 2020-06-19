-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: mini
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `bbs`
--

DROP TABLE IF EXISTS `bbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs` (
  `bbsnum` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `writer` varchar(100) DEFAULT NULL,
  `bbsdate` date DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  PRIMARY KEY (`bbsnum`),
  KEY `writer` (`writer`),
  CONSTRAINT `bbs_ibfk_1` FOREIGN KEY (`writer`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs`
--

LOCK TABLES `bbs` WRITE;
/*!40000 ALTER TABLE `bbs` DISABLE KEYS */;
INSERT INTO `bbs` VALUES (1,'zzzzzz','zz','mck','2020-05-08',5),(4,'자고싶어요','ㅁㅇㄹ','mck','2020-05-11',4);
/*!40000 ALTER TABLE `bbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `content` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bbsnum` int(11) DEFAULT NULL,
  `comment_num` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`comment_num`),
  KEY `name` (`name`),
  KEY `bbsnum` (`bbsnum`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`bbsnum`) REFERENCES `bbs` (`bbsnum`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`name`) REFERENCES `member` (`id`),
  CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`bbsnum`) REFERENCES `bbs` (`bbsnum`) ON DELETE CASCADE,
  CONSTRAINT `comment_ibfk_4` FOREIGN KEY (`bbsnum`) REFERENCES `bbs` (`bbsnum`) ON DELETE CASCADE,
  CONSTRAINT `comment_ibfk_5` FOREIGN KEY (`bbsnum`) REFERENCES `bbs` (`bbsnum`) ON DELETE CASCADE,
  CONSTRAINT `comment_ibfk_6` FOREIGN KEY (`bbsnum`) REFERENCES `bbs` (`bbsnum`) ON DELETE CASCADE,
  CONSTRAINT `comment_ibfk_7` FOREIGN KEY (`bbsnum`) REFERENCES `bbs` (`bbsnum`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('ㅋㅋ안녕하세요','mck','2020-05-11 01:49:02',1,1),('하이용','cjs','2020-05-11 01:49:02',1,2),('반가워요','lhh','2020-05-11 01:49:20',1,3),('스위치','mck','2020-05-11 03:36:59',1,4),('스위치','mck','2020-05-11 03:37:08',1,5),('zzz','mck','2020-05-11 03:41:43',1,6),('스위치','mck','2020-05-11 09:20:45',4,12);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('cjs','1234','최준석'),('lhh','1234','이하현'),('mck','1234','민찬기');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'닌텐도',350000,'nintendo.jpg'),(2,'xbox',300000,'xbox.jpg'),(3,'플스4pro',450000,'ps4.jpg'),(6,'adsf',300000,'wqe');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mini'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-12 11:08:42
