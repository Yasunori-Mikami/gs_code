# ************************************************************
# Sequel Pro SQL dump
# バージョン 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: 127.0.0.1 (MySQL 5.7.23)
# データベース: wafoo_db
# 作成時刻: 2018-10-04 13:07:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ wafoo_host_table
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wafoo_host_table`;

CREATE TABLE `wafoo_host_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sei` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mei` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mail` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sex` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `age` int(10) NOT NULL,
  `cookEx` text COLLATE utf8_unicode_ci,
  `cookGood` text COLLATE utf8_unicode_ci,
  `language` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `english` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `station` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `homeLesson` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `guestNum` int(10) DEFAULT NULL,
  `confDate` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `indate` datetime NOT NULL,
  `hostPreview` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `wafoo_host_table` WRITE;
/*!40000 ALTER TABLE `wafoo_host_table` DISABLE KEYS */;

INSERT INTO `wafoo_host_table` (`id`, `sei`, `mei`, `mail`, `sex`, `age`, `cookEx`, `cookGood`, `language`, `english`, `station`, `homeLesson`, `guestNum`, `confDate`, `indate`, `hostPreview`)
VALUES
	(1,'YAMADAAA','TAKAYUKI','mikami@schoolwith.me','男性',29,'特になし','できない','English','可能','HARAGYUKU','可能',0,'0','2018-09-25 20:33:39',NULL),
	(2,'TANAKA','MOMOJIRO','mikami@schoolwith.me','男性',22222,'','','','可能','','可能',0,'0','2018-09-25 20:33:59',NULL),
	(3,'三上泰徳','','mikami@schoolwith.me','男性',22222,'','','','','','',0,'0','2018-09-25 20:34:23',NULL),
	(6,'22','','22','22',22,'2','','','','','',0,'0','2018-09-25 20:38:07',NULL),
	(7,'22','','22','22',22,'2','','','','','',0,'0','2018-09-25 20:45:05',NULL),
	(8,'三上泰徳','','mikami@schoolwith.me','男性',22,'aaa','っっｊ','','','','',0,'0','2018-09-25 20:50:14',NULL),
	(9,'あああ','','あああ','ああ',22,'ああ','ああ','ああ','','','',0,'','2018-09-25 21:13:07',NULL),
	(10,'三上泰徳','','mikami@schoolwith.me','男性',22,'っｓ','っｓ','っｓ','','','',0,'','2018-09-25 21:15:21',NULL),
	(11,'三上泰徳','','mikami@schoolwith.me','男性',22,'','','aa','','','',0,'','2018-09-25 21:16:42',NULL),
	(12,'三上泰徳','','mikami@schoolwith.me','男性',22,'っｓ','っっｓ','ｓ','','','',NULL,'','2018-09-25 21:18:46',NULL),
	(13,'三上泰徳','','hapihapihappylife021@gmail.com','男性',22,'','','aa','a','s','s',22,'s','2018-09-25 21:32:03',NULL),
	(14,'aaa','','mikami@schoolwith.me','男性',22,'特になし','aa','aa','aa','aa','aa',2,'月曜！','2018-09-25 22:14:43',NULL),
	(15,'三上泰徳','','mikami@schoolwith.me','ああ',1,'あああ','ああ','ああ','ああ','ああ','ああ',22,'ff','2018-09-25 22:16:55',NULL),
	(16,'三上','','mikami@schoolwith.me','ｗｗ',2,'rr','rr','rr','f','f','f',22,'f','2018-09-25 22:22:26',NULL),
	(17,'三上','泰徳','mikami@schoolwith.me','aaa',1,'22','2','2','2','2','2',2,'2','2018-09-25 22:25:28',NULL),
	(18,'三上','泰徳','mikami@schoolwith.me','2',2,'aa','aa','aa','aa','aa','aa',1,'a','2018-09-26 20:59:22',NULL),
	(19,'三上','泰徳','mikami@schoolwith.me','男性',22,'aa','','aa','dd','ff','dd',2,'s','2018-09-27 20:49:57',NULL),
	(20,'三上','泰徳','unnkokokoo','2',666666,'','','d','d','d','d',2,'2','2018-09-27 20:50:45',NULL),
	(21,'三上','泰徳','mikami@schoolwith.me','男性',22,'s','s','s','uuuuuno','原当麻','可能',2,'ee','2018-09-27 20:57:47',NULL),
	(22,'三上','泰徳','mikami@schoolwith.me','どちらでもない',33,'写真','2枚くえｒ','英語','可能','恵比寿','可能',2,'aa','2018-09-27 21:01:23',NULL),
	(23,'三上','泰徳','mikami@schoolwith.me','男性',1,'aaa','aa','sss','可能','dd','可能',2,'gg','2018-09-27 21:17:59',NULL),
	(24,'三上','泰徳','aaaaaaaa@gmail.com','男性',29,'特になし','たこ焼き','英語','可能','新宿','可能',2,'222','2018-09-27 21:53:20',NULL),
	(25,'三上','泰徳','mikami@schoolwith.me','女性',90,'a','a','a','不可能','','不可能',2,'a','2018-09-27 22:28:20',NULL),
	(26,'yamada','Rintarou','mikami@schoolwith.me','男性',23,'aaa','aaaa','bolibia','不可能','a','可能',22222222,'日曜日：19:30-','2018-09-27 22:47:17',NULL),
	(27,'三上','泰徳','','男性',2,'','','日本','可能','a','可能',2,'あああ','2018-09-27 22:50:06',NULL),
	(28,'三上','泰徳','mikami@schoolwith.me','男性',22,'','','英語','可能','恵比寿','不可能',2,'','2018-09-29 14:03:50',NULL),
	(29,'三上','泰徳','mikami@schoolwith.me','男性',22,'aa','a','ff','可能','ee','可能',2,'33','2018-09-29 15:09:18',NULL),
	(30,'三上','泰徳','mikami@schoolwith.me','男性',33,'33','333','33','可能','33','可能',22,'33','2018-09-29 18:50:07',NULL),
	(31,'三上','泰徳','mikami@schoolwith.me','男性',22,'kkk','','','不可能','','不可能',22,'','2018-09-29 18:52:09',NULL),
	(35,'三上','泰徳','mikami@schoolwith.me','男性',2,'aa','aa','日本','可能','ss','不可能',22,'aa','2018-10-01 20:37:44',NULL),
	(36,'三上','泰徳','mikami@schoolwith.me','男性',2,'a','a','d','可能','d','可能',2,'d','2018-10-01 20:39:38',NULL),
	(37,'2','2','2','女性',2,'2','2','2','不可能','2','可能',2,'2','2018-10-01 20:41:37',NULL),
	(38,'a','a','a','どちらでもない',2,'a','a','a','不可能','a','可能',2,'a','2018-10-01 20:43:47',NULL),
	(39,'a','a','a','どちらでもない',22222,'a','a','a','不可能','a','不可能',2,'a','2018-10-01 20:46:49',NULL),
	(40,'三上','泰徳','mikami@schoolwith.me','男性',2,'s','s','s','不可能','s','不可能',22,'ss','2018-10-01 20:49:13',NULL),
	(41,'a','a','d','男性',22,'s','s','sss','可能','s','可能',2,'d','2018-10-01 20:59:04',NULL);

/*!40000 ALTER TABLE `wafoo_host_table` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
