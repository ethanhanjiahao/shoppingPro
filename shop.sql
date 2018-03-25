-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: shopTaskdb
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `goodId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qvl10gf9vcsm8hgrt37nils2o` (`goodId`),
  CONSTRAINT `FK_qvl10gf9vcsm8hgrt37nils2o` FOREIGN KEY (`goodId`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodType`
--

DROP TABLE IF EXISTS `goodType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goodType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodType`
--

LOCK TABLES `goodType` WRITE;
/*!40000 ALTER TABLE `goodType` DISABLE KEYS */;
INSERT INTO `goodType` VALUES (1,'图书'),(2,'服装'),(3,'家具'),(4,'家电'),(5,'数码');
/*!40000 ALTER TABLE `goodType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `introduce` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `buied` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9mn8yplm6q2vbo0t6bjelapwn` (`typeId`),
  CONSTRAINT `FK_9mn8yplm6q2vbo0t6bjelapwn` FOREIGN KEY (`typeId`) REFERENCES `goodType` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'Nike空军一号／','空军一号','nike.jpg',103.5,'全网最低价，空军一号经典款，值得购买',2,1),(2,'灵魂读物','摆渡人','book06.jpg',15,'非常适合迷茫的人看的，灵魂读物，非常关键',1,1),(3,'GUICC包','Guicc','bag.jpg',240,'好看又便宜的GUICC包，值得拥有',2,1),(4,'2017款配touchID','MacBook pro','mac.jpg',6500,'MACbookpro 最新款，高性能，256G',5,0),(5,'Nike帽子','帽子','hat.jpg',12,'nike棒球帽，最时尚',2,1),(6,'余华经典图书','活着','book02.jpg',27.8,'生活是为了活着，活着也是为了生活',1,0);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyTime` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `goodId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nkwrdp54omnwnnqpff9vkfpjc` (`goodId`),
  KEY `FK_2gcgbfud7n5ixb7qqb6nuaqxw` (`userId`),
  CONSTRAINT `FK_2gcgbfud7n5ixb7qqb6nuaqxw` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_nkwrdp54omnwnnqpff9vkfpjc` FOREIGN KEY (`goodId`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2018-03-18 22:18:25',1,103.5,1,1),(2,'2018-03-18 22:18:25',1,15,2,1),(3,'2018-03-22 20:09:42',2,240,3,1),(4,'2018-03-22 20:19:39',1,12,5,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickName` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'amstriength','110','buyer','reyub'),(2,'sellman','119','seller','relles');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user`
--

DROP TABLE IF EXISTS `user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user` (
  `user_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`orders_id`),
  UNIQUE KEY `UK_paw9v8ungjg6qvlcwhpvff1bv` (`orders_id`),
  CONSTRAINT `FK_paw9v8ungjg6qvlcwhpvff1bv` FOREIGN KEY (`orders_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_s7pwk9swjfqs0w7ub9tt5s47y` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user`
--

LOCK TABLES `user_user` WRITE;
/*!40000 ALTER TABLE `user_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-25 16:55:35
