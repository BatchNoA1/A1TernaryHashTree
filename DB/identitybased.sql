# MySQL-Front 5.1  (Build 1.5)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: identitybased
# ------------------------------------------------------
# Server version 5.0.24a-community-nt

DROP DATABASE IF EXISTS `identitybased`;
CREATE DATABASE `identitybased` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `identitybased`;

#
# Source for table register
#

CREATE TABLE `register` (
  `userid` varchar(255) NOT NULL default '',
  `username` varchar(30) default NULL,
  `password` varchar(20) default NULL,
  `retypepass` varchar(30) NOT NULL default '',
  `age` varchar(3) default NULL,
  `gender` varchar(10) default NULL,
  `address` varchar(100) default NULL,
  `contact` varchar(20) default NULL,
  `email` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table register
#
LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;

INSERT INTO `register` VALUES ('UID814','jhansi','jhansi','jhansi','22','Female','chennai','9898678568','jhansi@gmail.com');
INSERT INTO `register` VALUES ('UID910','Bairavi','Bairavi1$','Bairavi1$','22','Female','chennai','9994709867','bai@gmail.com');
INSERT INTO `register` VALUES ('UID532','Abirami','Abirami1$','Abirami1$','22','Female','chennai','9876543217','abi@gmail.com');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table roothash
#

CREATE TABLE `roothash` (
  `fname` varchar(255) default NULL,
  `root` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table roothash
#
LOCK TABLES `roothash` WRITE;
/*!40000 ALTER TABLE `roothash` DISABLE KEYS */;

INSERT INTO `roothash` VALUES ('Chrysanthemum.jpg','af7b8cb98be7112286d8eb78ae3c701f6ba2eba2');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Desert.jpg','ee4d5428b65a917bd59cb03711ff0e31fdc96e92');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Chrysanthemum.jpg','e17d6562c725473a7bba14b8e5e294a323f14721');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Desert.jpg','9dc21bae065e586215664b632c941d5126b9d5bd');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Koala.jpg','9e1abf6cbe97b2b6ab639765cfd7a419efc3abc3');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Chrysanthemum.jpg','130b27b66c0188749180decd9fbe6a962e49f544');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Hydrangeas.jpg','2539339f49fd050c25aa84b2fb350002a0de1408');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Jellyfish.jpg','b08b0ae658eb9700b56ac6fa40052f35fbdfe550');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Chrysanthemum.jpg','e920775dbb87ab0058fc416c0f743dae57392a5c');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Hydrangeas.jpg','869735035c1920f9f099bbba63bbf0d07a51be06');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Lighthouse.jpg','74bd68258b5e9c14648498ce144a106764e0f8dd');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Koala.jpg','f4c906333ea3e878834ad6b82411b1e21fe7ab0d');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Tulips.jpg','68c8211e226faa6cf185cbb7f5abf7b3bd5cb55c');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('Desert.jpg','596ec30bf1df24491d7a11483d9af6f4d10ebdb3');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
INSERT INTO `roothash` VALUES ('','');
/*!40000 ALTER TABLE `roothash` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
