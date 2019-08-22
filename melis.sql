-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2019 at 06:19 AM
-- Server version: 5.5.58-log
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `melis-author`
--

-- --------------------------------------------------------

--
-- Table structure for table `changelog`
--

CREATE TABLE `changelog` (
  `change_number` bigint(20) NOT NULL,
  `delta_set` varchar(10) NOT NULL,
  `start_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `complete_dt` timestamp NULL DEFAULT NULL,
  `applied_by` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changelog`
--

INSERT INTO `changelog` (`change_number`, `delta_set`, `start_dt`, `complete_dt`, `applied_by`, `description`) VALUES
(83118, 'Main', '2019-04-11 05:45:40', NULL, 'MelisDbDeploy', '83118_cms_slider_install.sql'),
(93118, 'Main', '2019-04-11 05:45:42', '2019-04-11 05:45:42', 'MelisDbDeploy', '93118_melis_site_robot_install.sql'),
(112718, 'Main', '2019-04-11 05:45:40', NULL, 'MelisDbDeploy', '112718_core_udpate.sql'),
(112818, 'Main', '2019-04-11 05:45:40', NULL, 'MelisDbDeploy', '112818_core_update.sql'),
(131918, 'Main', '2019-04-11 05:45:42', NULL, 'MelisDbDeploy', '131918_engine_update.sql'),
(141818, 'Main', '2019-04-11 05:45:42', NULL, 'MelisDbDeploy', '141818_engine_update.sql'),
(151118, 'Main', '2019-04-11 05:45:45', '2019-04-11 05:45:45', 'MelisDbDeploy', '151118_engine_install.sql'),
(151718, 'Main', '2019-04-11 05:45:45', '2019-04-11 05:45:45', 'MelisDbDeploy', '151718_core_dashboard_plugins.sql'),
(172318, 'Main', '2019-04-11 05:45:46', '2019-04-11 05:45:46', 'MelisDbDeploy', '172318_engine_update.sql'),
(251118, 'Main', '2019-04-11 05:45:46', '2019-04-11 05:45:46', 'MelisDbDeploy', '251118_engine_update.sql'),
(312618, 'Main', '2019-04-11 05:45:46', '2019-04-11 05:45:46', 'MelisDbDeploy', '312618_calendar_install.sql'),
(351118, 'Main', '2019-04-11 05:45:46', '2019-04-11 05:45:46', 'MelisDbDeploy', '351118_engine_update.sql'),
(512618, 'Main', '2019-04-11 05:45:46', '2019-04-11 05:45:46', 'MelisDbDeploy', '512618_cms_page_analytics_install.sql'),
(612618, 'Main', '2019-04-11 05:45:47', '2019-04-11 05:45:47', 'MelisDbDeploy', '612618_cms_page_historic_install.sql'),
(712618, 'Main', '2019-04-11 05:45:48', '2019-04-11 05:45:48', 'MelisDbDeploy', '712618_cms_prospects_install.sql'),
(1101818, 'Main', '2019-04-11 05:45:51', '2019-04-11 05:45:51', 'MelisDbDeploy', '1101818_core_install.sql'),
(1101918, 'Main', '2019-04-11 05:45:52', '2019-04-11 05:45:52', 'MelisDbDeploy', '1101918_melis_site_translation_structure.sql'),
(1112018, 'Main', '2019-04-11 05:45:52', NULL, 'MelisDbDeploy', '1112018_engine_update.sql'),
(1112618, 'Main', '2019-04-11 05:45:53', '2019-04-11 05:45:53', 'MelisDbDeploy', '1112618_melis_messenger_install.sql'),
(1120718, 'Main', '2019-04-11 05:45:53', '2019-04-11 05:45:53', 'MelisDbDeploy', '1120718_engine_update.sql'),
(1220119, 'Main', '2019-04-11 05:45:54', '2019-04-11 05:45:54', 'MelisDbDeploy', '1220119_cms_news_install.sql'),
(2101918, 'Main', '2019-04-11 05:45:54', '2019-04-11 05:45:54', 'MelisDbDeploy', '2101918_melis_site_translation_update.sql'),
(7102318, 'Main', '2019-04-11 05:45:55', '2019-04-11 05:45:55', 'MelisDbDeploy', '7102318_cms_prospects_update.sql');

-- --------------------------------------------------------

--
-- Table structure for table `melis_calendar`
--

CREATE TABLE `melis_calendar` (
  `cal_id` int(11) NOT NULL,
  `cal_event_title` text NOT NULL,
  `cal_date_start` date NOT NULL,
  `cal_date_end` date NOT NULL,
  `cal_created_by` int(11) DEFAULT NULL,
  `cal_last_update_by` int(11) DEFAULT NULL,
  `cal_date_last_update` datetime DEFAULT NULL,
  `cal_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_domain_robots`
--

CREATE TABLE `melis_cms_domain_robots` (
  `robot_id` int(11) NOT NULL,
  `robot_site_domain` varchar(200) DEFAULT NULL,
  `robot_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_lang`
--

CREATE TABLE `melis_cms_lang` (
  `lang_cms_id` int(11) NOT NULL,
  `lang_cms_locale` varchar(10) NOT NULL,
  `lang_cms_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_lang`
--

INSERT INTO `melis_cms_lang` (`lang_cms_id`, `lang_cms_locale`, `lang_cms_name`) VALUES
(1, 'en_EN', 'English'),
(2, 'fr_FR', 'Français');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_news`
--

CREATE TABLE `melis_cms_news` (
  `cnews_id` int(11) NOT NULL,
  `cnews_status` tinyint(4) NOT NULL DEFAULT '0',
  `cnews_image1` longtext,
  `cnews_image2` longtext,
  `cnews_image3` longtext,
  `cnews_documents1` longtext,
  `cnews_documents2` longtext,
  `cnews_documents3` longtext,
  `cnews_creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cnews_publish_date` datetime DEFAULT NULL,
  `cnews_unpublish_date` datetime DEFAULT NULL,
  `cnews_slider_id` int(11) DEFAULT NULL,
  `cnews_site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_news_texts`
--

CREATE TABLE `melis_cms_news_texts` (
  `cnews_text_id` int(11) NOT NULL,
  `cnews_title` varchar(255) DEFAULT NULL,
  `cnews_subtitle` varchar(255) DEFAULT NULL,
  `cnews_paragraph1` longtext,
  `cnews_paragraph2` longtext,
  `cnews_paragraph3` longtext,
  `cnews_paragraph4` longtext,
  `cnews_id` int(11) DEFAULT NULL,
  `cnews_lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_analytics`
--

CREATE TABLE `melis_cms_page_analytics` (
  `ph_id` int(11) NOT NULL,
  `ph_page_id` int(11) NOT NULL,
  `ph_session_id` varchar(100) NOT NULL,
  `ph_date_visit` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_analytics_data`
--

CREATE TABLE `melis_cms_page_analytics_data` (
  `pad_id` int(11) NOT NULL,
  `pad_site_id` int(11) NOT NULL,
  `pad_analytics_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_page_analytics_data`
--

INSERT INTO `melis_cms_page_analytics_data` (`pad_id`, `pad_site_id`, `pad_analytics_key`) VALUES
(1, 1, 'melis_cms_page_analytics');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_analytics_data_settings`
--

CREATE TABLE `melis_cms_page_analytics_data_settings` (
  `pads_id` int(11) NOT NULL,
  `pads_site_id` int(11) NOT NULL,
  `pads_analytics_key` varchar(100) NOT NULL,
  `pads_settings` longtext,
  `pads_js_analytics` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_page_analytics_data_settings`
--

INSERT INTO `melis_cms_page_analytics_data_settings` (`pads_id`, `pads_site_id`, `pads_analytics_key`, `pads_settings`, `pads_js_analytics`) VALUES
(1, 1, 'melis_cms_page_analytics', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_default_urls`
--

CREATE TABLE `melis_cms_page_default_urls` (
  `purl_page_id` int(11) NOT NULL,
  `purl_page_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table saves the URLs of all pages, avoiding generation on demand by juste requesting it';

--
-- Dumping data for table `melis_cms_page_default_urls`
--

INSERT INTO `melis_cms_page_default_urls` (`purl_page_id`, `purl_page_url`) VALUES
(1, '/'),
(2, '/blogs/id/2'),
(3, '/authors/blogs/id/3');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_lang`
--

CREATE TABLE `melis_cms_page_lang` (
  `plang_id` int(11) NOT NULL,
  `plang_page_id` int(11) NOT NULL,
  `plang_lang_id` int(11) NOT NULL,
  `plang_page_id_initial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Relation between pages and lang';

--
-- Dumping data for table `melis_cms_page_lang`
--

INSERT INTO `melis_cms_page_lang` (`plang_id`, `plang_page_id`, `plang_lang_id`, `plang_page_id_initial`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_published`
--

CREATE TABLE `melis_cms_page_published` (
  `page_id` int(11) NOT NULL,
  `page_type` enum('SITE','FOLDER','PAGE','NEWSLETTER') NOT NULL DEFAULT 'PAGE',
  `page_status` tinyint(4) NOT NULL DEFAULT '1',
  `page_menu` enum('LINK','NOLINK','NONE') NOT NULL DEFAULT 'LINK',
  `page_name` varchar(255) NOT NULL,
  `page_tpl_id` int(11) NOT NULL,
  `page_content` longtext,
  `page_taxonomy` text,
  `page_creation_date` datetime DEFAULT NULL,
  `page_edit_date` datetime DEFAULT NULL,
  `page_last_user_id` int(11) DEFAULT NULL,
  `page_search_type` varchar(60) NOT NULL DEFAULT 'tr_meliscms_page_tab_properties_search_type_option1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of published pages';

--
-- Dumping data for table `melis_cms_page_published`
--

INSERT INTO `melis_cms_page_published` (`page_id`, `page_type`, `page_status`, `page_menu`, `page_name`, `page_tpl_id`, `page_content`, `page_taxonomy`, `page_creation_date`, `page_edit_date`, `page_last_user_id`, `page_search_type`) VALUES
(1, 'SITE', 1, 'LINK', 'Authors', 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">\n		<melisTag id=\"book-desc\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[Divinity is within us. If only we can harness its maximum potential, our lives can change for the better. How do we do that? <br /><br /> Elder Charles Adu-Gyamfi has the answer in Believers&rsquo; Daily Decrees, Declarations, and Confessions. Every page is a treasure trove of wisdom that helps you build a better relationship with the Lord. It also offers inspiring ways to open your heart and mind so that only good things come out of your mouth. <br /><br /> &ldquo;The tongue has the power of life and death, and those who love it will eat its fruit&rdquo; (Proverbs 18:21, NIV). <br /><br /> So make positive declarations. Believe in the power of the God that lies within you.]]></melisTag>\n\n		<melisTag id=\"header-h1\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[Believers]]></melisTag>\n\n		<melisTag id=\"header-h3\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[ELDER CHARLES ADU-GYAMFI]]></melisTag>\n\n	<melisTag id=\"author-img\" plugin_container_id=\"\" type=\"media\"><![CDATA[<img src=\"/Authors/assets/images/book-img.png\" class=\"img-responsive\" alt=\"author-img\" />]]></melisTag>\n		<melisTag id=\"header-h2\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[Daily Decrees, Declarations, and Confessions]]></melisTag>\n\n</document>', '', '2019-05-20 05:00:00', '2019-05-20 08:54:16', 1, 'tr_meliscms_page_tab_properties_search_type_option1'),
(2, 'PAGE', 1, 'LINK', 'Blogs', 2, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-05-20 05:00:00', '2019-05-30 05:25:46', 1, 'tr_meliscms_page_tab_properties_search_type_option1');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_saved`
--

CREATE TABLE `melis_cms_page_saved` (
  `page_id` int(11) NOT NULL,
  `page_type` enum('SITE','FOLDER','PAGE','NEWSLETTER') NOT NULL DEFAULT 'PAGE',
  `page_status` tinyint(4) NOT NULL DEFAULT '1',
  `page_menu` enum('LINK','NOLINK','NONE') NOT NULL DEFAULT 'LINK',
  `page_name` varchar(255) NOT NULL,
  `page_tpl_id` int(11) NOT NULL,
  `page_content` longtext,
  `page_taxonomy` text,
  `page_creation_date` datetime DEFAULT NULL,
  `page_edit_date` datetime DEFAULT NULL,
  `page_last_user_id` int(11) DEFAULT NULL,
  `page_search_type` varchar(60) NOT NULL DEFAULT 'tr_meliscms_page_tab_properties_search_type_option1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of saved pages';

--
-- Dumping data for table `melis_cms_page_saved`
--

INSERT INTO `melis_cms_page_saved` (`page_id`, `page_type`, `page_status`, `page_menu`, `page_name`, `page_tpl_id`, `page_content`, `page_taxonomy`, `page_creation_date`, `page_edit_date`, `page_last_user_id`, `page_search_type`) VALUES
(1, 'SITE', 1, 'LINK', 'Authors', 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">\n	<melisTag id=\"book-desc\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[Divinity is within us. If only we can harness its maximum potential, our lives can change for the better. How do we do that? <br /><br /> Elder Charles Adu-Gyamfi has the answer in Believers&rsquo; Daily Decrees, Declarations, and Confessions. Every page is a treasure trove of wisdom that helps you build a better relationship with the Lord. It also offers inspiring ways to open your heart and mind so that only good things come out of your mouth. <br /><br /> &ldquo;The tongue has the power of life and death, and those who love it will eat its fruit&rdquo; (Proverbs 18:21, NIV). <br /><br /> So make positive declarations. Believe in the power of the God that lies within you.]]></melisTag>\n	<melisTag id=\"header-h1\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[Believers]]></melisTag>\n	<melisTag id=\"header-h3\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[ELDER CHARLES ADU-GYAMFI]]></melisTag>\n		<melisTag id=\"author-img\" plugin_container_id=\"\" type=\"media\"><![CDATA[<img src=\"/Authors/assets/images/book-img.png\" class=\"img-responsive\" alt=\"author-img\" width=\"483\" height=\"591\" />]]></melisTag>\n\n	<melisTag id=\"header-h2\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[Daily Decrees, Declarations, and Confessions]]></melisTag>\n	<melisTag id=\"book-btn\" plugin_container_id=\"\" type=\"html\"><![CDATA[<p><a href=\"https://www.sample.com\" target=\"_blank\" class=\"btn-style buy-book\" rel=\"noopener\">Buy The Book</a></p>]]></melisTag>\n</document>', '', '2019-05-20 05:00:00', '2019-05-20 09:23:37', 1, 'tr_meliscms_page_tab_properties_search_type_option1'),
(3, 'PAGE', 1, 'LINK', 'Details', 3, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">\n</document>', '', '2019-05-30 05:31:45', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_seo`
--

CREATE TABLE `melis_cms_page_seo` (
  `pseo_id` int(11) NOT NULL,
  `pseo_url` varchar(255) DEFAULT NULL,
  `pseo_url_redirect` varchar(255) DEFAULT NULL,
  `pseo_url_301` varchar(255) DEFAULT NULL,
  `pseo_meta_title` text,
  `pseo_meta_description` text,
  `pseo_canonical` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SEO datas for pages';

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_style`
--

CREATE TABLE `melis_cms_page_style` (
  `pstyle_id` int(11) NOT NULL COMMENT 'Table''s primary key',
  `pstyle_page_id` int(11) NOT NULL,
  `pstyle_style_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_tree`
--

CREATE TABLE `melis_cms_page_tree` (
  `tree_page_id` int(11) NOT NULL,
  `tree_father_page_id` int(11) NOT NULL DEFAULT '-1',
  `tree_page_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of Melis pages, and their parents';

--
-- Dumping data for table `melis_cms_page_tree`
--

INSERT INTO `melis_cms_page_tree` (`tree_page_id`, `tree_father_page_id`, `tree_page_order`) VALUES
(1, -1, 1),
(2, 1, 1),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_platform_ids`
--

CREATE TABLE `melis_cms_platform_ids` (
  `pids_id` int(11) NOT NULL,
  `pids_page_id_start` int(11) NOT NULL,
  `pids_page_id_current` int(11) NOT NULL,
  `pids_page_id_end` int(11) NOT NULL,
  `pids_tpl_id_start` int(11) NOT NULL,
  `pids_tpl_id_current` int(11) NOT NULL,
  `pids_tpl_id_end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves ids intervals for each environment so that no duplicate id can occur between platforms';

--
-- Dumping data for table `melis_cms_platform_ids`
--

INSERT INTO `melis_cms_platform_ids` (`pids_id`, `pids_page_id_start`, `pids_page_id_current`, `pids_page_id_end`, `pids_tpl_id_start`, `pids_tpl_id_current`, `pids_tpl_id_end`) VALUES
(1, 1, 4, 1000, 1, 4, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_prospects`
--

CREATE TABLE `melis_cms_prospects` (
  `pros_id` int(11) NOT NULL,
  `pros_site_id` int(11) DEFAULT NULL,
  `pros_type` varchar(255) DEFAULT NULL,
  `pros_theme` int(11) DEFAULT NULL,
  `pros_name` varchar(255) DEFAULT NULL,
  `pros_email` varchar(150) DEFAULT NULL,
  `pros_telephone` varchar(20) DEFAULT NULL,
  `pros_message` text,
  `pros_company` varchar(45) DEFAULT NULL,
  `pros_country` varchar(45) DEFAULT NULL,
  `pros_contact_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_prospects_themes`
--

CREATE TABLE `melis_cms_prospects_themes` (
  `pros_theme_id` int(11) NOT NULL,
  `pros_theme_name` varchar(45) NOT NULL,
  `pros_theme_code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_prospects_themes`
--

INSERT INTO `melis_cms_prospects_themes` (`pros_theme_id`, `pros_theme_name`, `pros_theme_code`) VALUES
(1, 'Contact us', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_prospects_theme_items`
--

CREATE TABLE `melis_cms_prospects_theme_items` (
  `pros_theme_item_id` int(11) NOT NULL,
  `pros_theme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_prospects_theme_items_trans`
--

CREATE TABLE `melis_cms_prospects_theme_items_trans` (
  `item_trans_id` int(11) NOT NULL,
  `item_trans_text` varchar(255) NOT NULL,
  `item_trans_lang_id` int(11) NOT NULL,
  `item_trans_theme_item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site`
--

CREATE TABLE `melis_cms_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(45) NOT NULL,
  `site_label` varchar(100) NOT NULL,
  `site_main_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of melis websites declared';

--
-- Dumping data for table `melis_cms_site`
--

INSERT INTO `melis_cms_site` (`site_id`, `site_name`, `site_label`, `site_main_page_id`) VALUES
(1, 'Authors', 'Authors', 1);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site_301`
--

CREATE TABLE `melis_cms_site_301` (
  `s301_id` int(11) NOT NULL COMMENT 'site redirect id',
  `s301_site_id` int(11) DEFAULT NULL COMMENT 'Site Id',
  `s301_old_url` varchar(255) NOT NULL COMMENT 'Old Site url',
  `s301_new_url` varchar(255) NOT NULL COMMENT 'New Site url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Site redirect';

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site_404`
--

CREATE TABLE `melis_cms_site_404` (
  `s404_id` int(11) NOT NULL,
  `s404_site_id` int(11) NOT NULL,
  `s404_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of 404 pages per site';

--
-- Dumping data for table `melis_cms_site_404`
--

INSERT INTO `melis_cms_site_404` (`s404_id`, `s404_site_id`, `s404_page_id`) VALUES
(1, -1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site_domain`
--

CREATE TABLE `melis_cms_site_domain` (
  `sdom_id` int(11) NOT NULL,
  `sdom_site_id` int(11) NOT NULL,
  `sdom_env` varchar(50) NOT NULL,
  `sdom_scheme` varchar(10) NOT NULL,
  `sdom_domain` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of domains per site and per environments';

--
-- Dumping data for table `melis_cms_site_domain`
--

INSERT INTO `melis_cms_site_domain` (`sdom_id`, `sdom_site_id`, `sdom_env`, `sdom_scheme`, `sdom_domain`) VALUES
(1, 1, 'development', 'http', 'melis.local');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_slider`
--

CREATE TABLE `melis_cms_slider` (
  `mcslide_id` int(11) NOT NULL,
  `mcslide_name` varchar(255) NOT NULL,
  `mcslide_page_id` int(11) DEFAULT NULL,
  `mcslide_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_slider_details`
--

CREATE TABLE `melis_cms_slider_details` (
  `mcsdetail_id` int(11) NOT NULL,
  `mcsdetail_mcslider_id` int(11) NOT NULL,
  `mcsdetail_status` tinyint(4) NOT NULL,
  `mcsdetail_title` varchar(255) DEFAULT NULL,
  `mcsdetail_sub1` varchar(255) DEFAULT NULL,
  `mcsdetail_sub2` varchar(255) DEFAULT NULL,
  `mcsdetail_sub3` varchar(255) DEFAULT NULL,
  `mcsdetail_link` longtext,
  `mcsdetail_img` longtext,
  `mcsdetail_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_style`
--

CREATE TABLE `melis_cms_style` (
  `style_id` int(11) NOT NULL,
  `style_site_id` int(11) NOT NULL,
  `style_name` varchar(255) NOT NULL,
  `style_status` smallint(6) NOT NULL,
  `style_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_style`
--

INSERT INTO `melis_cms_style` (`style_id`, `style_site_id`, `style_name`, `style_status`, `style_path`) VALUES
(1, 1, 'style1', 1, '/Authors/assets/css/style1.css');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_template`
--

CREATE TABLE `melis_cms_template` (
  `tpl_id` int(11) NOT NULL,
  `tpl_site_id` int(11) NOT NULL,
  `tpl_name` varchar(255) NOT NULL,
  `tpl_type` enum('PHP','ZF2') NOT NULL DEFAULT 'ZF2',
  `tpl_zf2_website_folder` varchar(50) DEFAULT NULL,
  `tpl_zf2_layout` varchar(50) DEFAULT NULL,
  `tpl_zf2_controller` varchar(50) DEFAULT NULL,
  `tpl_zf2_action` varchar(50) DEFAULT NULL,
  `tpl_php_path` varchar(150) DEFAULT NULL,
  `tpl_creation_date` datetime DEFAULT NULL,
  `tpl_last_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of Melis Templates used by the pages';

--
-- Dumping data for table `melis_cms_template`
--

INSERT INTO `melis_cms_template` (`tpl_id`, `tpl_site_id`, `tpl_name`, `tpl_type`, `tpl_zf2_website_folder`, `tpl_zf2_layout`, `tpl_zf2_controller`, `tpl_zf2_action`, `tpl_php_path`, `tpl_creation_date`, `tpl_last_user_id`) VALUES
(1, 1, 'Authors Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-05-20 05:00:00', NULL),
(2, 1, 'Blogs', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', NULL, '2019-05-30 05:19:12', 1),
(3, 1, 'Blog details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', NULL, '2019-05-30 05:33:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_bo_emails`
--

CREATE TABLE `melis_core_bo_emails` (
  `boe_id` int(11) NOT NULL,
  `boe_name` varchar(255) NOT NULL,
  `boe_code_name` varchar(255) NOT NULL,
  `boe_from_name` varchar(255) NOT NULL,
  `boe_from_email` varchar(255) NOT NULL,
  `boe_reply_to` varchar(255) DEFAULT NULL,
  `boe_tag_accepted_list` text,
  `boe_content_layout` varchar(255) DEFAULT NULL,
  `boe_content_layout_title` varchar(255) DEFAULT NULL,
  `boe_content_layout_logo` text,
  `boe_content_layout_ftr_info` text,
  `boe_last_edit_date` datetime NOT NULL,
  `boe_last_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_bo_emails_details`
--

CREATE TABLE `melis_core_bo_emails_details` (
  `boed_id` int(11) NOT NULL,
  `boed_email_id` int(11) NOT NULL,
  `boed_lang_id` int(11) NOT NULL,
  `boed_subject` varchar(255) NOT NULL,
  `boed_html` longtext NOT NULL,
  `boed_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_dashboards`
--

CREATE TABLE `melis_core_dashboards` (
  `d_id` int(11) NOT NULL COMMENT 'Dashboard plugin ID',
  `d_dashboard_id` varchar(45) NOT NULL COMMENT 'Dashboard ID',
  `d_user_id` int(11) NOT NULL COMMENT 'Dashboard plugin user ID',
  `d_content` text COMMENT 'Plugins xml data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_core_dashboards`
--

INSERT INTO `melis_core_dashboards` (`d_id`, `d_dashboard_id`, `d_user_id`, `d_content`) VALUES
(1, 'id_meliscore_toolstree_section_dashboard', 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Plugins>\n	<plugin plugin=\"MelisCalendarEventsPlugin\" plugin_id=\"CalendarEvents_1554961619\">\n		<x-axis><![CDATA[0]]></x-axis>\n		<y-axis><![CDATA[0]]></y-axis>\n		<height><![CDATA[4]]></height>\n		<width><![CDATA[6]]></width>\n	</plugin>\n	<plugin plugin=\"MelisCmsPagesIndicatorsPlugin\" plugin_id=\"PagesIndicators_1554961619\">\n		<x-axis><![CDATA[6]]></x-axis>\n		<y-axis><![CDATA[0]]></y-axis>\n		<height><![CDATA[4]]></height>\n		<width><![CDATA[6]]></width>\n	</plugin>\n	<plugin plugin=\"MelisCmsPageHistoricRecentUserActivityPlugin\" plugin_id=\"recentActivity_1554961619\">\n		<x-axis><![CDATA[0]]></x-axis>\n		<y-axis><![CDATA[6]]></y-axis>\n		<height><![CDATA[4]]></height>\n		<width><![CDATA[6]]></width>\n	</plugin>\n	<plugin plugin=\"MelisCmsProspectsStatisticsPlugin\" plugin_id=\"ProspectsStatistics_1554961619\">\n		<x-axis><![CDATA[6]]></x-axis>\n		<y-axis><![CDATA[6]]></y-axis>\n		<height><![CDATA[8]]></height>\n		<width><![CDATA[6]]></width>\n	</plugin>\n	<plugin plugin=\"MelisCoreDashboardRecentUserActivityPlugin\" plugin_id=\"RecentUserActivity_1554961619\">\n		<x-axis><![CDATA[0]]></x-axis>\n		<y-axis><![CDATA[12]]></y-axis>\n		<height><![CDATA[4]]></height>\n		<width><![CDATA[6]]></width>\n	</plugin>\n</Plugins>');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_lang`
--

CREATE TABLE `melis_core_lang` (
  `lang_id` int(11) NOT NULL,
  `lang_locale` varchar(10) NOT NULL DEFAULT 'en_EN',
  `lang_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Languages available';

--
-- Dumping data for table `melis_core_lang`
--

INSERT INTO `melis_core_lang` (`lang_id`, `lang_locale`, `lang_name`) VALUES
(1, 'en_EN', 'English'),
(2, 'fr_FR', 'Français');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_log`
--

CREATE TABLE `melis_core_log` (
  `log_id` int(11) NOT NULL COMMENT 'Log Id',
  `log_title` varchar(255) NOT NULL COMMENT 'log title',
  `log_message` varchar(255) NOT NULL COMMENT 'log message',
  `log_action_status` int(11) NOT NULL DEFAULT '0' COMMENT 'The status of the action "1" or "0"',
  `log_type_id` int(11) NOT NULL COMMENT 'log type it is the foriegn key of melis_core_type id',
  `log_item_id` int(11) DEFAULT NULL COMMENT 'Log item Id is the foreign key of the item (item can be UserId, SiteId, TemplateId, ProspectId etc...)',
  `log_user_id` int(11) NOT NULL COMMENT 'User Id who trigger the event',
  `log_date_added` datetime NOT NULL COMMENT 'Log date added/created'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Melis Core Logs';

--
-- Dumping data for table `melis_core_log`
--

INSERT INTO `melis_core_log` (`log_id`, `log_title`, `log_message`, `log_action_status`, `log_type_id`, `log_item_id`, `log_user_id`, `log_date_added`) VALUES
(1, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_add_success', 1, 1, 1, 1, '2019-05-20 05:00:02'),
(2, 'Publish page \"Authors\"', 'tr_meliscms_page_success_Page published', 1, 2, 1, 1, '2019-05-20 05:16:24'),
(3, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 3, 1, 1, '2019-05-20 07:30:25'),
(4, 'Page: Authors', 'tr_meliscms_page_success_Page saved', 1, 4, 1, 1, '2019-05-20 07:32:03'),
(5, 'Publish page \"Authors\"', 'tr_meliscms_page_success_Page published', 1, 2, 1, 1, '2019-05-20 08:39:54'),
(6, 'Page: Authors', 'tr_meliscms_page_success_Page saved', 1, 4, 1, 1, '2019-05-20 08:43:03'),
(7, 'Publish page \"Authors\"', 'tr_meliscms_page_success_Page published', 1, 2, 1, 1, '2019-05-20 08:54:17'),
(8, 'Page: Authors', 'tr_meliscms_page_success_Page saved', 1, 4, 1, 1, '2019-05-20 09:22:30'),
(9, 'Page: Authors', 'tr_meliscms_page_success_Page saved', 1, 4, 1, 1, '2019-05-20 09:23:37'),
(10, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 5, 2, 1, '2019-05-30 05:19:13'),
(11, 'tr_tool_templates_modal_tab_text_add', 'tr_tool_template_fm_new_content', 1, 6, 3, 1, '2019-05-30 05:19:54'),
(12, 'Publish page \"Blogs\"', 'tr_meliscms_page_success_Page published', 1, 2, 2, 1, '2019-05-30 05:25:46'),
(13, 'Page: Details', 'tr_meliscms_page_success_Page saved', 1, 7, 3, 1, '2019-05-30 05:31:45'),
(14, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 5, 3, 1, '2019-05-30 05:33:30'),
(15, 'Themes', 'Theme saved successfully', 1, 8, NULL, 1, '2019-05-30 05:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_log_type`
--

CREATE TABLE `melis_core_log_type` (
  `logt_id` int(11) NOT NULL COMMENT 'Log type id',
  `logt_code` varchar(255) NOT NULL COMMENT 'log code is the codename of the action ex. PAGE_PABLISH for publishing a page, ADD_USER for adding new user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_core_log_type`
--

INSERT INTO `melis_core_log_type` (`logt_id`, `logt_code`) VALUES
(1, 'CMS_SITE_ADD'),
(2, 'CMS_PAGE_PUBLISH'),
(3, 'CMS_STYLE_DETAILS_ADD'),
(4, 'CMS_PAGE_UPDATE'),
(5, 'CMS_TEMPLATE_UPDATE'),
(6, 'CMS_TEMPLATE_ADD'),
(7, 'CMS_PAGE_ADD'),
(8, 'CMS_PROSPECTS_THEME_SAVE');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_log_type_trans`
--

CREATE TABLE `melis_core_log_type_trans` (
  `logtt_id` int(11) NOT NULL COMMENT 'Log type translation id',
  `logtt_lang_id` int(11) NOT NULL COMMENT 'Log type Language Id',
  `logtt_type_id` int(11) NOT NULL COMMENT 'Log type id foreign key of melis_core_logs_type',
  `logtt_name` varchar(255) DEFAULT NULL COMMENT 'Log type name',
  `logtt_description` varchar(255) DEFAULT NULL COMMENT 'Log type description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_lost_password`
--

CREATE TABLE `melis_core_lost_password` (
  `rh_id` int(11) NOT NULL,
  `rh_login` varchar(255) NOT NULL,
  `rh_email` varchar(255) NOT NULL,
  `rh_hash` varchar(255) NOT NULL,
  `rh_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_microservice_auth`
--

CREATE TABLE `melis_core_microservice_auth` (
  `msoa_id` int(11) NOT NULL,
  `msoa_user_id` int(11) NOT NULL,
  `msoa_status` tinyint(1) DEFAULT '0',
  `msoa_api_key` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_microservice_logs`
--

CREATE TABLE `melis_core_microservice_logs` (
  `msl_id` int(11) NOT NULL,
  `msl_user_id` int(11) NOT NULL,
  `msl_payload` text NOT NULL,
  `msl_response` text,
  `msl_url` text NOT NULL,
  `msl_date_requested` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_platform`
--

CREATE TABLE `melis_core_platform` (
  `plf_id` int(11) NOT NULL,
  `plf_name` varchar(100) NOT NULL,
  `plf_update_marketplace` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines environement used for the project';

--
-- Dumping data for table `melis_core_platform`
--

INSERT INTO `melis_core_platform` (`plf_id`, `plf_name`, `plf_update_marketplace`) VALUES
(1, 'development', '1');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_platform_scheme`
--

CREATE TABLE `melis_core_platform_scheme` (
  `pscheme_id` int(11) NOT NULL,
  `pscheme_name` varchar(45) DEFAULT NULL,
  `pscheme_colors` text,
  `pscheme_sidebar_header_logo` text,
  `pscheme_sidebar_header_text` varchar(45) DEFAULT NULL,
  `pscheme_login_logo` text,
  `pscheme_login_background` text,
  `pscheme_favicon` text,
  `pscheme_is_active` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_core_platform_scheme`
--

INSERT INTO `melis_core_platform_scheme` (`pscheme_id`, `pscheme_name`, `pscheme_colors`, `pscheme_sidebar_header_logo`, `pscheme_sidebar_header_text`, `pscheme_login_logo`, `pscheme_login_background`, `pscheme_favicon`, `pscheme_is_active`) VALUES
(1, 'MELIS_DEFAULT', '{\"melis_core_platform_color_primary_color\":\"#e61c23\",\"melis_core_platform_color_secondary_color\":\"#ce5459\"}', '/MelisCore/images/dashboard/melis-logo.svg', 'MELIS PLATFORM', '/MelisCore/images/login/melis-box.png', '/MelisCore/images/login/melis-blackboard.jpg', '/favicon.ico', 0),
(2, 'MELIS_SCHEME_1', '{\"melis_core_platform_color_primary_color\":\"#e61c23\",\"melis_core_platform_color_secondary_color\":\"#ce5459\"}', '/MelisCore/images/dashboard/melis-logo.svg', 'MELIS PLATFORM', '/MelisCore/images/login/melis-box.png', '/MelisCore/images/login/melis-blackboard.jpg', '/favicon.ico', 1);

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_user`
--

CREATE TABLE `melis_core_user` (
  `usr_id` int(11) NOT NULL,
  `usr_status` int(11) NOT NULL DEFAULT '1',
  `usr_login` varchar(255) NOT NULL,
  `usr_email` varchar(255) NOT NULL,
  `usr_password` varchar(255) NOT NULL,
  `usr_firstname` varchar(255) NOT NULL,
  `usr_lastname` varchar(255) NOT NULL,
  `usr_lang_id` int(11) NOT NULL DEFAULT '1',
  `usr_role_id` int(11) NOT NULL DEFAULT '1',
  `usr_admin` int(11) NOT NULL DEFAULT '0',
  `usr_rights` text,
  `usr_image` mediumblob,
  `usr_creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_last_login_date` datetime DEFAULT NULL,
  `usr_is_online` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Melis users';

--
-- Dumping data for table `melis_core_user`
--

INSERT INTO `melis_core_user` (`usr_id`, `usr_status`, `usr_login`, `usr_email`, `usr_password`, `usr_firstname`, `usr_lastname`, `usr_lang_id`, `usr_role_id`, `usr_admin`, `usr_rights`, `usr_image`, `usr_creation_date`, `usr_last_login_date`, `usr_is_online`) VALUES
(1, 1, 'admin', 'admin@mail.com', '$2y$10$GDUzcr/Pn3rX4.gYHXnhu.ycimsQFXr6IM/57OTsxYgbpWOzHrEtS', 'admin', 'admin', 1, 1, 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisUserRights\" author=\"MelisTechnology\" version=\"2.0\"><meliscms_pages>\n                                        	<id>-1</id>\n                                        </meliscms_pages>\n                                        <meliscore_interface>\n                                        </meliscore_interface>\n                                        <meliscore_leftmenu>\n                                        	<meliscore_toolstree_section>\n                                        	</meliscore_toolstree_section>\n                                        	<meliscms_toolstree_section>\n                                        	</meliscms_toolstree_section>\n                                        	<melismarketing_toolstree_section>\n                                        	</melismarketing_toolstree_section>\n                                        	<meliscommerce_toolstree_section>\n                                        	</meliscommerce_toolstree_section>\n                                        	<melisothers_toolstree_section>\n                                        	</melisothers_toolstree_section>\n                                        	<meliscustom_toolstree_section>\n                                        	</meliscustom_toolstree_section>\n                                        	<id>meliscore_leftmenu_root</id>\n                                        </meliscore_leftmenu>\n                                        </document>', NULL, '2019-04-11 05:46:59', '2019-05-30 04:52:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_user_connection_date`
--

CREATE TABLE `melis_core_user_connection_date` (
  `usrcd_id` int(11) NOT NULL,
  `usrcd_usr_login` int(11) NOT NULL,
  `usrcd_last_login_date` datetime NOT NULL,
  `usrcd_last_connection_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_core_user_connection_date`
--

INSERT INTO `melis_core_user_connection_date` (`usrcd_id`, `usrcd_usr_login`, `usrcd_last_login_date`, `usrcd_last_connection_time`) VALUES
(1, 1, '2019-04-11 07:47:57', '2019-04-10 23:54:24'),
(2, 1, '2019-05-20 04:56:39', '2019-05-20 11:52:59'),
(3, 1, '2019-05-20 08:37:54', '2019-05-20 01:50:52'),
(4, 1, '2019-05-21 01:29:00', '2019-05-20 22:03:59'),
(5, 1, '2019-05-21 06:48:47', '2019-05-20 23:43:44'),
(6, 1, '2019-05-30 04:20:51', '2019-05-29 20:39:49'),
(7, 1, '2019-05-30 04:52:16', '2019-05-29 22:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_user_role`
--

CREATE TABLE `melis_core_user_role` (
  `urole_id` int(11) NOT NULL,
  `urole_name` varchar(255) NOT NULL,
  `urole_rights` text,
  `urole_creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_core_user_role`
--

INSERT INTO `melis_core_user_role` (`urole_id`, `urole_name`, `urole_rights`, `urole_creation_date`) VALUES
(1, 'Custom', NULL, '2019-04-11 05:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `melis_hist_page_historic`
--

CREATE TABLE `melis_hist_page_historic` (
  `hist_id` int(11) NOT NULL,
  `hist_page_id` int(11) NOT NULL,
  `hist_action` varchar(45) NOT NULL,
  `hist_date` datetime NOT NULL,
  `hist_user_id` int(11) NOT NULL,
  `hist_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves the historic actions';

--
-- Dumping data for table `melis_hist_page_historic`
--

INSERT INTO `melis_hist_page_historic` (`hist_id`, `hist_page_id`, `hist_action`, `hist_date`, `hist_user_id`, `hist_description`) VALUES
(1, 1, 'Publish', '2019-05-20 05:16:24', 1, 'tr_melispagehistoric_description_text_publish'),
(2, 1, 'Save', '2019-05-20 07:32:02', 1, 'tr_melispagehistoric_description_text_save'),
(3, 1, 'Publish', '2019-05-20 08:39:53', 1, 'tr_melispagehistoric_description_text_publish'),
(4, 1, 'Save', '2019-05-20 08:43:03', 1, 'tr_melispagehistoric_description_text_save'),
(5, 1, 'Publish', '2019-05-20 08:54:17', 1, 'tr_melispagehistoric_description_text_publish'),
(6, 1, 'Save', '2019-05-20 09:22:30', 1, 'tr_melispagehistoric_description_text_save'),
(7, 1, 'Save', '2019-05-20 09:23:37', 1, 'tr_melispagehistoric_description_text_save'),
(8, 2, 'Publish', '2019-05-30 05:25:46', 1, 'tr_melispagehistoric_description_text_publish'),
(9, 3, 'Save', '2019-05-30 05:31:45', 1, 'tr_melispagehistoric_description_text_new');

-- --------------------------------------------------------

--
-- Table structure for table `melis_messenger_msg`
--

CREATE TABLE `melis_messenger_msg` (
  `msgr_msg_id` int(11) NOT NULL,
  `msgr_msg_creator_id` int(11) NOT NULL,
  `msgr_msg_date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_messenger_msg_content`
--

CREATE TABLE `melis_messenger_msg_content` (
  `msgr_msg_cont_id` int(11) NOT NULL,
  `msgr_msg_id` int(11) NOT NULL,
  `msgr_msg_cont_sender_id` int(11) NOT NULL,
  `msgr_msg_cont_message` longtext NOT NULL,
  `msgr_msg_cont_date` datetime NOT NULL,
  `msgr_msg_cont_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_messenger_msg_members`
--

CREATE TABLE `melis_messenger_msg_members` (
  `msgr_msg_mbr_id` int(11) NOT NULL,
  `msgr_msg_id` int(11) NOT NULL,
  `msgr_msg_mbr_usr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_site_translation`
--

CREATE TABLE `melis_site_translation` (
  `mst_id` int(11) NOT NULL,
  `mst_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_site_translation_text`
--

CREATE TABLE `melis_site_translation_text` (
  `mstt_id` int(11) NOT NULL,
  `mstt_mst_id` int(11) NOT NULL,
  `mstt_lang_id` int(11) NOT NULL,
  `mstt_site_id` int(11) NOT NULL,
  `mstt_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `changelog`
--
ALTER TABLE `changelog`
  ADD PRIMARY KEY (`change_number`,`delta_set`);

--
-- Indexes for table `melis_calendar`
--
ALTER TABLE `melis_calendar`
  ADD PRIMARY KEY (`cal_id`);

--
-- Indexes for table `melis_cms_domain_robots`
--
ALTER TABLE `melis_cms_domain_robots`
  ADD PRIMARY KEY (`robot_id`);

--
-- Indexes for table `melis_cms_lang`
--
ALTER TABLE `melis_cms_lang`
  ADD PRIMARY KEY (`lang_cms_id`);

--
-- Indexes for table `melis_cms_news`
--
ALTER TABLE `melis_cms_news`
  ADD PRIMARY KEY (`cnews_id`);

--
-- Indexes for table `melis_cms_news_texts`
--
ALTER TABLE `melis_cms_news_texts`
  ADD PRIMARY KEY (`cnews_text_id`);

--
-- Indexes for table `melis_cms_page_analytics`
--
ALTER TABLE `melis_cms_page_analytics`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `melis_cms_page_analytics_data`
--
ALTER TABLE `melis_cms_page_analytics_data`
  ADD PRIMARY KEY (`pad_id`);

--
-- Indexes for table `melis_cms_page_analytics_data_settings`
--
ALTER TABLE `melis_cms_page_analytics_data_settings`
  ADD PRIMARY KEY (`pads_id`);

--
-- Indexes for table `melis_cms_page_default_urls`
--
ALTER TABLE `melis_cms_page_default_urls`
  ADD PRIMARY KEY (`purl_page_id`);

--
-- Indexes for table `melis_cms_page_lang`
--
ALTER TABLE `melis_cms_page_lang`
  ADD PRIMARY KEY (`plang_id`);

--
-- Indexes for table `melis_cms_page_published`
--
ALTER TABLE `melis_cms_page_published`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `melis_cms_page_saved`
--
ALTER TABLE `melis_cms_page_saved`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `melis_cms_page_seo`
--
ALTER TABLE `melis_cms_page_seo`
  ADD PRIMARY KEY (`pseo_id`);

--
-- Indexes for table `melis_cms_page_style`
--
ALTER TABLE `melis_cms_page_style`
  ADD PRIMARY KEY (`pstyle_id`);

--
-- Indexes for table `melis_cms_page_tree`
--
ALTER TABLE `melis_cms_page_tree`
  ADD PRIMARY KEY (`tree_page_id`);

--
-- Indexes for table `melis_cms_platform_ids`
--
ALTER TABLE `melis_cms_platform_ids`
  ADD PRIMARY KEY (`pids_id`);

--
-- Indexes for table `melis_cms_prospects`
--
ALTER TABLE `melis_cms_prospects`
  ADD PRIMARY KEY (`pros_id`),
  ADD KEY `fk_theme_id_idx` (`pros_theme`);

--
-- Indexes for table `melis_cms_prospects_themes`
--
ALTER TABLE `melis_cms_prospects_themes`
  ADD PRIMARY KEY (`pros_theme_id`);

--
-- Indexes for table `melis_cms_prospects_theme_items`
--
ALTER TABLE `melis_cms_prospects_theme_items`
  ADD PRIMARY KEY (`pros_theme_item_id`),
  ADD KEY `fk_pros_subj_id_idx` (`pros_theme_id`);

--
-- Indexes for table `melis_cms_prospects_theme_items_trans`
--
ALTER TABLE `melis_cms_prospects_theme_items_trans`
  ADD PRIMARY KEY (`item_trans_id`),
  ADD KEY `fk_melis_cms_prospects_theme_items_trans_melis_cms_prospect_idx` (`item_trans_theme_item_id`);

--
-- Indexes for table `melis_cms_site`
--
ALTER TABLE `melis_cms_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `melis_cms_site_301`
--
ALTER TABLE `melis_cms_site_301`
  ADD PRIMARY KEY (`s301_id`);

--
-- Indexes for table `melis_cms_site_404`
--
ALTER TABLE `melis_cms_site_404`
  ADD PRIMARY KEY (`s404_id`);

--
-- Indexes for table `melis_cms_site_domain`
--
ALTER TABLE `melis_cms_site_domain`
  ADD PRIMARY KEY (`sdom_id`);

--
-- Indexes for table `melis_cms_slider`
--
ALTER TABLE `melis_cms_slider`
  ADD PRIMARY KEY (`mcslide_id`);

--
-- Indexes for table `melis_cms_slider_details`
--
ALTER TABLE `melis_cms_slider_details`
  ADD PRIMARY KEY (`mcsdetail_id`),
  ADD KEY `fk_melis_cms_slider_details_melis_cms_slider_idx` (`mcsdetail_mcslider_id`);

--
-- Indexes for table `melis_cms_style`
--
ALTER TABLE `melis_cms_style`
  ADD PRIMARY KEY (`style_id`);

--
-- Indexes for table `melis_cms_template`
--
ALTER TABLE `melis_cms_template`
  ADD PRIMARY KEY (`tpl_id`);

--
-- Indexes for table `melis_core_bo_emails`
--
ALTER TABLE `melis_core_bo_emails`
  ADD PRIMARY KEY (`boe_id`);

--
-- Indexes for table `melis_core_bo_emails_details`
--
ALTER TABLE `melis_core_bo_emails_details`
  ADD PRIMARY KEY (`boed_id`);

--
-- Indexes for table `melis_core_dashboards`
--
ALTER TABLE `melis_core_dashboards`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `melis_core_lang`
--
ALTER TABLE `melis_core_lang`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `melis_core_log`
--
ALTER TABLE `melis_core_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `melis_core_log_type`
--
ALTER TABLE `melis_core_log_type`
  ADD PRIMARY KEY (`logt_id`);

--
-- Indexes for table `melis_core_log_type_trans`
--
ALTER TABLE `melis_core_log_type_trans`
  ADD PRIMARY KEY (`logtt_id`);

--
-- Indexes for table `melis_core_lost_password`
--
ALTER TABLE `melis_core_lost_password`
  ADD PRIMARY KEY (`rh_id`);

--
-- Indexes for table `melis_core_microservice_auth`
--
ALTER TABLE `melis_core_microservice_auth`
  ADD PRIMARY KEY (`msoa_id`);

--
-- Indexes for table `melis_core_microservice_logs`
--
ALTER TABLE `melis_core_microservice_logs`
  ADD PRIMARY KEY (`msl_id`);

--
-- Indexes for table `melis_core_platform`
--
ALTER TABLE `melis_core_platform`
  ADD PRIMARY KEY (`plf_id`);

--
-- Indexes for table `melis_core_platform_scheme`
--
ALTER TABLE `melis_core_platform_scheme`
  ADD PRIMARY KEY (`pscheme_id`);

--
-- Indexes for table `melis_core_user`
--
ALTER TABLE `melis_core_user`
  ADD PRIMARY KEY (`usr_id`);

--
-- Indexes for table `melis_core_user_connection_date`
--
ALTER TABLE `melis_core_user_connection_date`
  ADD PRIMARY KEY (`usrcd_id`);

--
-- Indexes for table `melis_core_user_role`
--
ALTER TABLE `melis_core_user_role`
  ADD PRIMARY KEY (`urole_id`);

--
-- Indexes for table `melis_hist_page_historic`
--
ALTER TABLE `melis_hist_page_historic`
  ADD PRIMARY KEY (`hist_id`);

--
-- Indexes for table `melis_messenger_msg`
--
ALTER TABLE `melis_messenger_msg`
  ADD PRIMARY KEY (`msgr_msg_id`);

--
-- Indexes for table `melis_messenger_msg_content`
--
ALTER TABLE `melis_messenger_msg_content`
  ADD PRIMARY KEY (`msgr_msg_cont_id`);

--
-- Indexes for table `melis_messenger_msg_members`
--
ALTER TABLE `melis_messenger_msg_members`
  ADD PRIMARY KEY (`msgr_msg_mbr_id`);

--
-- Indexes for table `melis_site_translation`
--
ALTER TABLE `melis_site_translation`
  ADD PRIMARY KEY (`mst_id`);

--
-- Indexes for table `melis_site_translation_text`
--
ALTER TABLE `melis_site_translation_text`
  ADD PRIMARY KEY (`mstt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `melis_calendar`
--
ALTER TABLE `melis_calendar`
  MODIFY `cal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_cms_domain_robots`
--
ALTER TABLE `melis_cms_domain_robots`
  MODIFY `robot_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_cms_lang`
--
ALTER TABLE `melis_cms_lang`
  MODIFY `lang_cms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `melis_cms_news`
--
ALTER TABLE `melis_cms_news`
  MODIFY `cnews_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_cms_news_texts`
--
ALTER TABLE `melis_cms_news_texts`
  MODIFY `cnews_text_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_cms_page_analytics`
--
ALTER TABLE `melis_cms_page_analytics`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_cms_page_analytics_data`
--
ALTER TABLE `melis_cms_page_analytics_data`
  MODIFY `pad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_cms_page_analytics_data_settings`
--
ALTER TABLE `melis_cms_page_analytics_data_settings`
  MODIFY `pads_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_cms_page_default_urls`
--
ALTER TABLE `melis_cms_page_default_urls`
  MODIFY `purl_page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `melis_cms_page_lang`
--
ALTER TABLE `melis_cms_page_lang`
  MODIFY `plang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `melis_cms_page_style`
--
ALTER TABLE `melis_cms_page_style`
  MODIFY `pstyle_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Table''s primary key';

--
-- AUTO_INCREMENT for table `melis_cms_platform_ids`
--
ALTER TABLE `melis_cms_platform_ids`
  MODIFY `pids_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_cms_prospects`
--
ALTER TABLE `melis_cms_prospects`
  MODIFY `pros_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_cms_prospects_themes`
--
ALTER TABLE `melis_cms_prospects_themes`
  MODIFY `pros_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_cms_prospects_theme_items`
--
ALTER TABLE `melis_cms_prospects_theme_items`
  MODIFY `pros_theme_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_cms_prospects_theme_items_trans`
--
ALTER TABLE `melis_cms_prospects_theme_items_trans`
  MODIFY `item_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_cms_site`
--
ALTER TABLE `melis_cms_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_cms_site_301`
--
ALTER TABLE `melis_cms_site_301`
  MODIFY `s301_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'site redirect id';

--
-- AUTO_INCREMENT for table `melis_cms_site_404`
--
ALTER TABLE `melis_cms_site_404`
  MODIFY `s404_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `melis_cms_site_domain`
--
ALTER TABLE `melis_cms_site_domain`
  MODIFY `sdom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_cms_slider`
--
ALTER TABLE `melis_cms_slider`
  MODIFY `mcslide_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_cms_slider_details`
--
ALTER TABLE `melis_cms_slider_details`
  MODIFY `mcsdetail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_cms_style`
--
ALTER TABLE `melis_cms_style`
  MODIFY `style_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_core_bo_emails`
--
ALTER TABLE `melis_core_bo_emails`
  MODIFY `boe_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_core_bo_emails_details`
--
ALTER TABLE `melis_core_bo_emails_details`
  MODIFY `boed_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_core_dashboards`
--
ALTER TABLE `melis_core_dashboards`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Dashboard plugin ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_core_lang`
--
ALTER TABLE `melis_core_lang`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `melis_core_log`
--
ALTER TABLE `melis_core_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log Id', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `melis_core_log_type`
--
ALTER TABLE `melis_core_log_type`
  MODIFY `logt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log type id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `melis_core_log_type_trans`
--
ALTER TABLE `melis_core_log_type_trans`
  MODIFY `logtt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log type translation id';

--
-- AUTO_INCREMENT for table `melis_core_lost_password`
--
ALTER TABLE `melis_core_lost_password`
  MODIFY `rh_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_core_microservice_auth`
--
ALTER TABLE `melis_core_microservice_auth`
  MODIFY `msoa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_core_microservice_logs`
--
ALTER TABLE `melis_core_microservice_logs`
  MODIFY `msl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_core_platform`
--
ALTER TABLE `melis_core_platform`
  MODIFY `plf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_core_platform_scheme`
--
ALTER TABLE `melis_core_platform_scheme`
  MODIFY `pscheme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `melis_core_user`
--
ALTER TABLE `melis_core_user`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_core_user_connection_date`
--
ALTER TABLE `melis_core_user_connection_date`
  MODIFY `usrcd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `melis_core_user_role`
--
ALTER TABLE `melis_core_user_role`
  MODIFY `urole_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `melis_hist_page_historic`
--
ALTER TABLE `melis_hist_page_historic`
  MODIFY `hist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `melis_messenger_msg`
--
ALTER TABLE `melis_messenger_msg`
  MODIFY `msgr_msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_messenger_msg_content`
--
ALTER TABLE `melis_messenger_msg_content`
  MODIFY `msgr_msg_cont_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_messenger_msg_members`
--
ALTER TABLE `melis_messenger_msg_members`
  MODIFY `msgr_msg_mbr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_site_translation`
--
ALTER TABLE `melis_site_translation`
  MODIFY `mst_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `melis_site_translation_text`
--
ALTER TABLE `melis_site_translation_text`
  MODIFY `mstt_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
