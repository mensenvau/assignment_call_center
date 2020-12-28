-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: call_center
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ques` char(200) DEFAULT NULL,
  `ans` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Dasturlash qanday o\'rgansa bo\'ladi','Bir necha yillar bo\'ldi dasturlash olamiga kirib keldim. Hozir Freelancerman/ Yo\'llanib ishlovchi(masofadan).\n\nFreelancer bo\'lib ishlash yaxshi, stressni inobatga olmaganda. Belgilangan vaqtda ulgura olmasangiz, bu sizning reputatsiya/obro\'yingiz tushishiga sabab bo\'ladi.\n\nDasturlashni o\'rganish oson emas, ammo dasturlashni o\'rgansa bo\'ladi.\n\nKo\'pgina kurslar, online kurslar, butkemplar, balkim universitetlar ham talabalariga to\'g\'ri yo\'l ko\'rsatishda, fikrimcha ko\'p xatoliklarga yo\'l qo\'yishadi.\n\nBoshlang\'ich dasturchilar uchun, boshlang\'ich/basic bilimlar juda muhim, va frameworklar, kutubxonalarning imkoniyatlarini tushunish ham juda muhimdir.\n\nEndi boshlayotgan dasturchi uchum cloudlar bilan ishlash, yoki desing patternlarni tushunish muhum emas. Masalan, OOPni bir haftada tushunib, undan foydalanishni ustasi bo\'lishni iloji yo\'q deb hisoblayman.\n\nKeling buni bir misolda ko\'rsak.'),(2,'C++ dasturlash tili haqida','Bu maqolamda hozirgi zamonda eng rivojlangan dasturlash tillaridan biri bo\'lgan C++ dasturlash tili haqida yozmoqchiman. Bu til tarixi va kelib chiqishi haqida qisqacha yozib, keyingi maqolalarda bu tilda dasturlar tuzishni asta sekinlik bilan o\'rgatib o\'taman.\n\nDastlab UNIX operatsion tizimi va С dasturlash tili yaratilgan va С tili asosida C++ tili yaratildi. С esa o\'z navbatida B va BCPL tillaridan kelib chiqgan.\n\nC++ tilini 80 yillarda AT&T Bell Labs korxonasi ishchisi Byarnom Straustrup tuzgan. Avtorning aytishicha, bu tilni tuzishda u hech qanday qog\'ozlarni qoralamagan va hamma ishni yo\'l yo\'lakay, ketma-ketlikda tuzib chiqqan. Uning asosiy maqsadi, o\'zi va do\'stlari uchun qulay dasturlash tili yaratishdan iborat edi. C++ dasturlash tilining asosi C hisoblanadi va shu tilni(C) misolida C++ tilini tuzib chiqdi. C dasturlash tilini mukammalashtirgan eng asosiy narsa bu – ob\'yektga mo\'ljallangan dasturlashni olib kirgani hisoblanadi. Chunki dasturlashda, tez, qulay , tartibli va ixcham yozish uchun ob\'yektga mo\'ljallangan dasturlash tillaridan foydalanish lozim bo\'ladi. Dastlabki C++ dasturlash tilidan foydalanganlar, bu albatta Bell Labs korxonasi hodimlari hisoblanadi.'),(3,NULL,'');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-28 15:46:53
