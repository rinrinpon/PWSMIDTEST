# Host: localhost  (Version: 5.5.5-10.1.16-MariaDB)
# Date: 2018-05-18 18:46:48
# Generator: MySQL-Front 5.2  (Build 5.66)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

DROP DATABASE IF EXISTS `db_bookpws`;
CREATE DATABASE `db_bookpws` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_bookpws`;

#
# Source for table "books"
#

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titlebook` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isbnbook` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rated` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `publisher` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_categories` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "books"
#

INSERT INTO `books` VALUES (1,'5 cm per seconds','12345','90','joko','gramedia',1,'2018-05-18 17:15:10','2018-05-18 17:16:56','0000-00-00 00:00:00'),(2,'solanin','998954','85','makoto shinkai','m and c',2,'2018-05-18 17:18:46','2018-05-18 17:19:55','0000-00-00 00:00:00'),(4,'howl moving castle','346346','98','saki suzuki','komikid',3,'2018-05-18 17:24:46','2018-05-18 18:35:50','0000-00-00 00:00:00'),(6,'sherlock holmes','63463','77','anwar','kompas',5,'2018-05-18 18:45:08','2018-05-18 18:45:08','0000-00-00 00:00:00');

#
# Source for table "categories"
#

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "categories"
#

INSERT INTO `categories` VALUES (1,'cerpen','2018-05-18 16:20:18','2018-05-18 16:24:33','0000-00-00 00:00:00'),(2,'novel','2018-05-18 16:21:04','2018-05-18 16:21:04','0000-00-00 00:00:00'),(4,'majalah','2018-05-18 16:24:53','2018-05-18 16:44:47','0000-00-00 00:00:00'),(5,'comic','2018-05-18 16:45:12','2018-05-18 16:45:12','0000-00-00 00:00:00');

#
# Source for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES ('2018_05_17_100611_create_categories_table',1),('2018_05_18_085132_create_books_table',2);

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
