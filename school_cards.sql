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
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `transcription` varchar(70) NOT NULL,
  `translation` varchar(45) NOT NULL,
  `theme` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (7,'Passion fruit','[пэшн фрут]','Маракуйя','food'),(8,'Carrot','[кэрот]','Курака','food'),(9,'Strawberry','[строубэри]','Клубника','food'),(10,'Mother','[мавер]','Мама','family'),(11,'Judge','[джадж]','Судья','professions'),(12,'Cucumber','[кукмбер]','Огурец','food'),(13,'Tomato','[томато]','Помидор','food'),(14,'Date','[дэйт]','Финик','food'),(15,'Guava','[гуава]','Гуава','food'),(16,'Coconut','[коконат]','Кокос','food'),(17,'Lemon','[лэмон]','Лимон','food'),(18,'Apple','[эпл]','Яблоко','food'),(19,'Banana','[банана]','Банан','food'),(20,'Potato','[потэйто]','Картофель','food'),(21,'Father','[фавэр]','Папа','family'),(22,'Parents','[пэрэнтс]','Родители','family'),(23,'Wife','[вайф]','Жена','family'),(24,'Husband','[хасбэнд]','Муж','family'),(25,'Son','[сан]','Сын','family'),(26,'Daughter','[дотэр]','Дочь','family'),(27,'Children','[чилдрэн]','Дети','family'),(28,'Brother','[бравэр]','Брат','family'),(29,'Sister','[систэр]','Сестра','family'),(30,'Siblings','[сиблингс]','Родные братья или/и сестры','family'),(31,'Cousins','[кузинс]','Двоюродные братья или сестры','family'),(33,'Driver','[драйвер]','Водитель','professions'),(34,'Doctor','[доктор]','Врач','professions'),(35,'Engineer','[инджинер]','Инженер','professions'),(36,'Fireman','[файрмэн]','Пожарный','professions'),(37,'Hairdresser','[хэирдресер]','Парикмахер','professions'),(38,'Nurse','[нёрс]','Медсестра','professions'),(39,'Plumber','[пламбер]','Сантехник','professions'),(40,'Teacher','[тичер]','Учитель','professions'),(41,'Translator','[транслейтер]','Переводчик','professions'),(42,'Builder','[билдэр]','Строитель','professions'),(43,'Designer','[дэзайнэр]','Дизайнер','professions');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
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
