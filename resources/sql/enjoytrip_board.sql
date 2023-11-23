-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: enjoytrip
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `article_no` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(16) DEFAULT NULL,
  `destination_id` int DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `hit` int NOT NULL DEFAULT '0',
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`article_no`),
  KEY `user_id` (`user_id`),
  KEY `destination_id` (`destination_id`),
  CONSTRAINT `board_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `member` (`user_id`),
  CONSTRAINT `board_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `attraction_info` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (24,'ssafy',125405,'김싸피','토함산에서 토함 ㅜㅜ ','<p><br></p><p><br></p><p class=\"ql-align-center\">웨에엑</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/t8JwSRQ/tohamsan.png\"></p><p><br></p><p class=\"ql-align-center\">구웨에엑</p>',0,0,'2023-11-23 06:46:25'),(25,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #1','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:00'),(26,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #2','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:04'),(27,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #3','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:11'),(28,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #4','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:15'),(29,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #5','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:18'),(30,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #6','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,1,'2023-11-23 07:05:23'),(31,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #7','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:24'),(32,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #8','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:26'),(33,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #9','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:27'),(34,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #10','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:29'),(35,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #11','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:31'),(36,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #12','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:33'),(37,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #13','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:35'),(38,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #14','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:37'),(39,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #15','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:38'),(40,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #16','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:39'),(41,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #17','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:40'),(42,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #18','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:42'),(43,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #19','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:46'),(44,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #20','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:48'),(45,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #21','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:50'),(46,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #22','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:53'),(47,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #23','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:54'),(48,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #24','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:56'),(49,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #25','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:57'),(50,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #26','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:05:58'),(51,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #27','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',1,1,'2023-11-23 07:05:59'),(52,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #28','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:06:02'),(53,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #29','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,1,'2023-11-23 07:06:04'),(54,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #30','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,1,'2023-11-23 07:06:05'),(55,'ssafy',130746,'김싸피','김싸피의 전국 견문록 #31','<p class=\"ql-align-center\">안녕하세요. 오늘도 <strong>김싸피 </strong>입니다.</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/Df50Kf3/ssafy-logo.png\"></p><p><br></p><p class=\"ql-align-center\">오늘은 그 유명하고 유명하던 그 <strong>장소</strong>에 와보았는데요~~</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">여기로 오시는 방법을 알려드리겠습니다 ~~! </p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"https://i.ibb.co/YdQFMSH/hehe.png\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">이상 여기로 오는 방법을 알려드렸습니다 ^^</p><p class=\"ql-align-center\">좋은 하루 되세요 ~~~!</p>',0,0,'2023-11-23 07:06:27'),(56,'ssafy',125406,'김싸피','비슬산 자연 휴양림 ^^','<p>대박! 공기 좋아요</p>',0,0,'2023-11-23 07:25:04');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23 18:03:50