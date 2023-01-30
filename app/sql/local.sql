-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-12-17 21:39:52','2022-12-17 21:39:52','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1342 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','We are pretty good','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','nmatthews_1990@hotmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:180:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=32&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:113:\"/Users/Natasha/Local Sites/fictional-university/app/public/wp-content/themes/fictional-university-theme/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','34','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','32','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1686865192','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:7:{i:1675053594;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1675055997;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1675071594;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1675099197;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675114794;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675633194;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','S*Y^%aGN|v*OgZ%xX&RcE%cb9DI/v&dOK3EH]8IcM>)+Se|XPWqxpl|mCm/aD<?>','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','89t&{lwXn7VmgR{-%E$;X9><a`l%|LFE97zDqRQ.pc#q&1]Q^NItG+pwW3YCnZ[+','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (126,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1671385385;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (129,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (130,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1675034679;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (135,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1675034679;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (156,'auth_key','W9z&Emu+qI+qF9+~P`dl8!F_?K929vEBmXh?% /zSW?)MJ?7hlqQZLMPE1`f+iL~','no');
INSERT INTO `wp_options` VALUES (157,'auth_salt','+7mb#9-sG&Z1NU[cm:Kxt5 Obel#ERNWIwMm}I~<%c(c21}QO,=~AIHv$K4]$;y2','no');
INSERT INTO `wp_options` VALUES (158,'logged_in_key','$Ohb.KZD|@PSXdMCc<Yd<8qg!^0,Sg3`l>GY(:2])]XipOsC`<w$g!(m{!zp@Zm.','no');
INSERT INTO `wp_options` VALUES (159,'logged_in_salt','wG/g@6h9 _d&Kp(+>{W?U2 I)4si8Q!E>zGSj{;nl5.$pHxPZK~4`:RMXpGY.C}F','no');
INSERT INTO `wp_options` VALUES (165,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (180,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (188,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (189,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:17:\"footerLocationOne\";i:2;s:18:\"headerMenuLocation\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (190,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (193,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (194,'new_admin_email','nmatthews_1990@hotmail.com','yes');
INSERT INTO `wp_options` VALUES (205,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (234,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (378,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (473,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (501,'recovery_mode_email_last_sent','1674321886','yes');
INSERT INTO `wp_options` VALUES (593,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (594,'acf_version','6.0.7','yes');
INSERT INTO `wp_options` VALUES (901,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (1050,'_site_transient_timeout_browser_ec8c936136150844c6d12856ff49c7cc','1675264289','no');
INSERT INTO `wp_options` VALUES (1051,'_site_transient_browser_ec8c936136150844c6d12856ff49c7cc','a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"16.2\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1068,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1675034679;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.70\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.70.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2837281\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2837281\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.7\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.70\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.5\";}}','no');
INSERT INTO `wp_options` VALUES (1086,'_site_transient_timeout_browser_894dc60a4e148f4652615ed246d3e298','1675267370','no');
INSERT INTO `wp_options` VALUES (1087,'_site_transient_browser_894dc60a4e148f4652615ed246d3e298','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"109.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1332,'_site_transient_timeout_theme_roots','1675036477','no');
INSERT INTO `wp_options` VALUES (1333,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1334,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1675639477','no');
INSERT INTO `wp_options` VALUES (1335,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (1336,'_transient_timeout_global_styles_fictional-university-theme','1675034739','no');
INSERT INTO `wp_options` VALUES (1337,'_transient_global_styles_fictional-university-theme','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1671999260:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1671999148:1');
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_lock','1672000544:1');
INSERT INTO `wp_postmeta` VALUES (10,12,'_edit_lock','1674321422:1');
INSERT INTO `wp_postmeta` VALUES (11,3,'_edit_lock','1672153265:1');
INSERT INTO `wp_postmeta` VALUES (12,15,'_edit_lock','1672161069:1');
INSERT INTO `wp_postmeta` VALUES (13,17,'_edit_lock','1672161110:1');
INSERT INTO `wp_postmeta` VALUES (14,19,'_edit_lock','1672161182:1');
INSERT INTO `wp_postmeta` VALUES (15,22,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (16,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (17,22,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (18,22,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (19,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (20,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (21,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (22,22,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (23,22,'_menu_item_orphaned','1672172463');
INSERT INTO `wp_postmeta` VALUES (33,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (34,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (35,24,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (36,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (37,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (38,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (39,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (40,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (41,24,'_menu_item_orphaned','1672172463');
INSERT INTO `wp_postmeta` VALUES (42,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (43,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (44,25,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (45,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (46,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (47,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (48,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (49,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (51,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (52,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (53,26,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (54,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (55,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (56,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (57,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (58,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (59,26,'_menu_item_orphaned','1672172463');
INSERT INTO `wp_postmeta` VALUES (60,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (61,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (62,27,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (63,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (64,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (65,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (66,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (67,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (68,27,'_menu_item_orphaned','1672172463');
INSERT INTO `wp_postmeta` VALUES (69,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (70,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (71,28,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (72,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (73,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (74,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (75,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (76,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (77,28,'_menu_item_orphaned','1672172463');
INSERT INTO `wp_postmeta` VALUES (78,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (79,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (80,29,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (81,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (82,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (83,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (84,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (85,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (86,29,'_menu_item_orphaned','1672172463');
INSERT INTO `wp_postmeta` VALUES (87,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (88,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (89,30,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (90,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (91,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (92,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (93,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (94,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (96,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (97,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (98,31,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (99,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (100,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (101,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (102,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (103,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (105,32,'_edit_lock','1672176516:1');
INSERT INTO `wp_postmeta` VALUES (106,34,'_edit_lock','1672176530:1');
INSERT INTO `wp_postmeta` VALUES (107,36,'_edit_lock','1672249429:1');
INSERT INTO `wp_postmeta` VALUES (112,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (113,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (114,39,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (115,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (116,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (117,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (118,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (119,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (121,30,'_wp_old_date','2022-12-27');
INSERT INTO `wp_postmeta` VALUES (122,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (123,41,'_edit_lock','1674694109:1');
INSERT INTO `wp_postmeta` VALUES (124,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (125,42,'_edit_lock','1673717911:1');
INSERT INTO `wp_postmeta` VALUES (126,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (127,43,'_edit_lock','1674681197:1');
INSERT INTO `wp_postmeta` VALUES (130,45,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (131,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (132,45,'_menu_item_object_id','-27');
INSERT INTO `wp_postmeta` VALUES (133,45,'_menu_item_object','event');
INSERT INTO `wp_postmeta` VALUES (134,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (135,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (136,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (137,45,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (140,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (141,46,'_edit_lock','1672263724:1');
INSERT INTO `wp_postmeta` VALUES (142,43,'event_date','20231208');
INSERT INTO `wp_postmeta` VALUES (143,43,'_event_date','field_63acb821746b9');
INSERT INTO `wp_postmeta` VALUES (144,42,'event_date','20230211');
INSERT INTO `wp_postmeta` VALUES (145,42,'_event_date','field_63acb821746b9');
INSERT INTO `wp_postmeta` VALUES (146,41,'event_date','20230714');
INSERT INTO `wp_postmeta` VALUES (147,41,'_event_date','field_63acb821746b9');
INSERT INTO `wp_postmeta` VALUES (148,48,'_edit_lock','1672342648:1');
INSERT INTO `wp_postmeta` VALUES (149,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (150,48,'event_date','20230121');
INSERT INTO `wp_postmeta` VALUES (151,48,'_event_date','field_63acb821746b9');
INSERT INTO `wp_postmeta` VALUES (152,49,'_edit_lock','1672347897:1');
INSERT INTO `wp_postmeta` VALUES (153,51,'_edit_lock','1672348827:1');
INSERT INTO `wp_postmeta` VALUES (154,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (155,51,'event_date','20161231');
INSERT INTO `wp_postmeta` VALUES (156,51,'_event_date','field_63acb821746b9');
INSERT INTO `wp_postmeta` VALUES (166,30,'_wp_old_date','2022-12-28');
INSERT INTO `wp_postmeta` VALUES (167,45,'_wp_old_date','2022-12-28');
INSERT INTO `wp_postmeta` VALUES (168,39,'_wp_old_date','2022-12-28');
INSERT INTO `wp_postmeta` VALUES (169,54,'_edit_lock','1674681131:1');
INSERT INTO `wp_postmeta` VALUES (170,55,'_edit_lock','1673122252:1');
INSERT INTO `wp_postmeta` VALUES (171,56,'_edit_lock','1673123342:1');
INSERT INTO `wp_postmeta` VALUES (172,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (173,58,'_edit_lock','1673895699:1');
INSERT INTO `wp_postmeta` VALUES (174,42,'related_programs','a:2:{i:0;s:2:\"55\";i:1;s:2:\"54\";}');
INSERT INTO `wp_postmeta` VALUES (175,42,'_related_programs','field_63b9d6ac48002');
INSERT INTO `wp_postmeta` VALUES (176,60,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (177,60,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (178,60,'_menu_item_object_id','-41');
INSERT INTO `wp_postmeta` VALUES (179,60,'_menu_item_object','program');
INSERT INTO `wp_postmeta` VALUES (180,60,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (181,60,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (182,60,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (183,60,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (185,30,'_wp_old_date','2022-12-29');
INSERT INTO `wp_postmeta` VALUES (186,45,'_wp_old_date','2022-12-29');
INSERT INTO `wp_postmeta` VALUES (187,39,'_wp_old_date','2022-12-29');
INSERT INTO `wp_postmeta` VALUES (188,62,'_edit_lock','1673903594:1');
INSERT INTO `wp_postmeta` VALUES (189,63,'_edit_lock','1673910050:1');
INSERT INTO `wp_postmeta` VALUES (190,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (191,63,'related_programs','a:1:{i:0;s:2:\"55\";}');
INSERT INTO `wp_postmeta` VALUES (192,63,'_related_programs','field_63b9d6ac48002');
INSERT INTO `wp_postmeta` VALUES (193,64,'_wp_attached_file','2023/01/barksalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (194,64,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2023/01/barksalot-scaled.jpg\";s:8:\"filesize\";i:422581;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"barksalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9195;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"barksalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72980;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4813;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"barksalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43343;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"barksalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:151968;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"barksalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:264387;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:21:\"barksalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14250;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:21:\"barksalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46013;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"barksalot.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (195,64,'_wp_attachment_image_alt','Dr. Barksalot');
INSERT INTO `wp_postmeta` VALUES (196,63,'_thumbnail_id','64');
INSERT INTO `wp_postmeta` VALUES (197,65,'_wp_attached_file','2023/01/meowsalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (198,65,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2023/01/meowsalot-scaled.jpg\";s:8:\"filesize\";i:290671;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7028;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47848;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4016;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29384;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"meowsalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:100051;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"meowsalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:179333;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:21:\"meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10596;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:21:\"meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31667;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"meowsalot.jpg\";s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:2:\"69\";s:1:\"y\";s:2:\"43\";s:1:\"w\";s:3:\"331\";s:1:\"h\";s:18:\"215.15000000000538\";s:5:\"scale\";s:4:\"5.12\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:3:\"149\";s:1:\"y\";s:2:\"47\";s:1:\"w\";s:16:\"157.292307692308\";s:1:\"h\";s:3:\"213\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (199,65,'_wp_attachment_image_alt','Dr. Meowsalot');
INSERT INTO `wp_postmeta` VALUES (200,62,'_thumbnail_id','65');
INSERT INTO `wp_postmeta` VALUES (201,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (202,62,'related_programs','a:1:{i:0;s:2:\"55\";}');
INSERT INTO `wp_postmeta` VALUES (203,62,'_related_programs','field_63b9d6ac48002');
INSERT INTO `wp_postmeta` VALUES (204,66,'_edit_lock','1673902382:1');
INSERT INTO `wp_postmeta` VALUES (205,67,'_wp_attached_file','2023/01/frog-bio-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (206,67,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:27:\"2023/01/frog-bio-scaled.jpg\";s:8:\"filesize\";i:312725;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12927;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75796;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5883;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49412;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:140192;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:219335;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16831;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38045;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"frog-bio.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (207,67,'_wp_attachment_image_alt','Dr. Froggerson');
INSERT INTO `wp_postmeta` VALUES (208,66,'_thumbnail_id','67');
INSERT INTO `wp_postmeta` VALUES (209,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (210,66,'related_programs','a:1:{i:0;s:2:\"54\";}');
INSERT INTO `wp_postmeta` VALUES (211,66,'_related_programs','field_63b9d6ac48002');
INSERT INTO `wp_postmeta` VALUES (212,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (213,68,'_edit_lock','1673903839:1');
INSERT INTO `wp_postmeta` VALUES (214,71,'_wp_attached_file','2023/01/field-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (215,71,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2023/01/field-scaled.jpg\";s:8:\"filesize\";i:833439;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12834;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:138960;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5516;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77373;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:310229;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:19:\"field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:544629;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21445;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63041;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116226;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"field.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"76\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (216,63,'page_banner_subtitle','The leading voice on barking and biology');
INSERT INTO `wp_postmeta` VALUES (217,63,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (218,63,'page_banner_background_image','71');
INSERT INTO `wp_postmeta` VALUES (219,63,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (220,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (221,12,'page_banner_subtitle','We are a great school that has been around for a long time. ');
INSERT INTO `wp_postmeta` VALUES (222,12,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (223,12,'page_banner_background_image','73');
INSERT INTO `wp_postmeta` VALUES (224,12,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (225,72,'page_banner_subtitle','We are a great school that has been around for a long time. ');
INSERT INTO `wp_postmeta` VALUES (226,72,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (227,72,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (228,72,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (229,73,'_wp_attached_file','2023/01/building-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (230,73,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:27:\"2023/01/building-scaled.jpg\";s:8:\"filesize\";i:476342;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9211;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82859;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4114;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47587;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"building-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:184325;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"building-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:317034;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14178;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36270;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:21:\"building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80133;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"building.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"45\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (232,75,'page_banner_subtitle','We are a great school that has been around for a long time. ');
INSERT INTO `wp_postmeta` VALUES (233,75,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (234,75,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (235,75,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (236,76,'page_banner_subtitle','We are a great school that has been around for a long time. ');
INSERT INTO `wp_postmeta` VALUES (237,76,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (238,76,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (239,76,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (240,77,'page_banner_subtitle','We are a great school that has been around for a long time. ');
INSERT INTO `wp_postmeta` VALUES (241,77,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (242,77,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (243,77,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (244,78,'page_banner_subtitle','We are a great school that has been around for a long time. ');
INSERT INTO `wp_postmeta` VALUES (245,78,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (246,78,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (247,78,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (248,79,'page_banner_subtitle','We are a great school that has been around for a long time. ');
INSERT INTO `wp_postmeta` VALUES (249,79,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (250,79,'page_banner_background_image','73');
INSERT INTO `wp_postmeta` VALUES (251,79,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (252,80,'_wp_attached_file','2022/12/notebook-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (253,80,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1922;s:4:\"file\";s:27:\"2022/12/notebook-scaled.jpg\";s:8:\"filesize\";i:331482;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9942;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59032;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4569;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38133;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"notebook-1536x1153.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:114804;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"notebook-2048x1538.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:200675;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13681;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25579;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:21:\"notebook-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35326;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"notebook.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (254,43,'page_banner_subtitle','A day of pomes');
INSERT INTO `wp_postmeta` VALUES (255,43,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (256,43,'page_banner_background_image','80');
INSERT INTO `wp_postmeta` VALUES (257,43,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (258,43,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (259,43,'_related_programs','field_63b9d6ac48002');
INSERT INTO `wp_postmeta` VALUES (260,81,'_edit_lock','1674437113:1');
INSERT INTO `wp_postmeta` VALUES (261,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (262,81,'page_banner_subtitle','A beautiful campus in the heart of downtown. ');
INSERT INTO `wp_postmeta` VALUES (263,81,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (264,81,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (265,81,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (266,82,'_edit_lock','1674406816:1');
INSERT INTO `wp_postmeta` VALUES (267,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (268,82,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (269,82,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (270,82,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (271,82,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (272,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (273,83,'_edit_lock','1674677570:1');
INSERT INTO `wp_postmeta` VALUES (274,86,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (275,86,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (276,86,'_menu_item_object_id','-28');
INSERT INTO `wp_postmeta` VALUES (277,86,'_menu_item_object','campus');
INSERT INTO `wp_postmeta` VALUES (278,86,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (279,86,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (280,86,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (281,86,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (283,30,'_wp_old_date','2023-01-07');
INSERT INTO `wp_postmeta` VALUES (284,45,'_wp_old_date','2023-01-07');
INSERT INTO `wp_postmeta` VALUES (285,60,'_wp_old_date','2023-01-07');
INSERT INTO `wp_postmeta` VALUES (286,39,'_wp_old_date','2023-01-07');
INSERT INTO `wp_postmeta` VALUES (287,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (288,87,'_edit_lock','1674678130:1');
INSERT INTO `wp_postmeta` VALUES (289,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (290,54,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (291,54,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (292,54,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (293,54,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (294,54,'related_campuses','a:1:{i:0;s:2:\"81\";}');
INSERT INTO `wp_postmeta` VALUES (295,54,'_related_campuses','field_63d18dd69c380');
INSERT INTO `wp_postmeta` VALUES (296,54,'related_campus','a:1:{i:0;s:2:\"81\";}');
INSERT INTO `wp_postmeta` VALUES (297,54,'_related_campus','field_63d18dd69c380');
INSERT INTO `wp_postmeta` VALUES (298,41,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (299,41,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (300,41,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (301,41,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (302,41,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (303,41,'_related_programs','field_63b9d6ac48002');
INSERT INTO `wp_postmeta` VALUES (304,89,'_edit_lock','1674694007:1');
INSERT INTO `wp_postmeta` VALUES (305,90,'_edit_lock','1674929108:1');
INSERT INTO `wp_postmeta` VALUES (308,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (309,90,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (310,90,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (311,90,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (312,90,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (313,91,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (314,91,'_page_banner_subtitle','field_63c5bdeec1de7');
INSERT INTO `wp_postmeta` VALUES (315,91,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (316,91,'_page_banner_background_image','field_63c5be56c3f11');
INSERT INTO `wp_postmeta` VALUES (317,92,'_edit_lock','1674929243:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-12-17 21:39:52','2022-12-17 21:39:52','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-12-17 21:39:52','2022-12-17 21:39:52','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2022-12-17 21:39:52','2022-12-17 21:39:52','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2022-12-17 21:39:52','2022-12-17 21:39:52','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-12-17 21:39:52','2022-12-17 21:39:52','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2022-12-27 15:03:25','2022-12-27 15:03:25','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-12-25 20:14:21','2022-12-25 20:14:21','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Condimentum mattis pellentesque id nibh tortor id. Volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nisl tincidunt eget nullam non nisi est sit. Tristique magna sit amet purus gravida. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Nunc congue nisi vitae suscipit. Quis risus sed vulputate odio ut enim blandit. Aliquam vestibulum morbi blandit cursus. Magna etiam tempor orci eu. Sem et tortor consequat id porta nibh venenatis cras sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Malesuada fames ac turpis egestas integer eget. Sagittis aliquam malesuada bibendum arcu vitae elementum. Sollicitudin ac orci phasellus egestas tellus. Tincidunt augue interdum velit euismod in pellentesque massa.</p>\n<!-- /wp:paragraph -->','Test Post','','publish','open','open','','test-post','','','2022-12-25 20:14:21','2022-12-25 20:14:21','',0,'http://fictional-university.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-12-25 20:14:21','2022-12-25 20:14:21','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Condimentum mattis pellentesque id nibh tortor id. Volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nisl tincidunt eget nullam non nisi est sit. Tristique magna sit amet purus gravida. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Nunc congue nisi vitae suscipit. Quis risus sed vulputate odio ut enim blandit. Aliquam vestibulum morbi blandit cursus. Magna etiam tempor orci eu. Sem et tortor consequat id porta nibh venenatis cras sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Malesuada fames ac turpis egestas integer eget. Sagittis aliquam malesuada bibendum arcu vitae elementum. Sollicitudin ac orci phasellus egestas tellus. Tincidunt augue interdum velit euismod in pellentesque massa.</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2022-12-25 20:14:21','2022-12-25 20:14:21','',5,'http://fictional-university.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-12-25 20:14:45','2022-12-25 20:14:45','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Condimentum mattis pellentesque id nibh tortor id. Volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nisl tincidunt eget nullam non nisi est sit. Tristique magna sit amet purus gravida. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Nunc congue nisi vitae suscipit. Quis risus sed vulputate odio ut enim blandit. Aliquam vestibulum morbi blandit cursus. Magna etiam tempor orci eu. Sem et tortor consequat id porta nibh venenatis cras sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Malesuada fames ac turpis egestas integer eget. Sagittis aliquam malesuada bibendum arcu vitae elementum. Sollicitudin ac orci phasellus egestas tellus. Tincidunt augue interdum velit euismod in pellentesque massa.</p>\n<!-- /wp:paragraph -->','Second Test Post','','publish','open','open','','second-test-post','','','2022-12-25 20:14:45','2022-12-25 20:14:45','',0,'http://fictional-university.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2022-12-25 20:14:45','2022-12-25 20:14:45','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Condimentum mattis pellentesque id nibh tortor id. Volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nisl tincidunt eget nullam non nisi est sit. Tristique magna sit amet purus gravida. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Nunc congue nisi vitae suscipit. Quis risus sed vulputate odio ut enim blandit. Aliquam vestibulum morbi blandit cursus. Magna etiam tempor orci eu. Sem et tortor consequat id porta nibh venenatis cras sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Malesuada fames ac turpis egestas integer eget. Sagittis aliquam malesuada bibendum arcu vitae elementum. Sollicitudin ac orci phasellus egestas tellus. Tincidunt augue interdum velit euismod in pellentesque massa.</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','7-revision-v1','','','2022-12-25 20:14:45','2022-12-25 20:14:45','',7,'http://fictional-university.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2022-12-25 20:26:38','2022-12-25 20:26:38','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Condimentum mattis pellentesque id nibh tortor id. Volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nisl tincidunt eget nullam non nisi est sit. Tristique magna sit amet purus gravida. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Nunc congue nisi vitae suscipit. Quis risus sed vulputate odio ut enim blandit. Aliquam vestibulum morbi blandit cursus. Magna etiam tempor orci eu. Sem et tortor consequat id porta nibh venenatis cras sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Malesuada fames ac turpis egestas integer eget. Sagittis aliquam malesuada bibendum arcu vitae elementum. Sollicitudin ac orci phasellus egestas tellus. Tincidunt augue interdum velit euismod in pellentesque massa.</p>\n<!-- /wp:paragraph -->','Test Page 123','','publish','closed','closed','','test-page-123','','','2022-12-25 20:26:38','2022-12-25 20:26:38','',0,'http://fictional-university.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2022-12-25 20:26:38','2022-12-25 20:26:38','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Condimentum mattis pellentesque id nibh tortor id. Volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nisl tincidunt eget nullam non nisi est sit. Tristique magna sit amet purus gravida. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Nunc congue nisi vitae suscipit. Quis risus sed vulputate odio ut enim blandit. Aliquam vestibulum morbi blandit cursus. Magna etiam tempor orci eu. Sem et tortor consequat id porta nibh venenatis cras sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Malesuada fames ac turpis egestas integer eget. Sagittis aliquam malesuada bibendum arcu vitae elementum. Sollicitudin ac orci phasellus egestas tellus. Tincidunt augue interdum velit euismod in pellentesque massa.</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','9-revision-v1','','','2022-12-25 20:26:38','2022-12-25 20:26:38','',9,'http://fictional-university.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-12-27 15:02:24','2022-12-27 15:02:24','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2023-01-21 16:54:34','2023-01-21 16:54:34','',0,'http://fictional-university.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-12-27 15:02:24','2022-12-27 15:02:24','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','12-revision-v1','','','2022-12-27 15:02:24','2022-12-27 15:02:24','',12,'http://fictional-university.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-12-27 15:03:25','2022-12-27 15:03:25','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2022-12-27 15:03:25','2022-12-27 15:03:25','',3,'http://fictional-university.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-12-27 15:43:41','2022-12-27 15:43:41','<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2022-12-27 17:13:32','2022-12-27 17:13:32','',12,'http://fictional-university.local/?page_id=15',1,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-12-27 15:43:41','2022-12-27 15:43:41','<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','15-revision-v1','','','2022-12-27 15:43:41','2022-12-27 15:43:41','',15,'http://fictional-university.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-12-27 15:44:02','2022-12-27 15:44:02','<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2022-12-27 17:14:13','2022-12-27 17:14:13','',12,'http://fictional-university.local/?page_id=17',2,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-12-27 15:44:02','2022-12-27 15:44:02','<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','17-revision-v1','','','2022-12-27 15:44:02','2022-12-27 15:44:02','',17,'http://fictional-university.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2022-12-27 16:28:06','2022-12-27 16:28:06','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2022-12-27 16:28:15','2022-12-27 16:28:15','',3,'http://fictional-university.local/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-12-27 16:28:06','2022-12-27 16:28:06','<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','19-revision-v1','','','2022-12-27 16:28:06','2022-12-27 16:28:06','',19,'http://fictional-university.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-12-27 16:28:15','2022-12-27 16:28:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','19-revision-v1','','','2022-12-27 16:28:15','2022-12-27 16:28:15','',19,'http://fictional-university.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-12-27 20:21:03','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2022-12-27 20:21:03','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-12-27 20:21:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-12-27 20:21:03','0000-00-00 00:00:00','',3,'http://fictional-university.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2022-12-27 20:33:16','2022-12-27 20:21:56',' ','','','publish','closed','closed','','25','','','2022-12-27 20:33:16','2022-12-27 20:33:16','',0,'http://fictional-university.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-12-27 20:21:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-12-27 20:21:03','0000-00-00 00:00:00','',12,'http://fictional-university.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-12-27 20:21:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-12-27 20:21:03','0000-00-00 00:00:00','',12,'http://fictional-university.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-12-27 20:21:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-12-27 20:21:03','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-12-27 20:21:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-12-27 20:21:03','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-01-25 15:49:37','2022-12-27 20:34:44',' ','','','publish','closed','closed','','30','','','2023-01-25 15:49:37','2023-01-25 15:49:37','',0,'http://fictional-university.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-12-27 20:36:44','2022-12-27 20:36:44',' ','','','publish','closed','closed','','31','','','2022-12-27 20:36:44','2022-12-27 20:36:44','',0,'http://fictional-university.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-12-27 21:31:00','2022-12-27 21:31:00','','Home','','publish','closed','closed','','home','','','2022-12-27 21:31:00','2022-12-27 21:31:00','',0,'http://fictional-university.local/?page_id=32',0,'page','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-12-27 21:31:00','2022-12-27 21:31:00','','Home','','inherit','closed','closed','','32-revision-v1','','','2022-12-27 21:31:00','2022-12-27 21:31:00','',32,'http://fictional-university.local/?p=33',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2022-12-27 21:31:10','2022-12-27 21:31:10','','Blog','','publish','closed','closed','','blog','','','2022-12-27 21:31:10','2022-12-27 21:31:10','',0,'http://fictional-university.local/?page_id=34',0,'page','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-12-27 21:31:10','2022-12-27 21:31:10','','Blog','','inherit','closed','closed','','34-revision-v1','','','2022-12-27 21:31:10','2022-12-27 21:31:10','',34,'http://fictional-university.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-12-27 21:55:18','2022-12-27 21:55:18','<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','We Won An Award!','Our school has won another award this year. ','publish','open','open','','we-won-an-award','','','2022-12-28 17:40:38','2022-12-28 17:40:38','',0,'http://fictional-university.local/?p=36',0,'post','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-12-27 21:55:18','2022-12-27 21:55:18','','We Won An Award!','','inherit','closed','closed','','36-revision-v1','','','2022-12-27 21:55:18','2022-12-27 21:55:18','',36,'http://fictional-university.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-12-27 22:16:07','2022-12-27 22:16:07','<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','We Won An Award!','','inherit','closed','closed','','36-revision-v1','','','2022-12-27 22:16:07','2022-12-27 22:16:07','',36,'http://fictional-university.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-01-25 15:49:37','2022-12-28 14:57:07',' ','','','publish','closed','closed','','39','','','2023-01-25 15:49:37','2023-01-25 15:49:37','',0,'http://fictional-university.local/?p=39',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-12-28 16:11:30','2022-12-28 16:11:30','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.','Math Meetup','','publish','closed','closed','','math-meetup','','','2023-01-25 21:13:29','2023-01-25 21:13:29','',0,'http://fictional-university.local/?post_type=event&#038;p=41',0,'event','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-12-28 16:11:50','2022-12-28 16:11:50','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2023-01-14 17:38:31','2023-01-14 17:38:31','',0,'http://fictional-university.local/?post_type=event&#038;p=42',0,'event','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-12-28 16:12:09','2022-12-28 16:12:09','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.','Poetry Day','Poetry day is going to be amazing. ','publish','closed','closed','','poetry-day','','','2023-01-25 21:13:17','2023-01-25 21:13:17','',0,'http://fictional-university.local/?post_type=event&#038;p=43',0,'event','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-12-28 17:40:38','2022-12-28 17:40:38','<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','We Won An Award!','Our school has won another award this year. ','inherit','closed','closed','','36-revision-v1','','','2022-12-28 17:40:38','2022-12-28 17:40:38','',36,'http://fictional-university.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-01-25 15:49:37','2022-12-28 17:56:10','','Events','','publish','closed','closed','','events','','','2023-01-25 15:49:37','2023-01-25 15:49:37','',0,'http://fictional-university.local/?p=45',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-12-28 21:44:21','2022-12-28 21:44:21','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_63acb820d971f','','','2022-12-28 21:44:21','2022-12-28 21:44:21','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=46',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2022-12-28 21:44:21','2022-12-28 21:44:21','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_63acb821746b9','','','2022-12-28 21:44:21','2022-12-28 21:44:21','',46,'http://fictional-university.local/?post_type=acf-field&p=47',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-12-29 19:36:50','2022-12-29 19:36:50','','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2022-12-29 19:36:50','2022-12-29 19:36:50','',0,'http://fictional-university.local/?post_type=event&#038;p=48',0,'event','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-12-29 20:57:26','2022-12-29 20:57:26','','Past Events','','publish','closed','closed','','past-events','','','2022-12-29 20:57:26','2022-12-29 20:57:26','',0,'http://fictional-university.local/?page_id=49',0,'page','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-12-29 20:57:26','2022-12-29 20:57:26','','Past Events','','inherit','closed','closed','','49-revision-v1','','','2022-12-29 20:57:26','2022-12-29 20:57:26','',49,'http://fictional-university.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2022-12-29 21:05:31','2022-12-29 21:05:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','New Year 2016','','publish','closed','closed','','new-year-2016','','','2022-12-29 21:05:32','2022-12-29 21:05:32','',0,'http://fictional-university.local/?post_type=event&#038;p=51',0,'event','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-01-07 20:12:57','2023-01-07 20:12:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A arcu cursus vitae congue mauris rhoncus aenean vel. Eget duis at tellus at urna condimentum. Ipsum consequat nisl vel pretium. Velit aliquet sagittis id consectetur purus ut faucibus. Tortor posuere ac ut consequat semper viverra nam libero. Ut faucibus pulvinar elementum integer enim. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Ac auctor augue mauris augue. Libero justo laoreet sit amet cursus. Proin gravida hendrerit lectus a. Bibendum arcu vitae elementum curabitur vitae. Urna molestie at elementum eu facilisis sed odio. Ullamcorper morbi tincidunt ornare massa eget. Congue eu consequat ac felis donec et odio pellentesque diam. Elementum curabitur vitae nunc sed velit dignissim sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada. Enim neque volutpat ac tincidunt vitae semper quis lectus.</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2023-01-25 20:24:43','2023-01-25 20:24:43','',0,'http://fictional-university.local/?post_type=program&#038;p=54',0,'program','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2023-01-07 20:13:17','2023-01-07 20:13:17','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A arcu cursus vitae congue mauris rhoncus aenean vel. Eget duis at tellus at urna condimentum. Ipsum consequat nisl vel pretium. Velit aliquet sagittis id consectetur purus ut faucibus. Tortor posuere ac ut consequat semper viverra nam libero. Ut faucibus pulvinar elementum integer enim. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Ac auctor augue mauris augue. Libero justo laoreet sit amet cursus. Proin gravida hendrerit lectus a. Bibendum arcu vitae elementum curabitur vitae. Urna molestie at elementum eu facilisis sed odio. Ullamcorper morbi tincidunt ornare massa eget. Congue eu consequat ac felis donec et odio pellentesque diam. Elementum curabitur vitae nunc sed velit dignissim sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada. Enim neque volutpat ac tincidunt vitae semper quis lectus.</p>\n<!-- /wp:paragraph -->','Biology','','publish','closed','closed','','biology','','','2023-01-07 20:13:17','2023-01-07 20:13:17','',0,'http://fictional-university.local/?post_type=program&#038;p=55',0,'program','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2023-01-07 20:13:27','2023-01-07 20:13:27','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A arcu cursus vitae congue mauris rhoncus aenean vel. Eget duis at tellus at urna condimentum. Ipsum consequat nisl vel pretium. Velit aliquet sagittis id consectetur purus ut faucibus. Tortor posuere ac ut consequat semper viverra nam libero. Ut faucibus pulvinar elementum integer enim. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Ac auctor augue mauris augue. Libero justo laoreet sit amet cursus. Proin gravida hendrerit lectus a. Bibendum arcu vitae elementum curabitur vitae. Urna molestie at elementum eu facilisis sed odio. Ullamcorper morbi tincidunt ornare massa eget. Congue eu consequat ac felis donec et odio pellentesque diam. Elementum curabitur vitae nunc sed velit dignissim sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada. Enim neque volutpat ac tincidunt vitae semper quis lectus.</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2023-01-07 20:13:27','2023-01-07 20:13:27','',0,'http://fictional-university.local/?post_type=program&#038;p=56',0,'program','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-01-07 20:14:08','2023-01-07 20:14:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A arcu cursus vitae congue mauris rhoncus aenean vel. Eget duis at tellus at urna condimentum. Ipsum consequat nisl vel pretium. Velit aliquet sagittis id consectetur purus ut faucibus. Tortor posuere ac ut consequat semper viverra nam libero. Ut faucibus pulvinar elementum integer enim. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Ac auctor augue mauris augue. Libero justo laoreet sit amet cursus. Proin gravida hendrerit lectus a. Bibendum arcu vitae elementum curabitur vitae. Urna molestie at elementum eu facilisis sed odio. Ullamcorper morbi tincidunt ornare massa eget. Congue eu consequat ac felis donec et odio pellentesque diam. Elementum curabitur vitae nunc sed velit dignissim sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada. Enim neque volutpat ac tincidunt vitae semper quis lectus.</p>\n<!-- /wp:paragraph -->','English','','inherit','closed','closed','','56-autosave-v1','','','2023-01-07 20:14:08','2023-01-07 20:14:08','',56,'http://fictional-university.local/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2023-01-07 20:33:44','2023-01-07 20:33:44','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Program','related-program','publish','closed','closed','','group_63b9d6abb1257','','','2023-01-16 19:01:38','2023-01-16 19:01:38','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=58',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2023-01-07 20:33:44','2023-01-07 20:33:44','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";}','Related Programs','related_programs','publish','closed','closed','','field_63b9d6ac48002','','','2023-01-07 20:33:44','2023-01-07 20:33:44','',58,'http://fictional-university.local/?post_type=acf-field&p=59',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-01-25 15:49:37','2023-01-07 21:17:06','','Programs','','publish','closed','closed','','programs','','','2023-01-25 15:49:37','2023-01-25 15:49:37','',0,'http://fictional-university.local/?p=60',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-01-16 18:54:52','2023-01-16 18:54:52','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Molestie nunc non blandit massa enim nec. Arcu bibendum at varius vel pharetra vel turpis. Quam adipiscing vitae proin sagittis nisl rhoncus. Ullamcorper morbi tincidunt ornare massa eget. Viverra ipsum nunc aliquet bibendum enim facilisis gravida. Commodo odio aenean sed adipiscing diam. Volutpat blandit aliquam etiam erat velit. Dignissim sodales ut eu sem integer vitae. Nam at lectus urna duis convallis convallis tellus id. Justo donec enim diam vulputate. Augue eget arcu dictum varius duis at consectetur lorem. Eget gravida cum sociis natoque penatibus et. Id nibh tortor id aliquet lectus. Adipiscing elit duis tristique sollicitudin. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Auctor augue mauris augue neque gravida. Vivamus at augue eget arcu dictum varius duis at. Posuere urna nec tincidunt praesent semper feugiat. Tincidunt dui ut ornare lectus sit amet est placerat in.</p>\n<!-- /wp:paragraph -->','Dr. Meowsalot','','publish','closed','closed','','dr-meowsalot','','','2023-01-16 21:13:13','2023-01-16 21:13:13','',0,'http://fictional-university.local/?post_type=professor&#038;p=62',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-01-16 18:55:12','2023-01-16 18:55:12','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Molestie nunc non blandit massa enim nec. Arcu bibendum at varius vel pharetra vel turpis. Quam adipiscing vitae proin sagittis nisl rhoncus. Ullamcorper morbi tincidunt ornare massa eget. Viverra ipsum nunc aliquet bibendum enim facilisis gravida. Commodo odio aenean sed adipiscing diam. Volutpat blandit aliquam etiam erat velit. Dignissim sodales ut eu sem integer vitae. Nam at lectus urna duis convallis convallis tellus id. Justo donec enim diam vulputate. Augue eget arcu dictum varius duis at consectetur lorem. Eget gravida cum sociis natoque penatibus et. Id nibh tortor id aliquet lectus. Adipiscing elit duis tristique sollicitudin. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Auctor augue mauris augue neque gravida. Vivamus at augue eget arcu dictum varius duis at. Posuere urna nec tincidunt praesent semper feugiat. Tincidunt dui ut ornare lectus sit amet est placerat in.</p>\n<!-- /wp:paragraph -->','Dr. Barksalot','','publish','closed','closed','','dr-barksalot','','','2023-01-16 21:51:45','2023-01-16 21:51:45','',0,'http://fictional-university.local/?post_type=professor&#038;p=63',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-01-16 20:20:59','2023-01-16 20:20:59','','barksalot','','inherit','open','closed','','barksalot','','','2023-01-16 20:21:37','2023-01-16 20:21:37','',63,'http://fictional-university.local/wp-content/uploads/2023/01/barksalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-01-16 20:22:09','2023-01-16 20:22:09','','meowsalot','','inherit','open','closed','','meowsalot','','','2023-01-16 20:22:26','2023-01-16 20:22:26','',62,'http://fictional-university.local/wp-content/uploads/2023/01/meowsalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-01-16 20:52:36','2023-01-16 20:52:36','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Molestie nunc non blandit massa enim nec. Arcu bibendum at varius vel pharetra vel turpis. Quam adipiscing vitae proin sagittis nisl rhoncus. Ullamcorper morbi tincidunt ornare massa eget. Viverra ipsum nunc aliquet bibendum enim facilisis gravida. Commodo odio aenean sed adipiscing diam. Volutpat blandit aliquam etiam erat velit. Dignissim sodales ut eu sem integer vitae. Nam at lectus urna duis convallis convallis tellus id. Justo donec enim diam vulputate. Augue eget arcu dictum varius duis at consectetur lorem. Eget gravida cum sociis natoque penatibus et. Id nibh tortor id aliquet lectus. Adipiscing elit duis tristique sollicitudin. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Auctor augue mauris augue neque gravida. Vivamus at augue eget arcu dictum varius duis at. Posuere urna nec tincidunt praesent semper feugiat. Tincidunt dui ut ornare lectus sit amet est placerat in.</p>\n<!-- /wp:paragraph -->','Dr. Froggerson','','publish','closed','closed','','dr-froggerson','','','2023-01-16 20:52:36','2023-01-16 20:52:36','',0,'http://fictional-university.local/?post_type=professor&#038;p=66',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-01-16 20:51:49','2023-01-16 20:51:49','','frog-bio','','inherit','open','closed','','frog-bio','','','2023-01-16 20:52:29','2023-01-16 20:52:29','',66,'http://fictional-university.local/wp-content/uploads/2023/01/frog-bio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-01-16 21:14:06','2023-01-16 21:14:06','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner','page-banner','publish','closed','closed','','group_63c5bdee0c632','','','2023-01-16 21:17:19','2023-01-16 21:17:19','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=68',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-01-16 21:14:06','2023-01-16 21:14:06','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_63c5bdeec1de7','','','2023-01-16 21:15:32','2023-01-16 21:15:32','',68,'http://fictional-university.local/?post_type=acf-field&#038;p=69',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-01-16 21:15:32','2023-01-16 21:15:32','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_63c5be56c3f11','','','2023-01-16 21:17:19','2023-01-16 21:17:19','',68,'http://fictional-university.local/?post_type=acf-field&#038;p=70',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2023-01-16 21:51:19','2023-01-16 21:51:19','','field','','inherit','open','closed','','field','','','2023-01-16 21:51:19','2023-01-16 21:51:19','',63,'http://fictional-university.local/wp-content/uploads/2023/01/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (72,1,'2023-01-21 16:42:43','2023-01-21 16:42:43','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','12-revision-v1','','','2023-01-21 16:42:43','2023-01-21 16:42:43','',12,'http://fictional-university.local/?p=72',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-01-21 16:46:49','2023-01-21 16:46:49','','building','','inherit','open','closed','','building','','','2023-01-21 16:46:49','2023-01-21 16:46:49','',12,'http://fictional-university.local/wp-content/uploads/2023/01/building.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2023-01-21 16:48:56','2023-01-21 16:48:56','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','12-revision-v1','','','2023-01-21 16:48:56','2023-01-21 16:48:56','',12,'http://fictional-university.local/?p=75',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2023-01-21 16:50:14','2023-01-21 16:50:14','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','12-revision-v1','','','2023-01-21 16:50:14','2023-01-21 16:50:14','',12,'http://fictional-university.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2023-01-21 16:50:39','2023-01-21 16:50:39','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','12-revision-v1','','','2023-01-21 16:50:39','2023-01-21 16:50:39','',12,'http://fictional-university.local/?p=77',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-01-21 16:53:49','2023-01-21 16:53:49','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','12-revision-v1','','','2023-01-21 16:53:49','2023-01-21 16:53:49','',12,'http://fictional-university.local/?p=78',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2023-01-21 16:54:34','2023-01-21 16:54:34','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis tellus et diam gravida, sit amet suscipit magna luctus. Phasellus lobortis risus tortor, eget fringilla mauris feugiat id. Maecenas vel tortor elit. Fusce dictum ex vitae enim luctus pellentesque. Integer porta enim nibh, sit amet tincidunt elit fermentum ultricies. Nunc in lorem quis nunc varius viverra. Nunc malesuada nisl porttitor metus porta dignissim. Morbi vel gravida justo. Morbi leo est, tincidunt quis diam at, tincidunt blandit quam. Morbi cursus pharetra magna eget accumsan.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','12-revision-v1','','','2023-01-21 16:54:34','2023-01-21 16:54:34','',12,'http://fictional-university.local/?p=79',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-01-21 17:48:38','2023-01-21 17:48:38','','notebook','','inherit','open','closed','','notebook','','','2023-01-21 17:48:38','2023-01-21 17:48:38','',43,'http://fictional-university.local/wp-content/uploads/2022/12/notebook.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-01-22 16:59:54','2023-01-22 16:59:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat sed cras ornare arcu. Leo in vitae turpis massa sed. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan. Sed enim ut sem viverra aliquet eget sit amet tellus. Ut enim blandit volutpat maecenas volutpat. Libero enim sed faucibus turpis in eu. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Eu turpis egestas pretium aenean pharetra magna ac. Ipsum dolor sit amet consectetur adipiscing elit. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Donec adipiscing tristique risus nec feugiat in. Varius quam quisque id diam vel quam elementum pulvinar etiam. Convallis aenean et tortor at risus. Sit amet cursus sit amet dictum sit amet justo. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mus mauris vitae ultricies leo integer malesuada nunc vel risus. Nisi porta lorem mollis aliquam ut porttitor leo. Arcu risus quis varius quam quisque id diam vel. In aliquam sem fringilla ut morbi tincidunt augue interdum. Sit amet mattis vulputate enim nulla aliquet. Eu feugiat pretium nibh ipsum consequat. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Ipsum consequat nisl vel pretium lectus. Vel risus commodo viverra maecenas accumsan lacus. Quam nulla porttitor massa id neque aliquam vestibulum morbi. Ullamcorper sit amet risus nullam eget felis eget nunc lobortis. Ut tellus elementum sagittis vitae et leo duis ut diam. Purus sit amet volutpat consequat mauris nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In arcu cursus euismod quis viverra nibh cras pulvinar. Cursus sit amet dictum sit amet justo donec. Arcu vitae elementum curabitur vitae. Vitae elementum curabitur vitae nunc sed velit. Lacus sed viverra tellus in. Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Cursus turpis massa tincidunt dui ut ornare lectus. Fusce ut placerat orci nulla pellentesque dignissim. Tellus cras adipiscing enim eu turpis. Aliquam etiam erat velit scelerisque in dictum non consectetur. Risus pretium quam vulputate dignissim suspendisse in. Ut sem viverra aliquet eget sit. Pellentesque sit amet porttitor eget dolor morbi. Nibh mauris cursus mattis molestie a iaculis. Cursus risus at ultrices mi tempus imperdiet. Mauris in aliquam sem fringilla ut. Consequat nisl vel pretium lectus quam id leo in vitae. Tellus orci ac auctor augue mauris augue neque gravida in. Rhoncus mattis rhoncus urna neque. Arcu felis bibendum ut tristique.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras tincidunt lobortis feugiat vivamus at augue. Purus faucibus ornare suspendisse sed nisi lacus sed viverra. Ac placerat vestibulum lectus mauris ultrices eros in cursus. Arcu ac tortor dignissim convallis aenean et tortor at risus. Curabitur gravida arcu ac tortor dignissim convallis aenean et. Mi tempus imperdiet nulla malesuada. Leo vel fringilla est ullamcorper eget. Sit amet venenatis urna cursus eget. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Sollicitudin nibh sit amet commodo nulla. Odio pellentesque diam volutpat commodo sed egestas egestas. Amet aliquam id diam maecenas ultricies mi eget. Sit amet tellus cras adipiscing enim eu turpis egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus vestibulum lorem sed risus ultricies tristique. Vitae suscipit tellus mauris a diam maecenas sed enim. Massa id neque aliquam vestibulum. Et molestie ac feugiat sed lectus. Volutpat blandit aliquam etiam erat velit. Sed vulputate odio ut enim blandit volutpat maecenas volutpat. Tincidunt vitae semper quis lectus. Adipiscing enim eu turpis egestas pretium aenean pharetra magna ac. Vel quam elementum pulvinar etiam non. Ac ut consequat semper viverra nam. Ut sem nulla pharetra diam sit amet nisl suscipit adipiscing. Laoreet suspendisse interdum consectetur libero.</p>\n<!-- /wp:paragraph -->','Downtown West','','publish','closed','closed','','downtown-west','','','2023-01-22 16:59:54','2023-01-22 16:59:54','',0,'http://fictional-university.local/?post_type=campus&#038;p=81',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2023-01-22 17:00:16','2023-01-22 17:00:16','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat sed cras ornare arcu. Leo in vitae turpis massa sed. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan. Sed enim ut sem viverra aliquet eget sit amet tellus. Ut enim blandit volutpat maecenas volutpat. Libero enim sed faucibus turpis in eu. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Eu turpis egestas pretium aenean pharetra magna ac. Ipsum dolor sit amet consectetur adipiscing elit. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Donec adipiscing tristique risus nec feugiat in. Varius quam quisque id diam vel quam elementum pulvinar etiam. Convallis aenean et tortor at risus. Sit amet cursus sit amet dictum sit amet justo. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mus mauris vitae ultricies leo integer malesuada nunc vel risus. Nisi porta lorem mollis aliquam ut porttitor leo. Arcu risus quis varius quam quisque id diam vel. In aliquam sem fringilla ut morbi tincidunt augue interdum. Sit amet mattis vulputate enim nulla aliquet. Eu feugiat pretium nibh ipsum consequat. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Ipsum consequat nisl vel pretium lectus. Vel risus commodo viverra maecenas accumsan lacus. Quam nulla porttitor massa id neque aliquam vestibulum morbi. Ullamcorper sit amet risus nullam eget felis eget nunc lobortis. Ut tellus elementum sagittis vitae et leo duis ut diam. Purus sit amet volutpat consequat mauris nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In arcu cursus euismod quis viverra nibh cras pulvinar. Cursus sit amet dictum sit amet justo donec. Arcu vitae elementum curabitur vitae. Vitae elementum curabitur vitae nunc sed velit. Lacus sed viverra tellus in. Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Cursus turpis massa tincidunt dui ut ornare lectus. Fusce ut placerat orci nulla pellentesque dignissim. Tellus cras adipiscing enim eu turpis. Aliquam etiam erat velit scelerisque in dictum non consectetur. Risus pretium quam vulputate dignissim suspendisse in. Ut sem viverra aliquet eget sit. Pellentesque sit amet porttitor eget dolor morbi. Nibh mauris cursus mattis molestie a iaculis. Cursus risus at ultrices mi tempus imperdiet. Mauris in aliquam sem fringilla ut. Consequat nisl vel pretium lectus quam id leo in vitae. Tellus orci ac auctor augue mauris augue neque gravida in. Rhoncus mattis rhoncus urna neque. Arcu felis bibendum ut tristique.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras tincidunt lobortis feugiat vivamus at augue. Purus faucibus ornare suspendisse sed nisi lacus sed viverra. Ac placerat vestibulum lectus mauris ultrices eros in cursus. Arcu ac tortor dignissim convallis aenean et tortor at risus. Curabitur gravida arcu ac tortor dignissim convallis aenean et. Mi tempus imperdiet nulla malesuada. Leo vel fringilla est ullamcorper eget. Sit amet venenatis urna cursus eget. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Sollicitudin nibh sit amet commodo nulla. Odio pellentesque diam volutpat commodo sed egestas egestas. Amet aliquam id diam maecenas ultricies mi eget. Sit amet tellus cras adipiscing enim eu turpis egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus vestibulum lorem sed risus ultricies tristique. Vitae suscipit tellus mauris a diam maecenas sed enim. Massa id neque aliquam vestibulum. Et molestie ac feugiat sed lectus. Volutpat blandit aliquam etiam erat velit. Sed vulputate odio ut enim blandit volutpat maecenas volutpat. Tincidunt vitae semper quis lectus. Adipiscing enim eu turpis egestas pretium aenean pharetra magna ac. Vel quam elementum pulvinar etiam non. Ac ut consequat semper viverra nam. Ut sem nulla pharetra diam sit amet nisl suscipit adipiscing. Laoreet suspendisse interdum consectetur libero.</p>\n<!-- /wp:paragraph -->','Downtown East','','publish','closed','closed','','downtown-east','','','2023-01-22 17:00:16','2023-01-22 17:00:16','',0,'http://fictional-university.local/?post_type=campus&#038;p=82',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2023-01-22 17:01:47','2023-01-22 17:01:47','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Map Location','map-location','publish','closed','closed','','group_63cd6be7eecba','','','2023-01-22 17:02:50','2023-01-22 17:02:50','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=83',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2023-01-22 17:01:47','2023-01-22 17:01:47','a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map Location','map_location','publish','closed','closed','','field_63cd6be80b678','','','2023-01-22 17:02:50','2023-01-22 17:02:50','',83,'http://fictional-university.local/?post_type=acf-field&#038;p=84',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2023-01-25 15:11:29','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-01-25 15:11:29','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=85',0,'post','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2023-01-25 15:49:37','2023-01-25 15:49:37','','Campuses','','publish','closed','closed','','campuses','','','2023-01-25 15:49:37','2023-01-25 15:49:37','',0,'http://fictional-university.local/?p=86',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2023-01-25 20:17:43','2023-01-25 20:17:43','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Campus(es)','related-campuses','publish','closed','closed','','group_63d18dd631bff','','','2023-01-25 20:24:09','2023-01-25 20:24:09','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=87',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2023-01-25 20:17:43','2023-01-25 20:17:43','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";}','Related Campus(es)','related_campus','publish','closed','closed','','field_63d18dd69c380','','','2023-01-25 20:24:09','2023-01-25 20:24:09','',87,'http://fictional-university.local/?post_type=acf-field&#038;p=88',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2023-01-26 00:48:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2023-01-26 00:48:34','0000-00-00 00:00:00','',0,'http://fictional-university.local/?page_id=89',0,'page','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2023-01-28 18:00:53','2023-01-28 18:00:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Feugiat sed lectus vestibulum mattis ullamcorper velit sed. Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin. Justo laoreet sit amet cursus sit amet dictum sit amet. Sit amet dictum sit amet. Consequat nisl vel pretium lectus quam id leo in vitae. Rhoncus dolor purus non enim praesent. Molestie nunc non blandit massa. Nunc faucibus a pellentesque sit amet porttitor eget dolor morbi. Viverra nam libero justo laoreet sit amet cursus sit amet. Nulla porttitor massa id neque aliquam vestibulum morbi. Leo integer malesuada nunc vel risus commodo viverra maecenas. Sed cras ornare arcu dui. Tincidunt lobortis feugiat vivamus at. Convallis posuere morbi leo urna molestie at elementum. Facilisis volutpat est velit egestas dui id ornare arcu odio. Magna etiam tempor orci eu. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. Arcu felis bibendum ut tristique et egestas quis.</p>\n<!-- /wp:paragraph -->','Biology is cool','','publish','open','open','','biology-is-cool','','','2023-01-28 18:00:53','2023-01-28 18:00:53','',0,'http://fictional-university.local/?p=90',0,'post','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2023-01-28 18:00:53','2023-01-28 18:00:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Feugiat sed lectus vestibulum mattis ullamcorper velit sed. Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin. Justo laoreet sit amet cursus sit amet dictum sit amet. Sit amet dictum sit amet. Consequat nisl vel pretium lectus quam id leo in vitae. Rhoncus dolor purus non enim praesent. Molestie nunc non blandit massa. Nunc faucibus a pellentesque sit amet porttitor eget dolor morbi. Viverra nam libero justo laoreet sit amet cursus sit amet. Nulla porttitor massa id neque aliquam vestibulum morbi. Leo integer malesuada nunc vel risus commodo viverra maecenas. Sed cras ornare arcu dui. Tincidunt lobortis feugiat vivamus at. Convallis posuere morbi leo urna molestie at elementum. Facilisis volutpat est velit egestas dui id ornare arcu odio. Magna etiam tempor orci eu. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. Arcu felis bibendum ut tristique et egestas quis.</p>\n<!-- /wp:paragraph -->','Biology is cool','','inherit','closed','closed','','90-revision-v1','','','2023-01-28 18:00:53','2023-01-28 18:00:53','',90,'http://fictional-university.local/?p=91',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2023-01-28 18:00:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-01-28 18:00:55','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=92',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,4,0);
INSERT INTO `wp_term_relationships` VALUES (36,5,0);
INSERT INTO `wp_term_relationships` VALUES (39,3,0);
INSERT INTO `wp_term_relationships` VALUES (45,3,0);
INSERT INTO `wp_term_relationships` VALUES (60,3,0);
INSERT INTO `wp_term_relationships` VALUES (86,3,0);
INSERT INTO `wp_term_relationships` VALUES (90,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','Awards over time',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Footer Location One','footer-location-one',0);
INSERT INTO `wp_terms` VALUES (3,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Footer Location Two','footer-location-two',0);
INSERT INTO `wp_terms` VALUES (5,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Natasha');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','hello world');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"38b7b2558cba38ec87d8b3bc3291e70426413c74d8be685c37be8c387988908a\";a:4:{s:10:\"expiration\";i:1675096989;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.2 Safari/605.1.15\";s:5:\"login\";i:1674924189;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','85');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:6:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:23:\"taxonomy-panel-category\";i:3;s:12:\"post-excerpt\";i:4;s:14:\"featured-image\";i:5;s:16:\"discussion-panel\";}}s:9:\"_modified\";s:24:\"2023-01-26T00:48:44.405Z\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (23,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (27,1,'wp_user-settings-time','1673900495');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'natasham','$P$BjUoutlJc.Ak1NiMd/tQk2VaThpW/a1','natasham','nmatthews_1990@hotmail.com','http://fictional-university.local','2022-12-17 21:39:52','',0,'Natasha');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 22:15:29
