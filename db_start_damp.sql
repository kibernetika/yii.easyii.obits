-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.31 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных yii_easy_obits
DROP DATABASE IF EXISTS `yii_easy_obits`;
CREATE DATABASE IF NOT EXISTS `yii_easy_obits` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `yii_easy_obits`;


-- Дамп структуры для таблица yii_easy_obits.easyii_admins
DROP TABLE IF EXISTS `easyii_admins`;
CREATE TABLE IF NOT EXISTS `easyii_admins` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `auth_key` varchar(128) NOT NULL,
  `access_token` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `access_token` (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_admins: 0 rows
/*!40000 ALTER TABLE `easyii_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_admins` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_article_categories
DROP TABLE IF EXISTS `easyii_article_categories`;
CREATE TABLE IF NOT EXISTS `easyii_article_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_article_categories: 1 rows
/*!40000 ALTER TABLE `easyii_article_categories` DISABLE KEYS */;
INSERT INTO `easyii_article_categories` (`category_id`, `title`, `image`, `order_num`, `slug`, `tree`, `lft`, `rgt`, `depth`, `status`) VALUES
	(1, 'Articles category 1', NULL, 2, 'articles-category-1', 1, 1, 2, 0, 1);
/*!40000 ALTER TABLE `easyii_article_categories` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_article_items
DROP TABLE IF EXISTS `easyii_article_items`;
CREATE TABLE IF NOT EXISTS `easyii_article_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_article_items: 3 rows
/*!40000 ALTER TABLE `easyii_article_items` DISABLE KEYS */;
INSERT INTO `easyii_article_items` (`item_id`, `category_id`, `title`, `image`, `short`, `text`, `slug`, `time`, `views`, `status`) VALUES
	(1, 1, 'First article title', '/uploads/article/article-1.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', '<p><strong>Sed ut perspiciatis</strong>, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem.&nbsp;</p><ul><li>item 1</li><li>item 2</li><li>item 3</li></ul><p>ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur?</p>', 'first-article-title', 1484748169, 1, 1),
	(2, 1, 'Second article title', '/uploads/article/article-2.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><ol> <li>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </li><li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</li></ol>', 'second-article-title', 1484661769, 0, 1),
	(3, 1, 'Third article title', '/uploads/article/article-3.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 'third-article-title', 1484575369, 0, 1);
/*!40000 ALTER TABLE `easyii_article_items` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_carousel
DROP TABLE IF EXISTS `easyii_carousel`;
CREATE TABLE IF NOT EXISTS `easyii_carousel` (
  `carousel_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(128) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`carousel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_carousel: 3 rows
/*!40000 ALTER TABLE `easyii_carousel` DISABLE KEYS */;
INSERT INTO `easyii_carousel` (`carousel_id`, `image`, `link`, `title`, `text`, `order_num`, `status`) VALUES
	(1, '/uploads/carousel/1.jpg', '', 'Lorem Ipsum has been', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 2, 1),
	(4, '/uploads/carousel/car-2-891c97c0ef.jpg', '', 'Lorem Ipsum has been', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 3, 1),
	(5, '/uploads/carousel/bg-adb1341c69.png', '', '', '', 4, 1);
/*!40000 ALTER TABLE `easyii_carousel` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_catalog_categories
DROP TABLE IF EXISTS `easyii_catalog_categories`;
CREATE TABLE IF NOT EXISTS `easyii_catalog_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `fields` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_catalog_categories: 3 rows
/*!40000 ALTER TABLE `easyii_catalog_categories` DISABLE KEYS */;
INSERT INTO `easyii_catalog_categories` (`category_id`, `title`, `image`, `fields`, `slug`, `tree`, `lft`, `rgt`, `depth`, `order_num`, `status`) VALUES
	(1, 'Gadgets', NULL, '[{"name":"brand","title":"Brand","type":"select","options":["Samsung","Apple","Nokia"]},{"name":"storage","title":"Storage","type":"string","options":""},{"name":"touchscreen","title":"Touchscreen","type":"boolean","options":""},{"name":"cpu","title":"CPU cores","type":"select","options":["1","2","4","8"]},{"name":"features","title":"Features","type":"checkbox","options":["Wi-fi","4G","GPS"]},{"name":"color","title":"Color","type":"checkbox","options":["White","Black","Red","Blue"]}]', 'gadgets', 1, 1, 6, 0, NULL, 1),
	(2, 'Smartphones', NULL, '[{"name":"brand","title":"Brand","type":"select","options":["Samsung","Apple","Nokia"]},{"name":"storage","title":"Storage","type":"string","options":""},{"name":"touchscreen","title":"Touchscreen","type":"boolean","options":""},{"name":"cpu","title":"CPU cores","type":"select","options":["1","2","4","8"]},{"name":"features","title":"Features","type":"checkbox","options":["Wi-fi","4G","GPS"]},{"name":"color","title":"Color","type":"checkbox","options":["White","Black","Red","Blue"]}]', 'smartphones', 1, 2, 3, 1, NULL, 1),
	(3, 'Tablets', NULL, '[{"name":"brand","title":"Brand","type":"select","options":["Samsung","Apple","Nokia"]},{"name":"storage","title":"Storage","type":"string","options":""},{"name":"touchscreen","title":"Touchscreen","type":"boolean","options":""},{"name":"cpu","title":"CPU cores","type":"select","options":["1","2","4","8"]},{"name":"features","title":"Features","type":"checkbox","options":["Wi-fi","4G","GPS"]},{"name":"color","title":"Color","type":"checkbox","options":["White","Black","Red","Blue"]}]', 'tablets', 1, 4, 5, 1, NULL, 1);
/*!40000 ALTER TABLE `easyii_catalog_categories` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_catalog_items
DROP TABLE IF EXISTS `easyii_catalog_items`;
CREATE TABLE IF NOT EXISTS `easyii_catalog_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `available` int(11) DEFAULT '1',
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `data` text NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_catalog_items: 3 rows
/*!40000 ALTER TABLE `easyii_catalog_items` DISABLE KEYS */;
INSERT INTO `easyii_catalog_items` (`item_id`, `category_id`, `title`, `description`, `available`, `price`, `discount`, `data`, `image`, `slug`, `time`, `status`) VALUES
	(1, 2, 'Nokia 3310', '<h3>The legend</h3><p>The Nokia 3310 is a GSMmobile phone announced on September 1, 2000, and released in the fourth quarter of the year, replacing the popular Nokia 3210. The phone sold extremely well, being one of the most successful phones with 126 million units sold worldwide.&nbsp;The phone has since received a cult status and is still widely acclaimed today.</p><p>The 3310 was developed at the Copenhagen Nokia site in Denmark. It is a compact and sturdy phone featuring an 84 × 48 pixel pure monochrome display. It has a lighter 115 g battery variant which has fewer features; for example the 133 g battery version has the start-up image of two hands touching while the 115 g version does not. It is a slightly rounded rectangular unit that is typically held in the palm of a hand, with the buttons operated with the thumb. The blue button is the main button for selecting options, with "C" button as a "back" or "undo" button. Up and down buttons are used for navigation purposes. The on/off/profile button is a stiff black button located on the top of the phone.</p>', 5, 100, 0, '{"brand":"Nokia","storage":"1","touchscreen":"0","cpu":"1","color":["White","Red","Blue"]}', '/uploads/catalog/3310.jpg', 'nokia-3310', 1484748169, 1),
	(2, 2, 'Galaxy S6', '<h3>Next is beautifully crafted</h3><p>With their slim, seamless, full metal and glass construction, the sleek, ultra thin edged Galaxy S6 and unique, dual curved Galaxy S6 edge are crafted from the finest materials.</p><p>And while they may be the thinnest smartphones we`ve ever created, when it comes to cutting-edge technology and flagship Galaxy experience, these 5.1" QHD Super AMOLED smartphones are certainly no lightweights.</p>', 1, 1000, 10, '{"brand":"Samsung","storage":"32","touchscreen":"1","cpu":8,"features":["Wi-fi","GPS"]}', '/uploads/catalog/galaxy.jpg', 'galaxy-s6', 1484661769, 1),
	(3, 2, 'Iphone 6', '<h3>Next is beautifully crafted</h3><p>With their slim, seamless, full metal and glass construction, the sleek, ultra thin edged Galaxy S6 and unique, dual curved Galaxy S6 edge are crafted from the finest materials.</p><p>And while they may be the thinnest smartphones we`ve ever created, when it comes to cutting-edge technology and flagship Galaxy experience, these 5.1" QHD Super AMOLED smartphones are certainly no lightweights.</p>', 0, 1100, 10, '{"brand":"Apple","storage":"64","touchscreen":"1","cpu":4,"features":["Wi-fi","4G","GPS"]}', '/uploads/catalog/iphone.jpg', 'iphone-6', 1484575369, 1);
/*!40000 ALTER TABLE `easyii_catalog_items` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_catalog_item_data
DROP TABLE IF EXISTS `easyii_catalog_item_data`;
CREATE TABLE IF NOT EXISTS `easyii_catalog_item_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`data_id`),
  KEY `item_id_name` (`item_id`,`name`),
  KEY `value` (`value`(300))
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_catalog_item_data: 20 rows
/*!40000 ALTER TABLE `easyii_catalog_item_data` DISABLE KEYS */;
INSERT INTO `easyii_catalog_item_data` (`data_id`, `item_id`, `name`, `value`) VALUES
	(25, 1, 'color', 'White'),
	(24, 1, 'cpu', '1'),
	(23, 1, 'touchscreen', '0'),
	(22, 1, 'storage', '1'),
	(21, 1, 'brand', 'Nokia'),
	(8, 2, 'brand', 'Samsung'),
	(9, 2, 'storage', '32'),
	(10, 2, 'touchscreen', '1'),
	(11, 2, 'cpu', '8'),
	(12, 2, 'features', 'Wi-fi'),
	(13, 2, 'features', 'GPS'),
	(14, 3, 'brand', 'Apple'),
	(15, 3, 'storage', '64'),
	(16, 3, 'touchscreen', '1'),
	(17, 3, 'cpu', '4'),
	(18, 3, 'features', 'Wi-fi'),
	(19, 3, 'features', '4G'),
	(20, 3, 'features', 'GPS'),
	(26, 1, 'color', 'Red'),
	(27, 1, 'color', 'Blue');
/*!40000 ALTER TABLE `easyii_catalog_item_data` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_faq
DROP TABLE IF EXISTS `easyii_faq`;
CREATE TABLE IF NOT EXISTS `easyii_faq` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`faq_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_faq: 3 rows
/*!40000 ALTER TABLE `easyii_faq` DISABLE KEYS */;
INSERT INTO `easyii_faq` (`faq_id`, `question`, `answer`, `order_num`, `status`) VALUES
	(1, 'Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it?', 'But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure', 1, 1),
	(2, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum?', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta <a href="http://easyiicms.com/">sunt explicabo</a>.', 2, 1),
	(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 't enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 3, 1);
/*!40000 ALTER TABLE `easyii_faq` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_feedback
DROP TABLE IF EXISTS `easyii_feedback`;
CREATE TABLE IF NOT EXISTS `easyii_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer_subject` varchar(128) DEFAULT NULL,
  `answer_text` text,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_feedback: 0 rows
/*!40000 ALTER TABLE `easyii_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_feedback` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_files
DROP TABLE IF EXISTS `easyii_files`;
CREATE TABLE IF NOT EXISTS `easyii_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `file` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `downloads` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_files: 0 rows
/*!40000 ALTER TABLE `easyii_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_files` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_gallery_categories
DROP TABLE IF EXISTS `easyii_gallery_categories`;
CREATE TABLE IF NOT EXISTS `easyii_gallery_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_gallery_categories: 2 rows
/*!40000 ALTER TABLE `easyii_gallery_categories` DISABLE KEYS */;
INSERT INTO `easyii_gallery_categories` (`category_id`, `title`, `image`, `slug`, `tree`, `lft`, `rgt`, `depth`, `order_num`, `status`) VALUES
	(1, 'Album 1', '/uploads/gallery/album-1.jpg', 'album-1', 1, 1, 2, 0, 2, 1),
	(2, 'Album 2', '/uploads/gallery/album-2.jpg', 'album-2', 2, 1, 2, 0, 1, 1);
/*!40000 ALTER TABLE `easyii_gallery_categories` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_guestbook
DROP TABLE IF EXISTS `easyii_guestbook`;
CREATE TABLE IF NOT EXISTS `easyii_guestbook` (
  `guestbook_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer` text,
  `email` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) NOT NULL,
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`guestbook_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_guestbook: 3 rows
/*!40000 ALTER TABLE `easyii_guestbook` DISABLE KEYS */;
INSERT INTO `easyii_guestbook` (`guestbook_id`, `name`, `title`, `text`, `answer`, `email`, `time`, `ip`, `new`, `status`) VALUES
	(1, 'First user', '', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, 1484748169, '127.0.0.1', 1, 1),
	(2, 'Second user', '', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', NULL, 1484748169, '127.0.0.1', 0, 1),
	(3, 'Third user', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL, NULL, 1484748169, '127.0.0.1', 1, 1);
/*!40000 ALTER TABLE `easyii_guestbook` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_loginform
DROP TABLE IF EXISTS `easyii_loginform`;
CREATE TABLE IF NOT EXISTS `easyii_loginform` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `user_agent` varchar(1024) NOT NULL,
  `time` int(11) DEFAULT '0',
  `success` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_loginform: 1 rows
/*!40000 ALTER TABLE `easyii_loginform` DISABLE KEYS */;
INSERT INTO `easyii_loginform` (`log_id`, `username`, `password`, `ip`, `user_agent`, `time`, `success`) VALUES
	(1, 'root', '******', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 1484748167, 1);
/*!40000 ALTER TABLE `easyii_loginform` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_migration
DROP TABLE IF EXISTS `easyii_migration`;
CREATE TABLE IF NOT EXISTS `easyii_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_migration: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `easyii_migration` DISABLE KEYS */;
INSERT INTO `easyii_migration` (`version`, `apply_time`) VALUES
	('m000000_000000_base', 1484748163),
	('m000000_000000_install', 1484748166);
/*!40000 ALTER TABLE `easyii_migration` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_modules
DROP TABLE IF EXISTS `easyii_modules`;
CREATE TABLE IF NOT EXISTS `easyii_modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `class` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `settings` text NOT NULL,
  `notice` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_modules: 13 rows
/*!40000 ALTER TABLE `easyii_modules` DISABLE KEYS */;
INSERT INTO `easyii_modules` (`module_id`, `name`, `class`, `title`, `icon`, `settings`, `notice`, `order_num`, `status`) VALUES
	(1, 'article', 'yii\\easyii\\modules\\article\\ArticleModule', 'Articles', 'pencil', '{"categoryThumb":true,"articleThumb":true,"enablePhotos":true,"enableShort":true,"shortMaxLength":255,"enableTags":true,"itemsInFolder":false}', 0, 65, 1),
	(2, 'carousel', 'yii\\easyii\\modules\\carousel\\CarouselModule', 'Carousel', 'picture', '{"enableTitle":true,"enableText":true}', 0, 40, 1),
	(3, 'catalog', 'yii\\easyii\\modules\\catalog\\CatalogModule', 'Catalog', 'list-alt', '{"categoryThumb":true,"itemsInFolder":false,"itemThumb":true,"itemPhotos":true,"itemDescription":true,"itemSale":true}', 0, 100, 1),
	(4, 'faq', 'yii\\easyii\\modules\\faq\\FaqModule', 'FAQ', 'question-sign', '[]', 0, 45, 1),
	(5, 'feedback', 'yii\\easyii\\modules\\feedback\\FeedbackModule', 'Feedback', 'earphone', '{"mailAdminOnNewFeedback":true,"subjectOnNewFeedback":"New feedback","templateOnNewFeedback":"@easyii\\/modules\\/feedback\\/mail\\/en\\/new_feedback","answerTemplate":"@easyii\\/modules\\/feedback\\/mail\\/en\\/answer","answerSubject":"Answer on your feedback message","answerHeader":"Hello,","answerFooter":"Best regards.","enableTitle":false,"enablePhone":true,"enableCaptcha":false}', 0, 60, 1),
	(6, 'file', 'yii\\easyii\\modules\\file\\FileModule', 'Files', 'floppy-disk', '[]', 0, 30, 1),
	(7, 'gallery', 'yii\\easyii\\modules\\gallery\\GalleryModule', 'Photo Gallery', 'camera', '{"categoryThumb":true,"itemsInFolder":false}', 0, 90, 0),
	(8, 'guestbook', 'yii\\easyii\\modules\\guestbook\\GuestbookModule', 'Guestbook', 'book', '{"enableTitle":false,"enableEmail":true,"preModerate":false,"enableCaptcha":false,"mailAdminOnNewPost":true,"subjectOnNewPost":"New message in the guestbook.","templateOnNewPost":"@easyii\\/modules\\/guestbook\\/mail\\/en\\/new_post","frontendGuestbookRoute":"\\/guestbook","subjectNotifyUser":"Your post in the guestbook answered","templateNotifyUser":"@easyii\\/modules\\/guestbook\\/mail\\/en\\/notify_user"}', 2, 80, 0),
	(9, 'news', 'yii\\easyii\\modules\\news\\NewsModule', 'News', 'bullhorn', '{"enableThumb":true,"enablePhotos":true,"enableShort":true,"shortMaxLength":256,"enableTags":true}', 0, 70, 0),
	(10, 'page', 'yii\\easyii\\modules\\page\\PageModule', 'Pages', 'file', '[]', 0, 50, 1),
	(11, 'shopcart', 'yii\\easyii\\modules\\shopcart\\ShopcartModule', 'Orders', 'shopping-cart', '{"mailAdminOnNewOrder":true,"subjectOnNewOrder":"New order","templateOnNewOrder":"@easyii\\/modules\\/shopcart\\/mail\\/en\\/new_order","subjectNotifyUser":"Your order status changed","templateNotifyUser":"@easyii\\/modules\\/shopcart\\/mail\\/en\\/notify_user","frontendShopcartRoute":"\\/shopcart\\/order","enablePhone":true,"enableEmail":true}', 1, 120, 1),
	(12, 'subscribe', 'yii\\easyii\\modules\\subscribe\\SubscribeModule', 'E-mail subscribe', 'envelope', '[]', 0, 10, 1),
	(13, 'text', 'yii\\easyii\\modules\\text\\TextModule', 'Text blocks', 'font', '[]', 0, 20, 1);
/*!40000 ALTER TABLE `easyii_modules` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_news
DROP TABLE IF EXISTS `easyii_news`;
CREATE TABLE IF NOT EXISTS `easyii_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_news: 3 rows
/*!40000 ALTER TABLE `easyii_news` DISABLE KEYS */;
INSERT INTO `easyii_news` (`news_id`, `title`, `image`, `short`, `text`, `slug`, `time`, `views`, `status`) VALUES
	(1, 'First news title', '/uploads/news/news-1.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', '<p><strong>Sed ut perspiciatis</strong>, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem.&nbsp;</p><ul><li>item 1</li><li>item 2</li><li>item 3</li></ul><p>ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur?</p>', 'first-news-title', 1484748169, 0, 1),
	(2, 'Second news title', '/uploads/news/news-2.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><ol> <li>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </li><li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</li></ol>', 'second-news-title', 1484661769, 0, 1),
	(3, 'Third news title', '/uploads/news/news-3.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 'third-news-title', 1484575369, 0, 1);
/*!40000 ALTER TABLE `easyii_news` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_pages
DROP TABLE IF EXISTS `easyii_pages`;
CREATE TABLE IF NOT EXISTS `easyii_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_pages: 9 rows
/*!40000 ALTER TABLE `easyii_pages` DISABLE KEYS */;
INSERT INTO `easyii_pages` (`page_id`, `title`, `text`, `slug`) VALUES
	(1, 'Index', '<p><strong>All elements are live-editable, switch on Live Edit button to see this feature.</strong>&nbsp;</p><p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'page-index'),
	(2, 'Shop', '', 'page-shop'),
	(3, 'Shop search', '', 'page-shop-search'),
	(4, 'Shopping cart', '', 'page-shopcart'),
	(5, 'Order created', '<p>Your order successfully created. Our manager will contact you as soon as possible.</p>', 'page-shopcart-success'),
	(6, 'News', '', 'page-news'),
	(7, 'Articles', '', 'page-articles'),
	(10, 'FAQ', '', 'page-faq'),
	(11, 'Contact', '<p><strong>Address</strong>: Dominican republic, Santo Domingo, Some street 123</p><p><strong>ZIP</strong>: 123456</p><p><strong>Phone</strong>: +1 234 56-78</p><p><strong>E-mail</strong>: demo@example.com</p>', 'page-contact');
/*!40000 ALTER TABLE `easyii_pages` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_photos
DROP TABLE IF EXISTS `easyii_photos`;
CREATE TABLE IF NOT EXISTS `easyii_photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`photo_id`),
  KEY `model_item` (`class`,`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_photos: 27 rows
/*!40000 ALTER TABLE `easyii_photos` DISABLE KEYS */;
INSERT INTO `easyii_photos` (`photo_id`, `class`, `item_id`, `image`, `description`, `order_num`) VALUES
	(1, 'yii\\easyii\\modules\\catalog\\models\\Item', 1, '/uploads/photos/3310-1.jpg', '', 1),
	(2, 'yii\\easyii\\modules\\catalog\\models\\Item', 1, '/uploads/photos/3310-2.jpg', '', 2),
	(3, 'yii\\easyii\\modules\\catalog\\models\\Item', 2, '/uploads/photos/galaxy-1.jpg', '', 3),
	(4, 'yii\\easyii\\modules\\catalog\\models\\Item', 2, '/uploads/photos/galaxy-2.jpg', '', 4),
	(5, 'yii\\easyii\\modules\\catalog\\models\\Item', 2, '/uploads/photos/galaxy-3.jpg', '', 5),
	(6, 'yii\\easyii\\modules\\catalog\\models\\Item', 2, '/uploads/photos/galaxy-4.jpg', '', 6),
	(7, 'yii\\easyii\\modules\\catalog\\models\\Item', 3, '/uploads/photos/iphone-1.jpg', '', 7),
	(8, 'yii\\easyii\\modules\\catalog\\models\\Item', 3, '/uploads/photos/iphone-2.jpg', '', 8),
	(9, 'yii\\easyii\\modules\\catalog\\models\\Item', 3, '/uploads/photos/iphone-3.jpg', '', 9),
	(10, 'yii\\easyii\\modules\\catalog\\models\\Item', 3, '/uploads/photos/iphone-4.jpg', '', 10),
	(11, 'yii\\easyii\\modules\\news\\models\\News', 1, '/uploads/photos/news-1-1.jpg', '', 11),
	(12, 'yii\\easyii\\modules\\news\\models\\News', 1, '/uploads/photos/news-1-2.jpg', '', 12),
	(13, 'yii\\easyii\\modules\\news\\models\\News', 1, '/uploads/photos/news-1-3.jpg', '', 13),
	(14, 'yii\\easyii\\modules\\news\\models\\News', 1, '/uploads/photos/news-1-4.jpg', '', 14),
	(15, 'yii\\easyii\\modules\\article\\models\\Item', 1, '/uploads/photos/article-1-1.jpg', '', 15),
	(16, 'yii\\easyii\\modules\\article\\models\\Item', 1, '/uploads/photos/article-1-2.jpg', '', 16),
	(17, 'yii\\easyii\\modules\\article\\models\\Item', 1, '/uploads/photos/article-1-3.jpg', '', 17),
	(18, 'yii\\easyii\\modules\\article\\models\\Item', 1, '/uploads/photos/news-1-4.jpg', '', 18),
	(19, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-9.jpg', '', 19),
	(20, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-8.jpg', '', 20),
	(21, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-7.jpg', '', 21),
	(22, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-6.jpg', '', 22),
	(23, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-5.jpg', '', 23),
	(24, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-4.jpg', '', 24),
	(25, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-3.jpg', '', 25),
	(26, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-2.jpg', '', 26),
	(27, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-1.jpg', '', 27);
/*!40000 ALTER TABLE `easyii_photos` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_seotext
DROP TABLE IF EXISTS `easyii_seotext`;
CREATE TABLE IF NOT EXISTS `easyii_seotext` (
  `seotext_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `h1` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `keywords` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`seotext_id`),
  UNIQUE KEY `model_item` (`class`,`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_seotext: 23 rows
/*!40000 ALTER TABLE `easyii_seotext` DISABLE KEYS */;
INSERT INTO `easyii_seotext` (`seotext_id`, `class`, `item_id`, `h1`, `title`, `keywords`, `description`) VALUES
	(1, 'yii\\easyii\\modules\\page\\models\\Page', 1, '', 'EasyiiCMS demo', '', 'yii2, easyii, admin'),
	(2, 'yii\\easyii\\modules\\page\\models\\Page', 2, 'Shop categories', 'Extended shop title', '', ''),
	(3, 'yii\\easyii\\modules\\page\\models\\Page', 3, 'Shop search results', 'Extended shop search title', '', ''),
	(4, 'yii\\easyii\\modules\\page\\models\\Page', 4, 'Shopping cart H1', 'Extended shopping cart title', '', ''),
	(5, 'yii\\easyii\\modules\\page\\models\\Page', 5, 'Success', 'Extended order success title', '', ''),
	(6, 'yii\\easyii\\modules\\page\\models\\Page', 6, 'News H1', 'Extended news title', '', ''),
	(7, 'yii\\easyii\\modules\\page\\models\\Page', 7, 'Articles H1', 'Extended articles title', '', ''),
	(10, 'yii\\easyii\\modules\\page\\models\\Page', 10, 'Frequently Asked Question', 'Extended faq title', '', ''),
	(11, 'yii\\easyii\\modules\\page\\models\\Page', 11, 'Contact us', 'Extended contact title', '', ''),
	(12, 'yii\\easyii\\modules\\catalog\\models\\Category', 2, 'Smartphones H1', 'Extended smartphones title', '', ''),
	(13, 'yii\\easyii\\modules\\catalog\\models\\Category', 3, 'Tablets H1', 'Extended tablets title', '', ''),
	(14, 'yii\\easyii\\modules\\catalog\\models\\Item', 1, 'Nokia 3310', '', '', ''),
	(15, 'yii\\easyii\\modules\\catalog\\models\\Item', 2, 'Samsung Galaxy S6', '', '', ''),
	(16, 'yii\\easyii\\modules\\catalog\\models\\Item', 3, 'Apple Iphone 6', '', '', ''),
	(17, 'yii\\easyii\\modules\\news\\models\\News', 1, 'First news H1', '', '', ''),
	(18, 'yii\\easyii\\modules\\news\\models\\News', 2, 'Second news H1', '', '', ''),
	(19, 'yii\\easyii\\modules\\news\\models\\News', 3, 'Third news H1', '', '', ''),
	(20, 'yii\\easyii\\modules\\article\\models\\Category', 1, 'Articles category 1 H1', 'Extended category 1 title', '', ''),
	(23, 'yii\\easyii\\modules\\article\\models\\Item', 1, 'First article H1', '', '', ''),
	(24, 'yii\\easyii\\modules\\article\\models\\Item', 2, 'Second article H1', '', '', ''),
	(25, 'yii\\easyii\\modules\\article\\models\\Item', 3, 'Third article H1', '', '', ''),
	(26, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, 'Album 1 H1', 'Extended Album 1 title', '', ''),
	(27, 'yii\\easyii\\modules\\gallery\\models\\Category', 2, 'Album 2 H1', 'Extended Album 2 title', '', '');
/*!40000 ALTER TABLE `easyii_seotext` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_settings
DROP TABLE IF EXISTS `easyii_settings`;
CREATE TABLE IF NOT EXISTS `easyii_settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `visibility` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`setting_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_settings: 10 rows
/*!40000 ALTER TABLE `easyii_settings` DISABLE KEYS */;
INSERT INTO `easyii_settings` (`setting_id`, `name`, `title`, `value`, `visibility`) VALUES
	(1, 'easyii_version', 'EasyiiCMS version', '0.9', 0),
	(2, 'recaptcha_key', 'ReCaptcha key', '', 1),
	(3, 'password_salt', 'Password salt', 'tqO7XDFyrdzWud-WKWW3YzIj1eZtJcZ0', 0),
	(4, 'root_auth_key', 'Root authorization key', 'LxV0_BuiMtHjkljPzny1dulLygs-p3pv', 0),
	(5, 'root_password', 'Root password', '9162768ade5e532a0c6be24fc36aac3d64a1776c', 1),
	(6, 'auth_time', 'Auth time', '86400', 1),
	(7, 'robot_email', 'Robot E-mail', 'noreply@yii.easyii.obits', 1),
	(8, 'admin_email', 'Admin E-mail', 'sg.pavel.d@gmail.com', 2),
	(9, 'recaptcha_secret', 'ReCaptcha secret', '', 1),
	(10, 'toolbar_position', 'Frontend toolbar position ("top" or "bottom")', 'top', 1);
/*!40000 ALTER TABLE `easyii_settings` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_shopcart_goods
DROP TABLE IF EXISTS `easyii_shopcart_goods`;
CREATE TABLE IF NOT EXISTS `easyii_shopcart_goods` (
  `good_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `options` varchar(255) NOT NULL,
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  PRIMARY KEY (`good_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_shopcart_goods: 1 rows
/*!40000 ALTER TABLE `easyii_shopcart_goods` DISABLE KEYS */;
INSERT INTO `easyii_shopcart_goods` (`good_id`, `order_id`, `item_id`, `count`, `options`, `price`, `discount`) VALUES
	(1, 1, 1, 1, 'White', 100, 0);
/*!40000 ALTER TABLE `easyii_shopcart_goods` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_shopcart_orders
DROP TABLE IF EXISTS `easyii_shopcart_orders`;
CREATE TABLE IF NOT EXISTS `easyii_shopcart_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `comment` varchar(1024) NOT NULL,
  `remark` varchar(1024) NOT NULL,
  `access_token` varchar(32) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_shopcart_orders: 1 rows
/*!40000 ALTER TABLE `easyii_shopcart_orders` DISABLE KEYS */;
INSERT INTO `easyii_shopcart_orders` (`order_id`, `name`, `address`, `phone`, `email`, `comment`, `remark`, `access_token`, `ip`, `time`, `new`, `status`) VALUES
	(1, 'ertert', 'aesfdsrfwe', '85-785-89-57', 'dfgdfg@mail.com', 'sdfsdfsdfsdfsdf sd fsd fsd sdf ds f', '', 'U3i5tbHhJzERHce2FeyicGnkFxo87cR4', '127.0.0.1', 1484823291, 1, 1);
/*!40000 ALTER TABLE `easyii_shopcart_orders` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_subscribe_history
DROP TABLE IF EXISTS `easyii_subscribe_history`;
CREATE TABLE IF NOT EXISTS `easyii_subscribe_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `sent` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  PRIMARY KEY (`history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_subscribe_history: 0 rows
/*!40000 ALTER TABLE `easyii_subscribe_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_subscribe_history` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_subscribe_subscribers
DROP TABLE IF EXISTS `easyii_subscribe_subscribers`;
CREATE TABLE IF NOT EXISTS `easyii_subscribe_subscribers` (
  `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT '0',
  PRIMARY KEY (`subscriber_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_subscribe_subscribers: 0 rows
/*!40000 ALTER TABLE `easyii_subscribe_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_subscribe_subscribers` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_tags
DROP TABLE IF EXISTS `easyii_tags`;
CREATE TABLE IF NOT EXISTS `easyii_tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `frequency` int(11) DEFAULT '0',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_tags: 7 rows
/*!40000 ALTER TABLE `easyii_tags` DISABLE KEYS */;
INSERT INTO `easyii_tags` (`tag_id`, `name`, `frequency`) VALUES
	(1, 'php', 2),
	(2, 'yii2', 3),
	(3, 'jquery', 3),
	(4, 'html', 1),
	(5, 'css', 1),
	(6, 'bootstrap', 1),
	(7, 'ajax', 1);
/*!40000 ALTER TABLE `easyii_tags` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_tags_assign
DROP TABLE IF EXISTS `easyii_tags_assign`;
CREATE TABLE IF NOT EXISTS `easyii_tags_assign` (
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `class` (`class`),
  KEY `item_tag` (`item_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_tags_assign: 12 rows
/*!40000 ALTER TABLE `easyii_tags_assign` DISABLE KEYS */;
INSERT INTO `easyii_tags_assign` (`class`, `item_id`, `tag_id`) VALUES
	('yii\\easyii\\modules\\news\\models\\News', 1, 1),
	('yii\\easyii\\modules\\news\\models\\News', 1, 2),
	('yii\\easyii\\modules\\news\\models\\News', 1, 3),
	('yii\\easyii\\modules\\news\\models\\News', 2, 2),
	('yii\\easyii\\modules\\news\\models\\News', 2, 3),
	('yii\\easyii\\modules\\news\\models\\News', 2, 4),
	('yii\\easyii\\modules\\article\\models\\Item', 1, 1),
	('yii\\easyii\\modules\\article\\models\\Item', 1, 5),
	('yii\\easyii\\modules\\article\\models\\Item', 1, 6),
	('yii\\easyii\\modules\\article\\models\\Item', 2, 2),
	('yii\\easyii\\modules\\article\\models\\Item', 2, 3),
	('yii\\easyii\\modules\\article\\models\\Item', 2, 7);
/*!40000 ALTER TABLE `easyii_tags_assign` ENABLE KEYS */;


-- Дамп структуры для таблица yii_easy_obits.easyii_texts
DROP TABLE IF EXISTS `easyii_texts`;
CREATE TABLE IF NOT EXISTS `easyii_texts` (
  `text_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`text_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii_easy_obits.easyii_texts: 1 rows
/*!40000 ALTER TABLE `easyii_texts` DISABLE KEYS */;
INSERT INTO `easyii_texts` (`text_id`, `text`, `slug`) VALUES
	(1, 'Welcome on obtains demo website', 'index-welcome-title');
/*!40000 ALTER TABLE `easyii_texts` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
