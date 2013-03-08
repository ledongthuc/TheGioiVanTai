-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: bactai.vn
-- Generation Time: Mar 08, 2013 at 04:17 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ThucDepTrai`
--
USE `ThucDepTrai`;

-- --------------------------------------------------------

--
-- Table structure for table `custom_post_type`
--

CREATE TABLE IF NOT EXISTS `custom_post_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `custom_post_type`
--

INSERT INTO `custom_post_type` (`id`, `type`, `title`) VALUES
(1, 'chuyen_hang', 'Chuyến hàng'),
(2, 'chuyen_xe', 'Chuyến xe'),
(3, 'tin_tuc', 'Tin tức');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 56, 'admin', 'bluesky11105@yahoo.com', '', '127.0.0.1', '2013-01-26 11:28:19', '2013-01-26 11:28:19', 'Comment test', 0, '0', 'Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0', '', 0, 1),
(3, 56, 'admin', 'bluesky11105@yahoo.com', '', '127.0.0.1', '2013-01-26 11:54:49', '2013-01-26 11:54:49', 'Test', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0', '', 0, 1),
(4, 56, 'admin', 'bluesky11105@yahoo.com', '', '127.0.0.1', '2013-01-26 12:08:09', '2013-01-26 12:08:09', 'Lãnh đạo Phòng CSGT Hà Nội cho biết, nhằm lập lại trật tự ATGT cuối năm, các vi phạm của xe khách là nguyên nhân gây ùn tắc, làm phức tạp tình hình TTATGT và nguy hiểm đến người đi đường sẽ bị xử lý nghiêm, đặc biệt trong dịp Tết Quý Tỵ.', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0', '', 0, 1),
(5, 56, 'admin', 'bluesky11105@yahoo.com', '', '127.0.0.1', '2013-01-26 12:33:27', '2013-01-26 12:33:27', 'Thái Quang Song Nhật', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0', '', 0, 1),
(6, 56, 'Nhat Thai', 'bluesky11106@yahoo.com', '', '127.0.0.1', '2013-01-26 12:40:57', '2013-01-26 12:40:57', 'Test again', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0', '', 0, 2),
(7, 81, 'admin', 'bluesky11105@yahoo.com', '', '127.0.0.1', '2013-02-01 16:16:25', '2013-02-01 16:16:25', 'This is first comment.', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=985 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://bactai.vn:80/wordpress', 'yes'),
(2, 'blogname', 'WordPress', 'yes'),
(3, 'blogdescription', 'Just another WordPress site', 'yes'),
(4, 'users_can_register', '1', 'yes'),
(5, 'admin_email', 'bluesky11105@yahoo.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '1', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '1', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:3:{i:0;s:26:"admin-editor/functions.php";i:1;s:30:"advanced-custom-fields/acf.php";i:3;s:26:"image-slider/functions.php";}', 'yes'),
(36, 'home', 'http://bactai.vn:80/wordpress', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:4:{i:0;s:71:"D:\\Programs\\PHP\\wamp\\www\\wordpress/wp-content/themes/wp_theme/style.css";i:1;s:76:"D:\\Programs\\PHP\\wamp\\www\\wordpress/wp-content/themes/twentytwelve/header.php";i:2;s:75:"D:\\Programs\\PHP\\wamp\\www\\wordpress/wp-content/themes/twentytwelve/style.css";i:3;s:0:"";}', 'no'),
(44, 'template', 'ThucDepTrai', 'yes'),
(45, 'stylesheet', 'ThucDepTrai', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '1', 'yes'),
(78, 'comments_per_page', '2', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'desc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:1:{s:41:"advanced-access-manager/mvb_wp_access.php";a:2:{i:0;s:12:"mvb_WPAccess";i:1;s:9:"uninstall";}}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:73:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:12:"edit_comment";i:1;s:15:"approve_comment";i:1;s:17:"unapprove_comment";i:1;s:13:"reply_comment";i:1;s:18:"quick_edit_comment";i:1;s:12:"spam_comment";i:1;s:14:"unspam_comment";i:1;s:13:"trash_comment";i:1;s:15:"untrash_comment";i:1;s:14:"delete_comment";i:1;s:14:"edit_permalink";i:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:5:{i:1362583392;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1362586592;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1362586593;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1362590120;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:1:{i:0;O:8:"stdClass":9:{s:8:"response";s:7:"upgrade";s:8:"download";s:40:"http://wordpress.org/wordpress-3.5.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:40:"http://wordpress.org/wordpress-3.5.1.zip";s:10:"no_content";s:51:"http://wordpress.org/wordpress-3.5.1-no-content.zip";s:11:"new_bundled";s:52:"http://wordpress.org/wordpress-3.5.1-new-bundled.zip";s:7:"partial";s:50:"http://wordpress.org/wordpress-3.5.1-partial-0.zip";}s:7:"current";s:5:"3.5.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.5";s:15:"partial_version";s:3:"3.5";}}s:12:"last_checked";i:1362546862;s:15:"version_checked";s:3:"3.5";}', 'yes'),
(102, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1362546864;s:7:"checked";a:8:{s:26:"admin-editor/functions.php";s:6:"1.1.13";s:30:"advanced-custom-fields/acf.php";s:7:"3.5.8.1";s:19:"akismet/akismet.php";s:5:"2.5.6";s:43:"auto-post-thumbnail/auto-post-thumbnail.php";s:5:"3.3.0";s:46:"custom-post-template/custom-post-templates.php";s:3:"1.5";s:9:"hello.php";s:3:"1.6";s:26:"image-slider/functions.php";s:6:"1.1.13";s:45:"bulk-user-management/bulk-user-management.php";s:3:"1.1";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":5:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:11:"new_version";s:5:"2.5.7";s:3:"url";s:44:"http://wordpress.org/extend/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.2.5.7.zip";}s:43:"auto-post-thumbnail/auto-post-thumbnail.php";O:8:"stdClass":5:{s:2:"id";s:5:"14246";s:4:"slug";s:19:"auto-post-thumbnail";s:11:"new_version";s:5:"3.3.1";s:3:"url";s:56:"http://wordpress.org/extend/plugins/auto-post-thumbnail/";s:7:"package";s:67:"http://downloads.wordpress.org/plugin/auto-post-thumbnail.3.3.1.zip";}}}', 'yes'),
(108, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:31:"http://bactai.vn:80";s:4:"link";s:107:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://bactai.vn:80";s:3:"url";s:139:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://bactai.vn/thegioivantai/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(109, 'can_compress_scripts', '1', 'yes'),
(222, 'current_theme', 'The Gioi Van Tai - 2013', 'yes'),
(223, 'theme_mods_wp_theme', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358439098;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(224, 'theme_switched', '', 'yes'),
(225, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1362546867;s:7:"checked";a:4:{s:12:"twentyeleven";s:3:"1.5";s:12:"twentytwelve";s:3:"1.1";s:16:"ThucDepTrai";s:3:"1.0";s:8:"wp_theme";s:3:"1.0";}s:8:"response";a:0:{}}', 'yes'),
(229, '_site_transient_timeout_browser_98c2be676aca885697e96e548b0cfbb7', '1358449384', 'yes'),
(230, '_site_transient_browser_98c2be676aca885697e96e548b0cfbb7', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"23.0.1271.97";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(261, 'recently_activated', 'a:2:{s:45:"bulk-user-management/bulk-user-management.php";i:1362503269;s:41:"advanced-access-manager/mvb_wp_access.php";i:1362503080;}', 'yes'),
(307, '_transient_random_seed', '3735e0baaa1a9f4d887fb1f04626f300', 'yes'),
(316, '_site_transient_timeout_browser_94087c43d51ff6840604d50f48ee69f0', '1358866499', 'yes'),
(317, '_site_transient_browser_94087c43d51ff6840604d50f48ee69f0', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"24.0.1312.52";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(418, 'theme_mods_wp_letgo', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358957981;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(508, 'category_children', 'a:0:{}', 'yes'),
(589, 'theme_mods_twentytwelve', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358958062;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(590, 'theme_mods_ThucDepTrai', 'a:1:{i:0;b:0;}', 'yes'),
(632, '_site_transient_timeout_browser_7790c40af2379661ba6ca3d89a62af2e', '1359778175', 'yes'),
(633, '_site_transient_browser_7790c40af2379661ba6ca3d89a62af2e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"24.0.1312.56";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(674, '_site_transient_timeout_wporg_theme_feature_list', '1359220345', 'yes'),
(675, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(707, '_site_transient_timeout_browser_013accafa1d7729e25f03df1a3cf16f1', '1360075068', 'yes'),
(708, '_site_transient_browser_013accafa1d7729e25f03df1a3cf16f1', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"18.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(709, 'acf_version', '3.5.8.1', 'yes'),
(710, 'acf_next_field_id', '34', 'yes'),
(718, '_transient_timeout_feed_81334bf965e565989d9a940237804f1b', '1359772575', 'no'),
(719, '_transient_feed_81334bf965e565989d9a940237804f1b', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:4:"\n  \n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:83:"\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:4:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"link:http://bactai.vn/ - Google Blog Search";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:95:"http://www.google.com/search?ie=utf-8&q=link:http://bactai.vn/&tbm=blg&tbs=sbd:1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:19:"About 6,930 results";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:145:"jsp - how to change &lt;b&gt;http&lt;/b&gt;://&lt;b&gt;bactai.vn&lt;/b&gt;:&lt;b&gt;80&lt;/b&gt; into home in breadcrumb &lt;b&gt;...&lt;/b&gt;";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:100:"http://stackoverflow.com/questions/14620642/how-to-change-http-bactai.vn80-into-home-in-breadcrumb";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:674:"i am using this for breadcrumb in jsp &lt;div class=&quot;breadcrumb&quot;&gt; &lt;c:url var=&quot;home&quot; value=&quot;<em>http</em>://<em>bactai.vn</em>:<em>80</em>/&quot; /&gt; &lt;c:forEach var=&quot;bc&quot; items=&quot;${breadcrumb.tree}&quot; varStatus=&quot;status&quot;&gt; &lt;c:choose&gt; &lt;c:when test=&quot;${status.index==0}&quot;&gt; &lt;a href=&quot;/&quot;&gt;${ home}&lt;/a&gt; &lt;/c:when&gt; &lt;c:when test=&quot;${status.index == fn:length(breadcrumb.tree)-1 &amp;&amp; status.index!=0}&quot;&gt; »${bc.name} &lt;/c:when&gt; <b>...</b> Know someone who can answer? Share a <em>link</em> to this question via email, Google+, Twitter, or Facebook.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:33:"Recent Questions - Stack Overflow";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:3:"mak";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Thu, 31 Jan 2013 07:33:50 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"一次SWF XSS挖掘和利用| 思考国";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:30:"http://thinkingto.com/369.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:715:"lastIndexOf(“:”)这行代码, 我想程序员的本意是想利用这个”:”获取web应用的端口, 如<em>bactai.vn</em>:<em>80</em>之类的, 但是在uri中,还有一个地方是需要”:”的, 就是在401登陆中, 作为用户名和密码的分割符, 而且这个”:”出现的位置是在作为分割host和端口的”:”之前. 利用这个特性 <b>...</b> description&gt; &lt;generator&gt;Google Video&lt;/generator&gt; &lt;image&gt; &lt;title&gt;Google Video top100 new&lt;/title&gt; &lt;<em>link</em>&gt;<em>http</em>://video.google.com&lt;/<em>link</em>&gt; &lt;url&gt;<em>http</em>://video.google.com/common/google_logo_small.jpg&lt;/url&gt; &lt;width&gt;100&lt;/width&gt; <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:9:"思考国";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"admin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Sun, 20 Jan 2013 03:46:55 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"Tìm hiểu về Struts 2 (P.2)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://thietkeweb.bannhac.com/tim-hieu-ve-struts-2-p-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"Luồng hoạt động - Chạy ứng dụng này<em>http</em>://<em>bactai.vn</em>:<em>80</em>/struts2tutorial/ - Gõ vào <em>linkhttp</em>://<em>bactai.vn</em>:<em>80</em>/struts2tutorial/exam/HelloWorld.action. Khi đó trình chứa sẽ yêu cầu tài nguyên HelloWorld.action. File web.xml trong ứng dụng này <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:59:"THIẾT KẾ WEBSITE CHUYÊN NGHIỆP, ĐẦY ĐẲNG CẤP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:21:"Nguyễn Thiện Tâm";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Fri, 18 Jan 2013 11:45:15 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"virtualbox + jenkins ← ただいまパキり中";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"http://yoshio.velvet.jp/blog/archives/4103";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:359:"jenkins起動. jenkinsをインストールすると、すでに起動しています。 <em>http</em>://<em>bactai.vn</em>:<em>80</em>/. 再起動するときやとめるときは /etc/init.d/jenkis start | restart | stop <b>...</b> Markdown is turned off in code blocks: [This is not a <em>link</em>](<em>http</em>://example.com). To create not <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:24:"ただいまパキり中";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"木下喜雄";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Thu, 17 Jan 2013 23:59:56 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"Posting Windows-based SVN (Subversion) Commit Activity to an &lt;b&gt;...&lt;/b&gt;";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:127:"http://nvkupatavetin.wordpress.com/2013/01/10/posting-windows-based-svn-subversion-commit-activity-to-an-rss-feed-with-jspjava/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:331:"&lt;<em>link</em>&gt;<em>http</em>://X0084CNU0323209.som.ad.state.mi.us:<em>80</em>/&lt;/link&amp;gt; &lt;description&gt;Everything BRGUS00302845 <b>....</b> <em>http</em>://<em>bactai.vn</em>:<em>80</em>/FSSPRss/index.jsp <b>...</b> You are commenting using your <em>WordPress</em>.com account. ( Log Out / Change ) <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:21:"Bouts With Technology";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"nvkupatavetin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Thu, 10 Jan 2013 05:19:43 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:126:"org.apache.&lt;b&gt;http&lt;/b&gt;.conn.HttpHostConnectException: Connection to &lt;b&gt;http&lt;/b&gt; &lt;b&gt;...&lt;/b&gt;";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:121:"http://stackoverflow.com/questions/14099347/org-apache-http-conn-httphostconnectexception-connection-to-http-bactai.vn-re";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:642:"<em>http</em>://<em>bactai.vn</em>/... provide the <em>link</em> as <em>http</em>://10.0.2.2/... and i did <b>...</b> E/org.apache.<em>http</em>.conn.HttpHostConnectException(4318): Connection to <em>http</em>://<em>bactai.vn</em> refused E/org.apache.<em>http</em>.conn.HttpHostConnectException(4318): org.apache.<em>http</em>.conn. HttpHostConnectException: Connection to <em>http</em>://<em>bactai.vn</em> refused E/org.apache.<em>http</em>.conn. <b>....</b> try adding the permission outside the application tag of the manifest in addition to the above mentioned answers of changing <em>bactai.vn</em> to 10.0.2.2:<em>80</em> <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:33:"Recent Questions - Stack Overflow";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:3:"sid";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Mon, 31 Dec 2012 08:31:16 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"GWT(GXT 2.2.2) + Jetty = Ok. Glassfish = 404 - Stack Overflow";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"http://stackoverflow.com/questions/13965305/gwtgxt-2-2-2-jetty-ok-glassfish-404";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:278:"If I try to open the <em>link</em>: <em>http</em>://<em>bactai.vn</em>:<em>80</em>/exp/Exp.html I have the error: Sending name to the server: GWT User Server replies: An error occurred while attempting to contact the server. Please check your network connection and try again.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:33:"Recent Questions - Stack Overflow";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"aurus";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Thu, 20 Dec 2012 04:25:21 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:101:"iphone - NSURLRequest POST with &lt;b&gt;bactai.vn&lt;/b&gt;:&lt;b&gt;80&lt;/b&gt; - Stack Overflow";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"http://stackoverflow.com/questions/13890277/nsurlrequest-post-with-bactai.vn80";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:578:"How to send json data in the <em>Http</em> request using NSURLRequest. However, if change the url to this, NSURL *url = [NSURL <b>...</b> How to send a NSURLRequest with <em>bactai.vn</em>:<em>80</em>? Thanks,. iphone ios nsurl nsurlrequest nsconnection <b>...</b> @EricS, pls see the edited. My code is exactly the same as the referencing <em>link</em> with only the noted modification. More explicitly, changing from @&quot;xxxxxxx.com/questions&quot;; to @&quot;<em>bactai.vn</em>:<em>80</em>/questions&quot;; will produce the problem. – Kevin Dec 15 at 8:06 <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:33:"Recent Questions - Stack Overflow";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Kevin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Sat, 15 Dec 2012 07:21:52 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"java - Problems with Servlet mapping - Stack Overflow";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"http://stackoverflow.com/questions/13774194/problems-with-servlet-mapping";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:298:"but whenever I am trying to access any <em>link</em> say: <em>http</em>://<em>bactai.vn</em>:<em>80</em>/DMSystem/user/signIn. I am getting resource not found error. this is the console output: INFO: Refreshing WebApplicationContext for namespace &#39;signIn-servlet&#39;: startup date <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:33:"Recent Questions - Stack Overflow";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Sudh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Sat, 08 Dec 2012 03:34:35 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"TL;DR Useful Tips All-In-One Index | Review Board Student Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"http://reviewboardstudents.wordpress.com/2012/11/25/tldr-useful-tips/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:290:"To test review board in local test environment. Add new repository on <em>bactai.vn</em>: name: Review Board hosting service: GitHub project owner: reviewboard project name: reviewboard post-review --server=<em>http</em>://<em>bactai.vn</em>:<em>80</em>. <em>Link</em> to post: <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:25:"Review Board Student Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"tnyang";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Sun, 25 Nov 2012 19:37:52 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:36:"http://a9.com/-/spec/opensearch/1.1/";a:3:{s:12:"totalResults";a:1:{i:0;a:5:{s:4:"data";s:4:"6930";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:10:"startIndex";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:12:"itemsPerPage";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:12:"content-type";s:28:"text/xml; charset=ISO-8859-1";s:4:"date";s:29:"Fri, 01 Feb 2013 14:36:09 GMT";s:7:"expires";s:2:"-1";s:13:"cache-control";s:18:"private, max-age=0";s:10:"set-cookie";a:2:{i:0;s:143:"PREF=ID=af70db3d7078a530:FF=0:TM=1359729369:LM=1359729369:S=W2LJBlhDTW96fTQ2; expires=Sun, 01-Feb-2015 14:36:09 GMT; path=/; domain=.google.com";i:1;s:212:"NID=67=FVZK21clsARarqEtfiy0H4rqxN6TEYtQIAr9O30iOzqohlHLXvKIMk5rDAprtlv9rkqvOC7koYDzfcI061hnhZ3U_YvgxE5TOagDOUKCq6tavPO4luNlyTXt6ffOlsAp; expires=Sat, 03-Aug-2013 14:36:09 GMT; path=/; domain=.google.com; HttpOnly";}s:3:"p3p";s:122:"CP="This is not a P3P policy! See http://www.google.com/support/accounts/bin/answer.py?hl=en&answer=151657 for more info."";s:6:"server";s:3:"gws";s:16:"x-xss-protection";s:13:"1; mode=block";s:15:"x-frame-options";s:10:"SAMEORIGIN";}s:5:"build";s:14:"20121202094312";}', 'no'),
(720, '_transient_timeout_feed_mod_81334bf965e565989d9a940237804f1b', '1359772575', 'no'),
(721, '_transient_feed_mod_81334bf965e565989d9a940237804f1b', '1359729375', 'no'),
(763, '_site_transient_timeout_browser_2687fd9c2ac967341b9e32fa743bc230', '1361693168', 'yes'),
(764, '_site_transient_browser_2687fd9c2ac967341b9e32fa743bc230', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"18.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(800, 'ftp_credentials', 'a:3:{s:8:"hostname";s:9:"bactai.vn";s:8:"username";s:4:"root";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(880, '_site_transient_timeout_browser_5d1b138b01487e672555b2d121154b40', '1362756407', 'yes'),
(881, '_site_transient_browser_5d1b138b01487e672555b2d121154b40', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"24.0.1312.57";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(914, '_site_transient_timeout_browser_051d97feff8e807ffa89716878f9c9ad', '1363053488', 'yes'),
(915, '_site_transient_browser_051d97feff8e807ffa89716878f9c9ad', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"25.0.1364.97";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(963, '_transient_timeout_plugin_slugs', '1362589711', 'no'),
(964, '_transient_plugin_slugs', 'a:7:{i:0;s:26:"admin-editor/functions.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:19:"akismet/akismet.php";i:3;s:43:"auto-post-thumbnail/auto-post-thumbnail.php";i:4;s:46:"custom-post-template/custom-post-templates.php";i:5;s:9:"hello.php";i:6;s:26:"image-slider/functions.php";}', 'no'),
(973, '_transient_plugins_delete_result_1', '1', 'yes'),
(975, '_site_transient_timeout_theme_roots', '1362548666', 'yes'),
(976, '_site_transient_theme_roots', 'a:4:{s:12:"twentyeleven";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";s:16:"ThucDepTrai";s:7:"/themes";s:8:"wp_theme";s:7:"/themes";}', 'yes'),
(977, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1362590247', 'no'),
(978, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1362590247', 'no'),
(979, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Lỗi RSS</strong>: WP HTTP Error: Không thể xử lý fopen() cho http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://bactai.vn/thegioivantai/</p>', 'no'),
(980, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Lỗi RSS</strong>: WP HTTP Error: Không thể xử lý fopen() cho http://wordpress.org/news/feed/</p></div>', 'no'),
(981, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1362590247', 'no'),
(982, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Lỗi RSS</strong>: WP HTTP Error: Không thể xử lý fopen() cho http://planet.wordpress.org/feed/</p></div>', 'no'),
(983, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1362590248', 'no'),
(984, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=449 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(6, 6, '_wp_attached_file', '2013/01/lock.jpg'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:194;s:6:"height";i:259;s:4:"file";s:16:"2013/01/lock.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"lock-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(58, 36, '_edit_last', '1'),
(59, 36, '_edit_lock', '1361092353:1'),
(60, 36, 'code', 'X006770'),
(61, 36, 'Đi từ', 'Bình Dương'),
(62, 36, 'Đến', 'Bình Thuận'),
(63, 36, 'Ngày giờ', '20/1/2013 18:00'),
(64, 36, 'Giá', '4,500,000 VND/Toàn Chuyến'),
(65, 36, 'Loại xe', '1'),
(66, 36, 'Trọng tải', '5 tấn'),
(67, 36, 'Kích thước', 'Rộng 2.2m dài 7m'),
(68, 36, 'Biển số xe', '61Z1 - 2047'),
(69, 36, 'Số lượng xe', '3'),
(72, 39, '_edit_last', '1'),
(73, 39, '_edit_lock', '1361090243:1'),
(74, 39, 'Biển số xe', '61H4 - 3457'),
(75, 39, 'Giá', '2.000.000 VND / Toàn chuyến'),
(76, 39, 'code', 'H002202'),
(77, 39, 'Ngày giờ', '28-01-2013 07:30'),
(78, 39, 'Đi từ', 'Tp Hồ Chí Minh'),
(79, 39, 'Đến', 'Bình Dương'),
(89, 39, '_thumbnail_id', '6'),
(90, 45, '_edit_last', '1'),
(91, 45, '_edit_lock', '1358874403:1'),
(94, 47, '_edit_last', '1'),
(95, 47, '_edit_lock', '1361090229:1'),
(98, 45, '_thumbnail_id', '6'),
(99, 54, '_edit_last', '1'),
(100, 54, '_edit_lock', '1361090224:1'),
(101, 54, 'code', 'X006795'),
(102, 54, 'Đi từ', 'Hồ Chí Minh'),
(103, 54, 'Đến', 'Nha Trang'),
(104, 54, 'Ngày giờ', '31/1/2013 8:0'),
(105, 54, 'Giá', '700,000 VND/Toàn Chuyến'),
(108, 56, '_edit_last', '1'),
(109, 56, '_edit_lock', '1361090182:1'),
(110, 56, 'code', 'X006793'),
(111, 56, 'Đi từ', 'Bình Dương'),
(112, 56, 'Đến', 'An Giang'),
(113, 56, 'Ngày giờ', 'Theo yêu cầu'),
(114, 56, 'Giá', '2,800,000 VND/Toàn Chuyến'),
(118, 39, 'Loại xe', 'Xe tải'),
(119, 63, '_edit_last', '1'),
(120, 63, '_edit_lock', '1359475970:1'),
(121, 65, '_edit_last', '1'),
(122, 65, 'field_4', 'a:10:{s:5:"label";s:8:"Mã số";s:4:"name";s:4:"code";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;s:3:"key";s:7:"field_4";}'),
(123, 65, 'field_5', 'a:10:{s:5:"label";s:12:"Loại hàng";s:4:"name";s:4:"type";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;s:3:"key";s:7:"field_5";}'),
(124, 65, 'allorany', 'all'),
(126, 65, 'position', 'normal'),
(127, 65, 'layout', 'no_box'),
(128, 65, 'hide_on_screen', ''),
(129, 65, '_edit_lock', '1361092729:1'),
(130, 63, 'urllink', ''),
(131, 63, 'urldesc', ''),
(132, 63, 'Giá', '1'),
(141, 71, '_edit_last', '1'),
(142, 71, '_edit_lock', '1362500973:1'),
(143, 71, 'mã_số', 'X006793'),
(144, 71, '_mã_số', 'field_4'),
(145, 71, 'giá', 'Thương lượng'),
(146, 71, '_giá', 'field_5'),
(149, 65, 'field_7', 'a:10:{s:5:"label";s:18:"Ngày khởi hành";s:4:"name";s:10:"start_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:8:"dd/mm/yy";s:14:"display_format";s:8:"dd/mm/yy";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:7:"field_8";s:8:"operator";s:2:"==";s:5:"value";s:8:"Xe tải";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;s:3:"key";s:7:"field_7";}'),
(150, 65, 'field_8', 'a:12:{s:7:"choices";a:7:{s:8:"Xe tải";s:8:"Xe tải";s:6:"Xe ben";s:6:"Xe ben";s:12:"Xe Container";s:12:"Xe Container";s:14:"Chuyên dụng";s:14:"Chuyên dụng";s:31:"Siêu trường - Siêu trọng";s:31:"Siêu trường - Siêu trọng";s:8:"Xe bồn";s:8:"Xe bồn";s:8:"Xe cẩu";s:8:"Xe cẩu";}s:5:"label";s:9:"Loại xe";s:4:"name";s:7:"vehicle";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:12:"Loại khác";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;s:3:"key";s:7:"field_8";}'),
(151, 65, 'field_9', 'a:12:{s:7:"choices";a:4:{s:8:"An Giang";s:8:"An Giang";s:13:"Bình Dương";s:13:"Bình Dương";s:9:"Hà Nội";s:9:"Hà Nội";s:17:"Tp.Hồ Chí Minh";s:17:"Tp.Hồ Chí Minh";}s:5:"label";s:8:"Đi từ";s:4:"name";s:4:"from";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:8:"Đi từ";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:7:"field_8";s:8:"operator";s:2:"==";s:5:"value";s:8:"Xe tải";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;s:3:"key";s:7:"field_9";}'),
(152, 65, 'field_16', 'a:10:{s:5:"label";s:16:"Quận / Huyện";s:4:"name";s:13:"from_province";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:7:"field_8";s:8:"operator";s:2:"==";s:5:"value";s:8:"Xe tải";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;s:3:"key";s:8:"field_16";}'),
(153, 65, 'field_10', 'a:12:{s:7:"choices";a:4:{s:8:"An Giang";s:8:"An Giang";s:13:"Bình Dương";s:13:"Bình Dương";s:9:"Hà Nội";s:9:"Hà Nội";s:17:"Tp.Hồ Chí Minh";s:17:"Tp.Hồ Chí Minh";}s:5:"label";s:6:"Đến";s:4:"name";s:2:"to";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:6:"Đến";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:7:"field_8";s:8:"operator";s:2:"==";s:5:"value";s:8:"Xe tải";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;s:3:"key";s:8:"field_10";}'),
(154, 65, 'field_17', 'a:10:{s:5:"label";s:16:"Quận / Huyện";s:4:"name";s:11:"to_province";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:7:"field_8";s:8:"operator";s:2:"==";s:5:"value";s:8:"Xe tải";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;s:3:"key";s:8:"field_17";}'),
(155, 65, 'field_11', 'a:10:{s:5:"label";s:4:"Giá";s:4:"name";s:5:"price";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:17:"Thương lượng";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:7:"field_8";s:8:"operator";s:2:"==";s:5:"value";s:8:"Xe tải";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;s:3:"key";s:8:"field_11";}'),
(156, 65, 'field_12', 'a:10:{s:5:"label";s:12:"Ngày nhận";s:4:"name";s:12:"receive_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:8:"dd/mm/yy";s:14:"display_format";s:8:"dd/mm/yy";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:7:"field_8";s:8:"operator";s:2:"==";s:5:"value";s:8:"Xe tải";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;s:3:"key";s:8:"field_12";}'),
(157, 65, 'field_13', 'a:10:{s:5:"label";s:10:"Ngày giao";s:4:"name";s:13:"delivery_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:8:"dd/mm/yy";s:14:"display_format";s:8:"dd/mm/yy";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:7:"field_8";s:8:"operator";s:2:"==";s:5:"value";s:8:"Xe tải";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;s:3:"key";s:8:"field_13";}'),
(158, 65, 'field_14', 'a:10:{s:5:"label";s:11:"Hình ảnh";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:7:"field_8";s:8:"operator";s:2:"==";s:5:"value";s:8:"Xe tải";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;s:3:"key";s:8:"field_14";}'),
(159, 65, 'field_15', 'a:10:{s:5:"label";s:17:"Ngày hết hạn";s:4:"name";s:11:"expire_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:8:"dd/mm/yy";s:14:"display_format";s:8:"dd/mm/yy";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:7:"field_8";s:8:"operator";s:2:"==";s:5:"value";s:8:"Xe tải";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;s:3:"key";s:8:"field_15";}'),
(162, 75, '_edit_last', '1'),
(163, 75, 'field_18', 'a:12:{s:7:"choices";a:3:{s:6:"Xe đi";s:6:"Xe đi";s:30:"Xe quay về (có khứ hồi)";s:30:"Xe quay về (có khứ hồi)";s:18:"Xe thường ngày";s:18:"Xe thường ngày";}s:5:"label";s:11:"Chiều đi";s:4:"name";s:8:"way_type";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;s:3:"key";s:8:"field_18";}'),
(164, 75, 'field_19', 'a:10:{s:5:"label";s:8:"Mã số";s:4:"name";s:4:"code";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;s:3:"key";s:8:"field_19";}'),
(165, 75, 'field_20', 'a:12:{s:7:"choices";a:2:{s:8:"An Giang";s:8:"An Giang";s:13:"Bình Dương";s:13:"Bình Dương";}s:5:"label";s:8:"Đi từ";s:4:"name";s:4:"from";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;s:3:"key";s:8:"field_20";}'),
(166, 75, 'field_21', 'a:10:{s:5:"label";s:16:"Quận / Huyện";s:4:"name";s:13:"from_province";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;s:3:"key";s:8:"field_21";}'),
(167, 75, 'field_22', 'a:12:{s:7:"choices";a:2:{s:8:"An Giang";s:8:"An Giang";s:13:"Bình Dương";s:13:"Bình Dương";}s:5:"label";s:11:"Nơi đến";s:4:"name";s:2:"to";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;s:3:"key";s:8:"field_22";}'),
(168, 75, 'field_23', 'a:10:{s:5:"label";s:16:"Quận / Huyện";s:4:"name";s:11:"to_province";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;s:3:"key";s:8:"field_23";}'),
(169, 75, 'field_24', 'a:10:{s:5:"label";s:18:"Ngày khởi hành";s:4:"name";s:10:"start_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;s:3:"key";s:8:"field_24";}'),
(170, 75, 'field_25', 'a:10:{s:5:"label";s:4:"Giá";s:4:"name";s:5:"price";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:17:"Thương lượng";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;s:3:"key";s:8:"field_25";}'),
(171, 75, 'field_26', 'a:9:{s:5:"label";s:16:"Số lượng xe";s:4:"name";s:8:"quantity";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;s:3:"key";s:8:"field_26";}'),
(172, 75, 'field_27', 'a:10:{s:5:"label";s:17:"Ngày hết hạn";s:4:"name";s:11:"expire_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;s:3:"key";s:8:"field_27";}'),
(173, 75, 'field_28', 'a:12:{s:7:"choices";a:7:{s:8:"Xe tải";s:8:"Xe tải";s:6:"Xe ben";s:6:"Xe ben";s:12:"Xe Container";s:12:"Xe Container";s:14:"Chuyên dụng";s:14:"Chuyên dụng";s:31:"Siêu trường - Siêu trọng";s:31:"Siêu trường - Siêu trọng";s:8:"Xe bồn";s:8:"Xe bồn";s:8:"Xe cẩu";s:8:"Xe cẩu";}s:5:"label";s:9:"Loại xe";s:4:"name";s:7:"vehicle";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:12:"Loại khác";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;s:3:"key";s:8:"field_28";}'),
(174, 75, 'field_29', 'a:10:{s:5:"label";s:14:"Biển số xe";s:4:"name";s:13:"license_plate";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;s:3:"key";s:8:"field_29";}'),
(175, 75, 'field_30', 'a:10:{s:5:"label";s:9:"Hiệu xe";s:4:"name";s:13:"brand_vehicle";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;s:3:"key";s:8:"field_30";}'),
(176, 75, 'field_31', 'a:10:{s:5:"label";s:13:"Trọng tải";s:4:"name";s:8:"capacity";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:13;s:3:"key";s:8:"field_31";}'),
(177, 75, 'field_32', 'a:10:{s:5:"label";s:14:"Kích thước";s:4:"name";s:4:"size";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:14;s:3:"key";s:8:"field_32";}'),
(178, 75, 'field_33', 'a:10:{s:5:"label";s:11:"Hình ảnh";s:4:"name";s:13:"image_vehicle";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:8:"field_18";s:8:"operator";s:2:"==";s:5:"value";s:6:"Xe đi";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:15;s:3:"key";s:8:"field_33";}'),
(179, 75, 'allorany', 'all'),
(180, 75, 'rule', 'a:4:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"chuyen_xe";s:8:"order_no";i:0;}'),
(181, 75, 'position', 'normal'),
(182, 75, 'layout', 'no_box'),
(183, 75, 'hide_on_screen', ''),
(184, 75, '_edit_lock', '1359734572:1'),
(185, 77, '_edit_last', '1'),
(186, 77, '_edit_lock', '1359731599:1'),
(187, 78, '_edit_last', '1'),
(188, 78, '_edit_lock', '1359731617:1'),
(189, 79, '_edit_last', '1'),
(190, 79, '_edit_lock', '1362500920:1'),
(191, 79, 'way_type', 'Xe đi'),
(192, 79, '_way_type', 'field_18'),
(193, 79, 'code', 'X006793 '),
(194, 79, '_code', 'field_5'),
(195, 79, 'from', '7'),
(196, 79, '_from', 'field_6'),
(197, 79, 'from_province', ''),
(198, 79, '_from_province', 'field_21'),
(199, 79, 'to', '1'),
(200, 79, '_to', 'field_7'),
(201, 79, 'to_province', ''),
(202, 79, '_to_province', 'field_23'),
(203, 79, 'start_date', '20130201'),
(204, 79, '_start_date', 'field_24'),
(205, 79, 'price', 'Thương lượng'),
(206, 79, '_price', 'field_9'),
(207, 79, 'quantity', '1'),
(208, 79, '_quantity', 'field_14'),
(209, 79, 'expire_date', '20130210'),
(210, 79, '_expire_date', 'field_27'),
(211, 79, 'vehicle', '1'),
(212, 79, '_vehicle', 'field_18'),
(213, 79, 'license_plate', '61H1 - 2122'),
(214, 79, '_license_plate', 'field_29'),
(215, 79, 'brand_vehicle', 'Toyota'),
(216, 79, '_brand_vehicle', 'field_30'),
(217, 79, 'capacity', '3 tấn'),
(218, 79, '_capacity', 'field_20'),
(219, 79, 'size', ''),
(220, 79, '_size', 'field_21'),
(221, 79, 'image_vehicle', ''),
(222, 79, '_image_vehicle', 'field_33'),
(223, 80, '_edit_last', '1'),
(224, 80, '_edit_lock', '1362500847:1'),
(225, 80, 'way_type', 'Xe quay về (có khứ hồi)'),
(226, 80, '_way_type', 'field_18'),
(227, 80, 'code', 'X006795 '),
(228, 80, '_code', 'field_5'),
(229, 80, 'from', '1'),
(230, 80, '_from', 'field_6'),
(231, 80, 'from_province', ''),
(232, 80, '_from_province', 'field_21'),
(233, 80, 'to', '7'),
(234, 80, '_to', 'field_7'),
(235, 80, 'to_province', ''),
(236, 80, '_to_province', 'field_23'),
(237, 80, 'start_date', '20130205'),
(238, 80, '_start_date', 'field_24'),
(239, 80, 'price', 'Thương lượng'),
(240, 80, '_price', 'field_9'),
(241, 80, 'quantity', '1'),
(242, 80, '_quantity', 'field_14'),
(243, 80, 'expire_date', '20130218'),
(244, 80, '_expire_date', 'field_27'),
(245, 80, 'vehicle', '1'),
(246, 80, '_vehicle', 'field_18'),
(247, 80, 'license_plate', '86 Z1 - 2223'),
(248, 80, '_license_plate', 'field_29'),
(249, 80, 'brand_vehicle', 'Hyundai'),
(250, 80, '_brand_vehicle', 'field_30'),
(251, 80, 'capacity', '5 tấn'),
(252, 80, '_capacity', 'field_20'),
(253, 80, 'size', ''),
(254, 80, '_size', 'field_21'),
(255, 80, 'image_vehicle', ''),
(256, 80, '_image_vehicle', 'field_33'),
(257, 81, '_edit_last', '1'),
(258, 81, '_edit_lock', '1362500823:1'),
(259, 81, 'way_type', 'Xe thường ngày'),
(260, 81, '_way_type', 'field_18'),
(261, 81, 'code', 'X006770 '),
(262, 81, '_code', 'field_5'),
(263, 81, 'from', '2'),
(264, 81, '_from', 'field_6'),
(265, 81, 'from_province', 'Thuận An'),
(266, 81, '_from_province', 'field_21'),
(267, 81, 'to', '3'),
(268, 81, '_to', 'field_7'),
(269, 81, 'to_province', 'Thị xã Thủ Dầu Một'),
(270, 81, '_to_province', 'field_23'),
(271, 81, 'start_date', '20130202'),
(272, 81, '_start_date', 'field_24'),
(273, 81, 'price', '5 triệu / toàn chuyến'),
(274, 81, '_price', 'field_9'),
(275, 81, 'quantity', '10'),
(276, 81, '_quantity', 'field_14'),
(277, 81, 'expire_date', '20130228'),
(278, 81, '_expire_date', 'field_27'),
(279, 81, 'vehicle', '1'),
(280, 81, '_vehicle', 'field_18'),
(281, 81, 'license_plate', '61Z1 - 2002'),
(282, 81, '_license_plate', 'field_29'),
(283, 81, 'brand_vehicle', 'Honda'),
(284, 81, '_brand_vehicle', 'field_30'),
(285, 81, 'capacity', '3.5 tấn'),
(286, 81, '_capacity', 'field_20'),
(287, 81, 'size', ''),
(288, 81, '_size', 'field_21'),
(289, 81, 'image_vehicle', ''),
(290, 81, '_image_vehicle', 'field_33'),
(291, 71, 'code', 'X006793'),
(292, 71, '_code', 'field_28'),
(293, 71, 'type', 'Vải thô'),
(294, 71, '_type', 'field_5'),
(295, 71, 'start_date', '02/02/2013'),
(296, 71, '_start_date', 'field_7'),
(297, 71, 'vehicle', ''),
(298, 71, '_vehicle', 'field_30'),
(299, 71, 'from', '1'),
(300, 71, '_from', 'field_31'),
(301, 71, 'from_province', ''),
(302, 71, '_from_province', 'field_16'),
(303, 71, 'to', '1'),
(304, 71, '_to', 'field_32'),
(305, 71, 'to_province', ''),
(306, 71, '_to_province', 'field_17'),
(307, 71, 'price', 'Thương lượng'),
(308, 71, '_price', 'field_33'),
(309, 71, 'receive_date', '01/02/2013'),
(310, 71, '_receive_date', 'field_12'),
(311, 71, 'delivery_date', '04/02/2013'),
(312, 71, '_delivery_date', 'field_13'),
(313, 71, 'image', ''),
(314, 71, '_image', 'field_38'),
(315, 71, 'expire_date', '25/02/2013'),
(316, 71, '_expire_date', 'field_15'),
(317, 82, '_edit_last', '1'),
(318, 82, '_edit_lock', '1362547007:1'),
(319, 82, 'code', 'X006711'),
(320, 82, '_code', 'field_28'),
(321, 82, 'type', 'Điện gia dụng'),
(322, 82, '_type', 'field_5'),
(323, 82, 'start_date', '08/02/2013'),
(324, 82, '_start_date', 'field_7'),
(325, 82, 'vehicle', 'a:1:{i:0;s:1:"5";}'),
(326, 82, '_vehicle', 'field_30'),
(327, 82, 'from', '23'),
(328, 82, '_from', 'field_31'),
(329, 82, 'from_province', ''),
(330, 82, '_from_province', 'field_16'),
(331, 82, 'to', '9'),
(332, 82, '_to', 'field_32'),
(333, 82, 'to_province', 'Q.Tân Bình'),
(334, 82, '_to_province', 'field_17'),
(335, 82, 'price', '50 triệu'),
(336, 82, '_price', 'field_33'),
(337, 82, 'receive_date', '02/02/2013'),
(338, 82, '_receive_date', 'field_12'),
(339, 82, 'delivery_date', '14/02/2013'),
(340, 82, '_delivery_date', 'field_13'),
(341, 82, 'image', ''),
(342, 82, '_image', 'field_38'),
(343, 82, 'expire_date', '20/02/2013'),
(344, 82, '_expire_date', 'field_15'),
(347, 65, 'rule', 'a:4:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"chuyen_hang";s:8:"order_no";i:0;}'),
(352, 47, 'code', '123'),
(365, 82, 'license_plate', ''),
(366, 82, '_license_plate', 'field_29'),
(367, 82, 'brand_vehicle', 'a:8:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";i:4;s:1:"5";i:5;s:1:"6";i:6;s:1:"7";i:7;s:1:"8";}'),
(368, 82, '_brand_vehicle', 'field_30'),
(369, 82, 'capacity', 'Hà Nội'),
(370, 82, '_capacity', 'field_31'),
(371, 82, 'size', 'An giang'),
(372, 82, '_size', 'field_32'),
(373, 82, 'image_vehicle', '50 triệu'),
(374, 82, '_image_vehicle', 'field_33'),
(375, 82, 'receive-date', '20130214'),
(376, 82, '_receive-date', 'field_34'),
(377, 82, 'delivery-date', '01/03/2013'),
(378, 82, '_delivery-date', 'field_35'),
(379, 82, 'quantity', '11'),
(380, 82, '_quantity', 'field_36'),
(381, 82, 'province', '1'),
(382, 82, '_province', 'field_37'),
(383, 82, 'expire-date', ''),
(384, 82, '_expire-date', 'field_39'),
(385, 65, '_wp_trash_meta_status', 'publish'),
(386, 65, '_wp_trash_meta_time', '1361092891'),
(387, 75, '_wp_trash_meta_status', 'publish'),
(388, 75, '_wp_trash_meta_time', '1361092893'),
(389, 82, 'kind', ''),
(390, 82, '_kind', 'field_29'),
(391, 79, 'type', '1'),
(392, 79, '_type', 'field_4'),
(393, 79, 'start-date', '01/03/2013'),
(394, 79, '_start-date', 'field_8'),
(395, 79, 'province', '1'),
(396, 79, '_province', 'field_24'),
(397, 79, 'expire-date', '26/03/2013'),
(398, 79, '_expire-date', 'field_25'),
(399, 79, 'license-plate', ''),
(400, 79, '_license-plate', 'field_19'),
(401, 79, 'brand-vehicle', ''),
(402, 79, '_brand-vehicle', 'field_23'),
(403, 79, 'Image-vehicle', ''),
(404, 79, '_Image-vehicle', 'field_22'),
(405, 104, '_edit_last', '1'),
(406, 104, '_edit_lock', '1361457256:1'),
(407, 81, 'type', '1'),
(408, 81, '_type', 'field_4'),
(409, 81, 'start-date', '05/03/2013'),
(410, 81, '_start-date', 'field_8'),
(411, 81, 'province', '1'),
(412, 81, '_province', 'field_24'),
(413, 81, 'expire-date', '13/03/2013'),
(414, 81, '_expire-date', 'field_25'),
(415, 81, 'license-plate', ''),
(416, 81, '_license-plate', 'field_19'),
(417, 81, 'brand-vehicle', ''),
(418, 81, '_brand-vehicle', 'field_23'),
(419, 81, 'Image-vehicle', ''),
(420, 81, '_Image-vehicle', 'field_22'),
(421, 80, 'type', '1'),
(422, 80, '_type', 'field_4'),
(423, 80, 'start-date', '01/03/2013'),
(424, 80, '_start-date', 'field_8'),
(425, 80, 'province', '1'),
(426, 80, '_province', 'field_24'),
(427, 80, 'expire-date', '24/03/2013'),
(428, 80, '_expire-date', 'field_25'),
(429, 80, 'license-plate', '3181JU3408'),
(430, 80, '_license-plate', 'field_19'),
(431, 80, 'brand-vehicle', 'Toyota'),
(432, 80, '_brand-vehicle', 'field_23'),
(433, 80, 'Image-vehicle', ''),
(434, 80, '_Image-vehicle', 'field_22'),
(435, 71, 'kind', ''),
(436, 71, '_kind', 'field_29'),
(437, 71, 'receive-date', '20130306'),
(438, 71, '_receive-date', 'field_34'),
(439, 71, 'delivery-date', '10/03/2013'),
(440, 71, '_delivery-date', 'field_35'),
(441, 71, 'quantity', '123'),
(442, 71, '_quantity', 'field_36'),
(443, 71, 'province', '1'),
(444, 71, '_province', 'field_37'),
(445, 71, 'expire-date', '20130322'),
(446, 71, '_expire-date', 'field_39'),
(447, 104, '_wp_trash_meta_status', 'draft'),
(448, 104, '_wp_trash_meta_time', '1362500214');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2013-01-10 19:04:55', '2013-01-10 19:04:55', '', 'lock', '', 'inherit', 'open', 'open', '', 'lock', '', '', '2013-01-10 19:04:55', '2013-01-10 19:04:55', '', 0, 'http://bactai.vn/wordpress/wp-content/uploads/2013/01/lock.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2013-01-21 15:48:40', '2013-01-21 15:48:40', 'Thùng keo mui bạt', 'X006770 tp HCM đi Bình Thuận', '', 'publish', 'open', 'open', '', 'x006770-tp-hcm-di-binh-thuan', '', '', '2013-02-17 09:14:24', '2013-02-17 09:14:24', '', 0, 'http://bactai.vn/wordpress/?p=36', 0, 'post', '', 0),
(37, 1, '2013-01-21 15:45:59', '2013-01-21 15:45:59', 'Thùng keo mui bạt', 'X006770 tp HCM đi Bình Thuận', '', 'inherit', 'open', 'open', '', '36-revision', '', '', '2013-01-21 15:45:59', '2013-01-21 15:45:59', '', 36, 'http://bactai.vn/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2013-02-17 09:12:48', '2013-02-17 09:12:48', 'Thùng keo mui bạt', 'X006770 tp HCM đi Bình Thuận', '', 'inherit', 'open', 'open', '', '36-autosave', '', '', '2013-02-17 09:12:48', '2013-02-17 09:12:48', '', 36, 'http://bactai.vn/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2013-01-21 16:03:48', '2013-01-21 16:03:48', 'Gia cầm', 'H002202 tp HCM đến Bình Dương', '', 'publish', 'open', 'open', '', 'h002202-tp-hcm-den-binh-duong', '', '', '2013-02-17 08:39:14', '2013-02-17 08:39:14', '', 0, 'http://bactai.vn/wordpress/?p=39', 0, 'post', '', 0),
(40, 1, '2013-01-21 16:02:16', '2013-01-21 16:02:16', 'Gia cầm', 'H002202 tp HCM đến Bình Dương', '', 'inherit', 'open', 'open', '', '39-revision', '', '', '2013-01-21 16:02:16', '2013-01-21 16:02:16', '', 39, 'http://bactai.vn/wordpress/?p=40', 0, 'revision', '', 0),
(41, 1, '2013-01-24 16:52:11', '2013-01-24 16:52:11', 'Gia cầm', 'H002202 tp HCM đến Bình Dương', '', 'inherit', 'open', 'open', '', '39-autosave', '', '', '2013-01-24 16:52:11', '2013-01-24 16:52:11', '', 39, 'http://bactai.vn/wordpress/?p=41', 0, 'revision', '', 0),
(45, 1, '2013-01-21 16:30:25', '2013-01-21 16:30:25', 'Bạn phải làm gì để chọn được chiếc xe hoàn toàn phù hợp với điều kiện sử dụng của mình? Đó là câu hỏi mà bất cứ người nào mua ôtô cũng phải nhắc tới. Sau đây là những gợi ý rất hữu ích của các chuyên gia Ford Việt Nam dành cho những người đang có ý định mua xe.', 'Gợi ý mua xe', '', 'publish', 'open', 'open', '', 'goi-y-mua-xe', '', '', '2013-01-22 17:08:34', '2013-01-22 17:08:34', '', 0, 'http://bactai.vn/wordpress/?p=45', 0, 'post', '', 0),
(46, 1, '2013-01-21 16:30:11', '2013-01-21 16:30:11', '', 'Gợi ý mua xe', '', 'inherit', 'open', 'open', '', '45-revision', '', '', '2013-01-21 16:30:11', '2013-01-21 16:30:11', '', 45, 'http://bactai.vn/wordpress/?p=46', 0, 'revision', '', 0),
(47, 1, '2013-01-21 16:33:01', '2013-01-21 16:33:01', 'Lãnh đạo Phòng CSGT Hà Nội cho biết, nhằm lập lại trật tự ATGT cuối năm, các vi phạm của xe khách là nguyên nhân gây ùn tắc, làm phức tạp tình hình TTATGT và nguy hiểm đến người đi đường sẽ bị xử lý nghiêm, đặc biệt trong dịp Tết Quý Tỵ.', '"Siết" xe khách vi phạm: Không nghiêm, dễ nhờn', '', 'publish', 'open', 'open', '', 'siet-xe-khach-vi-pham-khong-nghiem-de-nhon', '', '', '2013-01-21 16:33:01', '2013-01-21 16:33:01', '', 0, 'http://bactai.vn/wordpress/?p=47', 0, 'post', '', 0),
(48, 1, '2013-01-21 16:30:38', '2013-01-21 16:30:38', '', 'Gợi ý đặt hàng', '', 'inherit', 'open', 'open', '', '47-revision', '', '', '2013-01-21 16:30:38', '2013-01-21 16:30:38', '', 47, 'http://bactai.vn/wordpress/?p=48', 0, 'revision', '', 0),
(49, 1, '2013-01-23 15:26:09', '2013-01-23 15:26:09', 'Lãnh đạo Phòng CSGT Hà Nội cho biết, nhằm lập lại trật tự ATGT cuối năm, các vi phạm của xe khách là nguyên nhân gây ùn tắc, làm phức tạp tình hình TTATGT và nguy hiểm đến người đi đường sẽ bị xử lý nghiêm, đặc biệt trong dịp Tết Quý Tỵ.', '"Siết" xe khách vi phạm: Không nghiêm, dễ nhờn', '', 'inherit', 'open', 'open', '', '47-autosave', '', '', '2013-01-23 15:26:09', '2013-01-23 15:26:09', '', 47, 'http://bactai.vn/wordpress/?p=49', 0, 'revision', '', 0),
(53, 1, '2013-01-21 16:30:25', '2013-01-21 16:30:25', 'Bạn phải làm gì để chọn được chiếc xe hoàn toàn phù hợp với điều kiện sử dụng của mình? Đó là câu hỏi mà bất cứ người nào mua ôtô cũng phải nhắc tới. Sau đây là những gợi ý rất hữu ích của các chuyên gia Ford Việt Nam dành cho những người đang có ý định mua xe.', 'Gợi ý mua xe', '', 'inherit', 'open', 'open', '', '45-revision-2', '', '', '2013-01-21 16:30:25', '2013-01-21 16:30:25', '', 45, 'http://bactai.vn/wordpress/?p=53', 0, 'revision', '', 0),
(54, 1, '2013-01-24 16:06:37', '2013-01-24 16:06:37', 'Hải sản', 'X006795 tp HCM đi Nha Trang', '', 'publish', 'open', 'open', '', 'x006795-tp-hcm-di-nha-trang', '', '', '2013-02-17 08:38:34', '2013-02-17 08:38:34', '', 0, 'http://bactai.vn/wordpress/?p=54', 0, 'post', '', 0),
(55, 1, '2013-01-24 16:05:55', '2013-01-24 16:05:55', '', 'X006795 tp HCM đi Nha Trang', '', 'inherit', 'open', 'open', '', '54-revision', '', '', '2013-01-24 16:05:55', '2013-01-24 16:05:55', '', 54, 'http://bactai.vn/wordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2013-01-24 16:08:23', '2013-01-24 16:08:23', 'Hàng gia dụng', 'X006793 Bình Dương đi An Giang', '', 'publish', 'open', 'open', '', 'x006793-binh-duong-di-an-giang', '', '', '2013-02-17 08:37:07', '2013-02-17 08:37:07', '', 0, 'http://bactai.vn/wordpress/?p=56', 0, 'post', '', 4),
(57, 1, '2013-01-24 16:07:43', '2013-01-24 16:07:43', 'Hàng gia dụng', 'X006793 Bình Dương đi An Giang', '', 'inherit', 'open', 'open', '', '56-revision', '', '', '2013-01-24 16:07:43', '2013-01-24 16:07:43', '', 56, 'http://bactai.vn/wordpress/?p=57', 0, 'revision', '', 0),
(58, 1, '2013-02-17 08:38:09', '2013-02-17 08:38:09', 'Hàng gia dụng', 'X006793 Bình Dương đi An Giang', '', 'inherit', 'open', 'open', '', '56-autosave', '', '', '2013-02-17 08:38:09', '2013-02-17 08:38:09', '', 56, 'http://bactai.vn/wordpress/?p=58', 0, 'revision', '', 0),
(60, 1, '2013-01-26 14:34:40', '2013-01-26 14:34:40', 'Hải sản', 'X006795 tp HCM đi Nha Trang', '', 'inherit', 'open', 'open', '', '54-autosave', '', '', '2013-01-26 14:34:40', '2013-01-26 14:34:40', '', 54, 'http://bactai.vn/wordpress/?p=60', 0, 'revision', '', 0),
(63, 1, '2013-01-29 15:18:49', '2013-01-29 15:18:49', 'Hàng gia dụng', 'X006793 Bình Dương đi An Giang', '', 'publish', 'open', 'open', '', 'x006793-binh-duong-di-an-giang', '', '', '2013-01-29 15:18:49', '2013-01-29 15:18:49', '', 0, 'http://bactai.vn/wordpress/?post_type=chuyenhang&#038;p=63', 0, 'chuyenhang', '', 0),
(65, 1, '2013-01-29 15:11:10', '2013-01-29 15:11:10', '', 'chuyen_hang', '', 'trash', 'closed', 'closed', '', 'acf_chuyen_hang', '', '', '2013-02-17 09:21:31', '2013-02-17 09:21:31', '', 0, 'http://bactai.vn/wordpress/?post_type=acf&#038;p=65', 0, 'acf', '', 0),
(67, 1, '2013-01-29 16:10:50', '2013-01-29 16:10:50', 'Hàng gia dụng', 'X006793 Bình Dương đi An Giang', '', 'inherit', 'open', 'open', '', '63-autosave', '', '', '2013-01-29 16:10:50', '2013-01-29 16:10:50', '', 63, 'http://bactai.vn/wordpress/?p=67', 0, 'revision', '', 0),
(71, 1, '2013-01-29 16:17:15', '2013-01-29 16:17:15', 'Chở 15 kiện vải thô.', 'X006793 An Giang đi Hà Nội', '', 'publish', 'open', 'open', '', 'x006793-binh-duong-di-an-giang', '', '', '2013-03-05 16:30:54', '2013-03-05 16:30:54', '', 0, 'http://bactai.vn/wordpress/?post_type=chuyen_hang&#038;p=71', 0, 'chuyen_hang', '', 0),
(72, 1, '2013-03-05 02:24:38', '2013-03-05 02:24:38', 'Chở 15 kiện vải thô.', 'X006793 An Giang đi Hà Nội', '', 'inherit', 'open', 'open', '', '71-autosave', '', '', '2013-03-05 02:24:38', '2013-03-05 02:24:38', '', 71, 'http://bactai.vn/wordpress/?p=72', 0, 'revision', '', 0),
(75, 1, '2013-02-01 15:13:19', '2013-02-01 15:13:19', '', 'chuyen_xe', '', 'trash', 'closed', 'closed', '', 'acf_chuyen_xe', '', '', '2013-02-17 09:21:33', '2013-02-17 09:21:33', '', 0, 'http://bactai.vn/wordpress/?post_type=acf&#038;p=75', 0, 'acf', '', 0),
(77, 1, '2013-02-01 15:15:09', '2013-02-01 15:15:09', 'Bạn phải làm gì để chọn được chiếc xe hoàn toàn phù hợp với điều kiện sử dụng của mình? Đó là câu hỏi mà bất cứ người nào mua ôtô cũng phải nhắc tới. Sau đây là những gợi ý rất hữu ích của các chuyên gia Ford Việt Nam dành cho những người đang có ý định mua xe.', 'Gợi ý mua xe', '', 'publish', 'open', 'open', '', 'goi-y-mua-xe', '', '', '2013-02-01 15:15:09', '2013-02-01 15:15:09', '', 0, 'http://bactai.vn/wordpress/?post_type=tin_tuc&#038;p=77', 0, 'tin_tuc', '', 0),
(78, 1, '2013-02-01 15:15:29', '2013-02-01 15:15:29', 'Lãnh đạo Phòng CSGT Hà Nội cho biết, nhằm lập lại trật tự ATGT cuối năm, các vi phạm của xe khách là nguyên nhân gây ùn tắc, làm phức tạp tình hình TTATGT và nguy hiểm đến người đi đường sẽ bị xử lý nghiêm, đặc biệt trong dịp Tết Quý Tỵ.', '“Siết” xe khách vi phạm: Không nghiêm, dễ nhờn', '', 'publish', 'open', 'open', '', 'siet-xe-khach-vi-pham-khong-nghiem-de-nhon', '', '', '2013-02-01 15:15:29', '2013-02-01 15:15:29', '', 0, 'http://bactai.vn/wordpress/?post_type=tin_tuc&#038;p=78', 0, 'tin_tuc', '', 0),
(79, 1, '2013-02-01 15:17:51', '2013-02-01 15:17:51', 'Hàng gia dụng', 'X006793 Bình Dương đi An Giang ', '', 'publish', 'open', 'open', '', 'x006793-binh-duong-di-an-giang', '', '', '2013-03-05 16:29:42', '2013-03-05 16:29:42', '', 0, 'http://bactai.vn/wordpress/?post_type=chuyen_xe&#038;p=79', 0, 'chuyen_xe', '', 0),
(80, 1, '2013-02-01 15:20:07', '2013-02-01 15:20:07', 'Đồ gỗ', 'X006795 An Giang đi Bình Dương', '', 'publish', 'open', 'open', '', 'x006795-an-giang-di-binh-duong', '', '', '2013-03-05 16:29:17', '2013-03-05 16:29:17', '', 0, 'http://bactai.vn/wordpress/?post_type=chuyen_xe&#038;p=80', 0, 'chuyen_xe', '', 0),
(81, 1, '2013-02-01 15:22:10', '2013-02-01 15:22:10', 'Thùng keo mui bạt', 'X006770 Bình Dương đi Bình Dương', '', 'publish', 'open', 'open', '', 'x006770-binh-duong-di-binh-duong', '', '', '2013-03-05 16:28:52', '2013-03-05 16:28:52', '', 0, 'http://bactai.vn/wordpress/?post_type=chuyen_xe&#038;p=81', 0, 'chuyen_xe', '', 1),
(82, 1, '2013-02-01 15:25:41', '2013-02-01 15:25:41', 'Mặt hàng điện gia dụng.', 'X006711 Hà Nội đi Tp.Hồ Chí Minh', '', 'publish', 'open', 'open', '', 'x006711-ha-noi-di-tp-ho-chi-minh', '', '', '2013-03-05 16:19:35', '2013-03-05 16:19:35', '', 0, 'http://bactai.vn/wordpress/?post_type=chuyen_hang&#038;p=82', 0, 'chuyen_hang', '', 0),
(83, 1, '2013-03-05 17:13:00', '2013-03-05 17:13:00', 'Mặt hàng điện gia dụng.', 'X006711 Hà Nội đi Tp.Hồ Chí Minh', '', 'inherit', 'open', 'open', '', '82-autosave', '', '', '2013-03-05 17:13:00', '2013-03-05 17:13:00', '', 82, 'http://bactai.vn/wordpress/?p=83', 0, 'revision', '', 0),
(84, 1, '2013-03-05 16:10:21', '2013-03-05 16:10:21', 'Thùng keo mui bạt', 'X006770 Bình Dương đi Bình Dương', '', 'inherit', 'open', 'open', '', '81-autosave', '', '', '2013-03-05 16:10:21', '2013-03-05 16:10:21', '', 81, 'http://bactai.vn/wordpress/?p=84', 0, 'revision', '', 0),
(86, 1, '2013-01-24 16:08:23', '2013-01-24 16:08:23', 'Hàng gia dụng', 'X006793 Bình Dương đi An Giang', '', 'inherit', 'open', 'open', '', '56-revision-2', '', '', '2013-01-24 16:08:23', '2013-01-24 16:08:23', '', 56, 'http://bactai.vn/thegioivantai/?p=86', 0, 'revision', '', 0),
(87, 1, '2013-01-24 16:06:37', '2013-01-24 16:06:37', 'Hải sản', 'X006795 tp HCM đi Nha Trang', '', 'inherit', 'open', 'open', '', '54-revision-2', '', '', '2013-01-24 16:06:37', '2013-01-24 16:06:37', '', 54, 'http://bactai.vn/thegioivantai/?p=87', 0, 'revision', '', 0),
(88, 1, '2013-01-21 16:03:48', '2013-01-21 16:03:48', 'Gia cầm', 'H002202 tp HCM đến Bình Dương', '', 'inherit', 'open', 'open', '', '39-revision-2', '', '', '2013-01-21 16:03:48', '2013-01-21 16:03:48', '', 39, 'http://bactai.vn/thegioivantai/?p=88', 0, 'revision', '', 0),
(89, 1, '2013-01-21 15:48:40', '2013-01-21 15:48:40', 'Thùng keo mui bạt', 'X006770 tp HCM đi Bình Thuận', '', 'inherit', 'open', 'open', '', '36-revision-2', '', '', '2013-01-21 15:48:40', '2013-01-21 15:48:40', '', 36, 'http://bactai.vn/thegioivantai/?p=89', 0, 'revision', '', 0),
(90, 1, '2013-02-17 08:39:28', '2013-02-17 08:39:28', 'Thùng keo mui bạt', 'X006770 tp HCM đi Bình Thuận', '', 'inherit', 'open', 'open', '', '36-revision-3', '', '', '2013-02-17 08:39:28', '2013-02-17 08:39:28', '', 36, 'http://bactai.vn/thegioivantai/?p=90', 0, 'revision', '', 0),
(91, 1, '2013-02-17 09:11:46', '2013-02-17 09:11:46', 'Thùng keo mui bạt', 'X006770 tp HCM đi Bình Thuận', '', 'inherit', 'open', 'open', '', '36-revision-4', '', '', '2013-02-17 09:11:46', '2013-02-17 09:11:46', '', 36, 'http://bactai.vn/thegioivantai/?p=91', 0, 'revision', '', 0),
(92, 1, '2013-02-17 09:13:53', '2013-02-17 09:13:53', 'Thùng keo mui bạt', 'X006770 tp HCM đi Bình Thuận', '', 'inherit', 'open', 'open', '', '36-revision-5', '', '', '2013-02-17 09:13:53', '2013-02-17 09:13:53', '', 36, 'http://bactai.vn/thegioivantai/?p=92', 0, 'revision', '', 0),
(93, 1, '2013-02-17 09:14:22', '2013-02-17 09:14:22', 'Thùng keo mui bạt', 'X006770 tp HCM đi Bình Thuận', '', 'inherit', 'open', 'open', '', '36-revision-6', '', '', '2013-02-17 09:14:22', '2013-02-17 09:14:22', '', 36, 'http://bactai.vn/thegioivantai/?p=93', 0, 'revision', '', 0),
(96, 1, '2013-03-05 01:59:45', '2013-03-05 01:59:45', 'Hàng gia dụng', 'X006793 Bình Dương đi An Giang ', '', 'inherit', 'open', 'open', '', '79-autosave', '', '', '2013-03-05 01:59:45', '2013-03-05 01:59:45', '', 79, 'http://bactai.vn/thegioivantai/?p=96', 0, 'revision', '', 0),
(104, 1, '2013-02-21 14:01:37', '2013-02-21 14:01:37', '', 't', '', 'trash', 'open', 'open', '', 't', '', '', '2013-03-05 16:16:54', '2013-03-05 16:16:54', '', 0, 'http://bactai.vn/thegioivantai/?post_type=chuyen_hang&#038;p=104', 0, 'chuyen_hang', '', 0),
(105, 1, '2013-03-01 15:26:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-03-01 15:26:47', '0000-00-00 00:00:00', '', 0, 'http://bactai.vn:80/wordpress/?p=105', 0, 'post', '', 0),
(106, 1, '2013-03-05 02:36:10', '2013-03-05 02:36:10', 'Đồ gỗ', 'X006795 An Giang đi Bình Dương', '', 'inherit', 'open', 'open', '', '80-autosave', '', '', '2013-03-05 02:36:10', '2013-03-05 02:36:10', '', 80, 'http://bactai.vn:80/wordpress/?p=106', 0, 'revision', '', 0),
(107, 1, '2013-03-05 16:47:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-03-05 16:47:24', '0000-00-00 00:00:00', '', 0, 'http://bactai.vn:80/wordpress/?p=107', 0, 'post', '', 0),
(108, 2, '2013-03-05 17:21:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-03-05 17:21:40', '0000-00-00 00:00:00', '', 0, 'http://bactai.vn:80/wordpress/?post_type=chuyen_hang&p=108', 0, 'chuyen_hang', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(36, 2, 0),
(39, 3, 0),
(45, 4, 0),
(47, 4, 0),
(54, 2, 0),
(56, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Chuyến xe', 'chuyen-xe', 0),
(3, 'Chuyến hàng', 'chuyen-hang', 0),
(4, 'Tin tức', 'tin-tuc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', 'Admin'),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '105'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&align=none&imgsize=full&urlbutton=post&uploader=1'),
(18, 1, 'wp_user-settings-time', '1358785004'),
(19, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:88:"dashboard_right_now,dashboard_incoming_links,dashboard_recent_comments,dashboard_plugins";s:4:"side";s:83:"dashboard_quick_press,dashboard_recent_drafts,dashboard_primary,dashboard_secondary";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(20, 1, 'screen_layout_dashboard', '2'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:6:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";i:5;s:12:"revisionsdiv";}'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:12:"revisionsdiv";}'),
(25, 2, 'first_name', 'Nhat'),
(26, 2, 'last_name', 'Thai'),
(27, 2, 'nickname', 'nhattqs'),
(28, 2, 'description', ''),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'wp_capabilities', 'a:1:{s:11:"contributor";b:1;}'),
(35, 2, 'wp_user_level', '1'),
(36, 2, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(37, 1, 'aim', ''),
(38, 1, 'yim', 'bluesky11105'),
(39, 1, 'jabber', ''),
(40, 1, 'closedpostboxes_chuyenhang', 'a:0:{}'),
(41, 1, 'metaboxhidden_chuyenhang', 'a:2:{i:0;s:7:"slugdiv";i:1;s:10:"postcustom";}'),
(42, 1, 'meta-box-order_chuyenhang', 'a:3:{s:4:"side";s:22:"submitdiv,postimagediv";s:6:"normal";s:53:"acf_65,postexcerpt,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(43, 1, 'screen_layout_chuyenhang', '2'),
(44, 1, 'closedpostboxes_chuyen_hang', 'a:0:{}'),
(45, 1, 'metaboxhidden_chuyen_hang', 'a:1:{i:0;s:10:"postcustom";}'),
(46, 1, 'closedpostboxes_tin_tuc', 'a:0:{}'),
(47, 1, 'metaboxhidden_tin_tuc', 'a:4:{i:0;s:6:"acf_65";i:1;s:6:"acf_75";i:2;s:10:"postcustom";i:3;s:7:"slugdiv";}'),
(48, 1, 'closedpostboxes_chuyen_xe', 'a:0:{}'),
(49, 1, 'metaboxhidden_chuyen_xe', 'a:3:{i:0;s:6:"acf_65";i:1;s:10:"postcustom";i:2;s:7:"slugdiv";}'),
(50, 1, 'meta-box-order_chuyen_xe', 'a:3:{s:4:"side";s:22:"submitdiv,postimagediv";s:6:"normal";s:123:"acf_510c73c2f0780,acf_510c73357c4ff,acf_510c73a18879d,postexcerpt,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(51, 1, 'screen_layout_chuyen_xe', '2'),
(52, 2, 'aim', ''),
(53, 2, 'yim', 'bluesky11106'),
(54, 2, 'jabber', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BGAUUWjJVPf3mbxDyXD3KuCLYMadu0.', 'admin', 'bluesky11105@yahoo.com', '', '2013-01-02 16:16:20', '', 0, 'admin'),
(2, 'nhattqs', '$P$BNeNRLWBORn5L79QuqRsXTomrUh2GF/', 'nhattqs', 'bluesky11106@yahoo.com', '', '2013-01-26 12:40:15', '', 0, 'Nhat Thai');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
