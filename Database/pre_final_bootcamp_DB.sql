-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: pre_final_bootcamp_2
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `commentar_posts`
--

DROP TABLE IF EXISTS `commentar_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentar_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentar_posts`
--

LOCK TABLES `commentar_posts` WRITE;
/*!40000 ALTER TABLE `commentar_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentar_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentars`
--

DROP TABLE IF EXISTS `commentars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isi_commentar` text NOT NULL,
  `UsersId` int DEFAULT NULL,
  `PostId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UsersId` (`UsersId`),
  KEY `PostId` (`PostId`),
  CONSTRAINT `commentars_ibfk_1` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_10` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_11` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_12` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_13` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_14` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_15` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_16` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_17` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_18` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_19` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_2` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_20` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_21` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_22` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_23` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_24` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_25` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_26` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_27` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_28` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_29` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_3` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_30` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_31` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_32` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_33` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_34` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_35` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_36` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_4` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_5` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_6` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_7` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_8` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `commentars_ibfk_9` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Commentars_PostId_foreign_idx` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Commentars_UsersId_foreign_idx` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentars`
--

LOCK TABLES `commentars` WRITE;
/*!40000 ALTER TABLE `commentars` DISABLE KEYS */;
INSERT INTO `commentars` VALUES (1,'test 1 sambungkan commnetar',1,NULL),(2,'asikk sudah menyambung',1,NULL),(3,'test ke 3',1,NULL),(4,'percobaan add comment',1,NULL),(5,'percobaan ke 2',NULL,NULL),(6,'test ke 3',5,NULL),(7,'test 4',1,3),(8,'test ke 4',6,3),(9,'test postman',1,NULL),(10,'test add comment',1,NULL),(11,'test add ke 2',1,NULL),(12,'test add ke 3',1,NULL),(13,'test reload langsung',1,NULL),(14,'test reload langsung ke 2',1,3),(15,'test',1,3),(16,'cek',1,NULL),(17,'ccek 2',1,NULL),(18,'percobaan hehe',6,NULL),(19,'test ke 2',6,NULL),(20,'test ke 3',6,NULL),(21,'test ke 4',6,NULL),(22,'test ke 5',6,NULL),(23,'testing',6,NULL),(24,'coba',6,NULL),(25,'coba',6,NULL),(26,'coba',6,NULL),(27,'coba',6,NULL),(28,'percoban terakhir',6,NULL),(29,'ahahahhahha',6,NULL),(30,'test',6,11),(31,'test di page detail',6,11),(32,'test page detail ke 2',6,11),(33,'test page detail ke  3',6,11),(34,'hai',1,12),(35,'testing',1,6),(36,'percobaan ke 2',1,5),(37,'testt',1,5),(38,'haii',1,5),(39,'test habis perubahan',1,5),(40,'masukan comment',1,6),(41,'haii theoo',NULL,18),(42,'hai rofii',1,19),(43,'percobaan ke 2 hai rofi',1,19),(44,'melihat padang pasir nyaa',1,18),(45,'merpati yg snagat indah',1,NULL);
/*!40000 ALTER TABLE `commentars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UsersId` int DEFAULT NULL,
  `PostId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UsersId` (`UsersId`),
  KEY `PostId` (`PostId`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_10` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_11` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_12` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_13` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_14` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_15` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_16` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_17` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_18` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_19` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_20` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_21` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_22` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_23` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_24` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_25` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_26` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_4` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_5` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_6` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_7` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_8` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_9` FOREIGN KEY (`UsersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (74,1,3),(76,7,16),(80,1,18),(82,1,5),(83,1,14),(84,1,20);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_likes`
--

DROP TABLE IF EXISTS `post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_likes`
--

LOCK TABLES `post_likes` WRITE;
/*!40000 ALTER TABLE `post_likes` DISABLE KEYS */;
INSERT INTO `post_likes` VALUES (1),(4);
/*!40000 ALTER TABLE `post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postImage` text NOT NULL,
  `caption` text NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `usersId` int DEFAULT NULL,
  `number_of_likes` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `usersId` (`usersId`),
  CONSTRAINT `posts_ibfk_10` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_11` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_12` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_13` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_14` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_15` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_16` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_17` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_18` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_19` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_20` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_21` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_22` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_23` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_24` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_25` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_26` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_27` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_28` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_29` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_30` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_31` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_32` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_33` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_34` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_35` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_36` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_37` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_38` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_39` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_40` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_41` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_42` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_43` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_44` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_45` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_46` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_47` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_48` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_49` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_50` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_51` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_52` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_53` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_54` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_55` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_56` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_57` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_58` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_59` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_60` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_61` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_62` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_63` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_64` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_65` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_66` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_67` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_68` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Posts_usersId_foreign_idx` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (3,'http://localhost:2000/post_images/POST_xwseqy7zNprBAFK3wNXjK.jpeg','coba edit caption','9-15-2022',1,2),(5,'http://localhost:2000/post_images/POST_XC2bgLmFXK1LKPSlHPq3l.jpeg','mencoba merubah lagi','9-17-2022',1,1),(6,'http://localhost:2000/post_images/POST_eg5EpGoiBHS2V6b_DhyV5.jpeg','mencoba perubahan','9-17-2022',1,0),(11,'http://localhost:2000/post_images/POST_7nlzCbjyDWE2xvKcNSfmW.jpeg','percobaan','9-17-2022',6,0),(12,'http://localhost:2000/post_images/POST_702_aTGWuDa2h1xZK12EV.jpeg','percobaan','9-17-2022',6,0),(14,'http://localhost:2000/post_images/POST_0oudZlBrblYOsNn_mreH4.jpeg','bermekaran','9-21-2022',1,1),(16,'http://localhost:2000/post_images/POST_06ce9nEoV7n0kImOt_w0G.jpeg','akun 3','9-21-2022',7,1),(18,'http://localhost:2000/post_images/POST_StCoXtqy_daArQe-MeBDL.jpeg','padang pasir','9-21-2022',9,1),(19,'http://localhost:2000/post_images/POST_GsaB8uvZf9zC7a7wQYzxb.jpeg','bola dunia','9-21-2022',18,0),(20,'http://localhost:2000/post_images/POST_9oh358I2uFQKSTfrfmfPK.jpeg','senja','9-21-2022',1,1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(255) NOT NULL,
  `fotoProfile` text,
  `bio` text,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Muhammd Rofi','Rocky','','c411b8e5c1111083b7ef165af1e0a21632404ad8','admin','http://localhost:2000/profile_images/POST_3HZQvs9AovG2x7j17iSkU.jpeg','usaha','verified'),(5,'Bimo pp','Bimo','','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','','','unverified'),(6,'jean 2','jean 2','','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','http://localhost:2000/profile_images/POST_kuhEz6BnmfmpSonl0nGSr.jpeg','perubahan','verified'),(7,'rey','rey','rey@mail.com','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','http://localhost:2000/profile_images/POST_no3x9HTS05v-qBiNrcLus.jpeg','percobaan','verified'),(8,'ilyas','ilyas','','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','','','verified'),(9,'theo','theo','','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','','','verified'),(10,'theo','theo','','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','','','verified'),(11,'jordan','jordan','','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','','','verified'),(12,'titisan','titisan','','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','','','verified'),(14,'imam','imam','','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','','','verified'),(15,'last','last','','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','','','unverified'),(18,'Rofi','Rofi','rofimuhamad0381@gmail.com','c411b8e5c1111083b7ef165af1e0a21632404ad8','user','http://localhost:2000/profile_images/POST_1Td5bzm02V_v3sARbDOXO.jpeg','bismillah','verified');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-22 14:24:11
