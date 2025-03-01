-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: school
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
-- Table structure for table `kcards`
--

DROP TABLE IF EXISTS `kcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kcards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL,
  `transcription` varchar(255) DEFAULT NULL,
  `translation` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kcards`
--

LOCK TABLES `kcards` WRITE;
/*!40000 ALTER TABLE `kcards` DISABLE KEYS */;
INSERT INTO `kcards` VALUES (1,'의사','[уиса]','Врач','professions'),(2,'딸기','[тальги]','Клубника','food'),(3,'어머니','[омони]','Мама','family'),(4,'운전사','[уджонса]','Водитель','professions'),(5,'운전사','[инженьо]','Инженер','professions'),(6,'소방관','[собангван]','Пожарный','professions'),(7,'이발사','[ибальса]','Парикмахер','professions'),(8,'판사','[панса]','Судья','professions'),(9,'간호사','[ганоса]','Медсестра','professions'),(10,'배관공','[бэгванго]','Сантехник','professions'),(11,'선생님','[сонсэнним]','Учитель','professions'),(12,'역자','[йогджа]','Переводчик','professions'),(13,'건축업자','[хончеобджа]','Строитель','professions'),(14,'디자이너','[дизайно]','Дизайнер','professions'),(15,'오이','[ои]','Огурец','food'),(16,'토마토','[томато]','Помидор','food'),(17,'날짜','[нальджа]','Финик','food'),(18,'열정 과일','[йольджон гваиль]','Маракуйя','food'),(19,'구아바','[гуава]','Гуава','food'),(20,'코코넛','[кокона]','Кокос','food'),(21,'레몬','[лэмон]','Лимон','food'),(22,'사과','[сагуа]','Яблоко','food'),(23,'바나나','[банана]','Банан','food'),(24,'당근','[дангын]','Морковь','food'),(25,'감자','[гамджа]','Картофель','food'),(26,'아빠','[аппа]','Папа','family'),(27,'부모','[пумо]','Родители','family'),(28,'부인','[пуин]','Жена','family'),(29,'남편','[нампён]','Муж','family'),(30,'아들','[адыль]','Сын','family'),(31,'딸','[таль]','Дочь','family'),(32,'어린이들','[оринидель]','Дети','family'),(33,'형제','[хёнджэ]','Брат','family'),(34,'자매','[джамэ]','Сестра','family'),(35,'형제','[хёнджэ]','родные братья или/и сестры','family'),(36,'사촌','[сачон]','двоюродные братья или сестры','family');
/*!40000 ALTER TABLE `kcards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-28 21:59:45
