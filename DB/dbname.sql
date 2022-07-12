-- --------------------------------------------------------
-- Сервер:                       127.0.0.1
-- Версія сервера:               10.6.5-MariaDB-log - mariadb.org binary distribution
-- ОС сервера:                   Win64
-- HeidiSQL Версія:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for таблиця saphira.qsena_aiowps_debug_log
CREATE TABLE IF NOT EXISTS `qsena_aiowps_debug_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_aiowps_events
CREATE TABLE IF NOT EXISTS `qsena_aiowps_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(150) NOT NULL DEFAULT '',
  `username` varchar(150) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `ip_or_host` varchar(100) DEFAULT NULL,
  `referer_info` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `event_data` longtext DEFAULT NULL,
  `country_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_aiowps_failed_logins
CREATE TABLE IF NOT EXISTS `qsena_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_attempt_ip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_aiowps_global_meta
CREATE TABLE IF NOT EXISTS `qsena_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_aiowps_login_activity
CREATE TABLE IF NOT EXISTS `qsena_aiowps_login_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `logout_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_ip` varchar(100) NOT NULL DEFAULT '',
  `login_country` varchar(150) NOT NULL DEFAULT '',
  `browser_type` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_aiowps_login_lockdown
CREATE TABLE IF NOT EXISTS `qsena_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `release_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `failed_login_ip` varchar(100) NOT NULL DEFAULT '',
  `unlock_key` varchar(128) NOT NULL,
  `lock_reason` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_aiowps_permanent_block
CREATE TABLE IF NOT EXISTS `qsena_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_blc_filters
CREATE TABLE IF NOT EXISTS `qsena_blc_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_blc_instances
CREATE TABLE IF NOT EXISTS `qsena_blc_instances` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL,
  `container_id` int(10) unsigned NOT NULL,
  `container_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `link_text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parser_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'link',
  `container_field` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_context` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `raw_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`instance_id`),
  KEY `link_id` (`link_id`),
  KEY `source_id` (`container_type`,`container_id`),
  KEY `parser_type` (`parser_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_blc_links
CREATE TABLE IF NOT EXISTS `qsena_blc_links` (
  `link_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `first_failure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_check` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_success` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_check_attempt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_count` int(4) unsigned NOT NULL DEFAULT 0,
  `final_url` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `redirect_count` smallint(5) unsigned NOT NULL DEFAULT 0,
  `log` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `http_code` smallint(6) NOT NULL DEFAULT 0,
  `status_code` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `status_text` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `request_duration` float NOT NULL DEFAULT 0,
  `timeout` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `broken` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `warning` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `may_recheck` tinyint(1) NOT NULL DEFAULT 1,
  `being_checked` tinyint(1) NOT NULL DEFAULT 0,
  `result_hash` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `false_positive` tinyint(1) NOT NULL DEFAULT 0,
  `dismissed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`link_id`),
  KEY `url` (`url`(150)),
  KEY `final_url` (`final_url`(150)),
  KEY `http_code` (`http_code`),
  KEY `broken` (`broken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_blc_synch
CREATE TABLE IF NOT EXISTS `qsena_blc_synch` (
  `container_id` int(20) unsigned NOT NULL,
  `container_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `synched` tinyint(2) unsigned NOT NULL,
  `last_synch` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`container_type`,`container_id`),
  KEY `synched` (`synched`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_commentmeta
CREATE TABLE IF NOT EXISTS `qsena_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_comments
CREATE TABLE IF NOT EXISTS `qsena_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_db7_forms
CREATE TABLE IF NOT EXISTS `qsena_db7_forms` (
  `form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_links
CREATE TABLE IF NOT EXISTS `qsena_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_options
CREATE TABLE IF NOT EXISTS `qsena_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=2454 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_postmeta
CREATE TABLE IF NOT EXISTS `qsena_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=1813 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_posts
CREATE TABLE IF NOT EXISTS `qsena_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=420 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_termmeta
CREATE TABLE IF NOT EXISTS `qsena_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_terms
CREATE TABLE IF NOT EXISTS `qsena_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_term_relationships
CREATE TABLE IF NOT EXISTS `qsena_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_term_taxonomy
CREATE TABLE IF NOT EXISTS `qsena_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_tm_taskmeta
CREATE TABLE IF NOT EXISTS `qsena_tm_taskmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `task_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_tm_tasks
CREATE TABLE IF NOT EXISTS `qsena_tm_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `type` varchar(300) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `class_identifier` varchar(300) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `attempts` int(11) DEFAULT 0,
  `description` varchar(300) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_locked_at` bigint(20) DEFAULT 0,
  `status` varchar(300) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_usermeta
CREATE TABLE IF NOT EXISTS `qsena_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_users
CREATE TABLE IF NOT EXISTS `qsena_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_wpfm_backup
CREATE TABLE IF NOT EXISTS `qsena_wpfm_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `backup_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backup_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_yoast_seo_links
CREATE TABLE IF NOT EXISTS `qsena_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дані для експорту не вибрані

-- Dumping structure for таблиця saphira.qsena_yoast_seo_meta
CREATE TABLE IF NOT EXISTS `qsena_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дані для експорту не вибрані

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
