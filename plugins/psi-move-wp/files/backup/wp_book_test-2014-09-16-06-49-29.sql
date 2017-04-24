

CREATE TABLE `wp40_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `wp40_comments` (
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
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `wp40_links` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `wp40_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=utf8;

INSERT INTO wp40_options VALUES("1","siteurl","http://example.com","yes");
INSERT INTO wp40_options VALUES("2","home","http://example.com","yes");
INSERT INTO wp40_options VALUES("3","blogname","Pacific Mall Development Co.,Ltd.","yes");
INSERT INTO wp40_options VALUES("4","blogdescription","by build a mall we  connect peoples all  over the world.","yes");
INSERT INTO wp40_options VALUES("5","users_can_register","0","yes");
INSERT INTO wp40_options VALUES("6","admin_email","masdi@prima-softindo.co.id","yes");
INSERT INTO wp40_options VALUES("7","start_of_week","1","yes");
INSERT INTO wp40_options VALUES("8","use_balanceTags","","yes");
INSERT INTO wp40_options VALUES("9","use_smilies","1","yes");
INSERT INTO wp40_options VALUES("10","require_name_email","1","yes");
INSERT INTO wp40_options VALUES("11","comments_notify","1","yes");
INSERT INTO wp40_options VALUES("12","posts_per_rss","10","yes");
INSERT INTO wp40_options VALUES("13","rss_use_excerpt","0","yes");
INSERT INTO wp40_options VALUES("14","mailserver_url","mail.example.com","yes");
INSERT INTO wp40_options VALUES("15","mailserver_login","login@example.com","yes");
INSERT INTO wp40_options VALUES("16","mailserver_pass","password","yes");
INSERT INTO wp40_options VALUES("17","mailserver_port","110","yes");
INSERT INTO wp40_options VALUES("18","default_category","1","yes");
INSERT INTO wp40_options VALUES("19","default_comment_status","open","yes");
INSERT INTO wp40_options VALUES("20","default_ping_status","open","yes");
INSERT INTO wp40_options VALUES("21","default_pingback_flag","0","yes");
INSERT INTO wp40_options VALUES("22","posts_per_page","10","yes");
INSERT INTO wp40_options VALUES("23","date_format","F j, Y","yes");
INSERT INTO wp40_options VALUES("24","time_format","g:i a","yes");
INSERT INTO wp40_options VALUES("25","links_updated_date_format","F j, Y g:i a","yes");
INSERT INTO wp40_options VALUES("26","comment_moderation","0","yes");
INSERT INTO wp40_options VALUES("27","moderation_notify","1","yes");
INSERT INTO wp40_options VALUES("28","permalink_structure","/archives/%post_id%","yes");
INSERT INTO wp40_options VALUES("29","gzipcompression","0","yes");
INSERT INTO wp40_options VALUES("30","hack_file","0","yes");
INSERT INTO wp40_options VALUES("31","blog_charset","UTF-8","yes");
INSERT INTO wp40_options VALUES("32","moderation_keys","","no");
INSERT INTO wp40_options VALUES("33","active_plugins","a:5:{i:0;s:47:\"child-pages-shortcode/child-pages-shortcode.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:36:\"google-sitemap-generator/sitemap.php\";i:3;s:26:\"psi-move-wp/psi-movewp.php\";i:4;s:33:\"wp-sitemanager/wp-sitemanager.php\";}","yes");
INSERT INTO wp40_options VALUES("34","category_base","","yes");
INSERT INTO wp40_options VALUES("35","ping_sites","http://rpc.pingomatic.com
http://rpc.twingly.com
http://api.feedster.com/ping
http://api.moreover.com/RPC2
http://api.moreover.com/ping
http://www.blogdigger.com/RPC2
http://www.blogshares.com/rpc.php
http://www.blogsnow.com/ping
http://www.blogstreet.com/xrbin/xmlrpc.cgi
http://bulkfeeds.net/rpc
http://www.newsisfree.com/xmlrpctest.php
http://ping.blo.gs/
http://ping.feedburner.com
http://ping.syndic8.com/xmlrpc.php
http://ping.weblogalot.com/rpc.php
http://rpc.blogrolling.com/pinger/
http://rpc.technorati.com/rpc/ping
http://rpc.weblogs.com/RPC2
http://www.feedsubmitter.com
http://blo.gs/ping.php
http://www.pingerati.net
http://www.pingmyblog.com
http://geourl.org/ping
http://ipings.com
http://www.weblogalot.com/ping","yes");
INSERT INTO wp40_options VALUES("36","advanced_edit","0","yes");
INSERT INTO wp40_options VALUES("37","comment_max_links","2","yes");
INSERT INTO wp40_options VALUES("38","gmt_offset","0","yes");
INSERT INTO wp40_options VALUES("39","default_email_category","1","yes");
INSERT INTO wp40_options VALUES("40","recently_edited","","no");
INSERT INTO wp40_options VALUES("41","template","pacific","yes");
INSERT INTO wp40_options VALUES("42","stylesheet","pacific","yes");
INSERT INTO wp40_options VALUES("43","comment_whitelist","1","yes");
INSERT INTO wp40_options VALUES("44","blacklist_keys","","no");
INSERT INTO wp40_options VALUES("45","comment_registration","0","yes");
INSERT INTO wp40_options VALUES("46","html_type","text/html","yes");
INSERT INTO wp40_options VALUES("47","use_trackback","0","yes");
INSERT INTO wp40_options VALUES("48","default_role","subscriber","yes");
INSERT INTO wp40_options VALUES("49","db_version","29630","yes");
INSERT INTO wp40_options VALUES("50","uploads_use_yearmonth_folders","1","yes");
INSERT INTO wp40_options VALUES("51","upload_path","","yes");
INSERT INTO wp40_options VALUES("52","blog_public","1","yes");
INSERT INTO wp40_options VALUES("53","default_link_category","0","yes");
INSERT INTO wp40_options VALUES("54","show_on_front","page","yes");
INSERT INTO wp40_options VALUES("55","tag_base","","yes");
INSERT INTO wp40_options VALUES("56","show_avatars","1","yes");
INSERT INTO wp40_options VALUES("57","avatar_rating","G","yes");
INSERT INTO wp40_options VALUES("58","upload_url_path","","yes");
INSERT INTO wp40_options VALUES("59","thumbnail_size_w","150","yes");
INSERT INTO wp40_options VALUES("60","thumbnail_size_h","150","yes");
INSERT INTO wp40_options VALUES("61","thumbnail_crop","1","yes");
INSERT INTO wp40_options VALUES("62","medium_size_w","300","yes");
INSERT INTO wp40_options VALUES("63","medium_size_h","300","yes");
INSERT INTO wp40_options VALUES("64","avatar_default","mystery","yes");
INSERT INTO wp40_options VALUES("65","large_size_w","1024","yes");
INSERT INTO wp40_options VALUES("66","large_size_h","1024","yes");
INSERT INTO wp40_options VALUES("67","image_default_link_type","file","yes");
INSERT INTO wp40_options VALUES("68","image_default_size","","yes");
INSERT INTO wp40_options VALUES("69","image_default_align","","yes");
INSERT INTO wp40_options VALUES("70","close_comments_for_old_posts","0","yes");
INSERT INTO wp40_options VALUES("71","close_comments_days_old","14","yes");
INSERT INTO wp40_options VALUES("72","thread_comments","1","yes");
INSERT INTO wp40_options VALUES("73","thread_comments_depth","5","yes");
INSERT INTO wp40_options VALUES("74","page_comments","0","yes");
INSERT INTO wp40_options VALUES("75","comments_per_page","50","yes");
INSERT INTO wp40_options VALUES("76","default_comments_page","newest","yes");
INSERT INTO wp40_options VALUES("77","comment_order","asc","yes");
INSERT INTO wp40_options VALUES("78","sticky_posts","a:0:{}","yes");
INSERT INTO wp40_options VALUES("79","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp40_options VALUES("80","widget_text","a:0:{}","yes");
INSERT INTO wp40_options VALUES("81","widget_rss","a:0:{}","yes");
INSERT INTO wp40_options VALUES("82","uninstall_plugins","a:0:{}","no");
INSERT INTO wp40_options VALUES("83","timezone_string","","yes");
INSERT INTO wp40_options VALUES("84","page_for_posts","0","yes");
INSERT INTO wp40_options VALUES("85","page_on_front","37","yes");
INSERT INTO wp40_options VALUES("86","default_post_format","0","yes");
INSERT INTO wp40_options VALUES("87","link_manager_enabled","0","yes");
INSERT INTO wp40_options VALUES("88","initial_db_version","29630","yes");
INSERT INTO wp40_options VALUES("89","wp40_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes");
INSERT INTO wp40_options VALUES("90","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp40_options VALUES("91","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp40_options VALUES("92","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp40_options VALUES("93","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp40_options VALUES("94","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp40_options VALUES("95","sidebars_widgets","a:6:{s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"primary-widgetarea\";a:1:{i:0;s:10:\"sub_navi-2\";}s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:1:{i:0;s:10:\"sub_navi-3\";}s:21:\"secondary-widget-area\";a:0:{}s:13:\"array_version\";i:3;}","yes");
INSERT INTO wp40_options VALUES("96","cron","a:6:{i:1410850508;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1410854220;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1410866203;a:1:{s:13:\"sm_ping_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1410881025;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1410924257;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes");
INSERT INTO wp40_options VALUES("98","_transient_random_seed","83f8c25b48686d5537468e959e47d94f","yes");
INSERT INTO wp40_options VALUES("99","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.0\";s:7:\"version\";s:3:\"4.0\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.8\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1410843550;s:15:\"version_checked\";s:3:\"4.0\";s:12:\"translations\";a:0:{}}","yes");
INSERT INTO wp40_options VALUES("104","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1410843562;s:7:\"checked\";a:4:{s:7:\"pacific\";s:3:\"1.0\";s:14:\"twentyfourteen\";s:3:\"1.2\";s:14:\"twentythirteen\";s:3:\"1.3\";s:12:\"twentytwelve\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","yes");
INSERT INTO wp40_options VALUES("105","_site_transient_timeout_browser_cf886822a51b23aadaa6878472b27077","1410751436","yes");
INSERT INTO wp40_options VALUES("106","_site_transient_browser_cf886822a51b23aadaa6878472b27077","a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"37.0.2062.103\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}","yes");
INSERT INTO wp40_options VALUES("111","can_compress_scripts","1","yes");
INSERT INTO wp40_options VALUES("125","WPLANG","","yes");
INSERT INTO wp40_options VALUES("134","current_theme","Pacific Malls Development","yes");
INSERT INTO wp40_options VALUES("135","theme_mods_pacific","a:4:{i:0;b:0;s:12:\"header_image\";s:60:\"http://example.com/wp-content/uploads/2014/09/main_image.png\";s:17:\"header_image_data\";a:5:{s:13:\"attachment_id\";i:4;s:3:\"url\";s:60:\"http://example.com/wp-content/uploads/2014/09/main_image.png\";s:13:\"thumbnail_url\";s:60:\"http://example.com/wp-content/uploads/2014/09/main_image.png\";s:5:\"width\";i:950;s:6:\"height\";i:295;}s:18:\"nav_menu_locations\";a:2:{s:12:\"place_global\";i:5;s:13:\"place_utility\";i:6;}}","yes");
INSERT INTO wp40_options VALUES("136","theme_switched","","yes");
INSERT INTO wp40_options VALUES("144","recently_activated","a:0:{}","yes");
INSERT INTO wp40_options VALUES("148","category_children","a:0:{}","yes");
INSERT INTO wp40_options VALUES("166","_site_transient_timeout_popular_importers_en_US","1410332995","yes");
INSERT INTO wp40_options VALUES("167","_site_transient_popular_importers_en_US","a:2:{s:9:\"importers\";a:8:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:86:\"Install the Blogger importer to import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:109:\"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:9:\"wpcat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:82:\"Install the LiveJournal importer to import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:99:\"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:4:\"opml\";a:4:{s:4:\"name\";s:8:\"Blogroll\";s:11:\"description\";s:61:\"Install the blogroll importer to import links in OPML format.\";s:11:\"plugin-slug\";s:13:\"opml-importer\";s:11:\"importer-id\";s:4:\"opml\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:58:\"Install the RSS importer to import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:84:\"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:130:\"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}","yes");
INSERT INTO wp40_options VALUES("184","_transient_twentyfourteen_category_count","4","yes");
INSERT INTO wp40_options VALUES("190","theme_mods_twentyfourteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1410162756;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes");
INSERT INTO wp40_options VALUES("193","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes");
INSERT INTO wp40_options VALUES("218","wpcf7","a:1:{s:7:\"version\";s:5:\"3.9.3\";}","yes");
INSERT INTO wp40_options VALUES("221","site_manager_cache_installed","2","yes");
INSERT INTO wp40_options VALUES("222","widget_sub_navi","a:3:{i:2;a:15:{s:12:\"home_display\";s:6:\"latest\";s:10:\"home_title\";s:0:\"\";s:14:\"home_disp_nums\";s:1:\"5\";s:14:\"home_post_type\";a:1:{i:0;s:4:\"post\";}s:12:\"post_display\";s:11:\"current_cat\";s:10:\"post_title\";s:0:\"\";s:11:\"cat_orderby\";s:4:\"name\";s:9:\"cat_order\";s:3:\"asc\";s:14:\"post_disp_nums\";s:1:\"5\";s:12:\"page_display\";s:7:\"current\";s:21:\"page_display_child_of\";s:1:\"1\";s:10:\"page_title\";s:0:\"\";s:15:\"page_disp_level\";s:1:\"2\";s:17:\"page_exclude_tree\";s:0:\"\";s:24:\"page_exclude_other_child\";i:0;}i:3;a:15:{s:12:\"home_display\";s:6:\"modify\";s:10:\"home_title\";s:0:\"\";s:14:\"home_disp_nums\";s:1:\"5\";s:14:\"home_post_type\";a:1:{i:0;s:4:\"post\";}s:12:\"post_display\";s:11:\"current_cat\";s:10:\"post_title\";s:0:\"\";s:11:\"cat_orderby\";s:4:\"name\";s:9:\"cat_order\";s:3:\"asc\";s:14:\"post_disp_nums\";s:1:\"5\";s:12:\"page_display\";s:7:\"current\";s:21:\"page_display_child_of\";s:1:\"1\";s:10:\"page_title\";s:0:\"\";s:15:\"page_disp_level\";s:1:\"2\";s:17:\"page_exclude_tree\";s:0:\"\";s:24:\"page_exclude_other_child\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp40_options VALUES("230","wp-sitemanager-site-structure","a:1:{s:4:\"post\";a:4:{s:7:\"display\";s:1:\"1\";s:4:\"page\";s:0:\"\";s:6:\"object\";s:8:\"category\";s:5:\"order\";s:3:\"600\";}}","yes");
INSERT INTO wp40_options VALUES("231","wp-sitemanager-sitemap-settings","a:2:{s:10:\"disp_level\";s:1:\"0\";s:5:\"style\";a:5:{s:4:\"name\";s:8:\"Simple 1\";s:11:\"description\";s:39:\"It is a business Site map simple style.\";s:7:\"version\";s:3:\"1.0\";s:4:\"path\";s:93:\"D:\\webRoot\\DocumentRoot\\wp-content\\plugins\\wp-sitemanager/sitemap-styles/simple-1/sitemap.css\";s:3:\"url\";s:99:\"http://localhost/DocumentRoot/wp-content/plugins/wp-sitemanager/sitemap-styles/simple-1/sitemap.css\";}}","yes");
INSERT INTO wp40_options VALUES("257","meta_keywords","Pacific Mall Development Co.,Ltd.","yes");
INSERT INTO wp40_options VALUES("258","meta_description","by build a mall we connect peoples all over the world","yes");
INSERT INTO wp40_options VALUES("259","meta_manager_settings","a:6:{s:19:\"includes_taxonomies\";a:0:{}s:22:\"excerpt_as_description\";b:1;s:12:\"include_term\";b:1;s:10:\"ogp_output\";b:1;s:16:\"twitcards_output\";b:1;s:20:\"twitter_site_account\";s:0:\"\";}","yes");
INSERT INTO wp40_options VALUES("260","ogp_image","0","yes");
INSERT INTO wp40_options VALUES("262","sm_rewrite_done","$Id: sitemap-loader.php 937300 2014-06-23 18:04:11Z arnee $","yes");
INSERT INTO wp40_options VALUES("263","sm_options","a:51:{s:18:\"sm_b_prio_provider\";s:41:\"GoogleSitemapGeneratorPrioByCountProvider\";s:9:\"sm_b_ping\";b:1;s:10:\"sm_b_stats\";b:0;s:12:\"sm_b_pingmsn\";b:1;s:12:\"sm_b_autozip\";b:1;s:11:\"sm_b_memory\";s:0:\"\";s:9:\"sm_b_time\";i:-1;s:18:\"sm_b_style_default\";b:1;s:10:\"sm_b_style\";s:0:\"\";s:12:\"sm_b_baseurl\";s:0:\"\";s:11:\"sm_b_robots\";b:1;s:9:\"sm_b_html\";b:1;s:12:\"sm_b_exclude\";a:0:{}s:17:\"sm_b_exclude_cats\";a:0:{}s:10:\"sm_in_home\";b:1;s:11:\"sm_in_posts\";b:1;s:15:\"sm_in_posts_sub\";b:0;s:11:\"sm_in_pages\";b:1;s:10:\"sm_in_cats\";b:0;s:10:\"sm_in_arch\";b:0;s:10:\"sm_in_auth\";b:0;s:10:\"sm_in_tags\";b:0;s:9:\"sm_in_tax\";a:0:{}s:17:\"sm_in_customtypes\";a:0:{}s:13:\"sm_in_lastmod\";b:1;s:10:\"sm_cf_home\";s:5:\"daily\";s:11:\"sm_cf_posts\";s:7:\"monthly\";s:11:\"sm_cf_pages\";s:6:\"weekly\";s:10:\"sm_cf_cats\";s:6:\"weekly\";s:10:\"sm_cf_auth\";s:6:\"weekly\";s:15:\"sm_cf_arch_curr\";s:5:\"daily\";s:14:\"sm_cf_arch_old\";s:6:\"yearly\";s:10:\"sm_cf_tags\";s:6:\"weekly\";s:10:\"sm_pr_home\";d:1;s:11:\"sm_pr_posts\";d:0.59999999999999997779553950749686919152736663818359375;s:15:\"sm_pr_posts_min\";d:0.200000000000000011102230246251565404236316680908203125;s:11:\"sm_pr_pages\";d:0.59999999999999997779553950749686919152736663818359375;s:10:\"sm_pr_cats\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_arch\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_auth\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_tags\";d:0.299999999999999988897769753748434595763683319091796875;s:12:\"sm_i_donated\";b:0;s:17:\"sm_i_hide_donated\";b:0;s:17:\"sm_i_install_date\";i:1410257915;s:14:\"sm_i_hide_note\";b:0;s:15:\"sm_i_hide_works\";b:0;s:16:\"sm_i_hide_donors\";b:0;s:9:\"sm_i_hash\";s:20:\"3ffdbcbd2924ef739e44\";s:13:\"sm_i_lastping\";i:1410259699;s:16:\"sm_i_supportfeed\";b:1;s:22:\"sm_i_supportfeed_cache\";i:1410312913;}","yes");
INSERT INTO wp40_options VALUES("264","_transient_timeout_feed_8160e8f2854f5fa1fac2cc3981001e76","1410862716","no");
INSERT INTO wp40_options VALUES("265","_transient_feed_8160e8f2854f5fa1fac2cc3981001e76","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"
	
\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:23:\"
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Google Sitemap Generator Support Topics\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Google Sitemap Generator Support Topics\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"http://www.arnebrachhold.de/projects/wordpress-plugins/google-xml-sitemaps-generator/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Wed, 02 Jul 2014 7:54:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:3:{i:0;a:6:{s:4:\"data\";s:19:\"
			
			
			
			
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:4:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"Common error messages in Google Webmaster Tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://www.arnebrachhold.de/redir/sitemap-feed-gwterrs/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"C2VZYxeTESzcCF2IhS13\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 28 Apr 2014 00:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:19:\"
			
			
			
			
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:4:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"How to move your sitemap to the root of your domain\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"http://www.arnebrachhold.de/redir/sitemap-feed-movesm/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"C2VZYxeTESzcCF2IhS12\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 27 Apr 2014 00:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:19:\"
			
			
			
			
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:4:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Introducing a new format for your sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://www.arnebrachhold.de/redir/sitemap-feed-newformat/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"C2VZYxeTESzcCF2IhS1l\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 Apr 2014 00:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:10:{s:4:\"date\";s:29:\"Tue, 09 Sep 2014 10:18:48 GMT\";s:12:\"content-type\";s:23:\"text/xml; charset=utf-8\";s:10:\"connection\";s:5:\"close\";s:10:\"set-cookie\";s:138:\"__cfduid=d4b4d25f772298b211f285883be3316611410257927739; expires=Mon, 23-Dec-2019 23:50:00 GMT; path=/; domain=.arnebrachhold.de; HttpOnly\";s:13:\"cache-control\";s:21:\"public, max-age=86400\";s:13:\"last-modified\";s:29:\"Wed, 02 Jul 2014 19:54:35 GMT\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:6:\"server\";s:16:\"cloudflare-nginx\";s:6:\"cf-ray\";s:20:\"1672a4d05b4c1129-SIN\";s:16:\"content-encoding\";s:4:\"gzip\";}s:5:\"build\";s:14:\"20130911040210\";}","no");
INSERT INTO wp40_options VALUES("266","_transient_timeout_feed_mod_8160e8f2854f5fa1fac2cc3981001e76","1410862716","no");
INSERT INTO wp40_options VALUES("267","_transient_feed_mod_8160e8f2854f5fa1fac2cc3981001e76","1410257916","no");
INSERT INTO wp40_options VALUES("270","sm_cpages","a:1:{i:0;O:26:\"GoogleSitemapGeneratorPage\":5:{s:4:\"_url\";s:0:\"\";s:9:\"_priority\";d:0;s:11:\"_changeFreq\";s:6:\"always\";s:8:\"_lastMod\";i:0;s:7:\"_postID\";i:0;}}","no");
INSERT INTO wp40_options VALUES("271","sm_status","O:28:\"GoogleSitemapGeneratorStatus\":4:{s:39:\"\0GoogleSitemapGeneratorStatus\0startTime\";d:1410259685.3809559345245361328125;s:37:\"\0GoogleSitemapGeneratorStatus\0endTime\";d:1410259687.6313579082489013671875;s:41:\"\0GoogleSitemapGeneratorStatus\0pingResults\";a:2:{s:6:\"google\";a:5:{s:9:\"startTime\";d:1410259685.3870589733123779296875;s:7:\"endTime\";d:1410259686.2359340190887451171875;s:7:\"success\";b:0;s:3:\"url\";s:106:\"http://www.google.com/webmasters/sitemaps/ping?sitemap=http%3A%2F%2Flocalhost%2FDocumentRoot%2Fsitemap.xml\";s:4:\"name\";s:6:\"Google\";}s:4:\"bing\";a:5:{s:9:\"startTime\";d:1410259686.2406179904937744140625;s:7:\"endTime\";d:1410259687.6210339069366455078125;s:7:\"success\";b:1;s:3:\"url\";s:99:\"http://www.bing.com/webmaster/ping.aspx?siteMap=http%3A%2F%2Flocalhost%2FDocumentRoot%2Fsitemap.xml\";s:4:\"name\";s:4:\"Bing\";}}s:38:\"\0GoogleSitemapGeneratorStatus\0autoSave\";b:1;}","no");
INSERT INTO wp40_options VALUES("373","site_cache_life","a:6:{s:4:\"home\";i:60;s:7:\"archive\";i:60;s:8:\"singular\";i:360;s:7:\"exclude\";s:0:\"\";s:18:\"allowed_query_keys\";s:0:\"\";s:6:\"update\";s:4:\"none\";}","yes");
INSERT INTO wp40_options VALUES("385","_site_transient_timeout_browser_4c1c60c037ba64c127d1bedad364a790","1411355934","yes");
INSERT INTO wp40_options VALUES("386","_site_transient_browser_4c1c60c037ba64c127d1bedad364a790","a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"37.0.2062.120\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}","yes");
INSERT INTO wp40_options VALUES("399","_transient_timeout_plugin_slugs","1410861907","no");
INSERT INTO wp40_options VALUES("400","_transient_plugin_slugs","a:10:{i:0;s:19:\"akismet/akismet.php\";i:1;s:47:\"child-pages-shortcode/child-pages-shortcode.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:43:\"google-analyticator/google-analyticator.php\";i:5;s:36:\"google-sitemap-generator/sitemap.php\";i:6;s:9:\"hello.php\";i:7;s:26:\"psi-move-wp/psi-movewp.php\";i:8;s:41:\"wordpress-importer/wordpress-importer.php\";i:9;s:33:\"wp-sitemanager/wp-sitemanager.php\";}","no");
INSERT INTO wp40_options VALUES("420","_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a","1410779552","yes");
INSERT INTO wp40_options VALUES("421","_site_transient_poptags_40cd750bba9870f18aada2478b24840a","a:40:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";s:4:\"4587\";}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"Post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";s:4:\"2848\";}s:6:\"plugin\";a:3:{s:4:\"name\";s:6:\"plugin\";s:4:\"slug\";s:6:\"plugin\";s:5:\"count\";s:4:\"2785\";}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";s:4:\"2284\";}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:4:\"2189\";}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";s:4:\"1792\";}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";s:4:\"1587\";}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";s:4:\"1563\";}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";s:4:\"1529\";}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";s:4:\"1519\";}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";s:4:\"1448\";}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";s:4:\"1411\";}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";s:4:\"1350\";}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"Facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";s:4:\"1209\";}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";s:4:\"1153\";}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";s:4:\"1121\";}s:9:\"wordpress\";a:3:{s:4:\"name\";s:9:\"wordpress\";s:4:\"slug\";s:9:\"wordpress\";s:5:\"count\";s:4:\"1044\";}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";s:4:\"1001\";}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";s:3:\"995\";}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";s:3:\"823\";}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";s:3:\"811\";}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";s:3:\"798\";}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";s:3:\"793\";}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";s:3:\"789\";}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";s:3:\"730\";}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"AJAX\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";s:3:\"693\";}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";s:3:\"691\";}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";s:3:\"661\";}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";s:3:\"638\";}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";s:3:\"618\";}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";s:3:\"609\";}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";s:3:\"607\";}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";s:3:\"601\";}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";s:3:\"593\";}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";s:3:\"587\";}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";s:3:\"546\";}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";s:3:\"544\";}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";s:3:\"543\";}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"Share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";s:3:\"536\";}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";s:3:\"534\";}}","yes");
INSERT INTO wp40_options VALUES("430","_site_transient_update_plugins","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1410843559;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.0.2.zip\";}s:47:\"child-pages-shortcode/child-pages-shortcode.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"26094\";s:4:\"slug\";s:21:\"child-pages-shortcode\";s:6:\"plugin\";s:47:\"child-pages-shortcode/child-pages-shortcode.php\";s:11:\"new_version\";s:5:\"1.9.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/child-pages-shortcode/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/child-pages-shortcode.1.9.1.zip\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"790\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"3.9.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.3.9.3.zip\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"13183\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"0.8.4\";s:14:\"upgrade_notice\";s:119:\"Fix issue with get code and post types/taxonomies that use a dash instead of underscore. Props Evan Mullins/circlecube.\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.0.8.4.zip\";}s:43:\"google-analyticator/google-analyticator.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"130\";s:4:\"slug\";s:19:\"google-analyticator\";s:6:\"plugin\";s:43:\"google-analyticator/google-analyticator.php\";s:11:\"new_version\";s:7:\"6.4.7.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/google-analyticator/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/google-analyticator.6.4.7.3.zip\";}s:36:\"google-sitemap-generator/sitemap.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"132\";s:4:\"slug\";s:24:\"google-sitemap-generator\";s:6:\"plugin\";s:36:\"google-sitemap-generator/sitemap.php\";s:11:\"new_version\";s:7:\"4.0.7.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/google-sitemap-generator/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/google-sitemap-generator.4.0.7.1.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:26:\"psi-move-wp/psi-movewp.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"51885\";s:4:\"slug\";s:11:\"psi-move-wp\";s:6:\"plugin\";s:26:\"psi-move-wp/psi-movewp.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/psi-move-wp/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/psi-move-wp.zip\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"14975\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip\";}s:33:\"wp-sitemanager/wp-sitemanager.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"32973\";s:4:\"slug\";s:14:\"wp-sitemanager\";s:6:\"plugin\";s:33:\"wp-sitemanager/wp-sitemanager.php\";s:11:\"new_version\";s:6:\"1.0.15\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-sitemanager/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-sitemanager.1.0.15.zip\";}}}","yes");
INSERT INTO wp40_options VALUES("442","_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca","1410886766","no");
INSERT INTO wp40_options VALUES("443","_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:51:\"
	
	
	
	
	
	
		
		
	
	
		
		
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"http://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Sep 2014 17:05:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/?v=4.1-alpha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 4.0 “Benny”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://wordpress.org/news/2014/09/benny/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://wordpress.org/news/2014/09/benny/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Sep 2014 17:05:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3296\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:370:\"Version 4.0 of WordPress, named “Benny” in honor of jazz clarinetist and bandleader Benny Goodman, is available for download or update in your WordPress dashboard. While 4.0 is just another number for us after 3.9 and before 4.1, we feel we&#8217;ve put a little extra polish into it. This release brings you a smoother writing and management experience [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:23327:\"<p>Version 4.0 of WordPress, named “Benny” in honor of jazz clarinetist and bandleader <a href=\"http://en.wikipedia.org/wiki/Benny_Goodman\">Benny Goodman</a>, is available <a href=\"http://wordpress.org/download/\">for download</a> or update in your WordPress dashboard. While 4.0 is just another number for us after 3.9 and before 4.1, we feel we&#8217;ve put a little extra polish into it. This release brings you a smoother writing and management experience we think you&#8217;ll enjoy.</p>
<div id=\"v-bUdzKMro-1\" class=\"video-player\"><embed id=\"v-bUdzKMro-1-video\" src=\"http://s0.videopress.com/player.swf?v=1.03&amp;guid=bUdzKMro&amp;isDynamicSeeking=true\" type=\"application/x-shockwave-flash\" width=\"692\" height=\"388\" title=\"Introducing WordPress 4.0 &quot;Benny&quot;\" wmode=\"direct\" seamlesstabbing=\"true\" allowfullscreen=\"true\" allowscriptaccess=\"always\" overstretch=\"true\"></embed></div>
<hr />
<h2 style=\"text-align: center\">Manage your media with style</h2>
<p><img class=\"alignnone size-full wp-image-3316\" src=\"http://i0.wp.com/wordpress.org/news/files/2014/09/media.jpg?resize=692%2C406\" alt=\"Media Library\" data-recalc-dims=\"1\" />Explore your uploads in a beautiful, endless grid. A new details preview makes viewing and editing any amount of media in sequence a snap.</p>
<hr />
<h2 style=\"text-align: center\">Working with embeds has never been easier</h2>
<div style=\"width: 632px; height: 445px; \" class=\"wp-video\"><!--[if lt IE 9]><script>document.createElement(\'video\');</script><![endif]-->
<video class=\"wp-video-shortcode\" id=\"video-3296-1\" width=\"632\" height=\"445\" autoplay=\"true\" preload=\"metadata\" controls=\"controls\"><source type=\"video/mp4\" src=\"//s.w.org/images/core/4.0/embed.mp4?_=1\" /><source type=\"video/webm\" src=\"//s.w.org/images/core/4.0/embed.webm?_=1\" /><source type=\"video/ogg\" src=\"//s.w.org/images/core/4.0/embed.ogv?_=1\" /><a href=\"//s.w.org/images/core/4.0/embed.mp4\">//s.w.org/images/core/4.0/embed.mp4</a></video></div>
<p>Paste in a YouTube URL on a new line, and watch it magically become an embedded video. Now try it with a tweet. Oh yeah — embedding has become a visual experience. The editor shows a true preview of your embedded content, saving you time and giving you confidence.</p>
<p>We’ve expanded the services supported by default, too — you can embed videos from CollegeHumor, playlists from YouTube, and talks from TED. <a href=\"http://codex.wordpress.org/Embeds\">Check out all of the embeds</a> that WordPress supports.</p>
<hr />
<h2 style=\"text-align: center\">Focus on your content</h2>
<div style=\"width: 632px; height: 356px; \" class=\"wp-video\"><video class=\"wp-video-shortcode\" id=\"video-3296-2\" width=\"632\" height=\"356\" autoplay=\"true\" preload=\"metadata\" controls=\"controls\"><source type=\"video/mp4\" src=\"//s.w.org/images/core/4.0/focus.mp4?_=2\" /><source type=\"video/webm\" src=\"//s.w.org/images/core/4.0/focus.webm?_=2\" /><source type=\"video/ogg\" src=\"//s.w.org/images/core/4.0/focus.ogv?_=2\" /><a href=\"//s.w.org/images/core/4.0/focus.mp4\">//s.w.org/images/core/4.0/focus.mp4</a></video></div>
<p>Writing and editing is smoother and more immersive with an editor that expands to fit your content as you write, and keeps the formatting tools available at all times.</p>
<hr />
<h2 style=\"text-align: center\">Finding the right plugin</h2>
<p><img class=\"aligncenter size-large wp-image-3309\" src=\"http://i0.wp.com/wordpress.org/news/files/2014/09/add-plugin1.png?resize=692%2C405\" alt=\"Add plugins\" data-recalc-dims=\"1\" /></p>
<p>There are more than 30,000 free and open source plugins in the WordPress plugin directory. WordPress 4.0 makes it easier to find the right one for your needs, with new metrics, improved search, and a more visual browsing experience.</p>
<hr />
<h2 style=\"text-align: center\">The Ensemble</h2>
<p>This release was led by <a href=\"http://helenhousandi.com\">Helen Hou-Sandí</a>, with the help of these fine individuals. There are 275 contributors with props in this release, a new high. Pull up some Benny Goodman on your music service of choice, as a bandleader or in one of his turns as a classical clarinetist, and check out some of their profiles:</p>
<p><a href=\"http://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>, <a href=\"http://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"http://profiles.wordpress.org/adamsilverstein\">Adam Silverstein</a>, <a href=\"http://profiles.wordpress.org/viper007bond\">Alex Mills (Viper007Bond)</a>, <a href=\"http://profiles.wordpress.org/tellyworth\">Alex Shiels</a>, <a href=\"http://profiles.wordpress.org/alexanderrohmann\">Alexander Rohmann</a>, <a href=\"http://profiles.wordpress.org/aliso\">Alison Barrett</a>, <a href=\"http://profiles.wordpress.org/collinsinternet\">Allan Collins</a>, <a href=\"http://profiles.wordpress.org/amit\">Amit Gupta</a>, <a href=\"http://profiles.wordpress.org/sabreuse\">Amy Hendrix (sabreuse)</a>, <a href=\"http://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"http://profiles.wordpress.org/andrezrv\">Andres Villarreal</a>, <a href=\"http://profiles.wordpress.org/zamfeer\">Andrew Mowe</a>, <a href=\"http://profiles.wordpress.org/sumobi\">Andrew Munro</a>, <a href=\"http://profiles.wordpress.org/nacin\">Andrew Nacin</a>, <a href=\"http://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"http://profiles.wordpress.org/andy\">Andy Skelton</a>, <a href=\"http://profiles.wordpress.org/ankit-k-gupta\">Ankit K Gupta</a>, <a href=\"http://profiles.wordpress.org/atimmer\">Anton Timmermans</a>, <a href=\"http://profiles.wordpress.org/arnee\">arnee</a>, <a href=\"http://profiles.wordpress.org/aubreypwd\">Aubrey Portwood</a>, <a href=\"http://profiles.wordpress.org/filosofo\">Austin Matzko</a>, <a href=\"http://profiles.wordpress.org/empireoflight\">Ben Dunkle</a>, <a href=\"http://profiles.wordpress.org/kau-boy\">Bernhard Kau</a>, <a href=\"http://profiles.wordpress.org/boonebgorges\">Boone Gorges</a>, <a href=\"http://profiles.wordpress.org/bradyvercher\">Brady Vercher</a>, <a href=\"http://profiles.wordpress.org/bramd\">bramd</a>, <a href=\"http://profiles.wordpress.org/kraftbj\">Brandon Kraft</a>, <a href=\"http://profiles.wordpress.org/brianlayman\">Brian Layman</a>, <a href=\"http://profiles.wordpress.org/rzen\">Brian Richards</a>, <a href=\"http://profiles.wordpress.org/camdensegal\">Camden Segal</a>, <a href=\"http://profiles.wordpress.org/sixhours\">Caroline Moore</a>, <a href=\"http://profiles.wordpress.org/mackensen\">Charles Fulton</a>, <a href=\"http://profiles.wordpress.org/chouby\">Chouby</a>, <a href=\"http://profiles.wordpress.org/chrico\">ChriCo</a>, <a href=\"http://profiles.wordpress.org/c3mdigital\">Chris Olbekson</a>, <a href=\"http://profiles.wordpress.org/chrisl27\">chrisl27</a>, <a href=\"http://profiles.wordpress.org/caxelsson\">Christian Axelsson</a>, <a href=\"http://profiles.wordpress.org/cfinke\">Christopher Finke</a>, <a href=\"http://profiles.wordpress.org/boda1982\">Christopher Spires</a>, <a href=\"http://profiles.wordpress.org/clifgriffin\">Clifton Griffin</a>, <a href=\"http://profiles.wordpress.org/jupiterwise\">Corey McKrill</a>, <a href=\"http://profiles.wordpress.org/corphi\">Corphi</a>, <a href=\"http://profiles.wordpress.org/extendwings\">Daisuke Takahashi</a>, <a href=\"http://profiles.wordpress.org/ghost1227\">Dan Griffiths</a>, <a href=\"http://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber</a>, <a href=\"http://profiles.wordpress.org/danielhuesken\">Daniel Husken</a>, <a href=\"http://profiles.wordpress.org/redsweater\">Daniel Jalkut (Red Sweater)</a>, <a href=\"http://profiles.wordpress.org/dannydehaan\">Danny de Haan</a>, <a href=\"http://profiles.wordpress.org/dkotter\">Darin Kotter</a>, <a href=\"http://profiles.wordpress.org/koop\">Daryl Koopersmith</a>, <a href=\"http://profiles.wordpress.org/dllh\">Daryl L. L. Houston (dllh)</a>, <a href=\"http://profiles.wordpress.org/davidakennedy\">David A. Kennedy</a>, <a href=\"http://profiles.wordpress.org/dlh\">David Herrera</a>, <a href=\"http://profiles.wordpress.org/dnaber-de\">David Naber</a>, <a href=\"http://profiles.wordpress.org/davidthemachine\">DavidTheMachine</a>, <a href=\"http://profiles.wordpress.org/debaat\">DeBAAT</a>, <a href=\"http://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"http://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"http://profiles.wordpress.org/donncha\">Donncha O Caoimh</a>, <a href=\"http://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>, <a href=\"http://profiles.wordpress.org/dustyn\">Dustyn Doyle</a>, <a href=\"http://profiles.wordpress.org/eddiemoya\">Eddie Moya</a>, <a href=\"http://profiles.wordpress.org/oso96_2000\">Eduardo Reveles</a>, <a href=\"http://profiles.wordpress.org/edwin-at-studiojoyocom\">Edwin Siebel</a>, <a href=\"http://profiles.wordpress.org/ehg\">ehg</a>, <a href=\"http://profiles.wordpress.org/tmeister\">Enrique Chavez</a>, <a href=\"http://profiles.wordpress.org/erayalakese\">erayalakese</a>, <a href=\"http://profiles.wordpress.org/ericlewis\">Eric Andrew Lewis</a>, <a href=\"http://profiles.wordpress.org/ebinnion\">Eric Binnion</a>, <a href=\"http://profiles.wordpress.org/ericmann\">Eric Mann</a>, <a href=\"http://profiles.wordpress.org/ejdanderson\">Evan Anderson</a>, <a href=\"http://profiles.wordpress.org/eherman24\">Evan Herman</a>, <a href=\"http://profiles.wordpress.org/fab1en\">Fabien Quatravaux</a>, <a href=\"http://profiles.wordpress.org/fahmiadib\">Fahmi Adib</a>, <a href=\"http://profiles.wordpress.org/feedmeastraycat\">feedmeastraycat</a>, <a href=\"http://profiles.wordpress.org/frank-klein\">Frank Klein</a>, <a href=\"http://profiles.wordpress.org/garhdez\">garhdez</a>, <a href=\"http://profiles.wordpress.org/garyc40\">Gary Cao</a>, <a href=\"http://profiles.wordpress.org/garyj\">Gary Jones</a>, <a href=\"http://profiles.wordpress.org/pento\">Gary Pendergast</a>, <a href=\"http://profiles.wordpress.org/garza\">garza</a>, <a href=\"http://profiles.wordpress.org/gauravmittal1995\">gauravmittal1995</a>, <a href=\"http://profiles.wordpress.org/gavra\">Gavrisimo</a>, <a href=\"http://profiles.wordpress.org/georgestephanis\">George Stephanis</a>, <a href=\"http://profiles.wordpress.org/grahamarmfield\">Graham Armfield</a>, <a href=\"http://profiles.wordpress.org/vancoder\">Grant Mangham</a>, <a href=\"http://profiles.wordpress.org/gcorne\">Gregory Cornelius</a>, <a href=\"http://profiles.wordpress.org/bordoni\">Gustavo Bordoni</a>, <a href=\"http://profiles.wordpress.org/harrym\">harrym</a>, <a href=\"http://profiles.wordpress.org/hebbet\">hebbet</a>, <a href=\"http://profiles.wordpress.org/hinnerk\">Hinnerk Altenburg</a>, <a href=\"http://profiles.wordpress.org/hlashbrooke\">Hugh Lashbrooke</a>, <a href=\"http://profiles.wordpress.org/iljoja\">iljoja</a>, <a href=\"http://profiles.wordpress.org/imath\">imath</a>, <a href=\"http://profiles.wordpress.org/ipstenu\">Ipstenu (Mika Epstein)</a>, <a href=\"http://profiles.wordpress.org/issuu\">issuu</a>, <a href=\"http://profiles.wordpress.org/jdgrimes\">J.D. Grimes</a>, <a href=\"http://profiles.wordpress.org/jacklenox\">Jack Lenox</a>, <a href=\"http://profiles.wordpress.org/jackreichert\">Jack Reichert</a>, <a href=\"http://profiles.wordpress.org/jacobdubail\">Jacob Dubail</a>, <a href=\"http://profiles.wordpress.org/janhenkg\">JanHenkG</a>, <a href=\"http://profiles.wordpress.org/avryl\">Janneke Van Dorpe</a>, <a href=\"http://profiles.wordpress.org/jwenerd\">Jared Wenerd</a>, <a href=\"http://profiles.wordpress.org/jaza613\">Jaza613</a>, <a href=\"http://profiles.wordpress.org/jeffstieler\">Jeff Stieler</a>, <a href=\"http://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"http://profiles.wordpress.org/jpry\">Jeremy Pry</a>, <a href=\"http://profiles.wordpress.org/slimndap\">Jeroen Schmit</a>, <a href=\"http://profiles.wordpress.org/jerrysarcastic\">Jerry Bates (jerrysarcastic)</a>, <a href=\"http://profiles.wordpress.org/jesin\">Jesin A</a>, <a href=\"http://profiles.wordpress.org/jayjdk\">Jesper Johansen (jayjdk)</a>, <a href=\"http://profiles.wordpress.org/engelen\">Jesper van Engelen</a>, <a href=\"http://profiles.wordpress.org/jesper800\">Jesper van Engelen</a>, <a href=\"http://profiles.wordpress.org/jessepollak\">Jesse Pollak</a>, <a href=\"http://profiles.wordpress.org/jgadbois\">jgadbois</a>, <a href=\"http://profiles.wordpress.org/jartes\">Joan Artes</a>, <a href=\"http://profiles.wordpress.org/joedolson\">Joe Dolson</a>, <a href=\"http://profiles.wordpress.org/joehoyle\">Joe Hoyle</a>, <a href=\"http://profiles.wordpress.org/jkudish\">Joey Kudish</a>, <a href=\"http://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"http://profiles.wordpress.org/johnjamesjacoby\">John James Jacoby</a>, <a href=\"http://profiles.wordpress.org/johnzanussi\">John Zanussi</a>, <a href=\"http://profiles.wordpress.org/duck_\">Jon Cave</a>, <a href=\"http://profiles.wordpress.org/jonnyauk\">jonnyauk</a>, <a href=\"http://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>, <a href=\"http://profiles.wordpress.org/softmodeling\">Jordi Cabot</a>, <a href=\"http://profiles.wordpress.org/jjeaton\">Josh Eaton</a>, <a href=\"http://profiles.wordpress.org/tai\">JOTAKI Taisuke</a>, <a href=\"http://profiles.wordpress.org/juliobox\">Julio Potier</a>, <a href=\"http://profiles.wordpress.org/justinsainton\">Justin Sainton</a>, <a href=\"http://profiles.wordpress.org/jtsternberg\">Justin Sternberg</a>, <a href=\"http://profiles.wordpress.org/greenshady\">Justin Tadlock</a>, <a href=\"http://profiles.wordpress.org/kadamwhite\">K.Adam White</a>, <a href=\"http://profiles.wordpress.org/trepmal\">Kailey (trepmal)</a>, <a href=\"http://profiles.wordpress.org/ixkaito\">Kaito</a>, <a href=\"http://profiles.wordpress.org/kapeels\">kapeels</a>, <a href=\"http://profiles.wordpress.org/ryelle\">Kelly Dwan</a>, <a href=\"http://profiles.wordpress.org/kevinlangleyjr\">Kevin Langley</a>, <a href=\"http://profiles.wordpress.org/kworthington\">Kevin Worthington</a>, <a href=\"http://profiles.wordpress.org/kpdesign\">Kim Parsell</a>, <a href=\"http://profiles.wordpress.org/kwight\">Kirk Wight</a>, <a href=\"http://profiles.wordpress.org/kitchin\">kitchin</a>, <a href=\"http://profiles.wordpress.org/knutsp\">Knut Sparhell</a>, <a href=\"http://profiles.wordpress.org/kovshenin\">Konstantin Kovshenin</a>, <a href=\"http://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"http://profiles.wordpress.org/krogsgard\">krogsgard</a>, <a href=\"http://profiles.wordpress.org/kurtpayne\">Kurt Payne</a>, <a href=\"http://profiles.wordpress.org/lancewillett\">Lance Willett</a>, <a href=\"http://profiles.wordpress.org/leewillis77\">Lee Willis</a>, <a href=\"http://profiles.wordpress.org/lessbloat\">lessbloat</a>, <a href=\"http://profiles.wordpress.org/layotte\">Lew Ayotte</a>, <a href=\"http://profiles.wordpress.org/lritter\">lritter</a>, <a href=\"http://profiles.wordpress.org/lukecarbis\">Luke Carbis</a>, <a href=\"http://profiles.wordpress.org/lgedeon\">Luke Gedeon</a>, <a href=\"http://profiles.wordpress.org/m_i_n\">m_i_n</a>, <a href=\"http://profiles.wordpress.org/funkatronic\">Manny Fleurmond</a>, <a href=\"http://profiles.wordpress.org/targz-1\">Manuel Schmalstieg</a>, <a href=\"http://profiles.wordpress.org/clorith\">Marius Jensen (Clorith)</a>, <a href=\"http://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>, <a href=\"http://profiles.wordpress.org/markoheijnen\">Marko Heijnen</a>, <a href=\"http://profiles.wordpress.org/mjbanks\">Matt Banks</a>, <a href=\"http://profiles.wordpress.org/sivel\">Matt Martz</a>, <a href=\"http://profiles.wordpress.org/matt\">Matt Mullenweg</a>, <a href=\"http://profiles.wordpress.org/mattwiebe\">Matt Wiebe</a>, <a href=\"http://profiles.wordpress.org/mboynes\">Matthew Boynes</a>, <a href=\"http://profiles.wordpress.org/mdbitz\">Matthew Denton</a>, <a href=\"http://profiles.wordpress.org/mattheweppelsheimer\">Matthew Eppelsheimer</a>, <a href=\"http://profiles.wordpress.org/mattheu\">Matthew Haines-Young</a>, <a href=\"http://profiles.wordpress.org/mattyrob\">mattyrob</a>, <a href=\"http://profiles.wordpress.org/meekyhwang\">meekyhwang</a>, <a href=\"http://profiles.wordpress.org/melchoyce\">Mel Choyce</a>, <a href=\"http://profiles.wordpress.org/midxcat\">mi_cat</a>, <a href=\"http://profiles.wordpress.org/mdawaffe\">Michael Adams (mdawaffe)</a>, <a href=\"http://profiles.wordpress.org/michalzuber\">michalzuber</a>, <a href=\"http://profiles.wordpress.org/mauteri\">Mike Auteri</a>, <a href=\"http://profiles.wordpress.org/mikehansenme\">Mike Hansen</a>, <a href=\"http://profiles.wordpress.org/mikejolley\">Mike Jolley</a>, <a href=\"http://profiles.wordpress.org/mikelittle\">Mike Little</a>, <a href=\"http://profiles.wordpress.org/mikemanger\">Mike Manger</a>, <a href=\"http://profiles.wordpress.org/dh-shredder\">Mike Schroder</a>, <a href=\"http://profiles.wordpress.org/mikeyarce\">Mikey Arce</a>, <a href=\"http://profiles.wordpress.org/dimadin\">Milan Dinic</a>, <a href=\"http://profiles.wordpress.org/mnelson4\">mnelson4</a>, <a href=\"http://profiles.wordpress.org/morganestes\">Morgan Estes</a>, <a href=\"http://profiles.wordpress.org/usermrpapa\">Mr Papa</a>, <a href=\"http://profiles.wordpress.org/mrmist\">mrmist</a>, <a href=\"http://profiles.wordpress.org/m_uysl\">Mustafa Uysal</a>, <a href=\"http://profiles.wordpress.org/muvimotv\">MuViMoTV</a>, <a href=\"http://profiles.wordpress.org/nabil_kadimi\">nabil_kadimi</a>, <a href=\"http://profiles.wordpress.org/namibia\">Namibia</a>, <a href=\"http://profiles.wordpress.org/alex-ye\">Nashwan Doaqan</a>, <a href=\"http://profiles.wordpress.org/nd987\">nd987</a>, <a href=\"http://profiles.wordpress.org/neil_pie\">Neil Pie</a>, <a href=\"http://profiles.wordpress.org/niallkennedy\">Niall Kennedy</a>, <a href=\"http://profiles.wordpress.org/celloexpressions\">Nick Halsey</a>, <a href=\"http://profiles.wordpress.org/nbachiyski\">Nikolay Bachiyski</a>, <a href=\"http://profiles.wordpress.org/schoenwaldnils\">Nils Schonwald</a>, <a href=\"http://profiles.wordpress.org/ninos-ego\">Ninos</a>, <a href=\"http://profiles.wordpress.org/nvwd\">Nowell VanHoesen</a>, <a href=\"http://profiles.wordpress.org/compute\">Patrick Hesselberg</a>, <a href=\"http://profiles.wordpress.org/pbearne\">Paul Bearne</a>, <a href=\"http://profiles.wordpress.org/pdclark\">Paul Clark</a>, <a href=\"http://profiles.wordpress.org/paulschreiber\">Paul Schreiber</a>, <a href=\"http://profiles.wordpress.org/paulwilde\">Paul Wilde</a>, <a href=\"http://profiles.wordpress.org/pavelevap\">pavelevap</a>, <a href=\"http://profiles.wordpress.org/westi\">Peter Westwood</a>, <a href=\"http://profiles.wordpress.org/philiparthurmoore\">Philip Arthur Moore</a>, <a href=\"http://profiles.wordpress.org/philipjohn\">Philip John</a>, <a href=\"http://profiles.wordpress.org/senlin\">Piet</a>, <a href=\"http://profiles.wordpress.org/psoluch\">Piotr Soluch</a>, <a href=\"http://profiles.wordpress.org/mordauk\">Pippin Williamson</a>, <a href=\"http://profiles.wordpress.org/purzlbaum\">purzlbaum</a>, <a href=\"http://profiles.wordpress.org/rachelbaker\">Rachel Baker</a>, <a href=\"http://profiles.wordpress.org/rclations\">RC Lations</a>, <a href=\"http://profiles.wordpress.org/iamfriendly\">Richard Tape</a>, <a href=\"http://profiles.wordpress.org/rickalee\">Ricky Lee Whittemore</a>, <a href=\"http://profiles.wordpress.org/rob1n\">rob1n</a>, <a href=\"http://profiles.wordpress.org/miqrogroove\">Robert Chapin</a>, <a href=\"http://profiles.wordpress.org/rdall\">Robert Dall</a>, <a href=\"http://profiles.wordpress.org/harmr\">RobertHarm</a>, <a href=\"http://profiles.wordpress.org/rohan013\">Rohan Rawat</a>, <a href=\"http://profiles.wordpress.org/rhurling\">Rouven Hurling</a>, <a href=\"http://profiles.wordpress.org/ruudjoyo\">Ruud Laan</a>, <a href=\"http://profiles.wordpress.org/ryan\">Ryan Boren</a>, <a href=\"http://profiles.wordpress.org/rmccue\">Ryan McCue</a>, <a href=\"http://profiles.wordpress.org/sammybeats\">Sam Brodie</a>, <a href=\"http://profiles.wordpress.org/otto42\">Samuel Wood (Otto)</a>, <a href=\"http://profiles.wordpress.org/sathishn\">Sathish Nagarajan</a>, <a href=\"http://profiles.wordpress.org/coffee2code\">Scott Reilly</a>, <a href=\"http://profiles.wordpress.org/wonderboymusic\">Scott Taylor</a>, <a href=\"http://profiles.wordpress.org/greglone\">ScreenfeedFr</a>, <a href=\"http://profiles.wordpress.org/scribu\">scribu</a>, <a href=\"http://profiles.wordpress.org/seanchayes\">Sean Hayes</a>, <a href=\"http://profiles.wordpress.org/nessworthy\">Sean Nessworthy</a>, <a href=\"http://profiles.wordpress.org/sergejmueller\">Sergej Muller</a>, <a href=\"http://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"http://profiles.wordpress.org/shanebp\">shanebp</a>, <a href=\"http://profiles.wordpress.org/sharonaustin\">Sharon Austin</a>, <a href=\"http://profiles.wordpress.org/shaunandrews\">Shaun Andrews</a>, <a href=\"http://profiles.wordpress.org/simonwheatley\">Simon Wheatley</a>, <a href=\"http://profiles.wordpress.org/simonp303\">simonp303</a>, <a href=\"http://profiles.wordpress.org/slobodanmanic\">Slobodan Manic</a>, <a href=\"http://profiles.wordpress.org/solarissmoke\">solarissmoke</a>, <a href=\"http://profiles.wordpress.org/sphoid\">sphoid</a>, <a href=\"http://profiles.wordpress.org/stephdau\">Stephane Daury</a>, <a href=\"http://profiles.wordpress.org/netweb\">Stephen Edgar</a>, <a href=\"http://profiles.wordpress.org/stompweb\">Steven Jones</a>, <a href=\"http://profiles.wordpress.org/strangerstudios\">strangerstudios</a>, <a href=\"http://profiles.wordpress.org/5um17\">Sumit Singh</a>, <a href=\"http://profiles.wordpress.org/t4k1s\">t4k1s</a>, <a href=\"http://profiles.wordpress.org/iamtakashi\">Takashi Irie</a>, <a href=\"http://profiles.wordpress.org/taylorde\">Taylor Dewey</a>, <a href=\"http://profiles.wordpress.org/thomasvanderbeek\">Thomas van der Beek</a>, <a href=\"http://profiles.wordpress.org/tillkruess\">Till Kruss</a>, <a href=\"http://profiles.wordpress.org/codenameeli\">Tim \'Eli\' Dalbey</a>, <a href=\"http://profiles.wordpress.org/tobiasbg\">TobiasBg</a>, <a href=\"http://profiles.wordpress.org/tjnowell\">Tom J Nowell</a>, <a href=\"http://profiles.wordpress.org/willmot\">Tom Willmot</a>, <a href=\"http://profiles.wordpress.org/topher1kenobe\">Topher</a>, <a href=\"http://profiles.wordpress.org/torresga\">torresga</a>, <a href=\"http://profiles.wordpress.org/liljimmi\">Tracy Levesque</a>, <a href=\"http://profiles.wordpress.org/wpsmith\">Travis Smith</a>, <a href=\"http://profiles.wordpress.org/treyhunner\">treyhunner</a>, <a href=\"http://profiles.wordpress.org/umeshsingla\">Umesh Kumar</a>, <a href=\"http://profiles.wordpress.org/vinod-dalvi\">Vinod Dalvi</a>, <a href=\"http://profiles.wordpress.org/vlajos\">vlajos</a>, <a href=\"http://profiles.wordpress.org/voldemortensen\">voldemortensen</a>, <a href=\"http://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"http://profiles.wordpress.org/winterdev\">winterDev</a>, <a href=\"http://profiles.wordpress.org/wojtekszkutnik\">Wojtek Szkutnik</a>, <a href=\"http://profiles.wordpress.org/yoavf\">Yoav Farhi</a>, <a href=\"http://profiles.wordpress.org/katzwebdesign\">Zack Katz</a>, <a href=\"http://profiles.wordpress.org/tollmanz\">Zack Tollman</a>, and <a href=\"http://profiles.wordpress.org/zoerooney\">Zoe Rooney</a>. Also thanks to <a href=\"http://michaelpick.wordpress.com/\">Michael Pick</a> for producing the release video, and Helen with <a href=\"http://adriansandi.com\">Adrián Sandí</a> for the music.</p>
<p>If you want to follow along or help out, check out <a href=\"http://make.wordpress.org/\">Make WordPress</a> and our <a href=\"http://make.wordpress.org/core/\">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.1!</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"http://wordpress.org/news/2014/09/benny/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"WordPress 4.0 Release Candidate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"http://wordpress.org/news/2014/08/wordpress-4-0-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"http://wordpress.org/news/2014/08/wordpress-4-0-release-candidate/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Aug 2014 12:20:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3287\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:321:\"The first release candidate for WordPress 4.0 is now available! In RC 1, we’ve made refinements to what we&#8217;ve been working on for this release. Check out the Beta 1 announcement post for more details on those features. We hope to ship WordPress 4.0 next week, but we need your help to get there. If you [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Helen Hou-Sandi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2127:\"<p>The first release candidate for WordPress 4.0 is now available!</p>
<p>In RC 1, we’ve made refinements to what we&#8217;ve been working on for this release. Check out the <a href=\"http://wordpress.org/news/2014/07/wordpress-4-0-beta-1/\">Beta 1 announcement post</a> for more details on those features. We hope to ship WordPress 4.0 <em>next week</em>, but we need your help to get there. If you haven’t tested 4.0 yet, there’s no time like the present. (Please, not on a production site, unless you’re adventurous.)</p>
<p><strong>Think you’ve found a bug? </strong>Please post to the <a href=\"http://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area in the support forums</a>. If any known issues come up, you’ll be able to <a href=\"http://core.trac.wordpress.org/report/5\">find them here</a>.</p>
<p>To test WordPress 4.0 RC1, try the <a href=\"http://wordpress.org/extend/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"http://wordpress.org/wordpress-4.0-RC1.zip\">download the release candidate here</a> (zip). If you’d like to learn more about what’s new in WordPress 4.0, visit the awesome About screen in your dashboard (<strong><img src=\"http://i0.wp.com/core.svn.wordpress.org/branches/3.6/wp-content/themes/twentyten/images/wordpress.png?w=692\" alt=\"\" width=\"16\" height=\"16\" /> → About</strong> in the toolbar).</p>
<p><strong>Developers,</strong> please test your plugins and themes against WordPress 4.0 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.0 before next week. If you find compatibility problems, please be sure to post any issues to the support forums so we can figure those out before the final release. You also may want to <a href=\"http://make.wordpress.org/core/2014/08/21/introducing-plugin-icons-in-the-plugin-installer/\">give your plugin an icon</a>, which we launched last week and will appear in the dashboard along with banners.</p>
<p><em>It is almost time</em><br />
<em> For the 4.0 release</em><br />
<em> And its awesomeness</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"http://wordpress.org/news/2014/08/wordpress-4-0-release-candidate/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.0 Beta 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://wordpress.org/news/2014/08/wordpress-4-0-beta-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"http://wordpress.org/news/2014/08/wordpress-4-0-beta-4/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Aug 2014 05:06:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3280\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:353:\"The fourth and likely final beta for WordPress 4.0 is now available. We&#8217;ve made more than 250 changes in the past month, including: Further improvements to the editor scrolling experience, especially when it comes to the second column of boxes. Better handling of small screens in the media library modals. A separate bulk selection mode [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Helen Hou-Sandi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1999:\"<p>The fourth and likely final beta for WordPress 4.0 is now available. We&#8217;ve made <a href=\"https://core.trac.wordpress.org/log?rev=29496&amp;stop_rev=29229&amp;limit=300\">more than 250 changes</a> in the past month, including:</p>
<ul>
<li>Further improvements to the editor scrolling experience, especially when it comes to the second column of boxes.</li>
<li>Better handling of small screens in the media library modals.</li>
<li>A separate bulk selection mode for the media library grid view.</li>
<li>Improvements to the installation language selector.</li>
<li>Visual tweaks to plugin details and customizer panels.</li>
</ul>
<p><strong>We need your help</strong>. We’re still aiming for a release this month, which means the next week will be critical for identifying and squashing bugs. If you’re just joining us, please see <a href=\"http://wordpress.org/news/2014/07/wordpress-4-0-beta-1/\">the Beta 1 announcement post</a> for what to look out for.</p>
<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href=\"http://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums, where friendly moderators are standing by. <b>Plugin developers</b><strong>,</strong> if you haven’t tested WordPress 4.0 yet, now is the time — and be sure to update the “tested up to” version for your plugins so they’re listed as compatible with 4.0.</p>
<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.0, try the <a href=\"http://wordpress.org/extend/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"http://wordpress.org/wordpress-4.0-beta4.zip\">download the beta here</a> (zip).</p>
<p><em>We are working hard</em><br />
<em>To finish up 4.0<br />
</em><em>Will you help us too?</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://wordpress.org/news/2014/08/wordpress-4-0-beta-4/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordPress 3.9.2 Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"http://wordpress.org/news/2014/08/wordpress-3-9-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"http://wordpress.org/news/2014/08/wordpress-3-9-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Aug 2014 19:04:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3269\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:377:\"WordPress 3.9.2 is now available as a security release for all previous versions. We strongly encourage you to update your sites immediately. This release fixes a possible denial of service issue in PHP&#8217;s XML processing, reported by Nir Goldshlager of the Salesforce.com Product Security Team. It  was fixed by Michael Adams and Andrew Nacin of the WordPress [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Andrew Nacin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2352:\"<p>WordPress 3.9.2 is now available as a security release for all previous versions. We strongly encourage you to update your sites immediately.</p>
<p>This release fixes a possible denial of service issue in PHP&#8217;s XML processing, reported by <a href=\"https://twitter.com/nirgoldshlager\">Nir Goldshlager</a> of the Salesforce.com Product Security Team. It  was fixed by Michael Adams and Andrew Nacin of the WordPress security team and David Rothstein of the <a href=\"https://www.drupal.org/SA-CORE-2014-004\">Drupal security team</a>. This is the first time our two projects have coordinated joint security releases.</p>
<p>WordPress 3.9.2 also contains other security changes:</p>
<ul>
<li>Fixes a possible but unlikely code execution when processing widgets (WordPress is not affected by default), discovered by <a href=\"http://www.buayacorp.com/\">Alex Concha</a> of the WordPress security team.</li>
<li>Prevents information disclosure via XML entity attacks in the external GetID3 library, reported by <a href=\"http://onsec.ru/en/\">Ivan Novikov</a> of ONSec.</li>
<li>Adds protections against brute attacks against CSRF tokens, reported by <a href=\"http://systemoverlord.com/\">David Tomaschik</a> of the Google Security Team.</li>
<li>Contains some additional security hardening, like preventing cross-site scripting that could be triggered only by administrators.</li>
</ul>
<p>We appreciated responsible disclosure of these issues directly to our security team. For more information, see the <a href=\"http://codex.wordpress.org/Version_3.9.2\">release notes</a> or consult the <a href=\"https://core.trac.wordpress.org/log/branches/3.9?stop_rev=29383&amp;rev=29411\">list of changes</a>.</p>
<p><a href=\"https://wordpress.org/download/\">Download WordPress 3.9.2</a> or venture over to <strong>Dashboard → Updates</strong> and simply click &#8220;Update Now&#8221;.</p>
<p>Sites that support automatic background updates will be updated to WordPress 3.9.2 within 12 hours. (If you are still on WordPress 3.8.3 or 3.7.3, you will also be updated to 3.8.4 or 3.7.4. We don&#8217;t support older versions, so please update to 3.9.2 for the latest and greatest.)</p>
<p>Already testing WordPress 4.0? The third beta is <a href=\"https://wordpress.org/wordpress-4.0-beta3.zip\">now available</a> (zip) and it contains these security fixes.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://wordpress.org/news/2014/08/wordpress-3-9-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.0 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://wordpress.org/news/2014/07/wordpress-4-0-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"http://wordpress.org/news/2014/07/wordpress-4-0-beta-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 18 Jul 2014 21:15:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3261\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:374:\"WordPress 4.0 Beta 2 is now available for download and testing. This is software still in development, so we don’t recommend that you run it on a production site. To get the beta, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can download the beta here (zip). For more of what’s new in version 4.0, check out [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Helen Hou-Sandi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1738:\"<p>WordPress 4.0 Beta 2 is now available for download and testing. This is software still in development, so we don’t recommend that you run it on a production site. To get the beta, try the <a href=\"http://wordpress.org/extend/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"http://wordpress.org/wordpress-4.0-beta2.zip\">download the beta here</a> (zip).</p>
<p>For more of what’s new in version 4.0, <a href=\"http://wordpress.org/news/2014/07/wordpress-4-0-beta-1/\">check out the Beta 1 blog post</a>. Some of the changes in Beta 2 include:</p>
<ul>
<li>Further refinements for the the plugin installation and media library experiences.</li>
<li>Updated TinyMCE, which now includes better indentation for lists and the restoration of the color picker.</li>
<li>Cookies are now tied to a session internally, so if you have trouble logging in, <a href=\"https://core.trac.wordpress.org/ticket/20276\">#20276</a> may be the culprit.</li>
<li>Various bug fixes (there were <a href=\"https://core.trac.wordpress.org/log?rev=29228&amp;stop_rev=29060&amp;limit=200\">nearly 170 changes</a> since last week).</li>
</ul>
<p>If you think you’ve found a bug, you can post to the <a href=\"http://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href=\"http://core.trac.wordpress.org/\">file one on the WordPress Trac</a>. There, you can also find <a href=\"http://core.trac.wordpress.org/tickets/major\">a list of known bugs</a> and <a href=\"http://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.0\">everything we’ve fixed</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://wordpress.org/news/2014/07/wordpress-4-0-beta-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.0 Beta 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://wordpress.org/news/2014/07/wordpress-4-0-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"http://wordpress.org/news/2014/07/wordpress-4-0-beta-1/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 10 Jul 2014 10:17:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3248\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:329:\"WordPress 4.0 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.0, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Helen Hou-Sandi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4025:\"<p>WordPress 4.0 Beta 1 is now available!</p>
<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.0, try the <a href=\"http://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"https://wordpress.org/wordpress-4.0-beta1.zip\">download the beta here</a> (zip).</p>
<p>4.0 is due out next month, but to get there, we need your help testing what we&#8217;ve been working on:</p>
<ul>
<li><strong>Previews of <a href=\"http://codex.wordpress.org/Embeds\">embedding via URLs</a></strong> in the visual editor and the &#8220;Insert from URL&#8221; tab in the media modal. Try pasting a URL (such as a <a href=\"http://wordpress.tv/\">WordPress.tv</a> or YouTube video) onto its own line in the visual editor. (<a href=\"https://core.trac.wordpress.org/ticket/28195\">#28195</a>, <a href=\"https://core.trac.wordpress.org/ticket/15490\">#15490</a>)</li>
<li>The <strong>Media Library</strong> now has a &#8220;grid&#8221; view in addition to the existing list view. Clicking on an item takes you into a modal where you can see a larger preview and edit information about that attachment, and you can navigate between items right from the modal without closing it. (<a href=\"https://core.trac.wordpress.org/ticket/24716\">#24716</a>)</li>
<li>We&#8217;re freshening up the <strong>plugin install experience</strong>. You&#8217;ll see some early visual changes as well as more information when searching for plugins and viewing details. (<a href=\"https://core.trac.wordpress.org/ticket/28785\">#28785</a>, <a href=\"https://core.trac.wordpress.org/ticket/27440\">#27440</a>)</li>
<li><strong>Selecting a language</strong> when you run the installation process. (<a href=\"https://core.trac.wordpress.org/ticket/28577\">#28577</a>)</li>
<li>The <strong>editor</strong> intelligently resizes and its top and bottom bars pin when needed. Browsers don&#8217;t like to agree on where to put things like cursors, so if you find a bug here, please also let us know your browser and operating system. (<a href=\"https://core.trac.wordpress.org/ticket/28328\">#28328</a>)</li>
<li>We&#8217;ve made some improvements to how your keyboard and cursor interact with <strong>TinyMCE views</strong> such as the gallery preview. Much like the editor resizing and scrolling improvements, knowing about your setup is particularly important for bug reports here. (<a href=\"https://core.trac.wordpress.org/ticket/28595\">#28595</a>)</li>
<li><strong>Widgets in the Customizer</strong> are now loaded in a separate panel. (<a href=\"https://core.trac.wordpress.org/ticket/27406\">#27406</a>)</li>
<li>We&#8217;ve also made some changes to some <strong>formatting</strong> functions, so if you see quotes curling in the wrong direction, please file a bug report.</li>
</ul>
<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href=\"http://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on the WordPress Trac</a>. There, you can also find <a href=\"http://core.trac.wordpress.org/tickets/major\">a list of known bugs</a> and <a href=\"http://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.0\">everything we’ve fixed</a> so far.</p>
<p><strong>Developers:</strong> Never fear, we haven&#8217;t forgotten you. There&#8217;s plenty for you, too &#8211; more on that in upcoming posts. In the meantime, check out the <a href=\"http://make.wordpress.org/core/2014/07/08/customizer-improvements-in-4-0/#customizer-panels\">API for panels in the Customizer</a>.</p>
<p>Happy testing!</p>
<p><em>Plugins, editor</em><br />
<em>Media, things in between</em><br />
<em>Please help look for bugs</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://wordpress.org/news/2014/07/wordpress-4-0-beta-1/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 3.9.1 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"http://wordpress.org/news/2014/05/wordpress-3-9-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"http://wordpress.org/news/2014/05/wordpress-3-9-1/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 May 2014 18:40:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3241\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:385:\"After three weeks and more than 9 million downloads of WordPress 3.9, we&#8217;re pleased to announce that WordPress 3.9.1 is now available. This maintenance release fixes 34 bugs in 3.9, including numerous fixes for multisite networks, customizing widgets while previewing themes, and the updated visual editor. We&#8217;ve also made some improvements to the new audio/video [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Andrew Nacin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3077:\"<p>After three weeks and more than 9 million downloads of <a title=\"WordPress 3.9 “Smith”\" href=\"http://wordpress.org/news/2014/04/smith/\">WordPress 3.9</a>, we&#8217;re pleased to announce that WordPress 3.9.1 is now available.</p>
<p>This maintenance release fixes 34 bugs in 3.9, including numerous fixes for multisite networks, customizing widgets while previewing themes, and the updated visual editor. We&#8217;ve also made some improvements to the new audio/video playlists feature and made some adjustments to improve performance. For a full list of changes, consult the <a href=\"https://core.trac.wordpress.org/query?milestone=3.9.1\">list of tickets</a> and the <a href=\"https://core.trac.wordpress.org/log/branches/3.9?rev=28353&amp;stop_rev=28154\">changelog</a>.</p>
<p>If you are one of the millions already running WordPress 3.9, we&#8217;ve started rolling out automatic background updates for 3.9.1. For sites <a href=\"http://wordpress.org/plugins/background-update-tester/\">that support them</a>, of course.</p>
<p><a href=\"http://wordpress.org/download/\">Download WordPress 3.9.1</a> or venture over to <strong>Dashboard → Updates</strong> and simply click &#8220;Update Now.&#8221;</p>
<p>Thanks to all of these fine individuals for contributing to 3.9.1: <a href=\"http://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"http://profiles.wordpress.org/nacin\">Andrew Nacin</a>, <a href=\"http://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"http://profiles.wordpress.org/rzen\">Brian Richards</a>, <a href=\"http://profiles.wordpress.org/ehg\">Chris Blower</a>, <a href=\"http://profiles.wordpress.org/jupiterwise\">Corey McKrill</a>, <a href=\"http://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber</a>, <a href=\"http://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"http://profiles.wordpress.org/feedmeastraycat\">feedmeastraycat</a>, <a href=\"http://profiles.wordpress.org/gcorne\">Gregory Cornelius</a>, <a href=\"http://profiles.wordpress.org/helen\">Helen Hou-Sandi</a>, <a href=\"http://profiles.wordpress.org/imath\">imath</a>, <a href=\"http://profiles.wordpress.org/avryl\">Janneke Van Dorpe</a>, <a href=\"http://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"http://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"http://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"http://profiles.wordpress.org/lancewillett\">Lance Willett</a>, <a href=\"http://profiles.wordpress.org/m_i_n\">m_i_n</a>, <a href=\"http://profiles.wordpress.org/clorith\">Marius Jensen</a>, <a href=\"http://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>, <a href=\"http://profiles.wordpress.org/dimadin\">Milan Dinić</a>, <a href=\"http://profiles.wordpress.org/celloexpressions\">Nick Halsey</a>, <a href=\"http://profiles.wordpress.org/pavelevap\">pavelevap</a>, <a href=\"http://profiles.wordpress.org/wonderboymusic\">Scott Taylor</a>, <a href=\"http://profiles.wordpress.org/SergeyBiryukov\">Sergey Biryukov</a>, and <a href=\"http://profiles.wordpress.org/westonruter\">Weston Ruter</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://wordpress.org/news/2014/05/wordpress-3-9-1/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 3.9 “Smith”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://wordpress.org/news/2014/04/smith/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://wordpress.org/news/2014/04/smith/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Apr 2014 18:33:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3154\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:411:\"Version 3.9 of WordPress, named &#8220;Smith&#8221; in honor of jazz organist Jimmy Smith, is available for download or update in your WordPress dashboard. This release features a number of refinements that we hope you&#8217;ll love. A smoother media editing experience Improved visual editing The updated visual editor has improved speed, accessibility, and mobile support. You can paste into the [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:23212:\"<p>Version 3.9 of WordPress, named &#8220;Smith&#8221; in honor of jazz organist <a href=\"http://en.wikipedia.org/wiki/Jimmy_Smith_(musician)\">Jimmy Smith</a>, is available <a href=\"http://wordpress.org/download/\">for download</a> or update in your WordPress dashboard. This release features a number of refinements that we hope you&#8217;ll love.</p>
<embed src=\"//v0.wordpress.com/player.swf?v=1.03\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"360\" wmode=\"direct\" seamlesstabbing=\"true\" allowfullscreen=\"true\" allowscriptaccess=\"always\" overstretch=\"true\" flashvars=\"guid=sAiXhCfV&amp;isDynamicSeeking=true\" title=\"\"></embed>
<h2 class=\"about-headline-callout\" style=\"text-align: center\">A smoother media editing experience</h2>
<div>
<p><img class=\"alignright wp-image-3168\" src=\"//wordpress.org/news/files/2014/04/editor1-300x233.jpg\" alt=\"editor\" width=\"228\" height=\"177\" /></p>
<h3>Improved visual editing</h3>
<p>The updated visual editor has improved speed, accessibility, and mobile support. You can paste into the visual editor from your word processor without wasting time to clean up messy styling. (Yeah, we’re talking about you, Microsoft Word.)</p>
</div>
<div style=\"clear: both\"></div>
<div>
<p><img class=\"alignright wp-image-3170\" src=\"//wordpress.org/news/files/2014/04/image1-300x233.jpg\" alt=\"image\" width=\"228\" height=\"178\" /></p>
<h3>Edit images easily</h3>
<p>With quicker access to crop and rotation tools, it’s now much easier to edit your images while editing posts. You can also scale images directly in the editor to find just the right fit.</p>
</div>
<div style=\"clear: both\"></div>
<div>
<p><img class=\"alignright wp-image-3187\" src=\"//wordpress.org/news/files/2014/04/dragdrop1-300x233.jpg\" alt=\"dragdrop\" width=\"228\" height=\"178\" /></p>
<h3>Drag and drop your images</h3>
<p>Uploading your images is easier than ever. Just grab them from your desktop and drop them in the editor.</p>
</div>
<div style=\"clear: both\"></div>
<hr />
<h2 style=\"text-align: center\">Gallery previews</h2>
<p><img class=\"aligncenter size-full wp-image-3169\" src=\"//wordpress.org/news/files/2014/04/gallery1.jpg\" alt=\"gallery\" width=\"980\" height=\"550\" /></p>
<p>Galleries display a beautiful grid of images right in the editor, just like they do in your published post.</p>
<hr />
<h2 style=\"text-align: center\">Do more with audio and video</h2>

<a href=\'http://wordpress.org/news/files/2014/04/AintMisbehavin.mp3\'>Ain\'t Misbehavin\'</a>
<a href=\'http://wordpress.org/news/files/2014/04/DavenportBlues.mp3\'>Davenport Blues</a>
<a href=\'http://wordpress.org/news/files/2014/04/JellyRollMorton-BuddyBoldensBlues.mp3\'>Buddy Bolden\'s Blues</a>
<a href=\'http://wordpress.org/news/files/2014/04/Johnny_Hodges_Orchestra-Squaty_Roo-1941.mp3\'>Squaty Roo</a>
<a href=\'http://wordpress.org/news/files/2014/04/Louisiana_Five-Dixie_Blues-1919.mp3\'>Dixie Blues</a>
<a href=\'http://wordpress.org/news/files/2014/04/WolverineBlues.mp3\'>Wolverine Blues</a>

<p>Images have galleries; now we’ve added simple audio and video playlists, so you can showcase your music and clips.</p>
<hr />
<h2 style=\"text-align: center\">Live widget and header previews</h2>
<div style=\"width: 692px; height: 448px; \" class=\"wp-video\"><video class=\"wp-video-shortcode\" id=\"video-3154-3\" width=\"692\" height=\"448\" preload=\"metadata\" controls=\"controls\"><source type=\"video/mp4\" src=\"//wordpress.org/news/files/2014/04/widgets.mp4?_=3\" /><a href=\"//wordpress.org/news/files/2014/04/widgets.mp4\">//wordpress.org/news/files/2014/04/widgets.mp4</a></video></div>
<p>Add, edit, and rearrange your site’s widgets right in the theme customizer. No “save and surprise” — preview your changes live and only save them when you’re ready.</p>
<p>The improved header image tool also lets you upload, crop, and manage headers while customizing your theme.</p>
<hr />
<h2 style=\"text-align: center\">Stunning new theme browser</h2>
<p><img class=\"aligncenter size-full wp-image-3172\" src=\"//wordpress.org/news/files/2014/04/theme1.jpg\" alt=\"theme\" width=\"1003\" height=\"558\" /><br />
Looking for a new theme should be easy and fun. Lose yourself in the boundless supply of free WordPress.org themes with the beautiful new theme browser.</p>
<hr />
<h2 style=\"text-align: center\">The Crew</h2>
<p>This release was led by <a href=\"http://nacin.com/\">Andrew Nacin</a> and <a href=\"http://www.getsource.net/\">Mike Schroder</a>, with the help of these fine individuals. There are 267 contributors with props in this release, a new high:</p>
<p><a href=\"http://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>, <a href=\"http://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"http://profiles.wordpress.org/kawauso\">Adam Harley</a>, <a href=\"http://profiles.wordpress.org/adamsilverstein\">Adam Silverstein</a>, <a href=\"http://profiles.wordpress.org/adelval\">adelval</a>, <a href=\"http://profiles.wordpress.org/ajay\">Ajay</a>, <a href=\"http://profiles.wordpress.org/akeda\">Akeda Bagus</a>, <a href=\"http://profiles.wordpress.org/xknown\">Alex Concha</a>, <a href=\"http://profiles.wordpress.org/tellyworth\">Alex Shiels</a>, <a href=\"http://profiles.wordpress.org/aliso\">Alison Barrett</a>, <a href=\"http://profiles.wordpress.org/collinsinternet\">Allan Collins</a>, <a href=\"http://profiles.wordpress.org/sabreuse\">Amy Hendrix (sabreuse)</a>, <a href=\"http://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"http://profiles.wordpress.org/nacin\">Andrew Nacin</a>, <a href=\"http://profiles.wordpress.org/norcross\">Andrew Norcross</a>, <a href=\"http://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"http://profiles.wordpress.org/rarst\">Andrey \"Rarst\" Savchenko</a>, <a href=\"http://profiles.wordpress.org/andykeith\">Andy Keith</a>, <a href=\"http://profiles.wordpress.org/andy\">Andy Skelton</a>, <a href=\"http://profiles.wordpress.org/atimmer\">Anton Timmermans</a>, <a href=\"http://profiles.wordpress.org/aubreypwd\">Aubrey Portwood</a>, <a href=\"http://profiles.wordpress.org/barry\">Barry</a>, <a href=\"http://profiles.wordpress.org/toszcze\">Bartosz Romanowski</a>, <a href=\"http://profiles.wordpress.org/bassgang\">bassgang</a>, <a href=\"http://profiles.wordpress.org/bcworkz\">bcworkz</a>, <a href=\"http://profiles.wordpress.org/empireoflight\">Ben Dunkle</a>, <a href=\"http://profiles.wordpress.org/neoxx\">Bernhard Riedl</a>, <a href=\"http://profiles.wordpress.org/bigdawggi\">bigdawggi</a>, <a href=\"http://profiles.wordpress.org/bobbravo2\">Bob Gregor</a>, <a href=\"http://profiles.wordpress.org/bobbingwide\">bobbingwide</a>, <a href=\"http://profiles.wordpress.org/bradt\">Brad Touesnard</a>, <a href=\"http://profiles.wordpress.org/bradparbs\">bradparbs</a>, <a href=\"http://profiles.wordpress.org/bramd\">bramd</a>, <a href=\"http://profiles.wordpress.org/kraftbj\">Brandon Kraft</a>, <a href=\"http://profiles.wordpress.org/brasofilo\">brasofilo</a>, <a href=\"http://profiles.wordpress.org/bravokeyl\">bravokeyl</a>, <a href=\"http://profiles.wordpress.org/bpetty\">Bryan Petty</a>, <a href=\"http://profiles.wordpress.org/cgaffga\">cgaffga</a>, <a href=\"http://profiles.wordpress.org/chiragswadia\">Chirag Swadia</a>, <a href=\"http://profiles.wordpress.org/chouby\">Chouby</a>, <a href=\"http://profiles.wordpress.org/ehg\">Chris Blower</a>, <a href=\"http://profiles.wordpress.org/cmmarslender\">Chris Marslender</a>, <a href=\"http://profiles.wordpress.org/c3mdigital\">Chris Olbekson</a>, <a href=\"http://profiles.wordpress.org/chrisscott\">Chris Scott</a>, <a href=\"http://profiles.wordpress.org/chriseverson\">chriseverson</a>, <a href=\"http://profiles.wordpress.org/chrisguitarguy\">chrisguitarguy</a>, <a href=\"http://profiles.wordpress.org/cfinke\">Christopher Finke</a>, <a href=\"http://profiles.wordpress.org/ciantic\">ciantic</a>, <a href=\"http://profiles.wordpress.org/antorome\">Comparativa de Bancos</a>, <a href=\"http://profiles.wordpress.org/cojennin\">Connor Jennings</a>, <a href=\"http://profiles.wordpress.org/corvannoorloos\">Cor van Noorloos</a>, <a href=\"http://profiles.wordpress.org/corphi\">Corphi</a>, <a href=\"http://profiles.wordpress.org/cramdesign\">cramdesign</a>, <a href=\"http://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber</a>, <a href=\"http://profiles.wordpress.org/redsweater\">Daniel Jalkut (Red Sweater)</a>, <a href=\"http://profiles.wordpress.org/dannydehaan\">Danny de Haan</a>, <a href=\"http://profiles.wordpress.org/koop\">Daryl Koopersmith</a>, <a href=\"http://profiles.wordpress.org/eightface\">Dave Kellam (eightface)</a>, <a href=\"http://profiles.wordpress.org/dpe415\">DaveE</a>, <a href=\"http://profiles.wordpress.org/davidakennedy\">David A. Kennedy</a>, <a href=\"http://profiles.wordpress.org/davidanderson\">David Anderson</a>, <a href=\"http://profiles.wordpress.org/davidmarichal\">David Marichal</a>, <a href=\"http://profiles.wordpress.org/denis-de-bernardy\">Denis de Bernardy</a>, <a href=\"http://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"http://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"http://profiles.wordpress.org/dougwollison\">Doug Wollison</a>, <a href=\"http://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>, <a href=\"http://profiles.wordpress.org/drprotocols\">DrProtocols</a>, <a href=\"http://profiles.wordpress.org/dustyf\">Dustin Filippini</a>, <a href=\"http://profiles.wordpress.org/eatingrules\">eatingrules</a>, <a href=\"http://profiles.wordpress.org/plocha\">edik</a>, <a href=\"http://profiles.wordpress.org/oso96_2000\">Eduardo Reveles</a>, <a href=\"http://profiles.wordpress.org/eliorivero\">Elio Rivero</a>, <a href=\"http://profiles.wordpress.org/enej\">enej</a>, <a href=\"http://profiles.wordpress.org/ericlewis\">Eric Lewis</a>, <a href=\"http://profiles.wordpress.org/ericmann\">Eric Mann</a>, <a href=\"http://profiles.wordpress.org/evarlese\">Erica Varlese</a>, <a href=\"http://profiles.wordpress.org/ethitter\">Erick Hitter</a>, <a href=\"http://profiles.wordpress.org/ejdanderson\">Evan Anderson</a>, <a href=\"http://profiles.wordpress.org/fahmiadib\">Fahmi Adib</a>, <a href=\"http://profiles.wordpress.org/fboender\">fboender</a>, <a href=\"http://profiles.wordpress.org/frank-klein\">Frank Klein</a>, <a href=\"http://profiles.wordpress.org/garyc40\">Gary Cao</a>, <a href=\"http://profiles.wordpress.org/garyj\">Gary Jones</a>, <a href=\"http://profiles.wordpress.org/pento\">Gary Pendergast</a>, <a href=\"http://profiles.wordpress.org/genkisan\">genkisan</a>, <a href=\"http://profiles.wordpress.org/soulseekah\">Gennady Kovshenin</a>, <a href=\"http://profiles.wordpress.org/georgestephanis\">George Stephanis</a>, <a href=\"http://profiles.wordpress.org/grahamarmfield\">Graham Armfield</a>, <a href=\"http://profiles.wordpress.org/vancoder\">Grant Mangham</a>, <a href=\"http://profiles.wordpress.org/gcorne\">Gregory Cornelius</a>, <a href=\"http://profiles.wordpress.org/tivnet\">Gregory Karpinsky (@tivnet)</a>, <a href=\"http://profiles.wordpress.org/hakre\">hakre</a>, <a href=\"http://profiles.wordpress.org/hanni\">hanni</a>, <a href=\"http://profiles.wordpress.org/helen\">Helen Hou-Sandí</a>, <a href=\"http://profiles.wordpress.org/ippetkov\">ippetkov</a>, <a href=\"http://profiles.wordpress.org/ipstenu\">Ipstenu (Mika Epstein)</a>, <a href=\"http://profiles.wordpress.org/jdgrimes\">J.D. Grimes</a>, <a href=\"http://profiles.wordpress.org/jackreichert\">Jack Reichert</a>, <a href=\"http://profiles.wordpress.org/_jameslee\">jameslee</a>, <a href=\"http://profiles.wordpress.org/avryl\">Janneke Van Dorpe</a>, <a href=\"http://profiles.wordpress.org/janrenn\">janrenn</a>, <a href=\"http://profiles.wordpress.org/jaycc\">JayCC</a>, <a href=\"http://profiles.wordpress.org/jeffsebring\">Jeff Sebring</a>, <a href=\"http://profiles.wordpress.org/jenmylo\">Jen Mylo</a>, <a href=\"http://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"http://profiles.wordpress.org/jesin\">Jesin A</a>, <a href=\"http://profiles.wordpress.org/jayjdk\">Jesper Johansen (jayjdk)</a>, <a href=\"http://profiles.wordpress.org/jnielsendotnet\">jnielsendotnet</a>, <a href=\"http://profiles.wordpress.org/jartes\">Joan Artes</a>, <a href=\"http://profiles.wordpress.org/joedolson\">Joe Dolson</a>, <a href=\"http://profiles.wordpress.org/joehoyle\">Joe Hoyle</a>, <a href=\"http://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"http://profiles.wordpress.org/johnjamesjacoby\">John James Jacoby</a>, <a href=\"http://profiles.wordpress.org/johnpbloch\">John P. Bloch</a>, <a href=\"http://profiles.wordpress.org/johnregan3\">John Regan</a>, <a href=\"http://profiles.wordpress.org/duck_\">Jon Cave</a>, <a href=\"http://profiles.wordpress.org/jond3r\">Jonas Bolinder (jond3r)</a>, <a href=\"http://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>, <a href=\"http://profiles.wordpress.org/shelob9\">Josh Pollock</a>, <a href=\"http://profiles.wordpress.org/joshuaabenazer\">Joshua Abenazer</a>, <a href=\"http://profiles.wordpress.org/jstraitiff\">jstraitiff</a>, <a href=\"http://profiles.wordpress.org/juliobox\">Julio Potier</a>, <a href=\"http://profiles.wordpress.org/kopepasah\">Justin Kopepasah</a>, <a href=\"http://profiles.wordpress.org/justinsainton\">Justin Sainton</a>, <a href=\"http://profiles.wordpress.org/kadamwhite\">K.Adam White</a>, <a href=\"http://profiles.wordpress.org/trepmal\">Kailey (trepmal)</a>, <a href=\"http://profiles.wordpress.org/kasparsd\">Kaspars</a>, <a href=\"http://profiles.wordpress.org/ryelle\">Kelly Dwan</a>, <a href=\"http://profiles.wordpress.org/kerikae\">kerikae</a>, <a href=\"http://profiles.wordpress.org/kworthington\">Kevin Worthington</a>, <a href=\"http://profiles.wordpress.org/kpdesign\">Kim Parsell</a>, <a href=\"http://profiles.wordpress.org/kwight\">Kirk Wight</a>, <a href=\"http://profiles.wordpress.org/kitchin\">kitchin</a>, <a href=\"http://profiles.wordpress.org/klihelp\">klihelp</a>, <a href=\"http://profiles.wordpress.org/knutsp\">Knut Sparhell</a>, <a href=\"http://profiles.wordpress.org/kovshenin\">Konstantin Kovshenin</a>, <a href=\"http://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"http://profiles.wordpress.org/drozdz\">Krzysiek Drozdz</a>, <a href=\"http://profiles.wordpress.org/lancewillett\">Lance Willett</a>, <a href=\"http://profiles.wordpress.org/leewillis77\">Lee Willis</a>, <a href=\"http://profiles.wordpress.org/lpointet\">lpointet</a>, <a href=\"http://profiles.wordpress.org/ldebrouwer\">Luc De Brouwer</a>, <a href=\"http://profiles.wordpress.org/spmlucas\">Lucas Karpiuk</a>, <a href=\"http://profiles.wordpress.org/lkwdwrd\">Luke Woodward</a>, <a href=\"http://profiles.wordpress.org/mark8barnes\">Mark Barnes</a>, <a href=\"http://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>, <a href=\"http://profiles.wordpress.org/markoheijnen\">Marko Heijnen</a>, <a href=\"http://profiles.wordpress.org/marventus\">Marventus</a>, <a href=\"http://profiles.wordpress.org/iammattthomas\">Matt (Thomas) Miklic</a>, <a href=\"http://profiles.wordpress.org/mjbanks\">Matt Banks</a>, <a href=\"http://profiles.wordpress.org/matt\">Matt Mullenweg</a>, <a href=\"http://profiles.wordpress.org/mboynes\">Matthew Boynes</a>, <a href=\"http://profiles.wordpress.org/mdbitz\">Matthew Denton</a>, <a href=\"http://profiles.wordpress.org/mattheu\">Matthew Haines-Young</a>, <a href=\"http://profiles.wordpress.org/mattonomics\">mattonomics</a>, <a href=\"http://profiles.wordpress.org/mattyrob\">mattyrob</a>, <a href=\"http://profiles.wordpress.org/matveb\">Matías Ventura</a>, <a href=\"http://profiles.wordpress.org/maxcutler\">Max Cutler</a>, <a href=\"http://profiles.wordpress.org/mcadwell\">mcadwell</a>, <a href=\"http://profiles.wordpress.org/melchoyce\">Mel Choyce</a>, <a href=\"http://profiles.wordpress.org/meloniq\">meloniq</a>, <a href=\"http://profiles.wordpress.org/michael-arestad\">Michael Arestad</a>, <a href=\"http://profiles.wordpress.org/michelwppi\">Michel - xiligroup dev</a>, <a href=\"http://profiles.wordpress.org/mcsf\">Miguel Fonseca</a>, <a href=\"http://profiles.wordpress.org/gradyetc\">Mike Burns</a>, <a href=\"http://profiles.wordpress.org/mikehansenme\">Mike Hansen</a>, <a href=\"http://profiles.wordpress.org/mikemanger\">Mike Manger</a>, <a href=\"http://profiles.wordpress.org/mikeschinkel\">Mike Schinkel</a>, <a href=\"http://profiles.wordpress.org/dh-shredder\">Mike Schroder</a>, <a href=\"http://profiles.wordpress.org/mikecorkum\">mikecorkum</a>, <a href=\"http://profiles.wordpress.org/mitchoyoshitaka\">mitcho (Michael Yoshitaka Erlewine)</a>, <a href=\"http://profiles.wordpress.org/batmoo\">Mohammad Jangda</a>, <a href=\"http://profiles.wordpress.org/morganestes\">Morgan Estes</a>, <a href=\"http://profiles.wordpress.org/mor10\">Morten Rand-Hendriksen</a>, <a href=\"http://profiles.wordpress.org/Nao\">Naoko Takano</a>, <a href=\"http://profiles.wordpress.org/alex-ye\">Nashwan Doaqan</a>, <a href=\"http://profiles.wordpress.org/nendeb55\">nendeb55</a>, <a href=\"http://profiles.wordpress.org/celloexpressions\">Nick Halsey</a>, <a href=\"http://profiles.wordpress.org/nicolealleyinteractivecom\">Nicole Arnold</a>, <a href=\"http://profiles.wordpress.org/nikv\">Nikhil Vimal (NikV)</a>, <a href=\"http://profiles.wordpress.org/nivijah\">Nivi Jah</a>, <a href=\"http://profiles.wordpress.org/nofearinc\">nofearinc</a>, <a href=\"http://profiles.wordpress.org/nunomorgadinho\">Nuno Morgadinho</a>, <a href=\"http://profiles.wordpress.org/olivm\">olivM</a>, <a href=\"http://profiles.wordpress.org/jbkkd\">Omer Korner</a>, <a href=\"http://profiles.wordpress.org/originalexe\">OriginalEXE</a>, <a href=\"http://profiles.wordpress.org/patricknami\">patricknami</a>, <a href=\"http://profiles.wordpress.org/pbearne\">Paul Bearne</a>, <a href=\"http://profiles.wordpress.org/djpaul\">Paul Gibbs</a>, <a href=\"http://profiles.wordpress.org/paulwilde\">Paul Wilde</a>, <a href=\"http://profiles.wordpress.org/pavelevap\">pavelevap</a>, <a href=\"http://profiles.wordpress.org/westi\">Peter Westwood</a>, <a href=\"http://profiles.wordpress.org/philiparthurmoore\">Philip Arthur Moore</a>, <a href=\"http://profiles.wordpress.org/mordauk\">Pippin Williamson</a>, <a href=\"http://profiles.wordpress.org/nprasath002\">Prasath Nadarajah</a>, <a href=\"http://profiles.wordpress.org/prettyboymp\">prettyboymp</a>, <a href=\"http://profiles.wordpress.org/raamdev\">Raam Dev</a>, <a href=\"http://profiles.wordpress.org/rachelbaker\">Rachel Baker</a>, <a href=\"http://profiles.wordpress.org/mauryaratan\">Ram Ratan Maurya</a>, <a href=\"http://profiles.wordpress.org/ramonchiara\">ramonchiara</a>, <a href=\"http://profiles.wordpress.org/ounziw\">Rescuework Support</a>, <a href=\"http://profiles.wordpress.org/rhyswynne\">Rhys Wynne</a>, <a href=\"http://profiles.wordpress.org/ricardocorreia\">Ricardo Correia</a>, <a href=\"http://profiles.wordpress.org/richard2222\">Richard</a>, <a href=\"http://profiles.wordpress.org/theorboman\">Richard Sweeney</a>, <a href=\"http://profiles.wordpress.org/iamfriendly\">Richard Tape</a>, <a href=\"http://profiles.wordpress.org/rickalee\">Ricky Lee Whittemore</a>, <a href=\"http://profiles.wordpress.org/miqrogroove\">Robert Chapin</a>, <a href=\"http://profiles.wordpress.org/robmiller\">robmiller</a>, <a href=\"http://profiles.wordpress.org/rodrigosprimo\">Rodrigo Primo</a>, <a href=\"http://profiles.wordpress.org/romaimperator\">romaimperator</a>, <a href=\"http://profiles.wordpress.org/roothorick\">roothorick</a>, <a href=\"http://profiles.wordpress.org/ruudjoyo\">Ruud Laan</a>, <a href=\"http://profiles.wordpress.org/ryan\">Ryan Boren</a>, <a href=\"http://profiles.wordpress.org/rmccue\">Ryan McCue</a>, <a href=\"http://profiles.wordpress.org/salcode\">Sal Ferrarello</a>, <a href=\"http://profiles.wordpress.org/otto42\">Samuel Wood (Otto)</a>, <a href=\"http://profiles.wordpress.org/sandyr\">Sandeep</a>, <a href=\"http://profiles.wordpress.org/scottlee\">Scott Lee</a>, <a href=\"http://profiles.wordpress.org/coffee2code\">Scott Reilly</a>, <a href=\"http://profiles.wordpress.org/wonderboymusic\">Scott Taylor</a>, <a href=\"http://profiles.wordpress.org/greglone\">ScreenfeedFr</a>, <a href=\"http://profiles.wordpress.org/scribu\">scribu</a>, <a href=\"http://profiles.wordpress.org/sdasse\">sdasse</a>, <a href=\"http://profiles.wordpress.org/bootsz\">Sean Butze</a>, <a href=\"http://profiles.wordpress.org/seanchayes\">Sean Hayes</a>, <a href=\"http://profiles.wordpress.org/nessworthy\">Sean Nessworthy</a>, <a href=\"http://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"http://profiles.wordpress.org/shahpranaf\">shahpranaf</a>, <a href=\"http://profiles.wordpress.org/shaunandrews\">Shaun Andrews</a>, <a href=\"http://profiles.wordpress.org/shinichin\">ShinichiN</a>, <a href=\"http://profiles.wordpress.org/pross\">Simon Prosser</a>, <a href=\"http://profiles.wordpress.org/simonwheatley\">Simon Wheatley</a>, <a href=\"http://profiles.wordpress.org/siobhan\">Siobhan</a>, <a href=\"http://profiles.wordpress.org/siobhyb\">Siobhan Bamber (siobhyb)</a>, <a href=\"http://profiles.wordpress.org/sirzooro\">sirzooro</a>, <a href=\"http://profiles.wordpress.org/solarissmoke\">solarissmoke</a>, <a href=\"http://profiles.wordpress.org/sonjanyc\">sonjanyc</a>, <a href=\"http://profiles.wordpress.org/spencerfinnell\">Spencer Finnell</a>, <a href=\"http://profiles.wordpress.org/piontkowski\">Spencer Piontkowski</a>, <a href=\"http://profiles.wordpress.org/stephcook22\">stephcook22</a>, <a href=\"http://profiles.wordpress.org/netweb\">Stephen Edgar</a>, <a href=\"http://profiles.wordpress.org/stephenharris\">Stephen Harris</a>, <a href=\"http://profiles.wordpress.org/sbruner\">Steve Bruner</a>, <a href=\"http://profiles.wordpress.org/stevenkword\">Steven Word</a>, <a href=\"http://profiles.wordpress.org/miyauchi\">Takayuki Miyauchi</a>, <a href=\"http://profiles.wordpress.org/tanner-m\">Tanner Moushey</a>, <a href=\"http://profiles.wordpress.org/tlovett1\">Taylor Lovett</a>, <a href=\"http://profiles.wordpress.org/tbrams\">tbrams</a>, <a href=\"http://profiles.wordpress.org/tobiasbg\">TobiasBg</a>, <a href=\"http://profiles.wordpress.org/tomauger\">Tom Auger</a>, <a href=\"http://profiles.wordpress.org/willmot\">Tom Willmot</a>, <a href=\"http://profiles.wordpress.org/topher1kenobe\">Topher</a>, <a href=\"http://profiles.wordpress.org/topquarky\">topquarky</a>, <a href=\"http://profiles.wordpress.org/zodiac1978\">Torsten Landsiedel</a>, <a href=\"http://profiles.wordpress.org/toru\">Toru</a>, <a href=\"http://profiles.wordpress.org/wpsmith\">Travis Smith</a>, <a href=\"http://profiles.wordpress.org/umeshsingla\">Umesh Kumar</a>, <a href=\"http://profiles.wordpress.org/undergroundnetwork\">undergroundnetwork</a>, <a href=\"http://profiles.wordpress.org/varunagw\">VarunAgw</a>, <a href=\"http://profiles.wordpress.org/wawco\">wawco</a>, <a href=\"http://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"http://profiles.wordpress.org/wokamoto\">wokamoto</a>, <a href=\"http://profiles.wordpress.org/xsonic\">xsonic</a>, <a href=\"http://profiles.wordpress.org/yoavf\">Yoav Farhi</a>, <a href=\"http://profiles.wordpress.org/yurivictor\">Yuri Victor</a>, <a href=\"http://profiles.wordpress.org/zbtirrell\">Zach Tirrell</a>, and <a href=\"http://profiles.wordpress.org/vanillalounge\">Ze Fontainhas</a>. Also thanks to <a href=\"http://michaelpick.wordpress.com/\">Michael Pick</a> for producing the release video.</p>
<p>If you want to follow along or help out, check out <a href=\"http://make.wordpress.org/\">Make WordPress</a> and our <a href=\"http://make.wordpress.org/core/\">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.0!</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"http://wordpress.org/news/2014/04/smith/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"WordPress 3.9 Release Candidate 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"http://wordpress.org/news/2014/04/wordpress-3-9-release-candidate-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"http://wordpress.org/news/2014/04/wordpress-3-9-release-candidate-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Apr 2014 09:47:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3151\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:356:\"The second release candidate for WordPress 3.9 is now available for testing. If you haven&#8217;t tested 3.9 yet, you&#8217;re running out of time! We made about five dozen changes since the first release candidate, and those changes are all helpfully summarized in our weekly post on the development blog. Probably the biggest fixes are to live [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Andrew Nacin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2273:\"<p>The second release candidate for WordPress 3.9 is now available for testing.</p>
<p>If you haven&#8217;t tested 3.9 yet, you&#8217;re running out of time! We made about five dozen changes since the <a title=\"WordPress 3.9 Release Candidate\" href=\"//wordpress.org/news/2014/04/wordpress-3-9-release-candidate/\">first release candidate</a>, and those changes are all helpfully summarized <a href=\"//make.wordpress.org/core/?p=10237\">in our weekly post</a> on the development blog. Probably the biggest fixes are to live widget previews and the new theme browser, along with some extra TinyMCE compatibility and some RTL fixes.</p>
<p><strong>Plugin authors:</strong> Could you test your plugins against 3.9, and if they&#8217;re compatible, make sure they are marked as tested up to 3.9? It only takes a few minutes and this really helps make launch easier. Be sure to follow along the core development blog; we&#8217;ve been posting <a href=\"//make.wordpress.org/core/tag/3-9-dev-notes/\">notes for developers for 3.9</a>. (For example: <a href=\"//make.wordpress.org/core/2014/04/15/html5-galleries-captions-in-wordpress-3-9/\">HTML5</a>, <a href=\"//make.wordpress.org/core/2014/04/14/symlinked-plugins-in-wordpress-3-9/\">symlinks</a>, <a href=\"//make.wordpress.org/core/2014/04/07/mysql-in-wordpress-3-9/\">MySQL</a>, <a href=\"//make.wordpress.org/core/2014/04/11/plupload-2-x-in-wordpress-3-9/\">Plupload</a>.)</p>
<p>To test WordPress 3.9 RC2, try the <a href=\"//wordpress.org/extend/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"//wordpress.org/wordpress-3.9-RC2.zip\">download the release candidate here</a> (zip). If you’d like to learn more about what’s new in WordPress 3.9, visit the nearly complete About screen in your dashboard (<strong><img src=\"//i0.wp.com/core.svn.wordpress.org/branches/3.6/wp-content/themes/twentyten/images/wordpress.png?w=692\" alt=\"\" width=\"16\" height=\"16\" /> → About</strong> in the toolbar) and also check out <a title=\"WordPress 3.9 Beta 1\" href=\"//wordpress.org/news/2014/03/wordpress-3-9-beta-1/\">the Beta 1 post</a>.</p>
<p><em>This is for testing,</em><br />
<em>so not recommended for<br />
production sites—yet.</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://wordpress.org/news/2014/04/wordpress-3-9-release-candidate-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 3.8.3 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"http://wordpress.org/news/2014/04/wordpress-3-8-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"http://wordpress.org/news/2014/04/wordpress-3-8-3/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Apr 2014 19:29:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://wordpress.org/news/?p=3145\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:338:\"WordPress 3.8.3 is now available to fix a small but unfortunate bug in the WordPress 3.8.2 security release. The &#8220;Quick Draft&#8221; tool on the dashboard screen was broken in the 3.8.2 update. If you tried to use it, your draft would disappear and it wouldn&#8217;t save. While we doubt anyone was writing a novella using [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Andrew Nacin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2339:\"<p>WordPress 3.8.3 is now available to fix a small but unfortunate bug in the <a title=\"WordPress 3.8.2 Security Release\" href=\"http://wordpress.org/news/2014/04/wordpress-3-8-2/\">WordPress 3.8.2 security release</a>.</p>
<p>The &#8220;Quick Draft&#8221; tool on the dashboard screen was broken in the 3.8.2 update. If you tried to use it, your draft would disappear and it wouldn&#8217;t save. While we doubt anyone was writing a novella using this tool, <em>any</em> loss of content is unacceptable to us.</p>
<p>We recognize how much trust you place in us to safeguard your content, and we take this responsibility very seriously. We&#8217;re sorry we let you down.</p>
<p>We&#8217;ve all lost words we&#8217;ve written before, like an email thanks to a cat on the keyboard or a term paper to a blue screen of death. Over the last few WordPress releases, we&#8217;ve made a number of improvements to features like autosaves and revisions. With revisions, an old edit can always be restored. We&#8217;re trying our hardest to save your content somewhere even if your power goes out or your browser crashes. We even monitor your internet connection and prevent you from hitting that &#8220;Publish&#8221; button at the exact moment the coffee shop Wi-Fi has a hiccup.</p>
<p>It&#8217;s <em>possible</em> that the quick draft you lost last week is still in the database, and just hidden from view. As an added complication, these &#8220;discarded drafts&#8221; normally get deleted after seven days, and it&#8217;s already been six days since the release. If we were able to rescue your draft, you&#8217;ll see it on the &#8220;All Posts&#8221; screen after you update to 3.8.3. (We&#8217;ll also be pushing 3.8.3 out as a background update, so you may just see a draft appear.)</p>
<p>So, if you tried to jot down a quick idea last week, I hope WordPress has recovered it for you. Maybe it&#8217;ll turn into that novella.</p>
<p><a href=\"http://wordpress.org/download/\">Download WordPress 3.8.3</a> or click &#8220;Update Now&#8221; on Dashboard → Updates.</p>
<p><em>This affected version 3.7.2 as well, so we&#8217;re pushing a 3.7.3 to these installs, but we&#8217;d encourage you to update to the latest and greatest.</em></p>
<hr />
<p><em>Now for some good news:<br />
WordPress 3.9 is near.<br />
Expect it this week</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://wordpress.org/news/2014/04/wordpress-3-8-3/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:31:\"http://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 16 Sep 2014 04:59:26 GMT\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:10:\"x-pingback\";s:36:\"http://wordpress.org/news/xmlrpc.php\";s:13:\"last-modified\";s:29:\"Thu, 04 Sep 2014 17:05:39 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";}s:5:\"build\";s:14:\"20130911040210\";}","no");
INSERT INTO wp40_options VALUES("444","_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca","1410886766","no");
INSERT INTO wp40_options VALUES("445","_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca","1410843566","no");
INSERT INTO wp40_options VALUES("446","_transient_timeout_feed_867bd5c64f85878d03a060509cd2f92c","1410886772","no");
INSERT INTO wp40_options VALUES("447","_transient_feed_867bd5c64f85878d03a060509cd2f92c","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"
	
	
	
	




















































\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: Pho: A Free Minimalist, Masonry WordPress Theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30598\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://wptavern.com/pho-a-free-minimalist-masonry-wordpress-theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3811:\"<p>The folks at <a href=\"http://thematosoup.com/\" target=\"_blank\">ThematoSoup</a> are in the habit of naming their theme releases for delicious soup dishes. The team, comprised of WordPress plugin and theme developers <a href=\"https://twitter.com/slobodanmanic\" target=\"_blank\">Slobodan Manic</a> and <a href=\"https://twitter.com/NikolicDragan\" target=\"_blank\">Dragan Nikolic</a>, is dedicated to creating minimalist-inspired WordPress products.</p>
<p><strong>&#8220;We eat, sleep and breathe WordPress and digital clutter gives us nightmares,&#8221;</strong> the duo expressed on their about page. The design of <a href=\"http://wordpress.org/themes/pho\" target=\"_blank\">Pho</a>, their latest theme, embodies this sentiment and follows in the minimalist tradition with emphasis on the content.</p>
<p>The theme was designed to be fast, lean, and easily customized. It showcases images on the homepage with a slider that features content based on a tag that you specify.</p>
<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/pho.png\" rel=\"prettyphoto[30598]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/pho.png?resize=880%2C660\" alt=\"pho\" class=\"aligncenter size-full wp-image-30602\" /></a></p>
<p>Below the slider you can customize the homepage display using the various page templates. The masonry aspect of the design is completely optional, as you can select between masonry (with or without sidebar) or standard (with or without sidebar).</p>
<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/pho-homepage.png\" rel=\"prettyphoto[30598]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/pho-homepage.png?resize=324%2C500\" alt=\"pho-homepage\" class=\"alignright size-large wp-image-30612\" /></a></p>
<p>Pho includes three menus: an understated, simple primary navigation, footer menu, and one at the top for social links. It supports both sidebar and footer widget areas.</p>
<p>All of the theme options can be found in the native customizer, including an option to upload a logo to replace the site title. You can also change the site&#8217;s primary color, archives layout, and choose from a few pre-selected fonts for the body and headings. The customizer also allows you to set the theme&#8217;s background image/color, and specify the featured content tag.</p>
<p>After testing Pho in my development environment, I found that with a few tweaks in the customizer, you can have your site looking just like the demo in a matter of minutes. Since the options are all in the same place, there&#8217;s nothing confusing about customizing Pho to suit your preferences.</p>
<p>The featured content area on the homepage will require the use of some larger sized images in order to truly shine. Pho is retina-ready and will respond nicely to various devices from desktop to mobile.</p>
<p>The theme&#8217;s developers did not neglect <a href=\"http://demo.thematosoup.com/pho/template-comments/\" target=\"_blank\">comments</a> and have styled threaded comments up to four levels deep. Pho also includes support for paginated comments and styles for images, videos, and author comments.</p>
<p>The theme includes built-in support for <a href=\"https://github.com/zamoose/themehookalliance\" target=\"_blank\">Theme Hook Alliance</a>, a community-driven project that offers third-party action hooks to theme developers to implement for more flexibility.</p>
<p>Check out a <a href=\"http://demo.thematosoup.com/pho/\" target=\"_blank\">live demo</a> to see it in action and test how elegantly it responds to various screen sizes. If you want to update your blog or website with a new minimalist design, download <a href=\"http://wordpress.org/themes/pho\" target=\"_blank\">Pho</a> for free from WordPress.org or add it via your admin themes browser.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 16 Sep 2014 01:16:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: Free PSD Template for Creating a WordPress.org Plugin Banner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"http://wptavern.com/free-psd-template-for-creating-a-wordpress-org-plugin-banner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3500:\"<p>Creating a custom banner for your plugin on WordPress.org will help your extension to stand out among the 33,000+ others in the plugin directory. A little bit of branding also gives the impression that the plugin isn&#8217;t just a one night stand but rather a work that you&#8217;re committed to continually update.</p>
<p>If your plugin is lacking a custom icon, the WordPress plugin installer will create a default icon based on a color sampling of your plugin banner. It only takes a few minutes to create a banner and now it&#8217;s easier than ever with the free <a href=\"http://planetozh.com/blog/2014/09/wordpress-plugin-banner-as-a-psd/\" target=\"_blank\">WordPress Plugin Banner PSD template</a> from Ozh.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/plugin-banner-template.jpg\" rel=\"prettyphoto[30572]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/plugin-banner-template.jpg?resize=1025%2C345\" alt=\"plugin-banner-template\" class=\"aligncenter size-full wp-image-30574\" /></a></p>
<p>The reason why plugin developers put off creating a banner is because it takes a bit of thoughtful planning to find or create an image with the proper dimensions. In addition, you need to select an image that still looks good with the plugin title obscuring the bottom left corner.</p>
<p>Ozh&#8217;s template accounts for all of these things and gives you different layers for creating and previewing your banner in Photoshop with the right dimensions. It&#8217;s important to note that if you want your plugin banner to support retina displays, then you need to add an <a href=\"http://make.wordpress.org/core/2012/07/04/fun-with-high-dpi-displays/\" target=\"_blank\">additional banner</a> that is double the size of the template:1544 pixels wide and 500 pixels tall with a file named &#8220;banner-1544&#215;500.png&#8221; or &#8220;banner-1544&#215;500.jpg.&#8221; (The plugin directory does not accept GIF files.)</p>
<p>When using Ozh&#8217;s PSD template you can preview the plugin title on your banner, but make sure to turn the visibility for that layer off before saving your final banner image. The placeholder for the background reminds you of the file name for the banner (banner-772&#215;250.jpg) and its location: root /assets directory.</p>
<p>After committing your banner to the /assets directory, it may take a few minutes before it will show up on WordPress.org. The <a href=\"https://wordpress.org/plugins/about/faq/\" target=\"_blank\">Developer FAQ</a> section for the plugin directory has a tip on previewing your plugin page with your image:</p>
<blockquote><p>For development and testing, you can add a URL parameter to your plugin&#8217;s URL of &#8220;?banner_url=A_URL_TO_YOUR_IMAGE&#8221; to preview what the page will look like with your own image. This will only work with your own plugins; you cannot use this parameter on anybody else&#8217;s plugins.</p></blockquote>
<p>With the availability of this new banner template, there&#8217;s no excuse to leave your plugin looking sad and neglected. Add a custom banner and, while you&#8217;re at it, check out Andrew Nacin&#8217;s <a href=\"http://make.wordpress.org/core/2014/08/21/introducing-plugin-icons-in-the-plugin-installer/\" target=\"_blank\">tips for creating a custom icon</a>. You can <a href=\"http://planetozh.com/blog/2014/09/wordpress-plugin-banner-as-a-psd/\" target=\"_blank\">download the WordPress.org plugin banner template</a> PSD directly from Ozh&#8217;s website.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Sep 2014 20:28:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: New Plugin Adds Conditional Profile Fields to BuddyPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=29143\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"http://wptavern.com/new-plugin-adds-conditional-profile-fields-to-buddypress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5174:\"<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/different-users.jpg\" rel=\"prettyphoto[29143]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/different-users.jpg?resize=1024%2C492\" alt=\"photo credit: Dunechaser - cc\" class=\"size-full wp-image-30565\" /></a>photo credit: <a href=\"https://www.flickr.com/photos/dunechaser/6042984689/\">Dunechaser</a> &#8211; <a href=\"http://creativecommons.org/licenses/by-nc-sa/2.0/\">cc</a>
<p>When you create profile fields in BuddyPress, they apply to every user in the same way. Each user responds to the same set of questions, but this could stand to be a little more flexible to account for differences in users. What if you could conditionally show profile fields, based on a user&#8217;s answers to certain questions?</p>
<p>Prolific BuddyPress plugin developer Brajesh Singh created a plugin to do exactly this. <a href=\"http://buddydev.com/plugins/conditional-profile-fields-for-buddypress/\" target=\"_blank\">Conditional Profile Fields for BuddyPress</a> gives site administrators the ability to set conditions for hiding/showing profile fields based on a user&#8217;s responses to other profile fields. For example, let&#8217;s say you create a field to ask if the user is a morning or night person.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/08/profile-field.png\" rel=\"prettyphoto[29143]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/08/profile-field.png?resize=775%2C434\" alt=\"profile-field\" class=\"aligncenter size-full wp-image-29145\" /></a></p>
<p>You can then set up a second question, such as <em>&#8220;Do you eat breakfast?&#8221;</em>  With the help of this plugin, you can make the question contingent on the first question where you asked if the person is a morning or night person. Perhaps you are curious if a user who identifies as a &#8220;night person&#8221; also eats breakfast. While editing the breakfast question, scroll to the bottom and you will find a new box for setting a <strong>Visibility Condition</strong>.</p>
<p>From the dropdown, select the question you want as the condition, show/hide, and the value that field is contingent upon. The plugin also includes support for muti-option fields.</p>
<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/conditions.jpg\" rel=\"prettyphoto[29143]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/conditions.jpg?resize=764%2C202\" alt=\"conditions\" class=\"aligncenter size-full wp-image-30548\" /></a></p>
<p>Once you have your condition set, you can navigate to the frontend to see that the conditional fields are shown or hidden based on your selection. Here&#8217;s a quick demo:</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/08/conditional-profile-fields-demo.gif\" rel=\"prettyphoto[29143]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/08/conditional-profile-fields-demo.gif?resize=578%2C389\" alt=\"conditional-profile-fields-demo\" class=\"aligncenter size-full wp-image-30540\" /></a></p>
<p>If you mark the first profile field as &#8220;Required&#8221; when creating it, then BuddyPress will also show the field on the registration form and conditional fields will also apply. The plugin currently supports the following features:</p>
<ul>
<li>Compatibly with 99% of WordPress themes</li>
<li>2 visibility option to either show the field or hide the field based on the condition</li>
<li>A field dropdown box to allow you to select the field that governs the display of this field</li>
<li>6 operators to match the values (6 operators for the number/text/textarea field and 2 operators for matching the multi-select box/check box/radio)</li>
<li>It supports the multi-type field as well as other fields (and should support custom profile fields automatically)</li>
<li>Currently the date field is not supported for creating conditions</li>
</ul>
<p>The Conditional Profile Fields plugin is an excellent addition to any BuddyPress site that brings together different types of users. For example, educational sites might include students, teachers, tutors, etc. Instead of using a complicated plugin to set up different user types, you can add a conditional profile field to ask the user to select from student, teacher, etc. From there you can create different profile field groups containing questions conditional upon the user&#8217;s previous selection.</p>
<p>Conditional profile fields could also be useful for many other types of social networks, including:</p>
<ul>
<li>Dating sites</li>
<li>Professional organizations</li>
<li>Sports teams</li>
<li>Multilingual communities</li>
<li>Job or freelancer networks</li>
<li>Hobby or interest-based networks</li>
</ul>
<p>I tested the plugin with BuddyPress 2.1 beta 1 and found that it works exactly advertised. Conditional profile fields are an excellent way to extend a niche social network to display profile fields specifically tailored to different user types. Download Conditional Profile Fields for BuddyPress for free from <a href=\"http://buddydev.com/plugins/conditional-profile-fields-for-buddypress/\" target=\"_blank\">BuddyDev.com</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Sep 2014 18:19:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"BuddyPress: BuddyPress 2.0.3 Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://buddypress.org/?p=194190\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"http://buddypress.org/2014/09/buddypress-2-0-3-security-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:612:\"<p>BuddyPress 2.0.3 is now available. This is a security release which fixes one security issue with group creation, which was discovered by the BuddyPress team.</p>
<p>This is an important and recommended update for all BuddyPress sites. A full changelog is at <a href=\"http://codex.buddypress.org/developer/releases/version-2-0-3/\">http://codex.buddypress.org/developer/releases/version-2-0-3/</a>.</p>
<p>You can upgrade via your WordPress Dashboard &gt; Updates. You can also download the latest version at <a href=\"http://wordpress.org/plugins/buddypress/\">http://wordpress.org/plugins/buddypress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Sep 2014 15:51:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Paul Gibbs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"Matt: White House Goes On Lockdown After Sneaky Toddler Breaches Fence : The Two-Way : NPR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44111\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"http://ma.tt/2014/09/white-house-goes-on-lockdown-after-sneaky-toddler-breaches-fence-the-two-way-npr/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:497:\"<blockquote><p>&#8220;We were going to wait until he learned to talk to question him,&#8221; Secret Service Agent Edwin Donovan said in a statement, &#8220;but in lieu of that he got a timeout and was sent on [his] way with [his] parents.&#8221;</p></blockquote>
<p>Pretty funny article from <a href=\"http://www.npr.org/blogs/thetwo-way/2014/08/08/338851452/white-house-goes-on-lockdown-after-sneaky-toddler-breaches-fence\">White House Goes On Lockdown After Sneaky Toddler Breaches Fence</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Sep 2014 05:08:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Logical Conclusion of AI\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44108\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"http://ma.tt/2014/09/logical-conclusion-of-ai/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:650:\"<p>There&#8217;s been some great threads going around inspired by the book <a href=\"http://www.amazon.com/dp/B00LOOCGB2/\">Superintelligence: Paths, Dangers, Strategies</a>, including Elon Musk hoping <a href=\"https://twitter.com/elonmusk/status/496012177103663104\">we&#8217;re not just a biological bootloader</a>. Via Automattician <a href=\"http://mattmazur.com/\">Matt Mazur</a> I came across this <a href=\"http://www.amazon.com/review/R3EGMJ28UD35YN/\">fantastic review of the book on Amazon that gives a great counter-balance and lots of additional information you wouldn&#8217;t get from the book itself</a>, and also summarizes it quite well.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 14 Sep 2014 06:59:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Matt: Minimum Viable Civilization\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44105\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://ma.tt/2014/09/minimum-viable-civilization/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:466:\"<p>We&#8217;ve talked about the Fermi Paradox <a href=\"http://ma.tt/2014/07/the-fermi-paradox/\">here</a> and <a href=\"http://ma.tt/2014/08/thegreatfilter/\">here</a> before, my long-time friend David Galbraith, ever the architect, tackles the Fermi Paradox from the <a href=\"http://davidgalbraith.org/uncategorized/minimum-maximum-viable-civilizations/3859/\">point of view of the natural limits of communication in Minimum &#038; Maximum Viable Civilizations</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 13 Sep 2014 04:54:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"WordPress.tv Blog: Designing with WordPress:  Recent WordCamp Presentations for Designers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.wordpress.tv/?p=388\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"http://blog.wordpress.tv/2014/09/13/designing-with-wordpress-recent-wordcamp-presentations-for-designers/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3570:\"<p>There is no doubt that design is a popular topic at any WordCamp.  From <a href=\"http://wordpress.tv/event/wordcamp-vancouver-2014/\" target=\"_blank\">WordCamp Vancouver</a> and <a href=\"http://wordpress.tv/event/wordcamp-asheville-2014/\" target=\"_blank\">WordCamp Asheville</a> come these great talks on how to level-up your WordPress design skills.</p>
<h2>Designing for Content</h2>
<div id=\"v-GlavJHoF-1\" class=\"video-player\">
</div>
<p>This talk from David Hickox goes over the method he has created for designing websites from the content outward. His talk covers aspects of designing in code, type choices, line height and typographic scale, creating a proper base style sheet, usability best practices, semantic structure, and more.</p>
<h2>Responsive web development made easy with CSS and the mobile plugin</h2>
<div id=\"v-q2CbXT0x-1\" class=\"video-player\">
</div>
<p>In this lightning talk, Christine Rondeau offer some tips and tricks to get better looking sites on mobile devices, including how you can use the mobile plugin to get completely different layouts on mobile devices.</p>
<h2>Designing for Sales and Conversions</h2>
<div id=\"v-htjkWeqo-1\" class=\"video-player\">
</div>
<p>Sarah Benoit shares insights into the latest trends in website usability, searchability and design elements that encourage conversions — purchases, form completions, event registrations, and more. Learn best practices for designing a site with WordPress that both looks great AND converts website visitors into the customers, clients, and potential leads every business needs.</p>
<h2>Building Better Websites Through Collaboration, Communication, and Consistency</h2>
<div id=\"v-o9kH1iIK-1\" class=\"video-player\">
</div>
<p>In this presentation from WordCamp Asheville, Julien Melissas talks about how perfecting your workflow can help you level up your professionalism, relationships with clients &amp; colleagues, and happiness levels!</p><br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/388/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/388/\" /></a> <img alt=\"\" border=\"0\" src=\"http://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=388&subd=wptvblog&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://blog.wordpress.tv/2014/09/13/designing-with-wordpress-recent-wordcamp-presentations-for-designers/\"><img alt=\"David Hickox: Designing for Content\" src=\"http://videos.videopress.com/GlavJHoF/video-e1a32c408c_scruberthumbnail_0.jpg\" width=\"160\" height=\"120\" /></a></div><div><a href=\"http://blog.wordpress.tv/2014/09/13/designing-with-wordpress-recent-wordcamp-presentations-for-designers/\"><img alt=\"Christine Rondeau: Responsive web development made easy with CSS and the mobile plugin\" src=\"http://videos.videopress.com/q2CbXT0x/video-5a97567e88_std.original.jpg\" width=\"160\" height=\"120\" /></a></div><div><a href=\"http://blog.wordpress.tv/2014/09/13/designing-with-wordpress-recent-wordcamp-presentations-for-designers/\"><img alt=\"Sarah Benoit: Designing for Sales and Conversions\" src=\"http://videos.videopress.com/htjkWeqo/video-825d890916_scruberthumbnail_1.jpg\" width=\"160\" height=\"120\" /></a></div><div><a href=\"http://blog.wordpress.tv/2014/09/13/designing-with-wordpress-recent-wordcamp-presentations-for-designers/\"><img alt=\"Julien Melissas: Building Better Websites Through Collaboration, Communication, and Consistency\" src=\"http://videos.videopress.com/o9kH1iIK/video-74e0e5cadc_scruberthumbnail_0.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 13 Sep 2014 00:20:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Jerry Bates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"WPTavern: Graph Paper Press Launches Theme.Works, A Drag and Drop Platform for Building WordPress Themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30410\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"http://wptavern.com/graph-paper-press-launches-theme-works-a-drag-and-drop-platform-for-building-wordpress-themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5028:\"<p>The folks behind <a href=\"http://graphpaperpress.com/\" target=\"_blank\">Graph Paper Press</a> launched a new custom WordPress theme builder this week. <a href=\"https://theme.works/\" target=\"_blank\">Theme.Works</a> was created to be a new brand, featuring a theme building platform that allows users to build a WordPress theme in under 60 seconds.</p>
<p><strong>&#8220;We wanted something crazy easy for users to understand and use,&#8221;</strong> founder Thad Allender said. &#8220;Theme.Works inverts the traditional theme creation process: Instead of passively picking a stock template, you get to create a totally custom design for each piece of your website,&#8221; he explained. Users have the option to choose different headers, slideshows, portfolios, blogs, signup forms, contact forms, testimonials, footers, etc, via a drag and drop interface.</p>
<p>Theme.Works is actually a custom one-page app built with Node,js, Grunt, and PHP. It allows each customer to design his own theme and then download it for $79. Here&#8217;s a quick preview of how it works:</p>
<p></p>
<p>Graph Paper Press is one of the oldest WordPress theme shops in business, founded in 2007, so it&#8217;s surprising to see Theme.Works launched as its own brand. I asked Allender why the team didn&#8217;t opt to put the new theme builder under its well-known GPP umbrella.</p>
<p>&#8220;We wanted to build a new brand around a single idea/product,&#8221; he said. &#8220;Something with a clear value proposition without any distractions.&#8221; Allender also noted that the tech behind the venture is different, given that the builder is a Node.js / PHP app. &#8220;The dashboard (releasing next month) needed a singular focus on building custom designs,&#8221; he explained.</p>
<p>To celebrate the launch, Theme.Works released a free theme with fullscreen background video and portfolio integration. It includes 10 different page templates and 10 color palettes to choose from, along with dozens of custom fonts. The theme is an example of what can be built using the drag and drop theme builder.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/theme.works-free-wordpress-theme-464x1024.jpg\" rel=\"prettyphoto[30410]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/theme.works-free-wordpress-theme-464x1024.jpg?resize=464%2C1024\" alt=\"theme.works-free-wordpress-theme-464x1024\" class=\"aligncenter size-full wp-image-30516\" /></a></p>
<p>Check out a <a href=\"https://theme.works/demo/?header=10&portfolio=1&footer=3&toolbar=hide\" target=\"_blank\">live preview</a> of the theme fully customized.</p>
<p>I downloaded the Theme.Works demo theme and installed it on a test site. I was impressed with some of the options, especially the color palettes and custom fonts.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/theme-colors.jpg\" rel=\"prettyphoto[30410]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/theme-colors.jpg?resize=1010%2C369\" alt=\"theme-colors\" class=\"aligncenter size-full wp-image-30521\" /></a></p>
<p>Unfortunately, the theme options are divided almost equally between the native customizer on the frontend and the dedicated theme options panel in the admin. I believe this might introduce a point of confusion for users. If they don&#8217;t find the header options in the theme options, they may not know to look for them on the frontend.</p>
<p>Although I am no stranger to building and customizing WordPress themes, I found it difficult to get the theme looking just like the demo. The experience certainly was not as advertised in the announcement <a href=\"http://graphpaperpress.com/blog/themeworks-wordpress-theme-builder/\" target=\"_blank\">post</a>, which claims:  <em>&#8220;The theme you design is the theme you download, simple as that. No guesswork, no reference manual needed to get your theme up and running. Just activate and start publishing.&#8221;</em> On the contrary, I found there were many options to configure before I could even think about publishing.</p>
<p>I was also concerned that the portfolio functionality is bundled with the theme. Allender said that they have attempted using a portfolio custom post type in the past but decided to take a different route. &#8220;We did that at GPP and users found it confusing. So instead, we offer users a plugin to migrate CPTs.&#8221; This seems like an extra hassle if you ever want to change your theme.</p>
<p>However, the end result, as displayed in the Theme.Works live demo, is quite appealing and beautifully designed if you are able to achieve the same look with your content. Theme.Works plans to give away one new free every month, built using the new platform. You can download the free theme directly from <a href=\"https://theme.works/blog/2014/09/welcome/\" target=\"_blank\">Theme.Works</a>. While you&#8217;re there, make sure to test out the new theme building <a href=\"https://theme.works/\" target=\"_blank\">platform</a> and let us know your thoughts.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Sep 2014 23:41:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"WPTavern: Aesop Story Engine 1.1 Beta Now Available for Testing Ahead of First Major Update\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30470\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"http://wptavern.com/aesop-story-engine-1-1-beta-now-available-for-testing-ahead-of-first-major-update\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4806:\"<p>Aesop Story Engine <a href=\"http://aesopstoryengine.com/updates/ase-1-1-beta/\" target=\"_blank\">1.1. beta</a> is now in the hands of eager testers, as project leader Nick Haskins prepares to launch the first major update to the plugin since its release. Haskin&#8217;s open source storytelling plugin was <a href=\"http://wptavern.com/aesop-wordpress-storytelling-plugin-is-now-fully-funded\" target=\"_blank\">fully funded</a> via a <a href=\"https://aesop.crowdhoster.com/storytelling-engine\" target=\"_blank\">Crowdhoster campaign</a> earlier this year. Shortly thereafter he released it on WordPress.org and <a href=\"http://wptavern.com/aesop-story-engine-launches-commercial-wordpress-themes\" target=\"_blank\">launched a line of commercial themes</a> that showcase the storyengine.</p>
<p>The plugin&#8217;s 1.1 release represents a major leap forward in terms of usability. &#8220;Our primary focus with this update was to improve usability even further by removing the friction created with generating and editing story components,&#8221; Haskins said. The generator in 1.1 will be completely responsive down to mobile device displays.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/ase-generator.gif\" rel=\"prettyphoto[30470]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/ase-generator.gif?resize=1025%2C632\" alt=\"ase-generator\" class=\"aligncenter size-full wp-image-30472\" /></a></p>
<p>The story components will have a new interface in version 1.1, which more closely matches the WordPress admin. This version also adds the ability to edit story components in the visual editor. Components are now converted into a placeholder where you can easily edit their attributes. Clicking the pencil icons launches the modal view with the last options you entered.</p>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/ASE-editable-story-components.gif\" rel=\"prettyphoto[30470]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/ASE-editable-story-components.gif?resize=1025%2C659\" alt=\"ASE-editable-story-components\" class=\"aligncenter size-full wp-image-30485\" /></a></p>
<p>After 1.1 is pushed out Haskins plans to keep hammering away at usability in preparation for launching a hosted solution for Aesop Story Engine. &#8220;After 1.1 goes out, it&#8217;s back to further improving the user interface, making things even easier, and reducing even more friction ahead of revisiting a hosted solution to offer, as the plugin will have matured at that point,&#8221; he said.</p>
<p>Haskins is steadily and patiently refining the plugin and has set no ETA for the hosted version. His primary focus is on improving the experience of the story engine. &#8220;We really want it to be an incredible experience, more than just &#8216;a skinned WordPress multisite,\'&#8221; he said. &#8220;I&#8217;m watching the JSON API and waiting for more admin type capabilities. Next year would be a better guess at this point for the hosted version,&#8221; Haskins told the Tavern.</p>
<p>So far the project is experiencing success. &#8220;Sales have been going really, really well. Month after month of growth even with the price of <a href=\"http://aesopstoryengine.com/library/\" target=\"_blank\">themes</a> at $120 each, which subsequently allows for further development,&#8221; Haskins reported. Version 1.1 will introduce the ability for developers to <a href=\"https://github.com/AesopInteractive/sample-addon\" target=\"_blank\">create custom add-ons</a> to tie into the Story Engine, which is likely to bring more products into the ASE marketplace.</p>
<h3>Aesop Story Engine Finds Momentum in Education</h3>
<p>The Aesop Story Engine was created to empower WordPress publishers to pursue the art of digital storytelling, but Haskins wasn&#8217;t sure where it would take off when he initially tested the waters to see if there was any interest. While the product seems to be rather niche, it has surprisingly found the most traction in the education sector. &#8220;In terms of demographics, we are seeing a lot of big name universities, and about an equal amount of design firms,&#8221; Haskins said.</p>
<p>&#8220;The rest of users seem to fall into general writers, publishers, and news organizations, Detroit News being the most recent addition. This inevitably gives us a bit more context when making decisions regarding premium themes and upcoming addons,&#8221; Haskins said. <strong>&#8220;Simply put, the education space is the biggest trend at the moment.&#8221;</strong></p>
<p>Version 1.1 is projected to launch at the beginning of next week. If you want to get in on testing the beta, check out the post on the ASE blog to <a href=\"http://aesopstoryengine.com/updates/ase-1-1-beta/\" target=\"_blank\">download the zip file</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Sep 2014 19:01:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: Take The Annual WPShout Webhosting Survey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30460\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://wptavern.com/take-the-annual-wpshout-webhosting-survey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2066:\"<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/WPShoutWebhostingSurveyFeaturedImage.png\" rel=\"prettyphoto[30460]\"><img class=\"size-full wp-image-30463\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/WPShoutWebhostingSurveyFeaturedImage.png?resize=635%2C265\" alt=\"WPShout Webhosting Survey Featured Image\" /></a>photo credit: <a href=\"https://www.flickr.com/photos/henryfaber/230444653/\">hfabulous</a> &#8211; <a href=\"http://creativecommons.org/licenses/by-nc/2.0/\">cc</a>
<p><a title=\"http://wptavern.com/wpshout-releases-results-of-their-webhosting-survey\" href=\"http://wptavern.com/wpshout-releases-results-of-their-webhosting-survey\">Since 2011</a>, WPShout has conducted a comprehensive, non-biased, webhosting survey. Although the site has changed hands, Fred Meyer and David Hayes are continuing the tradition and the survey questions are <a title=\"http://wpshout.com/announcing-2014-wordpress-hosting-review/\" href=\"http://wpshout.com/announcing-2014-wordpress-hosting-review/\">ready to fill out</a>. There are four required questions with no identifiable information required to submit your answers. The survey is aimed at figuring out the following information:</p>
<ul class=\"clearfix\">
<li>Reliability</li>
<li>Speed</li>
<li>Usability</li>
<li>Support</li>
<li>Value</li>
<li>WordPress compatibility</li>
</ul>
<p>The data will be collected, collated, and openly shared to the community for individual analysis. In 2013, 214 people participated in the survey. The goal for 2015, is 500. Most users who run a self-hosted WordPress site also have a webhosting account. This is a chance to share your experience with that company for the benefit of others.</p>
<p>It&#8217;s hard to find good information about webhosting companies without running into reviews filled with affiliate links. If you have a few minutes to spare, please <a title=\"http://wpshout.com/announcing-2014-wordpress-hosting-review/\" href=\"http://wpshout.com/announcing-2014-wordpress-hosting-review/\">take the survey</a> and help spread the word.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Sep 2014 06:51:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WPTavern: WP Couch Mode Gives Readers an Option to Read Content Without Distractions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30445\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"http://wptavern.com/wp-couch-mode-gives-readers-an-option-to-read-content-without-distractions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3076:\"<p>If you operate a content heavy website and want an easy way to give readers an option to read content without distractions, now you can with the <a title=\"https://wordpress.org/plugins/wp-couch-mode/\" href=\"https://wordpress.org/plugins/wp-couch-mode/\">WP Couch Mode</a> plugin. Developed by Ritesh Vatwani, WP Couch Mode adds a customizable link to content. When clicked, a lightbox appears displaying only the content of the post. Within the lightbox, you can increase the font size, make it full-screen, or print the article.</p>
<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/WPCouchModeSettings.png\" rel=\"prettyphoto[30445]\"><img class=\"size-full wp-image-30447\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/WPCouchModeSettings.png?resize=685%2C568\" alt=\"Configuration Settings For WP Couch Mode\" /></a>Configuration Settings For WP Couch Mode
<p>&nbsp;</p>
<p>The plugin provides options to add the link before or after the content. You can edit the display text of the link and there&#8217;s a shortcode available if you need more control. Here&#8217;s what it looks like on the desktop view.</p>
<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/DesktopViewOfWPCouchMode.png\" rel=\"prettyphoto[30445]\"><img class=\"size-full wp-image-30454\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/DesktopViewOfWPCouchMode.png?resize=1025%2C452\" alt=\"Desktop View Of WP Couch Mode\" /></a>Desktop View Of WP Couch Mode
<p>One of the first things you&#8217;ll notice is that the images are large. When viewed on a desktop, the images are displayed at full size. On a mobile device, the images are smaller to account for screen size. Something that will need to be addressed in the next version is the poor handling of featured images. For some reason, WP Couch Mode takes a very small version of a featured image and blows it up. This causes featured images to look terrible on mobile devices. I think it would be better to not show the featured image and instead, only show images attached to the post.</p>
<p>When I accessed Couch Mode on my iPhone 5s in portrait mode, the X in the top right corner is cut off making it difficult to close the window. In order to access the close button, I put my phone into landscape mode. Alternatively, if enabled, I can tap the button to shrink/expand the lightbox as a work around. This is what the content looks like on my phone.</p>
<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/image1.jpg\" rel=\"prettyphoto[30445]\"><img class=\"size-full wp-image-30449\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/image1.jpg?resize=640%2C1136\" alt=\"Portrait View Shows The X Cutoff\" /></a>Portrait View Shows The X Cutoff
<p>&nbsp;</p>
<p>I doubt this plugin will be installed and used on sites that make a living through display advertisements. It&#8217;s like providing readers an ad-blocker tailored to the site. Overall, the plugin works as advertised. The lightbox needs some work but other than that, it gets rid of all the distractions.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Sep 2014 05:53:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Build Stories Using Multimedia With The Storyteller WordPress Theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30174\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"http://wptavern.com/build-stories-using-multimedia-with-the-storyteller-wordpress-theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4061:\"<p>Storyteller is an interesting concept by <a href=\"http://www.katharinabrunner.de\">Katharina Brunner</a>. It&#8217;s a <a title=\"http://www.github.com/cutterkom/storyteller\" href=\"http://www.github.com/cutterkom/storyteller\">WordPress theme</a> that when combined with the <a title=\"http://wordpress.org/plugins/addquicktag/\" href=\"http://wordpress.org/plugins/addquicktag/\">AddQuickTags plugin</a>, provides the ability to build multimedia stories.</p>
<p>Once activated, you&#8217;ll need to import a <a title=\"http://storyteller.katharinabrunner.de/static/addquicktag-storyteller.json\" href=\"http://storyteller.katharinabrunner.de/static/addquicktag-storyteller.json\">special JSON file</a> into AddQuickTags. This file automatically adds alignment code to the Storyteller specific quicktags making it easy to align the title and content of a slide.</p>
<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/QuickTagsAlignmentCode.png\" rel=\"prettyphoto[30174]\"><img class=\"size-full wp-image-30435\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/QuickTagsAlignmentCode.png?resize=770%2C680\" alt=\"Alignment Code Added To Quicktags\" /></a>Alignment Code Added To Quicktags
<p>The theme works best when used on a fresh install of WordPress. This is because it changes a couple of key components in the backend for the purpose of Storyteller.</p>
<ul>
<li>Posts &gt; Slides</li>
<li>Categories &gt; Stories</li>
<li>Add Post &gt; Add Slide</li>
</ul>
<p>To see Storyteller in action, check out the following <a title=\"http://storyteller.katharinabrunner.de/demo\" href=\"http://storyteller.katharinabrunner.de/demo\">demo page</a>. Images take up the entire view of the screen. The slide title and text are displayed above the image and are located on the page based on which quicktag is selected. Two arrows on the bottom right of the screen act as pagination to navigate between slides. Storyteller is a responsive theme that will resize the content based on the size of the screen. Slides are not limited to just images, you can use videos as well. It uses <a href=\"http://srobbin.com/blog/jquery-plugins/jquery-backstretch/\" target=\"blank\">Backstretch.js</a> and <a href=\"http://www.fitvidsjs.com\" target=\"blank\">FitVids.js</a> to create full screen images and videos.</p>
<p>Storyteller has one option to configure where you can select between four different fonts. The option is located in an Options top-level menu. There&#8217;s no reason why one option deserves its own top-level menu. I&#8217;d like to see it moved underneath the Settings menu and renamed to Storyteller. Options is confusing and at a glance, doesn&#8217;t seem like it&#8217;s connected to Storyteller.</p>
<a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/StorytellerOptions.png\" rel=\"prettyphoto[30174]\"><img class=\"size-full wp-image-30436\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/StorytellerOptions.png?resize=561%2C469\" alt=\"Storyteller Options\" /></a>Storyteller Options
<p>&nbsp;</p>
<p>I had hard time getting used to Slides replacing Posts and Stories replacing Categories. It creates a new workflow that takes time to get used to. The demo page highlights the potential of Storyteller but because it&#8217;s best suited for a fresh install of WordPress, it limits the amount of scenarios it can be used in. During testing, I used it on an existing WordPress site with a lot of content and it was a mess.</p>
<p>Storyteller is in its infancy as a product and I have no doubt that Brunner will continue to improve the theme as more users discover it. The items she has on the to-do list include:</p>
<ul class=\"task-list\">
<li>Option for individual width for text</li>
<li>Write a FAQ/docs</li>
<li>Sharing options</li>
<li>Option to scroll rather than click</li>
<li>Better video integration</li>
</ul>
<p>Brunner encourages users to give feedback and report bugs to the theme&#8217;s <a title=\"http://www.github.com/cutterkom/storyteller\" href=\"http://www.github.com/cutterkom/storyteller\">Github page</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Sep 2014 02:10:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WPTavern: Add WordPress Coding Standards to NetBeans\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30392\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://wptavern.com/add-wordpress-coding-standards-to-netbeans\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3047:\"<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/wp-netbeans.jpg\" rel=\"prettyphoto[30392]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/wp-netbeans.jpg?resize=920%2C440\" alt=\"wp-netbeans\" class=\"aligncenter size-full wp-image-30430\" /></a></p>
<p>The open source <a href=\"https://netbeans.org/\" target=\"_blank\">NetBeans</a> IDE has support for several different languages and frameworks and a worldwide community of developers who depend on it to code more efficiently. A recent <a href=\"http://www.sitepoint.com/best-php-ide-2014-survey-results/\" target=\"_blank\">survey</a> conducted by SitePoint placed NetBeans as the third most favored IDE among PHP developers, capturing 15.6% of the votes, trailing not far behind Sublime Text at 18.5%. PhpStorm locked up nearly 40% of those surveyed and recently <a href=\"http://wptavern.com/phpstorm-8-to-add-official-support-for-wordpress\" target=\"_blank\">added official support for WordPress</a>.</p>
<p>WordPress developers who favor NetBeans as their IDE of choice can install a set of preferences that will help make their development environments a little more WordPress-friendly. Inspired by the <a href=\"https://github.com/mrjxn/NetBeans-Settings-For-Laravel4\" target=\"_blank\">NetBeans Settings for Laravel 4</a>, PHP developer <a href=\"http://leon.rowland.nl/\" target=\"_blank\">Leon Rowland</a> decided to create <a href=\"https://github.com/zogot/NetBeans-WordPress-Coding-Standards\" target=\"_blank\">NetBeans WordPress Coding Standards</a>. It adds all the necessary settings for having your projects follow <a href=\"http://make.wordpress.org/core/handbook/coding-standards/\" target=\"_blank\">WordPress Coding Standards</a>.</p>
<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/netbeans-wordpress-coding-standards.png\" rel=\"prettyphoto[30392]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/netbeans-wordpress-coding-standards.png?resize=1025%2C783\" alt=\"netbeans-wordpress-coding-standards\" class=\"aligncenter size-full wp-image-30412\" /></a></p>
<p>Rowland created the settings separately, because NetBeans doesn&#8217;t yet support a proper export of sub categories (PHP, JavaScript, etc). To use it, simply download the zip file from GitHub and import it at <strong>Netbeans > Preferences</strong>. Your NetBeans setup will now correctly get the PHP, JavaScript, and CSS Coding Standards as defined in the WordPress Handbook.</p>
<p>Rowland notes one small exception in the formatting &#8211; it doesn&#8217;t correctly account for spaces before JavaScript variables inside callbacks but not functions. Overall, the <a href=\"https://github.com/zogot/NetBeans-WordPress-Coding-Standards\" target=\"_blank\">settings pack</a> puts WordPress developers in a good place for using NetBeans while following the project&#8217;s official coding standards. It&#8217;s inspiring to see more WordPress tools and support availalbe for the most popular PHP IDEs. Any NetBeans fans have more WordPress-related tools to share?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Sep 2014 21:57:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: Jeff Starr Releases New 450 Page Book: WordPress Themes In Depth\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30110\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"http://wptavern.com/jeff-starr-releases-new-450-page-book-wordpress-themes-in-depth\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2417:\"<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/WPThemesInDepthFeaturedImage.png\" rel=\"prettyphoto[30110]\"><img class=\"aligncenter size-full wp-image-30398\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/WPThemesInDepthFeaturedImage.png?resize=656%2C196\" alt=\"WordPress Themes In Depth Featured Image\" /></a></p>
<p>Jeff Starr, a contributing author to <a title=\"http://digwp.com/\" href=\"http://digwp.com/\">DigWP.com,</a> has put the finishing touches on his brand new book, <a title=\"http://wp-tao.com/wordpress-themes-book/\" href=\"http://wp-tao.com/wordpress-themes-book/\">WordPress Themes In Depth</a>. It&#8217;s 450 pages of focused information on WordPress theme development. It&#8217;s in PDF format and has support for widescreen monitors and mobile devices. Some of the topics covered include:</p>
<ul>
<li>Setting up for theme development</li>
<li>WordPress theme fundamentals</li>
<li>Theme anatomy and the WP Theme Template</li>
<li>In-depth coverage of the WordPress Loop</li>
<li>Complete chapter on customizing themes</li>
<li>Theme development according to the WP API</li>
<li>Security, optimization &amp; testing</li>
<li>Front-end techniques</li>
</ul>
<p>The book comes with access to five themes and 20 demos. One of the themes is 2020, a full-featured premium theme. The bundled demos are plug-n-play examples of techniques covered in the book. A <a title=\"http://wp-tao.com/WordPress-Themes-In-Depth_DEMO.pdf\" href=\"http://wp-tao.com/WordPress-Themes-In-Depth_DEMO.pdf\">preview </a>of WordPress Themes In Depth is available in PDF format and gives readers a chance to see how the information is presented.</p>
<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/WPThemesInDepthScreenshot.png\" rel=\"prettyphoto[30110]\"><img class=\"size-full wp-image-30395\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/WPThemesInDepthScreenshot.png?resize=871%2C653\" alt=\"A Sample Page Of WordPress Themes In Depth\" /></a>A Sample Page Of WordPress Themes In Depth
<p>WordPress Themes In Depth is available through <a title=\"http://wp-tao.com/store/?item=15\" href=\"http://wp-tao.com/store/?item=15\">Perishable Press</a> for $40 however, using the coupon code <strong>DIGWP</strong> will save you $10. If you&#8217;re looking for a great resource to learn how to develop themes for WordPress, consider adding this book to your digital library.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Sep 2014 21:04:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Matt: Long-term Asia-Pacific Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44075\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"http://ma.tt/2014/09/long-term-asia-pacificsecurity/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:723:\"<blockquote><p>As reported by the Boston Globe, four-star Admiral Samuel Locklear, Commander of U.S. Pacific Command, provided an “unexpected answer” when recently asked “what is the biggest long-term security threat in the Pacific region?”
</p></blockquote>
<p>I usually don&#8217;t do this, but <a href=\"http://climateandsecurity.org/2013/03/12/admiral-locklear-climate-change-the-biggest-long-term-security-threat-in-the-pacific-region/\">check out the link to see what the United States Navy admiral who currently serves as the commander of the U.S. Pacific Command said</a>. <cite>Hat tip: <a href=\"http://grist.org/cities/screwed-by-climate-change-10-cities-that-will-be-hardest-hit/\">Jim Meyer</a>.</cite></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Sep 2014 20:56:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Freefolio: A Free Responsive Portfolio Plugin for WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30364\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"http://wptavern.com/freefolio-a-free-responsive-portfolio-plugin-for-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4467:\"<p>When creating a portfolio with WordPress, the most ideal way to store your work is in a separate plugin. Later down the road when you want to change your theme, you&#8217;ll be able to do so without losing your portfolio content. Many theme authors are now starting to build support for existing portfolio plugins into their themes, offering styles for the plugin&#8217;s output to make the content seamless with the overall design.</p>
<p>That&#8217;s exactly what <a href=\"https://upthemes.com/\" target=\"_blank\">UpThemes</a> is doing with its new <a href=\"http://wordpress.org/plugins/freefolio/\" target=\"_blank\">Freefolio</a> plugin, which debuted a couple weeks ago on WordPress.org. The plugin was created to work hand-in-hand with the shop&#8217;s new <a href=\"https://upthemes.com/themes/creative/\" target=\"_blank\">Creative</a> theme, but also drops nicely into any other WordPress theme to add responsive portfolio functionality.</p>
<p>After activating the plugin, you visit the <strong>General > Writing</strong> settings to enable the Portfolio Projects option. This activates a new admin menu for adding portfolio content:</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/portfolio-projects.jpg\" rel=\"prettyphoto[30364]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/portfolio-projects.jpg?resize=1025%2C462\" alt=\"portfolio-projects\" class=\"aligncenter size-full wp-image-30375\" /></a></p>
<p>Here&#8217;s an example of the plugin in use with the <a href=\"http://wordpress.org/themes/twentyten\" target=\"_blank\">Twenty Ten</a> theme:</p>
<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/freefolio-twentyten.png\" rel=\"prettyphoto[30364]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/freefolio-twentyten.png?resize=1025%2C641\" alt=\"freefolio-twentyten\" class=\"aligncenter size-full wp-image-30377\" /></a></p>
<p>Freefolio is unique in that it offers a <a href=\"https://dribbble.com/\" target=\"_blank\">Dribbble</a> import for designers who want to showcase their shots in WordPress. You&#8217;ll find the importer under the tools menu and only need to enter your Dribbble username to pull your content into your site:</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/dribbble-import.png\" rel=\"prettyphoto[30364]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/dribbble-import.png?resize=1025%2C329\" alt=\"dribbble-import\" class=\"aligncenter size-full wp-image-30379\" /></a></p>
<p>Once your works are imported, you can edit, delete, and curate your shots with the project type taxonomy (works like categories) and project tag taxonomy (works like tags). All portfolio items can be displayed in a responsive grid via the <code>[portfolio]</code> shortcode, which is highly configurable with the following options:</p>
<ul>
<li>display_types: display Project Types. (true/false)</li>
<li>display_tags: display Project Tags. (true/false)</li>
<li>display_content: display project content. (true/false)</li>
<li>include_type: display specific Project Types. Defaults to all. (comma-separated list of Project Type slugs)</li>
<li>include_tag: display specific Project Tags. Defaults to all. (comma-separated list of Project Tag slugs)</li>
<li>columns: number of columns in shortcode. Defaults to 2. (number, 1-6)</li>
<li>showposts: number of projects to display. Defaults to all. (number)</li>
</ul>
<p>Freefolio is compatible with the <a href=\"http://wptavern.com/jetpack-rebrands-with-new-logo-adds-custom-post-types-in-3-1-release\" target=\"_blank\">Jetpack Portfolio post type</a> and was, in fact, based in part on that code. The plugin also credits <a href=\"http://www.tammyhartdesigns.com/\" target=\"_blank\">Tammy Hart</a> for her <a href=\"http://zurb.com/forrst/posts/Dribbble_to_WordPress-wZv\" target=\"_blank\">Dribbble -> WordPress</a> code as well as the folks at array.is for <a href=\"https://array.is/articles/designer/#install-array-portfolio\" target=\"_blank\">Jetpack Portfolio Polyfill</a>, which was adapted for use in Freefolio.</p>
<p>In the future, UpThemes plan to add a portfolio widget for showcasing recent items, and the development team is open to additional feedback on how Freefolio could be better. The plugin works with any theme but may require a few CSS tweaks to look perfect with yours. <a href=\"http://wordpress.org/plugins/freefolio/\" target=\"_blank\">Download</a> it for free from WordPress.org.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Sep 2014 18:47:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WPTavern: WPWeekly Episode 162 – Lead Developer of iThemes Security, Chris Wiegman\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"http://wptavern.com?p=30359&preview_id=30359\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"http://wptavern.com/wpweekly-episode-162-lead-developer-of-ithemes-security-chris-wiegman\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3966:\"<p><a title=\"http://marcuscouch.com/\" href=\"http://marcuscouch.com/\">Marcus Couch</a> and I are joined by the lead developer of iThemes Security, <a title=\"http://www.chriswiegman.com/\" href=\"http://www.chriswiegman.com/\">Chris Wiegman</a>. After helping us dissect the news of the week, he tells the story of how he got involved with WordPress. We learn about the circumstances that lead to the creation of iThemes Security and how he almost sold the plugin to a different company. He explains how the <a title=\"http://wptavern.com/ithemes-security-now-has-brute-force-login-protection\" href=\"http://wptavern.com/ithemes-security-now-has-brute-force-login-protection\">Brute Force Login Protection</a> feature added to the latest version of iThemes Security works and the difference between local and network wide protection. Last but not least, we explore the idea of how it could turn into the Jetpack of WordPress Security plugins.</p>
<h2>Stories Discussed:</h2>
<p><a title=\"http://wptavern.com/wordpress-4-0-benny-now-available-for-download\" href=\"http://wptavern.com/wordpress-4-0-benny-now-available-for-download\">WordPress 4.0 &#8216;Benny&#8217; Released</a><br />
<a title=\"http://wptavern.com/what-happens-when-wordpress-is-updated-with-100-plugins-activated\" href=\"http://wptavern.com/what-happens-when-wordpress-is-updated-with-100-plugins-activated\">What Happens When WordPress Is Updated With 100 Plugins Activated?</a><br />
<a title=\"http://wptavern.com/flywheel-hosting-secures-1-2m-in-funding\" href=\"http://wptavern.com/flywheel-hosting-secures-1-2m-in-funding\">Flywheel Hosting Secures $1.2M In Funding</a><br />
<a title=\"http://wptavern.com/wordpress-theme-review-team-to-launch-mentoring-program\" href=\"http://wptavern.com/wordpress-theme-review-team-to-launch-mentoring-program\">WordPress Theme Review Team to Launch Mentoring Program </a></p>
<h2>Plugins Picked By Marcus:</h2>
<p><a title=\"http://wordpress.org/plugins/google-drive-media-library/\" href=\"http://wordpress.org/plugins/google-drive-media-library/\">Google Drive Media Library</a> is a plugin that connects your Google Drive account to your WordPress media library. This allows you to use Google Drive to store your photos, documents and videos on your site. This is a great solution if you are frequently receiving files from clients you don’t want to have access to the backend of WordPress.</p>
<p><a title=\"http://wordpress.org/plugins/speech-bubble/\" href=\"http://wordpress.org/plugins/speech-bubble/\">Speech Bubble</a> is a fun way to document a quote or conversation within a blog post. It’s shortcode driven and presents a conversational display similar to texting or Skype chats. There are 9 different conversation bubble styles and you can mix and match styles in posts.</p>
<p><a title=\"http://wordpress.org/plugins/wp-couch-mode/\" href=\"http://wordpress.org/plugins/wp-couch-mode/\">WP Couch Mode</a> is a handy plugin that provides a clean reading layout at the tap of a button. Much like reader mode in the Safari browser, the content takes on the look and feel of a <em>print mode</em> style removing the distractions of sidebars, widgets, site graphics or ads. It also has a handy print button, doubling as a <em>print ready</em> post plugin.</p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, September 24th 11 P.M. Eastern with Andrea Middleton of WordCamp Central</p>
<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\" target=\"_blank\">Click here to subscribe</a></p>
<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href=\"http://www.wptavern.com/feed/podcast\" target=\"_blank\">Click here to subscribe</a></p>
<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\" target=\"_blank\">Click here to subscribe</a></p>
<p><strong>Listen To Episode #162:</strong><br />
</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Sep 2014 06:50:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Matt: Hip Hop is not down with Monsanto\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44078\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"http://ma.tt/2014/09/hip-hop-is-not-down-withmonsanto/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:160:\"<p>Brentin Mock from Grist looks for evidence that <a href=\"http://grist.org/food/hip-hop-is-not-down-with-monsanto/\">Hip Hop is not down with Monsanto</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Sep 2014 22:25:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: Edin: A Beautiful Free Business Theme for WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=27519\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://wptavern.com/edin-a-beautiful-free-business-theme-for-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4276:\"<p>A month ago, WordPress.com released a new business theme that features support for its new <a href=\"http://wptavern.com/wordpress-com-moves-to-standardize-theme-support-for-logos\" target=\"_blank\">site logo feature</a>. The <a href=\"http://theme.wordpress.com/themes/edin/\" target=\"_blank\">Edin</a> theme was an instant hit with its users and is now available for use on self-hosted WordPress sites.</p>
<p>The theme was designed by <a href=\"http://thomasguillot.com/\" target=\"_blank\">Thomas Guillot</a> to create a strong brand and online presence for any business or corporation. The front page template offers three optional featured page areas and three optional widget areas. The big leading image is set by adding a featured image to the page that you assign to be the frontpage.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/edin.jpg\" rel=\"prettyphoto[27519]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/edin.jpg?resize=1025%2C1558\" alt=\"edin\" class=\"aligncenter size-full wp-image-27535\" /></a></p>
<p>Edin comes packaged with four custom page templates for a greater level of flexibility in creating your business website:</p>
<ul>
<li><a href=\"http://edindemo.wordpress.com/\" target=\"_blank\">Front Page Template</a></li>
<li><a href=\"http://edindemo.wordpress.com/page-templates/full-width-page/\" target=\"_blank\">Full Width Page Template</a></li>
<li><a href=\"http://edindemo.wordpress.com/page-templates/grid-page/\" target=\"_blank\">Grid Page Template</a></li>
<li><a href=\"http://edindemo.wordpress.com/page-templates/alternate-sidebar-page/\" target=\"_blank\">Alternate Sidebar Page Template</a></li>
</ul>
<p>Here&#8217;s an example of the grid page template:</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/edin-grid-page.jpg\" rel=\"prettyphoto[27519]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/edin-grid-page.jpg?resize=660%2C781\" alt=\"edin-grid-page\" class=\"aligncenter size-full wp-image-30333\" /></a></p>
<p>Edin offers support for three navigation menus:</p>
<ul>
<li>Primary: The default menu pops into display from a hamburger icon but the customizer also includes an alternative classic &#8220;classic&#8221; menu which displays under the site title</li>
<li>Secondary: Displays top-level quick links above the site title</li>
<li>Footer: Displays top-level links and/or social links</li>
</ul>
<p>Edin is fully responsive, maintaining its beautiful design and function as it responds to the varying displays of desktop and mobile devices. That means that mobile visitors to your business site will receive the same great experience as those using desktops.</p>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/edin-responsive.jpg\" rel=\"prettyphoto[27519]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/edin-responsive.jpg?resize=660%2C262\" alt=\"edin-responsive\" class=\"aligncenter size-full wp-image-30330\" /></a></p>
<p>Edin includes several options built into the customizer, including the ability to set the sidebar position (left or right), designate the thumbnail aspect ratio (4:3 or 1:1), customize header text and background color, assign a header image, show or hide the search bar, and more. The theme also adds support for post formats with minimal icons assigned for each format.</p>
<p>Check out a <a href=\"http://edindemo.wordpress.com/\" target=\"_blank\">live demo</a> of Edin on WordPress.com and make sure to navigate through the theme&#8217;s different <a href=\"http://edindemo.wordpress.com/page-templates/\" target=\"_blank\">page templates</a>.</p>
<p>The self-hosted version of the Edin theme does not contain the site logo feature, but the<a href=\"https://twitter.com/kwight/status/492204961619398656\" target=\"_blank\"> Jetpack team is considering adding site logos</a> to the plugin in the future.</p>
<p>If your business website is in need of a fresh look, Edin is a high quality, professionally-supported theme with a good deal of flexibility built in. All of the different options ensure that each customization of the theme will be unique. <a href=\"http://wordpress.org/themes/edin\" target=\"_blank\">Download</a> it for free from WordPress.org or via the theme browser panel in the admin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Sep 2014 21:02:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: Take the 2014 WordPress User and Developer Survey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30296\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"http://wptavern.com/take-the-2014-wordpress-user-and-developer-survey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2320:\"<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/wcsf.jpg\" rel=\"prettyphoto[30296]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/wcsf.jpg?resize=956%2C436\" alt=\"photo credit: WordCamp San Francisco 2013 - ma.tt\" class=\"size-full wp-image-30310\" /></a>photo credit: WordCamp San Francisco 2013 &#8211; <a href=\"http://ma.tt/2013/07/wordcamp-san-francisco-2013/wordcamp-san-francisco-crowd/\">ma.tt</a>
<p>The <a href=\"http://wp-survey.polldaddy.com/s/wp-2014\" target=\"_blank\">WordPress 2014 survey</a> is now available. Anyone who uses WordPress in any capacity is encouraged to take this short survey to help improve the project. The questions take approximately five minutes to complete and participation is anonymized. WordPress does not collect your email address or IP address, so feel free to offer your sincere feedback.</p>
<p>The survey asks how you use WordPress and helps the project learn more about how the community uses the software to power their websites. The feedback that you supply will help the core team make decisions for the coming year.</p>
<p>Results of the survey will be shared at WordCamp San Francisco during the State of the Word address in October. Tickets for the event are <a href=\"http://2014.sf.wordcamp.org/tickets/\" target=\"_blank\">on sale now</a> if you want to be in attendance to hear the results live.</p>
<p>Last year, 30,000 people in 178 countries took the survey. <a href=\"http://www.bourncreative.com/2013-state-of-the-word-matt-mullenweg/\" target=\"_blank\">Results</a> revealed that 69% of those surveyed use WordPress as primarily as a CMS; 20% use it as a blog/CMS combo; 6% for blogging only; and 7% as an application platform. Mobile usage data from the survey showed that 30-31% are using WordPress on iOS or Android devices.</p>
<p>Around this time last year, 18.9% of the web was powered by WordPress. That percentage has shot up this year to more than <a href=\"http://w3techs.com/technologies/overview/content_management/all\" target=\"_blank\">23%</a>.</p>
<p>We&#8217;ll be reporting live from <a href=\"http://2014.sf.wordcamp.org/\" target=\"_blank\">WordCamp San Francisco</a> to bring you all the latest data about WordPress users around the world. Any predictions for a change in CMS vs blog usage and mobile usage for 2014?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Sep 2014 18:29:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Post Status: Your website is not allowed to be fast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://www.poststat.us/?p=7118\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://www.poststat.us/website-fast-nope/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3035:\"<p><img class=\"aligncenter size-large wp-image-7120\" src=\"http://www.poststat.us/wp-content/uploads/2014/09/net-neutraility-752x334.jpg\" alt=\"net-neutraility\" width=\"627\" height=\"278\" /></p>
<p>There could quite realistically be a day that your blog or website is not allowed to be fast. Not because you didn&#8217;t do proper performance testing and optimization, but because a corporatocracy won&#8217;t allow it.</p>
<p>And your website is small potatoes that they don&#8217;t care about. You simply don&#8217;t have enough money for them to bother enabling you to deliver your website at high speeds to potential readers.</p>
<p>Net neutrality is a horribly boring term to describe the seriousness of the issue at hand. Thankfully, comedian John Oliver explains net neutrality in a way that makes it significantly more entertaining and easy to understand:</p>
<p></p>
<p>As Oliver notes, and the website <a href=\"https://www.battleforthenet.com/\">Battle for the Net</a> describes, this is incredibly important but also quite difficult to understand. The issue primarily affects the US but by default will impact the entire web and therefore the world around us. The democratization of the web (a core priority for WordPress itself) is at risk.</p>
<p>This is why WordPress, Netflix, and a whole <a href=\"https://www.battleforthenet.com/#team-internet\">slew of other websites</a> are taking part in a protest today. I complained this morning that I didn&#8217;t think poor UX (via popups and distractions on websites) were the best way to educate, but rather a day to write blog posts about the issue would be better. So here I am. This issue is important to me, my career, and you too &#8212; whether you know it or not.</p>
<p>The web is an amazing place with a level of publishing accessibility &#8212; no matter how little money a publisher (<a href=\"http://www.slideshare.net/krogsgard/why-we-publish-wordcamp-birmingham-2014wordcamp-birminghamwhywepublish2014\">you&#8217;re a publisher</a>) has &#8212; that has never before existed in the world.</p>
<p>Don&#8217;t let your internet plan become this:</p>
<p><img class=\"aligncenter size-large wp-image-7119\" src=\"http://www.poststat.us/wp-content/uploads/2014/09/upgrade-your-internet-752x464.jpg\" alt=\"upgrade-your-internet\" width=\"627\" height=\"386\" /></p>
<p>This issue is much more up in the air than you may think; lawmakers (amazingly) can still be swayed. So do your duty and contact your lawmaker today. Let them know that you value an open internet and you support net neutrality. Sign the <a href=\"https://www.battleforthenet.com/\">petition on the Battle for the Net website</a>.</p>
<p>Even more importantly, educate your friends and family about the importance of an open internet &#8212; an internet where the barrier to entry is low and citizen journalists, bloggers, and anyone that has a message can share that message and potentially impact the entire world.</p>
<p>Support net neutrality. It makes the internet and our world just a little bit better.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Sep 2014 14:32:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"Lorelle on WP: What is Your Favorite Article on Lorelle on WordPress?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"http://lorelle.wordpress.com/?p=11871\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"http://lorelle.wordpress.com/2014/09/10/what-is-your-favorite-lorelle-on-wordpress-article/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:499:\"I&#8217;ve been asked to put together a best-of collection of Lorelle on WordPress articles in an ebook. Do you have a favorite? I&#8217;m looking for articles that you&#8217;ve bookmarked and returned back to over the years to help you with WordPress and blogging, or articles that helped you understand and embrace a WordPress or blogging [&#8230;]<img alt=\"\" border=\"0\" src=\"http://pixel.wp.com/b.gif?host=lorelle.wordpress.com&blog=72&post=11871&subd=lorelle&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Sep 2014 11:31:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Lorelle VanFossen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"WPTavern: Join the September 10th Internet Slowdown Protest with These WordPress Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30202\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"http://wptavern.com/join-the-september-10th-internet-slowdown-protest-with-these-wordpress-plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3394:\"<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/battle-for-the-net.jpg\" rel=\"prettyphoto[30202]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/battle-for-the-net.jpg?resize=700%2C340\" alt=\"battle-for-the-net\" class=\"aligncenter size-full wp-image-30284\" /></a></p>
<p>Today, those who support internet freedom are simulating serving pages at a snail&#8217;s pace, in protest of internet service providers that are currently spending millions of dollars lobbying for the FCC’s proposed rules which essentially eviscerate net neutrality.</p>
<p><a href=\"http://en.blog.wordpress.com/2014/09/09/fight-for-net-neutrality/\" target=\"_blank\">WordPress.com</a> joins 150 other major tech companies, including Netflix, Mozilla, Kickstarter, Tumblr, Reddit, Dropbox and Etsy, in the <a href=\"https://www.battleforthenet.com/sept10th/\" target=\"_blank\">September 10th Internet Slowdown protest</a>. The campaign features a loading icon and urges visitors to demand that lawmakers defend net neutrality.</p>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/internet-slowdown.gif\" rel=\"prettyphoto[30202]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/internet-slowdown.gif?resize=500%2C289\" alt=\"internet-slowdown\" class=\"aligncenter size-full wp-image-30268\" /></a></p>
<p>The FCC&#8217;s proposed changes would allow ISPs to charge a premium for putting companies in the &#8220;fast lane.&#8221; Smaller companies and startups without resources to pay the ISP tolls would be relegated to a &#8220;slow lane,&#8221; which would be an all-around bad experience for internet users.</p>
<p>WordPress.com users who want to participate in the protest have the option to activate the new &#8220;<a href=\"http://en.blog.wordpress.com/2014/09/09/fight-for-net-neutrality/\" target=\"_blank\">Fight for Net Neutrality</a>&#8221; plugin available under the Settings menu.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/settingsmenu.jpg\" rel=\"prettyphoto[30202]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/settingsmenu.jpg?resize=600%2C356\" alt=\"settingsmenu\" class=\"aligncenter size-full wp-image-30271\" /></a></p>
<p>The plugin replaces a few posts on WordPress.com websites with a &#8220;Still Loading&#8221; spinner that simulates what the internet will be like if cable companies have their way.</p>
<p>Self-hosted WordPress sites can participate in the protest by adding the <a href=\"https://wordpress.org/plugins/cat-signal/\" target=\"_blank\">Internet Defense League Cat Signal</a> plugin. It picks up on any active campaigns from the <a href=\"http://internetdefenseleague.org/\" target=\"_blank\">Internet Defense League</a> and will only be active on your site during those times. You can test the plugin ahead of the next campaign by adding ?_idl_test=1 to your domain.</p>
<p>Big companies like Comcast, Verizon, Time Warner Cable, and AT&amp;T have millions of dollars to throw at lawmakers in hopes of slowing down the internet for every company that doesn&#8217;t pay up. What they don&#8217;t have is the power of your voice to influence your site&#8217;s visitors to call upon lawmakers. Now is your chance to speak up in defense of net neutrality and make a difference for the future of the internet. If you run a WordPress site, it&#8217;s as easy as adding a plugin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Sep 2014 05:13:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: iThemes Security Now Has Brute Force Login Protection\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30185\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://wptavern.com/ithemes-security-now-has-brute-force-login-protection\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5642:\"<p>iThemes <a title=\"http://ithemes.com/2014/09/09/combat-wordpress-brute-force-attacks-ithemes-brute-force-protection-network-free-ithemes-security/\" href=\"http://ithemes.com/2014/09/09/combat-wordpress-brute-force-attacks-ithemes-brute-force-protection-network-free-ithemes-security/\">announced</a> Brute Force Login Protection has been added to the latest version of <a title=\"https://wordpress.org/plugins/better-wp-security/\" href=\"https://wordpress.org/plugins/better-wp-security/\">iThemes Security</a>. The new feature enables users to protect their sites either locally or by activating a network wide setting.</p>
<ul>
<li><strong><em>Local</em> brute force protection</strong> looks only at attempts to access your site and bans users per the lockout rules specified locally.</li>
<li><strong><em>Network</em> brute force protection</strong> takes this a step further by banning users who have tried to break into other sites from breaking into yours.</li>
</ul>
<p>Similar to <a title=\"https://bruteprotect.com/\" href=\"https://bruteprotect.com/\">BruteProtect</a> <a title=\"http://wptavern.com/automattic-acquires-parka-llc-the-creators-of-bruteprotect\" href=\"http://wptavern.com/automattic-acquires-parka-llc-the-creators-of-bruteprotect\">acquired by Automattic</a> earlier this year, network wide protection uses the power of each site using it to block known IP addresses from breaking into a site. This is possible thanks to the introduction of the iThemes Brute Force Protection Network.</p>
<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/iThemesSecurityBruteForceConfig.png\" rel=\"prettyphoto[30185]\"><img class=\"size-full wp-image-30217\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/iThemesSecurityBruteForceConfig.png?resize=1025%2C515\" alt=\"Brute Force Login Protection Settings\" /></a>Brute Force Login Protection Settings
<p>By enabling this new setting in iThemes Security, the Brute Force Protection Network will automatically report the IP addresses of failed login attempts to iThemes and will block them for a length of time necessary to protect your site based on the number of other sites that have seen a similar attack.</p>
<h2>Timing and Roadmaps</h2>
<p>When I asked if there is a difference between the pro version of iThemes Security and the free version when it comes to Brute Force Login Protection, iThemes Security lead developer, Chris Wiegman, said, &#8220;There are no differences at all and no plans to change that. It&#8217;s originally a free feature and we want to keep it that way.&#8221;</p>
<p>When BruteProtect was acquired by Automattic, <a title=\"http://wptavern.com/automattic-acquires-parka-llc-the-creators-of-bruteprotect#comments\" href=\"http://wptavern.com/automattic-acquires-parka-llc-the-creators-of-bruteprotect#comments\">users</a> expressed disappointment that they would have to use Jetpack. Was this move and the feedback surrounding it a motivating factor to add the feature to iThemes Security? &#8220;That was a bit of the timing but we’ve actually had it on the roadmap before I moved to iThemes. It is an effective way to protect against brute force login attempts that we just didn&#8217;t get up and running until now,&#8221; Wiegman said.</p>
<h2>The Jetpack Of WordPress Security Plugins?</h2>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/jetpack-logo.gif\" rel=\"prettyphoto[30185]\"><img class=\"aligncenter size-full wp-image-27470\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/jetpack-logo.gif?resize=700%2C276\" alt=\"jetpack-logo\" /></a></p>
<p>I&#8217;m not aware of any other plugin that comes close to what Jetpack offers. iThemes Security has so many protection mechanisms within the plugin, I think it  makes sense if each major feature was separated into a module.</p>
<p>iThemes Security could morph into a plugin like Jetpack with a focus on security. New modules could be developed to help make connecting to complimentary services easy. Development of the plugin might be made easier as well with contributors being able to focus on their favorite modules. The only thing preventing it from being like Jetpack in it current state are modules and a proper user interface to manage them. I wouldn&#8217;t be surprised if this is the direction iThemes takes with the plugin.</p>
<h2>Respecting A User&#8217;s Privacy</h2>
<p>One major difference between Jetpack and iThemes Security is that iThemes has chosen to leave the choice to users on whether network protection is enabled or not. Jetpack however, will auto-activate BruteProtect when it&#8217;s enabled. Wiegman explained two reasons why network protection is not enabled by default. &#8220;First, I don&#8217;t believe in auto activation. Second, as a security plugin we have an obligation to protect users privacy along with their site so anything that communicates remotely must be opt-in rather than opt-out.&#8221; While a noble choice on the part of iThemes, it may leave them with less data to work with than if it were enabled by default.</p>
<h2>Choices Are Good</h2>
<p>With nearly 3M downloads, the iThemes Brute Force Protection Network has an opportunity to become larger than BruteProtect&#8217;s before the company was acquired. Since the feature is free in both versions, it&#8217;s exposed to the maximum amount of potential users. It offers a choice to those who want this type of protection but don&#8217;t want to use Jetpack to get it. For those who want a single purpose plugin that only offers Brute Force Login Protection using the data from each site that uses it, you&#8217;re still out of luck.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Sep 2014 02:37:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WPTavern: First Look at Designs for the Twenty Fifteen Default WordPress Theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30218\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"http://wptavern.com/first-look-at-designs-for-the-twenty-fifteen-default-wordpress-theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3700:\"<p>Konstantin Obenland <a href=\"http://make.wordpress.org/core/2014/09/09/twenty-fifteen/\" target=\"_blank\">released</a> the first look at the Twenty Fifteen theme on the Make WordPress Core blog today. Takashi Irie, the Automattic theme designer who created <a href=\"http://takashiirie.com/2013/07/31/further-becomes-twenty-fourteen/\" target=\"_blank\">Twenty Fourteen</a>, was asked by Matt Mullenweg to design the upcoming Twenty Fifteen default theme.</p>
<p>It is now confirmed that Twenty Fifteen will in fact be a blog-focused theme, according to Irie&#8217;s description:</p>
<blockquote><p>Twenty Fifteen is a clean, blog-focused theme designed through simplicity. With careful attention to typography, the theme treats text as a major part of the user interface. It features Google’s Noto Serif and Sans – a font family designed to be visually harmonious across many of the worlds languages, and a perfect fit for the internationalization strides being made in WordPress core.</p></blockquote>
<p>The first preview of the theme shows that it includes a sidebar and makes liberal use of white space to emphasize content:</p>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/twenty-fifteen.png\" rel=\"prettyphoto[30218]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/twenty-fifteen.png?resize=1024%2C825\" alt=\"twenty-fifteen\" class=\"aligncenter size-full wp-image-30226\" /></a></p>
<p>The theme will include the ability to add a custom header image and a custom background. Obenland shared additional images, which show the theme with text only (sans images), a further customized version, and examples of how it might look on mobile devices.</p>

<a href=\"http://wptavern.com/first-look-at-designs-for-the-twenty-fifteen-default-wordpress-theme/twenty-fifteen-colors\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/twenty-fifteen-colors.png?resize=150%2C150\" class=\"attachment-thumbnail\" alt=\"twenty-fifteen-colors\" /></a>
<a href=\"http://wptavern.com/first-look-at-designs-for-the-twenty-fifteen-default-wordpress-theme/twenty-fifteen-no-images\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/twenty-fifteen-no-images.png?resize=150%2C150\" class=\"attachment-thumbnail\" alt=\"twenty-fifteen-no-images\" /></a>
<a href=\"http://wptavern.com/first-look-at-designs-for-the-twenty-fifteen-default-wordpress-theme/twenty-fifteen-phone\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/twenty-fifteen-phone.jpg?resize=150%2C150\" class=\"attachment-thumbnail\" alt=\"twenty-fifteen-phone\" /></a>
<a href=\"http://wptavern.com/first-look-at-designs-for-the-twenty-fifteen-default-wordpress-theme/twenty-fifteen-menu\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/twenty-fifteen-menu.jpg?resize=150%2C150\" class=\"attachment-thumbnail\" alt=\"twenty-fifteen-menu\" /></a>
<a href=\"http://wptavern.com/first-look-at-designs-for-the-twenty-fifteen-default-wordpress-theme/twenty-fifteen-mobile\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/twenty-fifteen-mobile.jpg?resize=150%2C150\" class=\"attachment-thumbnail\" alt=\"twenty-fifteen-mobile\" /></a>

<p>Twenty Fifteen is being designed from a mobile first approach. Obenland reports that the design itself is &#8220;far from finished.&#8221; After finalizing the design, contributors will create a working theme and commit that to core. At that point, those who have volunteered to test the theme will be able to put it through the paces to ensure that it meets WordPress&#8217; standards for default themes. Twenty Fifteen is expected to be included in WordPress 4.1, which is scheduled to ship in December this year.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Sep 2014 00:38:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WordPress.tv Blog: New videos from WordCamp Asheville and WordCamp Vancouver\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.wordpress.tv/?p=382\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"http://blog.wordpress.tv/2014/09/10/new-videos-from-wordcamp-asheville-and-wordcamp-vancouver/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4470:\"<p>Check out these great new videos from WordCamp Asheville 2014 (May 30-June1) and WordCamp Vancouver 2014 (July 26) that have been published on <a href=\"http://wordpress.tv/\" title=\"See more videos on WordPress.tv\">WordPress.tv</a> recently.</p>
<h2>What’s Your Story? Engaging Your Readers with the Power of Personal Narrative</h2>
<p>Whether you’re starting a personal blog to share your thoughts and ideas, or blogging to promote your business, storytelling is the most effective way to engage your audience. In this presentation, Cindy Reed explains how well-told stories are memorable, unique, and position you as a trusted voice.</p>
<div id=\"v-E36nBtZK-1\" class=\"video-player\">
</div>
<p><a href=\"http://wordpress.tv/2014/09/04/cindy-reed-whats-your-story-engaging-your-readers-with-the-power-of-personal-narrative/\" target=\"_blank\">View on WordPress.tv</a></p>
<h2>Power Your Non-Profit Website</h2>
<p>An important part of any non-profit organization’s mission is getting its message out to as many people as possible. As Ray Mitchell explains here, a well-designed WordPress website can help even the smallest non-profit reach a wide audiences and help activate both supporters and volunteers.</p>
<div id=\"v-t8bP32a8-1\" class=\"video-player\">
</div>
<p><a href=\"http://wordpress.tv/2014/09/07/ray-mitchell-power-your-non-profit-website/\" target=\"_blank\">View on WordPress.tv</a></p>
<h2>Magic with CSS Pseudo-Selectors</h2>
<p>Pseudo-selectors are a magical CSS tool, because they make it possible to create some amazing visual effects, while keeping your HTML semantic and minimizing the images on your site. This presentation by Morgan Kay introduces the basic concept of pseudo-selectors, and goes over the various pseudo-selectors that are available and when they are useful.</p>
<div id=\"v-1WQjXPlQ-1\" class=\"video-player\">
</div>
<p><a href=\"http://wordpress.tv/2014/09/02/morgan-kay-magic-with-css-pseudo-selectors/\" target=\"_blank\">View on WordPress.tv</a></p>
<h2>WordPress Single Page Web Apps</h2>
<p>Alessandro Biavati shows how WordPress can be integrated with modern Web App tools by leveraging its innate modularity, flexibility and speed. This talk is about WordPress as much as it is about general Web Application best practices and future applications and considerations.</p>
<div id=\"v-JRaL1qjY-1\" class=\"video-player\">
</div>
<p><a href=\"http://wordpress.tv/2014/09/09/alessandro-biavati-wordpress-single-page-web-apps/\" target=\"_blank\">View on WordPress.tv</a></p>
<p>These are just a few of the great videos we have published recently, but you can view all videos from these events here:</p>
<ul>
<li><a href=\"http://wordpress.tv/event/wordcamp-vancouver-2014/\">WordCamp Vancouver 2014 Videos</a></li>
<li><a href=\"http://wordpress.tv/event/wordcamp-asheville-2014/\">WordCamp Asheville 2014 Videos</a></li>
</ul><br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/382/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/382/\" /></a> <img alt=\"\" border=\"0\" src=\"http://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=382&subd=wptvblog&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://blog.wordpress.tv/2014/09/10/new-videos-from-wordcamp-asheville-and-wordcamp-vancouver/\"><img alt=\"Cindy Reed: What’s Your Story? Engaging Your Readers with the Power of Personal Narrative\" src=\"http://videos.videopress.com/E36nBtZK/video-6d9f81430c_scruberthumbnail_0.jpg\" width=\"160\" height=\"120\" /></a></div><div><a href=\"http://blog.wordpress.tv/2014/09/10/new-videos-from-wordcamp-asheville-and-wordcamp-vancouver/\"><img alt=\"Ray Mitchell &#8211; Power Your Non-Profit Website.mp4\" src=\"http://videos.videopress.com/t8bP32a8/video-ffb0241a44_scruberthumbnail_1.jpg\" width=\"160\" height=\"120\" /></a></div><div><a href=\"http://blog.wordpress.tv/2014/09/10/new-videos-from-wordcamp-asheville-and-wordcamp-vancouver/\"><img alt=\"Kevin Stover: The Candid Developer. Developing and Maintaining A Successful Plugin… Is Scary\" src=\"http://videos.videopress.com/1WQjXPlQ/video-7fd062bfb2_scruberthumbnail_2.jpg\" width=\"160\" height=\"120\" /></a></div><div><a href=\"http://blog.wordpress.tv/2014/09/10/new-videos-from-wordcamp-asheville-and-wordcamp-vancouver/\"><img alt=\"Alessandro Biavati: WordPress Single Page Web Apps\" src=\"http://videos.videopress.com/JRaL1qjY/video-002afa269f_scruberthumbnail_0.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Sep 2014 00:14:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Jerry Bates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WPTavern: A Successful WordPress Plugin Adoption Story\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30177\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"http://wptavern.com/a-successful-wordpress-plugin-adoption-story\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6619:\"<p>The &#8220;<a href=\"http://wptavern.com/adopt-me-plugin-tag-is-now-in-use-on-wordpress-org\" target=\"_blank\">adopt-me</a>&#8221; tag in the WordPress.org Plugin Directory is starting to gain traction, with two pages of current listings. While that may not seem like very many among the 33,000+ plugins, the new clear path for adoption is helping to change the course of extensions that would otherwise rot in the repo.</p>
<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/free-to-a-good-home.jpg\" rel=\"prettyphoto[30177]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/free-to-a-good-home.jpg?resize=500%2C464\" alt=\"photo credit: sparrowsound\" class=\"size-full wp-image-30208\" /></a>photo credit: <a href=\"http://www.last.fm/music/sparrowsound/Free+to+a+good+home\">sparrowsound</a>
<p>The &#8220;<a href=\"http://wordpress.org/plugins/tags/adopt-me\" target=\"_blank\">adopt-me</a>&#8221; tag was introduced as a possible solution to help <a href=\"http://wptavern.com/could-wordpress-plugin-adoption-lower-the-rate-of-abandonment\" target=\"_blank\">lower the rate of plugin abandonment</a>. It provides a centralized way for developers to search for plugins that need a new owner.</p>
<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/matt-cromwell.jpeg\" rel=\"prettyphoto[30177]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/matt-cromwell.jpeg?resize=150%2C150\" alt=\"matt cromwell\" class=\"alignleft size-full wp-image-30190\" /></a></p>
<p>When novice plugin developer <a href=\"http://mattcromwell.com/\" target=\"_blank\">Matt Cromwell</a> heard about the &#8220;adopt-me&#8221; tag, he was intrigued. Cromwell is the Solutions Manager for FooPlugins, a web developer by day and a plugin developer by night. <a href=\"https://wordpress.org/plugins/foothumbnails-for-galleries/\" target=\"_blank\">FooThumbnail Gallery</a> was his first foray into plugin development, prompted by the need to create a solution for one of his clients. After launching his first plugin, he started looking for ways to expand his development skills.</p>
<p>&#8220;Like so many other WP developers, I&#8217;m always slightly saddened to see that rust-orange notice at the top of a plugin telling me this or that plugin hasn&#8217;t been updated in over 2 years,&#8221; Cromwell said. <strong>&#8220;I wanted to test myself by looking at someone else&#8217;s code, seeing how and why they did what they did, and seeing if I could improve on it.&#8221;</strong> With that goal in mind, he reached out on the <a href=\"http://wptavern.com/a-facebook-group-dedicated-to-advanced-wordpress-topics\" target=\"_blank\">Advanced WordPress Facebook Group</a> for plugin adoption opportunities and discovered the &#8220;<a href=\"http://wordpress.org/plugins/tags/adopt-me\" target=\"_blank\">adopt-me</a>&#8221; tag.</p>
<p>In the process of examining various candidates, Cromwell was less concerned with the plugins&#8217; potential audience/user base and more focused on finding one that fit within his current skills. &#8220;While I did want a challenge, I didn&#8217;t want to adopt something way out of my experience, like a booking plugin or something overly complex,&#8221; he said. &#8220;I didn&#8217;t want to do something so different from what I&#8217;d already done that I&#8217;d never actually update it or improve on it.&#8221;</p>
<p>He eventually landed on two plugins that worked well with the development he had done previously: <a href=\"https://wordpress.org/plugins/imagelens/\" target=\"_blank\">Imagelens</a> by <a href=\"https://profiles.wordpress.org/ramoonus/\" target=\"_blank\">Ramoonus</a>, and <a href=\"https://wordpress.org/plugins/carousel-gallery-jquery/\" target=\"_blank\">Carousel Gallery</a> by <a href=\"https://profiles.wordpress.org/joen/\" target=\"_blank\">Joen Asmussen</a> and <a href=\"https://profiles.wordpress.org/etiger13/\" target=\"_blank\">eTiger13</a>. &#8220;I contacted each of them through their website or social media channels and heard back from them fairly quickly that they&#8217;d love to hand over the wheel,&#8221; he said. Plugin authors can easily add new developers as contributors if they want to pass the plugin on for a better future.</p>
<p>&#8220;I&#8217;m happy with my progress so far,&#8221; Cromwell reported. &#8220;I completely revamped ImageLens from the ground up. Formerly, it simply added the script everywhere. I didn&#8217;t want that. I wanted users to be able to enable it per image, or for a whole post/page. Deciding that forced me to learn how to filter <code>the_content()</code> and to leverage custom attachment fields. I also discovered Ohad Raz&#8217; &#8220;<a href=\"https://github.com/bainternet/My-Meta-Box\" target=\"_blank\">My Meta Box</a>&#8221; class for custom metaboxes in the process.&#8221;</p>
<p>Pleased with the success of his adoption experience so far, Cromwell plans to continue browsing the &#8220;adopt-me&#8221; tag for more extensions to bring into his plugin family. &#8220;I really like being able to contribute to the WP community this way,&#8221; he said. &#8220;It&#8217;s also a great way to jump into the deep end of plugin development, at least it has been for me.&#8221;</p>
<p>Cromwell is enthusiastic about plugin adoption and hopes to encourage more theme developers to pursue the challenge. He also thinks that experienced plugin developers should consider adoption as a new way to give back to the WordPress community. &#8220;Experienced plugin developers who really know their stuff could adopt two or three plugins tonight and have them updated and shining by the weekend,&#8221; he suggested.</p>
<p>Based on his experience, Cromwell believes that if you haven&#8217;t updated your plugin in a year, the best thing you can do is add the &#8220;adopt-me&#8221; tag to give your extension the chance to thrive. &#8220;The threat of automatic deletion if the plugin hasn&#8217;t been updated in two years would do MARVELS for the repo as a whole,&#8221; he said. &#8220;But there&#8217;s probably easy ways that plugin adoption could become more prominent in the repo. An &#8216;I adopted!&#8217; badge for profiles would be fun,&#8221; he suggested.</p>
<p>If you no longer want to maintain your plugin, consider adding the &#8220;<a href=\"http://wordpress.org/plugins/tags/adopt-me\" target=\"_blank\">adopt-me</a>&#8221; tag to keep it alive. Developers who want a new challenge then have the chance to discover your plugin. Cromwell&#8217;s adoption success story demonstrates how easy it is for abandoned or unwanted plugins to find a new home with an enthusiastic developer.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 Sep 2014 23:30:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: What Happens When WordPress Is Updated With 100 Plugins Activated?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30165\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"http://wptavern.com/what-happens-when-wordpress-is-updated-with-100-plugins-activated\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1624:\"<p>Over the years, there have been <a title=\"http://wptavern.com/plugin-quality-not-plugin-quantity\" href=\"http://wptavern.com/plugin-quality-not-plugin-quantity\">several articles</a> published on the topic of how many WordPress plugins are too many. A common point of debate is that too many plugins can slow down your site or cause things to break. While the risk of things breaking exists, I don&#8217;t think it&#8217;s as bad as people make it out to be.</p>
<p>Longtime WordPress trainer, Bob Dunn, has <a title=\"http://bobwp.com/wordpress-4-0-update-100-active-plugins/\" href=\"http://bobwp.com/wordpress-4-0-update-100-active-plugins/\">published the results</a> of his WordPress 4.0 update experiment. He set up two different sites each with 100 plugins installed and activated. One site used a Genesis child theme with several Genesis specific plugins. The other site used Canvas from WooThemes with WooCommerce and several WooCommerce extensions. Watch the following video to find out if WordPress and the server hosting it melts down.</p>
<p></p>
<p>One thing I hope this video does is give users confidence in updating WordPress. The most common reason I&#8217;ve read for not updating is the fear of the site or plugins breaking. This video proves something I&#8217;ve been saying for years, it&#8217;s not the number of plugins you use, it&#8217;s the quality. As <a title=\"http://halfelf.org/2014/how-many-plugins/\" href=\"http://halfelf.org/2014/how-many-plugins/\">Mika Epstein astutely points out</a>, it only takes one plugin to crash a WordPress site. Are you surprised by the results of the experiment?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 Sep 2014 22:01:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Matt: Ants Are Amazing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44096\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"http://ma.tt/2014/09/ants-areamazing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1613:\"<blockquote><p>[A]ll of California&#8217;s Argentine ants belong to only four colonies. The largest, euphemistically named the Very Large Colony, contains hundreds of billions, if not trillions, of ants, and extends from the Mexican border to San Francisco. In the largest battles ever recorded, millions of ants die each month along this colony&#8217;s border with its rivals in San Diego County.</p></blockquote>
<p>That&#8217;s from <a href=\"http://www.the-scientist.com/?articles.view/articleNo/29040/title/War-zone/\">this article by Mark W Moffett</a> that describes his book <a href=\"http://www.amazon.com/Adventures-among-Ants-Global-Trillions/dp/0520271289\">Adventures Among Ants</a>.</p>
<p>In 2010 Wired took a cool look at <a href=\"http://www.wired.com/2010/08/gallery-ant-warfare/all/\">Looting, Cannibalism and Death Blows: The ‘Shock and Awe’ of Ant Warfare</a>.</p>
<p>Finally as a 2013 update, there&#8217;s a new boss in town, the Asian needle ant which is <a href=\"http://science.nbcnews.com/_news/2013/02/11/16928308-stinging-needle-ants-overtaking-invasive-argentines-in-us?lite\">literally eating Argentine ants for lunch</a>:</p>
<blockquote><p>All ants essentially hibernate when wintertime hits, but the Asian needle ants &#8220;wake up before other ant species wake up,&#8221; Spicer-Rice explained.</p>
<p>This head start allows them to build nests, find sources of food, and start reproducing before the other ants get going.</p></blockquote>
<p><cite>Amazing ant photo by <a href=\"https://www.flickr.com/photos/kjcs/8084136238/\">János Csongor Kerekes and CC-licensed</a>.</cite></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 Sep 2014 20:54:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"Lorelle on WP: The Web is All About The Writing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"http://lorelle.wordpress.com/?p=11863\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://lorelle.wordpress.com/2014/09/09/the-web-is-all-about-the-writing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:499:\"Reading &#8220;7 Things You Need to Know about SEO in 2014&#8221; from Compete Pulse, I was fascinating to read that &#8220;size matters:&#8221; Most blog posts range between 400 and 600 words, but the ideal length for highest ranking is actually around 1,500. Many still believe that a successful website is one that offers the information [&#8230;]<img alt=\"\" border=\"0\" src=\"http://pixel.wp.com/b.gif?host=lorelle.wordpress.com&blog=72&post=11863&subd=lorelle&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 Sep 2014 20:11:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Lorelle VanFossen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"WPTavern: OpenTickets: An Open Source Event Management and Ticket Sales Platform Built on WordPress and WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30124\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:124:\"http://wptavern.com/opentickets-an-open-source-event-management-and-ticket-sales-platform-built-on-wordpress-and-woocommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5564:\"<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/open-tickets.png\" rel=\"prettyphoto[30124]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/open-tickets.png?resize=1024%2C483\" alt=\"photo credit: BenjaminThompson - cc\" class=\"size-full wp-image-30128\" /></a>photo credit: <a href=\"https://www.flickr.com/photos/beija/5082213817/\">BenjaminThompson</a> &#8211; <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">cc</a>
<p><a href=\"http://opentickets.com/\" target=\"_blank\">OpenTickets</a> launched its <a href=\"http://wordpress.org/plugins/opentickets-community-edition/\" target=\"_blank\">community edition</a> on WordPress.org this week. The open source project was created to provide event publishing and online ticket sales for bands, non-profits, venues, festivals, and other events. The platform is powered by WordPress and <a href=\"http://wordpress.org/plugins/woocommerce/\" target=\"_blank\">WooCommerce</a> and provides support for creating multiple venues and events, as well as managing digital and/print ticket sales.</p>
<p>The community edition features all the basic functionality required for managing events. After installing WooCommerce and the OpenTickets plugin, WordPress admins will have the following capabilities:</p>
<ul>
<li>Publish Venues</li>
<li>Publish Events</li>
<li>Display Calendar of Events</li>
<li>Create and Sell Tickets</li>
<li>Allow customers to keep digital and/or print tickets</li>
<li>Checkin people to events with a QR Reader</li>
<li>Ticket Sales Reporting</li>
</ul>
<p>OpenTickets works hand-in-hand with WooCommerce&#8217;s standard product creation with an option to create the product as a ticket:</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/create-ticket.jpg\" rel=\"prettyphoto[30124]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/create-ticket.jpg?resize=1025%2C323\" alt=\"create-ticket\" class=\"aligncenter size-full wp-image-30151\" /></a></p>
<p>Adding a new venue works very much like publishing a new post. The plugin includes a new menu item for creating and categorizing venues.</p>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/add-venue.jpg\" rel=\"prettyphoto[30124]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/add-venue.jpg?resize=950%2C484\" alt=\"add-venue\" class=\"aligncenter size-full wp-image-30136\" /></a></p>
<p>Scroll further down and you&#8217;ll be able to add specific areas within the venue, location information, a map, venue social links, and additional custom fields.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/event-formula-dates.jpg\" rel=\"prettyphoto[30124]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/event-formula-dates.jpg?resize=300%2C290\" alt=\"event-formula-dates\" class=\"alignright size-medium wp-image-30144\" /></a></p>
<p>When creating a new event, you have the option to enter a formula to calculate when tickets should stop being sold on the frontend of the site. The field accepts hour(s), minute(s), second(s), day(s), week(s), month(s), and year(s). For example, if you wish to terminate ticket sales shortly before the show, you could enter something like <code>2 hours 30 minutes</code>.</p>
<p>In addition to setting a date range for an event, the plugin also provides an integrated event calendar.</p>
<p>Additional commercial add-ons are available in OpenTicket&#8217;s <a href=\"http://opentickets.com/enterprise/\" target=\"_blank\">enterprise edition</a>, which bring a wider range of box office tools to the WordPress admin, such as coupons, auditing, advanced reporting, seating charts and more.</p>
<p>If you want to see a live demo of the plugin on the frontend, it is being used by the <a href=\"http://artisanct.com/\" target=\"_blank\">Artisan Center Theater</a> where you can check out the event listings and ticket purchasing process.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/artisan-theater.jpg\" rel=\"prettyphoto[30124]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/artisan-theater.jpg?resize=930%2C390\" alt=\"artisan-theater\" class=\"aligncenter size-full wp-image-30146\" /></a></p>
<p>The architecture of Artisan Center Theater&#8217;s previous ticketing system was not scalable and customers were unable to print their own tickets, which slowed down the box office. After six months of using their new OpenTickets system, Artisan <a href=\"http://opentickets.com/artisan-center-theater-and-open-tickets-case-study/\" target=\"_blank\">sold over 40,000 tickets</a> and found that online sales grew from ~40% to over 80% of total sales. Because customers were able to print their own tickets, the check-in process was reduced from about 40 minutes at Will Call to ~5 minutes.</p>
<p>OpenTickets was created by <a href=\"http://quadshot.com/\" target=\"_blank\">Quadshot Software</a> as a solution for its customers who had problems with their previous online event and ticketing systems. The plugin was made to allow event managers to host their own ticketing platform with greater flexibility and better performance than outside solutions.</p>
<p>OpenTickets provides an open source alternative to third-party ticketing systems, eliminating additional overhead and service fees. The plugin is <a href=\"http://wordpress.org/plugins/opentickets-community-edition/\" target=\"_blank\">available on WordPress.org</a> and looks to be a promising solution for developers and agencies building WordPress sites around events and ticket sales.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 Sep 2014 19:31:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: Speed Up Your WordPress Site with Pound, Varnish, Nginx and mod_pagespeed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30100\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"http://wptavern.com/speed-up-your-wordpress-site-with-pound-varnish-nginx-and-mod_pagespeed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:16692:\"<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/tomaz.jpg\" rel=\"prettyphoto[30100]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/tomaz.jpg?resize=150%2C150\" alt=\"tomaz\" class=\"alignleft size-thumbnail wp-image-30102\" /></a></p>
<p><strong>This post was contributed by Tomaž Zaman. He is the founder of a Danish startup called <a href=\"https://codeable.io\" target=\"_blank\">Codeable</a>, a WordPress-only outsourcing service on a mission to help WordPress companies and enthusiasts from all over the world effortlessly scale their businesses. He spends his free time with his wife and four kids.</strong></p>
<p>A vast majority of online articles about speeding up your WordPress site mention and use a plugin called <a href=\"https://wordpress.org/plugins/w3-total-cache/\">W3 Total Cache</a> (or W3TC for short). Rightfully so, because it&#8217;s a great, all-in-one solution to get your WP site fast with relatively small amount of work.</p>
<p>However, I&#8217;m not really a fan of all-in-one solutions, mainly because they bring a lot of complexity to the table, and as far as WordPress plugins go, possibly introduce compatibility issues and upgrade headaches.</p>
<p>That is why I decided to look for alternatives that would still make our (secure) WordPress site really fast and a friend recommended to look at mod_pagespeed, which turned out to be a great solution for making our WordPress really fast, with minimal effort.</p>
<h2>Prerequisites</h2>
<p>This article assumes you have at least basic knowledge of linux (all our examples are Ubuntu-based), know how to use the shell, and most importantly, you host your site on your own VPS. Shared hosting isn&#8217;t going to cut it, since we need to set up a customized version of nginx, which supports mod_pagespeed.</p>
<p>There are plenty of awesome and relatively cheap VPS providers out there, I&#8217;d personally recommend <a href=\"http://www.digitalocean.com\">Digital Ocean</a>.</p>
<p>Note that all commands that start with the dollar sign ($) indicate it&#8217;s a unix command, and you don&#8217;t actually enter that dollar sign into the command.</p>
<h2>Main ingredients</h2>
<p>As the title suggests, we&#8217;ll need a couple of programs installed on our server; The main one (for caching purposes) is called <a href=\"https://www.varnish-cache.org/\">Varnish</a>, which basically stores all your HTML output onto a temporary folder on disk and serves that instead of delegating requests to WordPress. It has one <em>flaw</em>, however &#8211; it does not support <em>SSL termination</em>, which is why we need <a href=\"http://www.apsis.ch/pound\">Pound</a> for.</p>
<p>The last two components we need are <a href=\"http://nginx.com/\">Nginx</a> (it&#8217;s a web server like Apache) and a PHP process manager called <a href=\"http://php-fpm.org/\">PHP-FPM</a>, since Nginx does not support modules.</p>
<p>Of course you also need to <a href=\"http://www.rackspace.com/knowledge_center/article/generate-a-csr-with-openssl\">generate a certificate</a> key and buy a certificate for this setup to work. Entry-level certificates are quite cheap, some starting with less that $10/year, which makes it a no-brainer.</p>
<h2>Getting started</h2>
<p>Provided you have a clean, fresh VPS ready, <em>SSH</em> on to it. Protip: If you use Linux or Mac OS locally, you can add the following a shortcut to <code>~/.ssh/config</code>(create this file if it does not exist):</p>
<pre class=\"brush: plain; title: ; notranslate\">
Host MyHost
  HostName [host-ip]
  Port [host-port]
  User [host user, usually root]
  IdentityFile [path/to/your/ID_RSA, usually ~/.SSH/ID_RSA]
</pre>
<p>This allows you to run the following command to log into your server shell: <code>$ ssh MyHost</code>.</p>
<p>Once logged in, it&#8217;s time to install all the necessary components that we&#8217;ll need via a <em>package manager</em>, in our case <code>apt-get</code>.</p>
<p>Run the following command: <code>$ sudo apt-get install php5-fpm php5-cli php5-mysql varnish pound mariadb-server-5.5 unzip</code> You&#8217;ll be prompted to enter the root password for MariaDB, which is a drop-in replacement for MySQL, twice. We did not install Nginx at this point because the version that comes as the default, does not support <em>mod_pagespeed</em>, which we need, so we&#8217;ll install it manually. To do that, visit the <a href=\"https://developers.google.com/speed/pagespeed/module/build_ngx_pagespeed_from_source\">official documentation</a> and follow the guide, with one exception, replace this line:</p>
<pre class=\"brush: plain; title: ; notranslate\">
./configure --add-module=$HOME/ngx_pagespeed-release-${NPS_VERSION}-beta
</pre>
<p>with this one:</p>
<pre class=\"brush: plain; title: ; notranslate\">
./configure --add-module=$HOME/ngx_pagespeed-release-${NPS_VERSION}-beta --with-http_gzip_static_module --with-http_realip_module
</pre>
<p>This will make sure you also include modules that will help you GZIP static assets and allow you to track correct IPs in your WordPress, respectively. Once done, you should have Nginx installed in <code>/usr/local/nginx/</code>.</p>
<p>If you try to visit the URL (or IP) of your server at this point, nothing will happen, because we haven&#8217;t configured all the components properly yet. Once we do, the <em>communication schema</em> between components on our server will look something like this:</p>
<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/diagram.png\" rel=\"prettyphoto[30100]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/diagram.png?resize=226%2C435\" alt=\"diagram\" class=\"aligncenter size-full wp-image-30104\" /></a></p>
<h2>Pound</h2>
<p>Let&#8217;s start with the <em>outermost</em> component, which should listen on two standard ports, 80 and 443 (HTTP and HTTPS, respectively). Edit the file <code>/etc/pound/pound.cfg</code> and put the following contents in:</p>
<pre class=\"brush: plain; title: ; notranslate\">
User            \"www-data\"
Group           \"www-data\"
LogLevel        1
Alive           30
Control \"/var/run/pound/poundctl.socket\"

ListenHTTP
    Address  0.0.0.0
    Port     80
    # This part makes sure you redirect all HTTP traffic to HTTPS
    Service
        HeadRequire \"Host: yourdomain.com\"
        Redirect \"https://yourdomain.com\"
    End
End
ListenHTTPS
    HeadRemove \"X-Forwarded-Proto\"
    AddHeader  \"X-Forwarded-Proto: https\"
    Address    0.0.0.0
    Port       443
    Cert       \"/etc/ssl/yourdomain.com/yourdomain.com.pem\"
    # This service removes the WWW-part
    Service
        HeadRequire \"Host: www.mydomain.com\"
        Redirect \"https://yourdomain.com\"
    End
    # The main service which passes requests to Varnish
    Service
        HeadRequire \"Host: yourdomain.com\"
        BackEnd
            Address 127.0.0.1
                    # 6081 is the default Varnish port
            Port    6081
        End
    End
End
</pre>
<p>Before restarting pound with this new configuration, you&#8217;ll also need to have a PEM certificate file in the defined folder, which you can create by following <a href=\"http://www.digicert.com/ssl-support/pem-ssl-creation.htm\">these instructions</a>. You&#8217;ll also need to edit <code>/etc/default/pound</code> and set <code>startup=1</code>.</p>
<p>That&#8217;s it! Pound is now configured and after running <code>$ service pound restart</code> (on Ubuntu, other distributions may have different commands for service manipulation) you should be able to visit the configured domain. Of course, you&#8217;ll get an error (503 Service Unavailable), but that&#8217;s okay, we&#8217;re not done yet!</p>
<h2>Varnish</h2>
<p>Next, we need to configure Varnish. Edit the file `/etc/varnish/default.vcl and put the following in (delete everything else):</p>
<pre class=\"brush: plain; title: ; notranslate\">
backend default {
  .host = \"127.0.0.1\";
  .port = \"8080\";
}

acl purge {
  \"127.0.0.1\";
  \"localhost\";
}

sub vcl_recv {
    if (req.request == \"PURGE\") {
      if (!client.ip ~ purge) {
        error 405 \"Not allowed.\";
      }
      ban(\"req.url ~ \"+req.url+\" &amp;&amp; req.http.host == \"+req.http.host);
      error 200 \"OK\";
    }

    # only using one backend
    set req.backend = default;

    # set standard proxied ip header for getting original remote address
    set req.http.X-Forwarded-For = client.ip;

    # logged in users must always pass
    if( req.url ~ \"^/wp-(login|admin)\" || req.http.Cookie ~ \"wordpress_logged_in_\" ){
        return (pass);
    }

    # don&#039;t cache search results
    if( req.url ~ \"\\?s=\" ){
        return (pass);
    }

    # always pass through posted requests and those with basic auth
    if ( req.request == \"POST\" || req.http.Authorization ) {
         return (pass);
    }

    # else ok to fetch a cached page
    unset req.http.Cookie;
    return (lookup);
}



sub vcl_fetch {

    # remove some headers we never want to see
    unset beresp.http.Server;
    unset beresp.http.X-Powered-By;

    # only allow cookies to be set if we&#039;re in admin area - i.e. commenters stay logged out
    if( beresp.http.Set-Cookie &amp;&amp; req.url !~ \"^/wp-(login|admin)\" ){
        unset beresp.http.Set-Cookie;
    }

    # don&#039;t cache response to posted requests or those with basic auth
    if ( req.request == \"POST\" || req.http.Authorization ) {
         return (hit_for_pass);
    }

    # only cache status ok
    if ( beresp.status != 200 ) {
        return (hit_for_pass);
    }

    # don&#039;t cache search results
    if( req.url ~ \"\\?s=\" ){
        return (hit_for_pass);
    }

    # else ok to cache the response
    set beresp.ttl = 24h;
    return (deliver);
}



sub vcl_deliver {
    if (obj.hits &gt; 0) {
        set resp.http.X-Cache = \"HIT\";
    }
    else {
        set resp.http.X-Cache = \"MISS\";
    }
    unset resp.http.Via;
    unset resp.http.X-Varnish;
}

sub vcl_hit {
  if (req.request == \"PURGE\") {
    purge;
    error 200 \"OK\";
  }
}

sub vcl_miss {
  if (req.request == \"PURGE\") {
    purge;
    error 404 \"Not cached\";
  }
}


sub vcl_hash {
    hash_data( req.url );
    if ( req.http.host ) {
        hash_data( regsub( req.http.host, \"^([^\\.]+\\.)+([a-z]+)$\", \"\\1\\2\" ) );
    } else {
        hash_data( server.ip );
    }
    # ensure separate cache for mobile clients (WPTouch workaround)
    if( req.http.User-Agent ~ \"(iPod|iPhone|incognito|webmate|dream|CUPCAKE|WebOS|blackberry9\\d\\d\\d)\" ){
        hash_data(\"touch\");
    }
    return (hash);
}
</pre>
<p>I won&#8217;t go into much details here, because <a href=\"https://www.varnish-cache.org/docs/4.0/\">official Varnish documentation</a> does a much better job at that. Three things worth mentioning here are the lines that PURGE the cache (delete it), which comes in handy to have within WordPress so that updated parts automatically initiate cache removal. There are several plugins for that, we use <a href=\"http://wordpress.org/plugins/better-wp-varnish/\">Better WP Varnish</a>, but any will do.</p>
<p>The second thing to mention is cookie handling. This configuration prevents logged in users to see cached versions of WordPress for easier debugging and previewing.</p>
<p>Last, we also use a custom header (X-Cache), which equals to either HIT or MISS so you can easily debug and see whether Varnish fetched a cached version (HIT) or not.</p>
<p>As with Pound, it&#8217;s now time to restart Varnish to load the new configuration: <code>$ service varnish restart</code>.</p>
<h2>Nginx and mod_pagespeed</h2>
<p>Almost there! The final piece of the puzzle is Nginx. Because we didn&#8217;t use the package manager to install it, we first need to set up an <code>init script</code> that will register Nginx as a <code>daemon</code> (a program or a process that runs in the background). In order to do that, run the following commands:</p>
<pre class=\"brush: plain; title: ; notranslate\">
$ cd /etc/init.d
$ wget https://raw.githubusercontent.com/JasonGiedymin/nginx-init-ubuntu/master/nginx
$ chmod +x nginx
$ update-rc.d nginx defaults
</pre>
<p>This downloads the init script, makes it executable (because it&#8217;s essentially a program) and registers it with the operating system so it can start at boot time.</p>
<p>Once that&#8217;s sorted, we need to configure Nginx by editing the file <code>/usr/local/nginx/conf/nginx.conf</code>. Locate the first <em>server</em> block in the file, and replace it with the following code (this assumes you have your WordPress installed in <code>/srv/www/yourdomain.com</code>):</p>
<pre class=\"brush: plain; title: ; notranslate\">
server {
        listen       8080;
        server_name  test.com;

        root /srv/test.com;
        index index.php index.html;

        location / {
                try_files $uri $uri/ /index.php?$args;
        }

        location ~ .php$ {
                try_files $uri /index.php;
                include fastcgi_params;
                fastcgi_pass unix:/var/run/php5-fpm.sock;
                fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
                fastcgi_index index.php;
        }

        pagespeed On;
        pagespeed ModifyCachingHeaders on;

        # Needs to exist and be writable by nginx.
        pagespeed FileCachePath \"/var/cache/ngx_pagespeed/\";
        pagespeed LoadFromFile \"https://yourdomain.com\" \"/srv/yourdomain.com\";
        pagespeed MapOriginDomain \"http://localhost\" \"https://yourdomain.com\";
        pagespeed EnableFilters rewrite_css,combine_css,trim_urls;
                pagespeed DisableFilters sprite_images,convert_jpeg_to_webp,convert_to_webp_lossless;

}
</pre>
<p>The top half is just basic configuration for our <em>virtual host</em> which enables rewrites and delegates PHP processing to PHP-FPM (listening on a socket).</p>
<p>What&#8217;s interesting here is the <em>pagespeed</em> part. After turning it on, we need to properly map URLs so that mod_pagespeed will know when to trigger its magic. After that, we enable/disable various <a href=\"https://developers.google.com/speed/pagespeed/module/filters\">filters</a> and it&#8217;s up to you to which level you want mod_pagespeed to modify/optimize your HTML so go ahead and play with them. My favorites are ones that automatically combine CSS and Javascript files, optimize images and rename them according to their <em>last-modified</em> time, so we can have a far-future expiration date.</p>
<p>There&#8217;s only one <strong>caveat</strong>: Make sure to disable <em>convert_jpeg_to_webp</em> filter. The name of the filter is pretty descriptive but can pose a problem because of Varnish. If the very first visitor of your website uses Chrome, Varnish will pass the request on to Nginx and it will detect that and serve images in WEBP format, filling the cache with them. All subsequent users will then get that cached version, but as WEBP is not yet widely supported users with other browsers won&#8217;t be able to see the images!</p>
<p>Now it&#8217;s time to see if our effort was fruitful; Restart Nginx to load the new configuration (<code>$ service nginx restart</code>) and visit the website. UH-OH! You probably don&#8217;t see what you expected, right? That&#8217;s because Varnish is working, and probably serving erroneous version in case you visited it before. The fix is simple, just clear all Varnish cache (<code>$ varnishadm \"ban req.url ~ /\"</code>) and you should be able to see the proper output.</p>
<p>To verify, you might want to inspect the response locally: <code>$ curl -i https://yourdomain.com</code>. In the response you should see two headers: <em>X-Cache</em> and <em>X-Page-Speed</em>, which indicates you&#8217;re now a webmaster of a considerably faster WordPress website!</p>
<h2>What about benchmarks?</h2>
<p>I’ve been asked about benchmarking the results, but in this case, I don’t believe it would make much sense. There’s plenty of Varnish benchmarks out there, but <em>mod_pagespeed</em> isn’t just about speed (despite it’s name). As per it’s documentation it can do a whole lot to optimize your website output in terms of asset concatenation, minification and serving.</p>
<p>That being said, if you still prefer having hard numbers for this, feel free to test it out and report back and I’ll be more than happy to update this article with your findings.</p>
<h2>Conclusion</h2>
<p>What I didn&#8217;t address in this article is <a href=\"http://codex.wordpress.org/Installing_WordPress\">WordPress installation</a>, GZIPping, error handling and various possible corner cases, but I think this tutorial should give you a good base to start off with on the path to improved user experience.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 Sep 2014 03:34:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"WPTavern: Create a Website for Your Presentation Slides with the Reveal.js Theme for WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=29551\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"http://wptavern.com/create-a-website-for-your-presentation-slides-with-the-reveal-js-theme-for-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4504:\"<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/revealjs.jpg\" rel=\"prettyphoto[29551]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/revealjs.jpg?resize=1025%2C467\" alt=\"revealjs\" class=\"aligncenter size-full wp-image-30091\" /></a></p>
<p>Many speakers use the <a href=\"http://lab.hakim.se/reveal-js/#/\" target=\"_blank\">Reveal.js</a> HTML presentation framework to display slides due to its simplicity and compatibility with mobile devices. It was created by Swedesh developer<a href=\"http://hakim.se/\" target=\"_blank\"> Hakim El Hattab</a>, who also hosts a fully-featured visual editor for authoring slides if you don&#8217;t know how to write HTML.</p>
<p>WordPress users who want to create and host their own slides now have the option to use the <a href=\"https://github.com/alleyinteractive/revealjs-wp-theme\" target=\"_blank\">Reveal.js theme for WordPress</a>. It installs just like any other theme and requires the addition of the <a href=\"https://github.com/alleyinteractive/wordpress-fieldmanager\" target=\"_blank\">Fieldmanager</a> plugin. The theme takes over the entire website so it should only be used on a site dedicated to displaying presentation slides.</p>
<p>Once installed, you can customize your presentation in <strong>Appearance → reveal.js Settings</strong>. Here you can select from any of the standard <a href=\"http://lab.hakim.se/reveal-js/#/themes\" target=\"_blank\">Reveal.js presentation themes</a> and adjust everything from transition styles and speeds to base width and margins. Further customizations can be added via a standard child theme.</p>
<p>Reveal.js for WordPress has support for all of Reveal.js&#8217;s fancy transition styles, background transitions and everything else, with the exception of Markdown support. The theme adds a new custom post type for creating Slides, although I believe this would be better accomplished via a plugin.</p>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/add-slide.jpg\" rel=\"prettyphoto[29551]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/add-slide.jpg?resize=959%2C464\" alt=\"add-slide\" class=\"aligncenter size-full wp-image-30066\" /></a></p>
<p>Creating slides is fast, easy, and requires no knowledge of HTML. It&#8217;s essentially just like writing a regular WordPress post.</p>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/sample-revealjs.jpg\" rel=\"prettyphoto[29551]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/sample-revealjs.jpg?resize=805%2C752\" alt=\"sample-revealjs\" class=\"aligncenter size-full wp-image-30064\" /></a></p>
<p>The theme comes with roughly a dozen actions and filters for manipulating the output, display, dependencies and more.</p>
<h3>Conclusion: Reveal.js for WordPress Would be Better as a Plugin</h3>
<p>The Reveal.js theme is an interesting concept and I appreciate the fact that you can create slides in the admin. However, data portability is a concern here and I&#8217;d prefer to see it as a plugin. If you happen to change themes, the interface for managing slide content is lost.</p>
<p>Additionally, the theme takes over the entire website. It&#8217;s not often that you want to create a website for the sole purpose of hosting your slides, especially if you speak frequently and have dozens of presentations. In this instance it would be easier to create your slides elsewhere and upload them to your website outside of WordPress.</p>
<p>I&#8217;d like to see the slide creation functionality pulled out of the theme and ported to its own plugin. The Reveal.js theme could be conditionally loaded for the post/page where the slides are assigned to display. In this scenario, you&#8217;d be able to add it to your existing WordPress site while keeping your active theme.</p>
<p>The Reveal.js theme makes it incredibly easy to power your presentation with WordPress, but you should be aware that you&#8217;ll be locked into using it and your slides will not be easily transferable. Placing the slide creation in a plugin outside of the theme itself would make it much more versatile. It would also be highly convenient to be able to import an existing Reveal.js presentation.</p>
<p>The Reveal.js theme for WordPress was created by the folks at <a href=\"http://www.alleyinteractive.com/\" target=\"_blank\">Alley Interactive</a>, is GPL-licensend, and available on <a href=\"https://github.com/alleyinteractive/revealjs-wp-theme\" target=\"_blank\">GitHub</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 08 Sep 2014 22:13:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"WPTavern: Founder Of ManageWP Publishes Open Letter on Security to The WordPress Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30013\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"http://wptavern.com/founder-of-managewp-publishes-open-letter-on-security-to-the-wordpress-community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10630:\"<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/OpenLetterFeaturedImage.png\" rel=\"prettyphoto[30013]\"><img class=\"size-full wp-image-30027\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/OpenLetterFeaturedImage.png?resize=642%2C300\" alt=\"Open Letter Featured Image\" /></a>photo credit: <a href=\"https://www.flickr.com/photos/ronaldregidor/9692711856/\">dreams &amp; pancakes</a> &#8211; <a href=\"http://creativecommons.org/licenses/by-nc-sa/2.0/\">cc</a>
<p>The founder of ManageWP, Vladimir Prelovac, has published an <a title=\"https://managewp.com/solve-wordpress-security?utm_content=buffere0076&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer\" href=\"https://managewp.com/solve-wordpress-security?utm_content=buffere0076&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer\">open letter addressed to the WordPress community</a> on the topic of security. In the letter, he cites the third-party ecosystem surrounding WordPress is not only its biggest strength, but also its biggest weakness.</p>
<p>He suggests a three-point plan to help mitigate security issues in themes and plugins.</p>
<ol>
<li>Weed out plugins with potential security issues.</li>
<li>Enhance the plugin verification process in the WordPress repository so all new plugins/commits are scanned.</li>
<li>Educate the WordPress developer community, which goes beyond what is done at the moment.</li>
</ol>
<p>Although Prelovac urges the community to start addressing these problems today, most of what he suggests is already occurring and has been for years.</p>
<h2>Weeding Out Plugins</h2>
<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/WeedingThePluginDirectory.png\" rel=\"prettyphoto[30013]\"><img class=\"size-full wp-image-30028\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/WeedingThePluginDirectory.png?resize=640%2C250\" alt=\"Weeding The Plugin Directory\" /></a>photo credit: <a href=\"https://www.flickr.com/photos/shutterbugamar/12982948254/\">shutterbugamar</a> &#8211; <a href=\"http://creativecommons.org/licenses/by-nc-nd/2.0/\">cc</a>
<p>This is a process that takes place 24 hours a day, 7 days a week. It&#8217;s largely a byproduct of so many people using WordPress and the code for plugins being open source. This gives anyone the opportunity to review the source code to check for vulnerabilities. My guess is that most vulnerabilities in plugins are discovered due to a security keen user or researcher reviewing the plugin because they want to use it on their site.</p>
<p>Samuel &#8220;Otto&#8221; Wood <a title=\"http://wptavern.com/naughty-plugins-caught-and-removed-from-repository#comment-16646\" href=\"http://wptavern.com/naughty-plugins-caught-and-removed-from-repository#comment-16646\">explains what happens</a> when a plugin in the directory is discovered to have a security issue.</p>
<ol>
<li>The plugin is de-listed from the repository, to prevent further downloads of an insecure plugin.</li>
<li>If the exploit is accidental or not obviously malicious, the developer is notified via email. The email comes from a valid address (plugins @ wp.org) and can be replied to.</li>
<li>The plugin developer presumably fixes the exploit or tells us that it is an invalid exploit, updates the plugin in SVN, and emails back saying so.</li>
<li>We check it out, and either provide advice or re-enable the plugin.</li>
</ol>
<h2>Enhancing The Plugin Verification Process</h2>
<p>This is one area of the WordPress plugin directory I consider a weakness. After a plugin is reviewed and approved, a malicious plugin author can upload a different code than what was initially reviewed. This is considered a <em>bait and switch</em> technique. The only way to prevent this from occurring is more humans as there are several times more plugin committs than there are plugin reviews.</p>
<p>In an interview published on the Tavern <a title=\"http://wptavern.com/behind-the-scenes-in-the-wordpress-plugin-directory-with-mika-epstein\" href=\"http://wptavern.com/behind-the-scenes-in-the-wordpress-plugin-directory-with-mika-epstein\">earlier this year</a>, Mika Epstein, who is a member of the plugin validation team, described how they try to combat the issue.</p>
<blockquote><p>Someone submits plugin A, we approve it, but they upload plugin B to the repository. That’s something a lot of spammers like to do. Sometimes people upload the wrong version of the code by accident, other times they intentionally go back and add in code we told them to remove. We try to mitigate this by filtering emails (I actually get an email for every single plugin check in) and scan for known issues, but it’s never-ending.</p></blockquote>
<p>The review team is constantly improving its checks, which help them scan for the most basic and unintentional violations. Unfortunately, there is no way to scan for bait-and-switch techniques, which require someone to go back and manually check for violations after the plugin is already sent to the repository.</p>
<h2>Expanding Educational Resources For The WordPress Developer Community</h2>
<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/ChalkboardLearning.png\" rel=\"prettyphoto[30013]\"><img class=\"size-full wp-image-30030\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/ChalkboardLearning.png?resize=640%2C250\" alt=\"Chalkboard Learning\" /></a>photo credit: <a href=\"https://www.flickr.com/photos/signifying/582602054/\">Clint Gardner</a> &#8211; <a href=\"http://creativecommons.org/licenses/by-nc-sa/2.0/\">cc</a>
<p>Prelovac suggests that security information and best practices should be merged into a single resource. He also suggests that 2015 become the year of WordPress security. This includes WordCamps across the world where security would be the main theme.</p>
<p>The <a title=\"http://make.wordpress.org/docs/plugin-developer-handbook/\" href=\"http://make.wordpress.org/docs/plugin-developer-handbook/\">WordPress Plugin Development handbook project</a> is still ongoing but is essentially what Prelovac is suggesting. There&#8217;s already a chapter dedicated to <a title=\"http://make.wordpress.org/docs/plugin-developer-handbook/3-plugin-security/\" href=\"http://make.wordpress.org/docs/plugin-developer-handbook/3-plugin-security/\">Plugin Security</a> covering data validation, nonces, and checking user capabilities. If you&#8217;d like to contribute to the handbook project, <a title=\"http://make.wordpress.org/docs/handbook/developer-resources/handbooks/\" href=\"http://make.wordpress.org/docs/handbook/developer-resources/handbooks/\">check out this page</a> for additional information</p>
<p>As for WordCamps, most of them already have a session or two on security. I don&#8217;t think a WordCamp or conference devoted to security in WordPress would work. It can be a dry subject and quickly go over the heads of users. I&#8217;ve attended a few different security sessions at various WordCamps and some people left the room in a panicked state.</p>
<p>There is no shortage of resources and tools to help developers write clean code. There are books such as <a title=\"http://www.amazon.com/Professional-WordPress-Plugin-Development-Williams/dp/0470916222\" href=\"http://www.amazon.com/Professional-WordPress-Plugin-Development-Williams/dp/0470916222\">WordPress Plugin Development</a> and <a title=\"http://www.amazon.com/Professional-WordPress-Development-Brad-Williams/dp/111844227X\" href=\"http://www.amazon.com/Professional-WordPress-Development-Brad-Williams/dp/111844227X\">Professional WordPress Design and Development, 2nd Edition</a>. Then, there is <a title=\"http://www.wordpress.tv\" href=\"http://www.wordpress.tv\">WordPress.TV</a> with sessions like <a href=\"http://wordpress.tv/2013/02/12/kurt-payne-josh-hansen-do_actionhack_me-advanced-security-for-plugins/\">Kurt Payne and Josh Hansen: do_action(‘hack_me’) Advanced Security for Plugins</a> or <a href=\"http://wordpress.tv/2011/01/29/mark-jaquith-theme-plugin-security/\">Mark Jaquith: Theme &amp; Plugin Security</a>. The knowledge is out there, plugin developers have to find it.</p>
<h2>Most Of What Prelovac Suggested Already Exists</h2>
<p>Just about everything Prelovac has suggested in his open letter either already exists or is an ongoing project. I agree that the biggest threat to WordPress and its reputation are the plugins and themes built for it.</p>
<p>The gatekeepers for the plugin directory and the theme review team have done a great job of protecting users from security issues when they&#8217;re discovered. On the other side of the coin, plugin and theme developers have for the most part, done a good job pushing out a patch once a security vulnerability is reported.</p>
<h2>News Of Security Vulnerabilities In Plugins Will Be More Common</h2>
<p>No software is perfect as it&#8217;s written by humans but the tools in place on WordPress.org make patching holes a quick process. Updates are sent to every user of the affected plugin and in most cases, updating is as simple as clicking a button.</p>
<p>With thousands of plugins available for WordPress both in and outside the official directory, I think reports, disclosures, and immediate updates for security issues will be more common. I think they already are but because no one has consistently reported on them, especially the minor ones, it doesn&#8217;t seem like they&#8217;re common. How a developer or business reacts to and notifies users/customers of a security issue is just as important as fixing it.</p>
<h2>End User Responsibility and Auto Security Updates For Plugins</h2>
<p>Education is a key component the helps users keep their sites safe and for developers to write clean code. At the end of the day, the user has a responsibility to make sure their website, themes, and plugins are up to date. If users fail to keep their sites up to date, everything else becomes a moot point.</p>
<p>While WordPress auto updates to point releases, could we eventually see auto updates for major security issues in plugins? This happened with <a title=\"http://jetpack.me/2014/04/10/jetpack-security-update/\" href=\"http://jetpack.me/2014/04/10/jetpack-security-update/\">Jetpack 2.9.3</a> which fixed a critical security bug and updates were pushed out through WordPress cores auto-update system.</p>
<p>Personally, I don&#8217;t want to see that happen as I like control and do a good job of keeping myself updated. I rarely leave an update notification stick around for more than an hour. Is the idea of updating plugins automatically from critical security bugs for the sake of keeping the web and users safe a justifiable one?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 08 Sep 2014 19:04:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"WPTavern: My Eyes Are Up Here: A WordPress Plugin With Automatic Face Detection for Generating Cropped Thumbnails\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=30019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:122:\"http://wptavern.com/my-eyes-are-up-here-a-wordpress-plugin-with-automatic-face-detection-for-generating-cropped-thumbnails\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3563:\"<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/automatic-face-dection-feature.jpg\" rel=\"prettyphoto[30019]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/automatic-face-dection-feature.jpg?resize=900%2C417\" alt=\"yoga\" class=\"size-full wp-image-30026\" /></a><a href=\"https://www.flickr.com/photos/oxidizer05/5849087687/in/photolist-9US6Zr-9USacx-9USaPt-9UR2ix-9UV4uS-9UV5vC-9US7v6-9UQZxD-9US8Mk-9US6fa-9UV2oQ-9UTRTy-9US8ar-9USbSB\">Yoga in Odintsovo &#8211; <a href=\"https://creativecommons.org/licenses/by-nc-nd/2.0/\">cc license</a>
<p>Ever wish you had more control over the thumbnails that WordPress generates for your media and featured images? <a href=\"http://wordpress.org/plugins/my-eyes-are-up-here/\" target=\"_blank\">My Eyes Are Up Here</a> is a new plugin that helps you get the perfect crop, especially as it pertains to images with human subjects.</p>
<p>Ordinarily, images are cropped according to the center, which can leave out the most important part of the photo if the person&#8217;s face is on the left or right side. More awkward crops of full body shots can isolate a person&#8217;s neck down to the elbows, instead of centering around the face. This plugin aims to fix this problem by integrating a <a href=\"https://github.com/jaysalvat/jquery.facedetection\" target=\"_blank\">jQuery plugin which detects faces in pictures</a> and returns their coordinates, using an algorithm written by Liu Liu.</p>
<p>After you install My Eyes Are Up Here, there are no setting to configure. A new &#8220;face detection&#8221; section is added to the image editing options. The plugin&#8217;s built-in face detection comes in two parts: automatic detection and manual detection via assigned hotspots.</p>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/face-detection-attachment-details.jpg\" rel=\"prettyphoto[30019]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/face-detection-attachment-details.jpg?resize=982%2C850\" alt=\"face-detection-attachment-details\" class=\"aligncenter size-full wp-image-30021\" /></a></p>
<p>The basic face detection is fairly intuitive but it won&#8217;t always find everything. That&#8217;s why there&#8217;s a secondary option to set hotspots to highlight faces that were missed. When you&#8217;re finished adding hotspots, click the &#8220;finished&#8221; button in the editing pane to initiate a re-crop of the image. The resulting thumbnail images will be cropped according to your specifications to highlight faces.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/faces.jpg\" rel=\"prettyphoto[30019]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/faces.jpg?resize=683%2C415\" alt=\"faces\" class=\"aligncenter size-full wp-image-30043\" /></a></p>
<p>When multiple hotspots or faces are detected, the plugin will attempt to crop the image to include as many hotspots in the thumbnail as possible. Otherwise, it will crop around the center of the hotspots.</p>
<p>If your theme makes heavy use of featured images with human subjects, this plugin will help you to get the desired crop around faces and avoid the dreaded crotch shot. My Eyes Are Up Here was created by the folks at <a href=\"https://interconnectit.com/\" target=\"_blank\">interconnect/it</a>. You can <a href=\"http://wordpress.org/plugins/my-eyes-are-up-here/\" target=\"_blank\">download</a> it for free from WordPress.org or check out the project on <a href=\"https://github.com/interconnectit/my-eyes-are-up-here\" target=\"_blank\">GitHub</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 08 Sep 2014 18:21:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Matt: Janet Takedown\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44086\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://ma.tt/2014/09/janettakedown/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:280:\"<p><a href=\"https://www.techdirt.com/articles/20140904/17142028420/automattic-rejects-series-bogus-janet-jackson-takedown-attempts-using-janet-jackson-song-titles.shtml\">Automattic Rejects Series Of Bogus Janet Jackson Takedown Attempts By Using Janet Jackson Song Titles</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 08 Sep 2014 15:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Matt: Pound Cake Game\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44088\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"http://ma.tt/2014/09/pound-cakegame/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:432:\"<p>I bet you didn&#8217;t know today that <a href=\"http://cakecakecake.herokuapp.com/\">you wanted to play a game with Jay Z&#8217;s head eating cupcakes while his Pound Cake verse plays in the background, but you do</a>. Use the keyboard instead of mouse and it&#8217;s way more challenging. (Also worth mentioning <a href=\"https://www.youtube.com/watch?v=NfM_fb1onoI\">Childish Gambino had the best freestyle on Pound Cake</a>.)</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 07 Sep 2014 18:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Matt: Top &amp; Bottom Line\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44093\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"http://ma.tt/2014/09/top-bottomline/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:402:\"<blockquote><p>Somebody once told me, “Manage the top line, and the bottom line will follow.” What’s the top line? It’s things like, why are we doing this in the first place? What’s our strategy? What are customers saying? How responsive are we? Do we have the best products and the best people? Those are the kind of questions you have to focus on.</p></blockquote>
<p>&#8212; Steve Jobs</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 06 Sep 2014 17:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WordPress Theme Review Team to Launch Mentoring Program\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=29636\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"http://wptavern.com/wordpress-theme-review-team-to-launch-mentoring-program\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3034:\"<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/01/WPMentorFeaturedImage1.jpg\" rel=\"prettyphoto[29636]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/01/WPMentorFeaturedImage1.jpg?resize=844%2C350\" alt=\"WPMentor Featured Image\" class=\"aligncenter size-full wp-image-14106\" /></a></p>
<p>The <a href=\"http://make.wordpress.org/themes/\" target=\"_blank\">WordPress.org Theme Review Team</a> put out a call for mentors this week. The team will be launching a mentoring program that will pair new reviewers with those who have experience.</p>
<p>&#8220;We are looking for currently active reviewers who want to give back to the community, of course, and to teach the next generation of theme reviewers,&#8221; Jose Castaneda said in the announcement. The mentoring program was proposed by TRT admin Tammie Lister as a sort of &#8220;buddy system&#8221; to help onboard new reviewers.</p>
<p>Currently, WordPress.org offers <a href=\"http://wordpress.org/themes/\" target=\"_blank\">2,677 themes</a> in its directory. As the number of themes continues to grow, so does the work load for approving new submissions as well as new theme version updates. Theme Review Team members are in short supply, and this program aims to get new members up to speed as fast as possible.</p>
<p>The response so far has been tremendous, with many team members already stepping up to the plate to volunteer as mentors. New reviewers will be paired up with mentors when they receive their first tickets. &#8220;We will be assigning from the <a href=\"http://make.wordpress.org/themes/about/trac-ticket-request-queue/trac-ticket-request-queue-summer-2014/\" target=\"_blank\">theme request list</a> each month,&#8221; Lister told the Tavern.</p>
<p>This is good news for any WordPress.org theme developers who have been frustrated by the amount of time it takes to get theme and updates approved. At times it can take weeks for a new theme to get pushed out to the directory.</p>
<p>Lister believes the mentoring program will help to improve the efficiency of reviewers working through the queue. &#8220;Anything that helps train will have a positive impact on the queue,&#8221; she said. &#8220;Every little improvement helps, but we also need more people reviewing &#8211; more hands to make light of the queue.&#8221;</p>
<p>The introduction of <a href=\"http://make.wordpress.org/themes/2014/08/28/the-role-of-trusted-reviewer/\" target=\"_blank\">Key Reviewers</a> will also help to speed things along. This is a new role within the Theme Review Team with the power to push their own theme reviews live, as well as those being reviewed by other team members. This results in more people available who can make themes live on WordPress.org.</p>
<p>Experienced theme reviewers who want to join are encouraged to comment on the <a href=\"http://make.wordpress.org/themes/2014/09/05/call-for-theme-review-mentors/\" target=\"_blank\">announcement post</a> with their WordPress.org usernames to be added to the list of available mentors.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Sep 2014 21:25:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: Flywheel Hosting Secures $1.2M In Funding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=29960\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://wptavern.com/flywheel-hosting-secures-1-2m-in-funding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3846:\"<p>At this time last year, Flywheel Hosting <a title=\"http://wptavern.com/flywheel-hosting-opens-to-the-public\" href=\"http://wptavern.com/flywheel-hosting-opens-to-the-public\">opened its doors</a> to the public. Today, the <a title=\"http://getflywheel.com/announcing-the-flywheel-seed-funding/\" href=\"http://getflywheel.com/announcing-the-flywheel-seed-funding/\">company announced</a> it has secured $1.2M in seed funding. The round was led by <a href=\"http://linseedcapital.com\">Linseed Capital</a>, with participation from the <a href=\"http://nebraskaangels.org\">Nebraska Angels</a>, <a href=\"http://ludlowventures.com\">Ludlow Ventures</a> out of Detroit, <a href=\"http://lightbank.com\">Lightbank</a> and <a href=\"http://hydeparkvp.com\">Hyde Park Venture Partners</a> out of Chicago, and <a href=\"http://rosepaul.com/\">Rose Paul Ventures</a> out of NYC.</p>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/FlywheelLogoOrange.png\" rel=\"prettyphoto[29960]\"><img class=\"aligncenter size-full wp-image-29976\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/FlywheelLogoOrange.png?resize=492%2C160\" alt=\"Flywheel Logo Orange\" /></a></p>
<p>Flywheel will use the funding to expand their team and infrastructure. Also as part of the announcement, Flywheel now offers bulk pricing plans. Bulk pricing starts with 10 sites with 150,000 visits for $100 a month and 25 sites with 500,000 visits for $250 a month. Flywheel hosting plans for small sites begin at $15 a month for sites with 5,000 visits. Since the customer base is mainly website designers and agencies, these new plans make sense, especially for managing all of their client sites in one location.</p>
<h2>Managing A Growth Phase</h2>
<p><a title=\"http://www.matthewwoodward.co.uk/reviews/webhost-trusted-wp-engine-hijacked-business-avoid-them/\" href=\"http://www.matthewwoodward.co.uk/reviews/webhost-trusted-wp-engine-hijacked-business-avoid-them/\">Some customers</a> of WPEngine have suggested that the company&#8217;s rapid growth resulted in lackluster support and reliable service during the height of its popularity. Earlier this year, an article on the WPEngine blog entitled <a title=\"http://wpengine.com/2014/05/21/growth-hard/\" href=\"http://wpengine.com/2014/05/21/growth-hard/\">Growth Is Hard,</a> explained the growing pains the company experienced.</p>
<p>I asked the co-founder and CEO of Flywheel, Dusty Davidson, how he plans to manage the next phase of Flywheel.</p>
<blockquote><p>We&#8217;re very aware of how hard it is to scale a support organization. We&#8217;re investing heavily in great people, great automation, tools, and other things to do our absolute best to provide the level of support that our customers have come to expect. It&#8217;s core to our mission to provide service at that level, even at scale and we&#8217;ll do what it takes to accomplish that.</p></blockquote>
<p>It&#8217;s rare to see so many people compliment a webhosting provider but that&#8217;s what I&#8217;ve witnessed over the past year. Through Twitter, WordCamps, and other venues, <a title=\"https://imajworks.com/2013/11/14/five-reasons-love-flywheel/\" href=\"https://imajworks.com/2013/11/14/five-reasons-love-flywheel/\">customers appear</a> to be unanimously happy with Flywheel. It will be interesting to see if the company can scale at a fast rate while maintaining their signature level of quality service and support.</p>
<h2>Tell Us About Your Experience With FlyWheel</h2>
<p>With so many companies in the managed WordPress hosting market, it&#8217;s encouraging to see a startup proving to be a hit amongst its customers. Instead of going after everyone, FlyWheel has carved out a niche within the market and is doing well. If you are a current or existing customer of FlyWheel Hosting, tell us about your experience in the comments.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Sep 2014 20:42:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"WPTavern: 1,000+ WordPress Themes on Envato Market Potentially Affected by Slider Revolution Security Vulnerability\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=29940\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"http://wptavern.com/1000-wordpress-themes-on-envato-market-potentially-affected-by-revolution-slider-security-vulnerability\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6680:\"<p><a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/envato.jpg\" rel=\"prettyphoto[29940]\"><img src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/envato.jpg?resize=697%2C314\" alt=\"envato\" class=\"aligncenter size-full wp-image-29973\" /></a></p>
<p>A couple days ago we wrote about a <a href=\"http://wptavern.com/critical-security-vulnerability-found-in-wordpress-slider-revolution-plugin-immediate-update-advised\" target=\"_blank\">critical security vulnerability</a> that was found in the popular WordPress Slider Revolution plugin and silently patched by its author. Envato Market has since <a href=\"http://marketblog.envato.com/general/plugin-vulnerability/\" target=\"_blank\">launched further investigation</a> of the matter, as the product is not only hosted on their marketplace but also packaged with many other products.</p>
<p>The company has identified <a href=\"http://marketblog.envato.com/general/affected-themes/\" target=\"_blank\">more than 1,000 themes</a> sold through its marketplace that are potentially affected by this vulnerability. While many of the products have already been patched, some theme authors have not yet acted. In recognition of the severity of this vulnerability and the ease with which it&#8217;s exploited, the marketplace is temporarily disabling themes that have not yet been patched:</p>
<blockquote><p>We are starting to temporarily disable affected themes that haven’t been updated, contacting authors of those themes to get an update through ASAP. This will take a while as there are a lot of themes to manually sort through.</p></blockquote>
<p>Even with the products getting patched, the next challenge is to get users to update. Many themes do not have an auto-update system included to notify users and WordPress users do not always apply updates as soon as they are available, for fear of breaking something. Envato Market is addressing this by emailing users to inform them of the security vulnerability:</p>
<blockquote><p>We will be contacting all buyers of affected themes directly via their Envato Market email address asap, to ensure they read and act on this information.</p></blockquote>
<p>Envato Market published detailed instructions to help users determine if they are affected and update accordingly.</p>
<h2>The Danger of Bundling Plugins With Themes</h2>
<p>When a security vulnerability potentially affects more than 1,000 products, silent patching is not acceptable. This should have been publicly disclosed by the ThemePunch team at the time it occurred, which might have prevented this vulnerability from being actively exploited in the wild.</p>
<p>At the end of the post, Envato Market highlights what they are doing to ensure that this doesn&#8217;t happen again:</p>
<blockquote><p>We will be releasing guidelines and processes to make sure issues like this get to us faster, and to help authors make sure their buyers are updated and patched as fast as possible. </p>
<p>We are also going to revisit how updates are handled for bundles and themes that include separate plugins.</p></blockquote>
<p>Unfortunately, &#8220;more guidelines and processes&#8221; do not address the root of this problem. This vulnerability highlights the danger of allowing theme authors to bundle plugins in their products. Envato Market would have no need to list out 1,000+ potentially affected themes if it discouraged, or even forbade, theme authors from bundling plugins.</p>
<p>Since the vast majority of Envato&#8217;s top-selling themes do not follow industry best practices, forbidding them to bundle plugins would most certainly result in a loss of profit. There seems to be little incentive for Envato Market to act decisively on the lesson of this security vulnerability and move toward best practices.</p>
<p>Respected professionals in the WordPress community have been calling on theme authors to keep plugins separate for years. This situation has renewed the debate:</p>
<blockquote class=\"twitter-tweet\" width=\"550\"><p>.<a href=\"https://twitter.com/envato\">@envato</a> This is why you should never permit bundled plugins in themes: <a href=\"http://t.co/XFAU1anKef\">http://t.co/XFAU1anKef</a> &#8211; no exceptions</p>
<p>&mdash; Pippinsplugins (@pippinsplugins) <a href=\"https://twitter.com/pippinsplugins/status/507907279140945921\">September 5, 2014</a></p></blockquote>
<p></p>
<p>Historically, Envato has been slow to act on theme best practices. Last year&#8217;s addition of a <a href=\"http://notes.envato.com/general/100-gpl-option-now-available-plus-woothemes-arrives\" target=\"_blank\">GPL licensing option</a> and the <a href=\"http://notes.envato.com/news/update-wordpress-theme-submission-requirements\" target=\"_blank\">updated theme submission requirements</a> were a good start, but authors have found ways to skirt the requirements. Justin Tadlock offers some insight on this practice, following his <a href=\"http://justintadlock.com/archives/2013/09/11/the-themeforest-experiment-one-year-later\" target=\"_blank\">Themeforest experiment</a>:</p>
<blockquote><p>Based on what I’ve seen in the forums, many authors are just looking for ways to do what they’ve already been doing but just putting it in a plugin packaged with their theme. Basically, they don’t want anyone to “steal their code” nor do they want to truly make a wonderful user experience, one in which users will keep coming back long after they’ve switched to a new theme. If you package your plugin functionality into a plugin that’s only ever going to be useful with your theme, then you’re _doing_it_wrong(). That’s what I envision, but I hope that’s the sort of thing Envato will take a stand against. Otherwise, you’re just pulling the same ol’ tricks in a different costume.</p></blockquote>
<p>This experience prompted Tadlock to continue building standalone <a href=\"http://themehybrid.com/plugins\" target=\"_blank\">plugins </a>that theme authors can add support for when building their products. This frees theme authors up to focus on the theme itself and offer better data portability for users via plugins. Adopting a standard for plugin functionality is good for users and creates less work for theme authors. They can continue building more themes, instead of wasting time patching their themes for a slider&#8217;s security vulnerability.</p>
<p>WordPress is now used by more than 23% of the world&#8217;s websites and will always be a target for hackers looking to exploit vulnerabilities. If Envato Market doesn&#8217;t take a stand against theme authors packaging plugins, it will continue to encounter the same security problems that are topping the headlines this week.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Sep 2014 19:48:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Matt: Tale of Two Automatticians\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44084\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"http://ma.tt/2014/09/tale-of-two-automatticians/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:423:\"<p>Today we hear from two Automatticians: <a href=\"http://extrapolate.me/2014/09/04/ten-years-since-my-first-open-source-contribution/\">Nikolay talks about his first open source contribution ten years ago and the path his life has taken since</a>, and Andrea <a href=\"http://andreabadgley.com/2014/09/03/call-me-democratizer/\">says she &#8220;can’t wipe this grin off my face&#8221; at the start of a new journey</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Sep 2014 17:34:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: Rams: A Free WordPress Blogging Theme With Zero Fluff\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=29752\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"http://wptavern.com/rams-a-free-wordpress-blogging-theme-with-zero-fluff\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2745:\"<p><a href=\"http://wordpress.org/themes/rams\" target=\"_blank\">Rams</a> is a new release from WordPress theme developer <a href=\"http://www.andersnoren.se/\" target=\"_blank\">Anders Norén</a>. The theme is aptly named for <a href=\"http://en.wikipedia.org/wiki/Dieter_Rams\" target=\"_blank\">Dieter Rams</a>, a German industrial designer who is well known for his innovative, unobtrusive, and timeless product design.</p>
<p>Rams is a minimalist blogging theme that bears Noren&#8217;s trademark <a href=\"http://wptavern.com/anders-noren-on-achieving-simplicity-in-wordpress-theme-design\" target=\"_blank\">simplicity</a>. Norén said that he designed the theme with &#8220;zero fluff&#8221; to put the content in focus.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/rams.png\" rel=\"prettyphoto[29752]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/rams.png?resize=880%2C660\" alt=\"rams\" class=\"aligncenter size-full wp-image-29904\" /></a></p>
<p>Rams includes support for the gallery, video and quote post formats. It is retina-ready and responsive, providing a high quality reading experience on desktop, tablets, and mobile phones.</p>
<p>The theme comes packaged with a beautiful, simplified archive template and built-in editor styles. It also includes support for <a href=\"http://jetpack.me/support/tiled-galleries/\" target=\"_blank\">Jetpack Tiled Galleries</a> and infinite scroll.</p>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/jetpack-tiled-gallery.png\" rel=\"prettyphoto[29752]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/jetpack-tiled-gallery.png?resize=1025%2C617\" alt=\"jetpack-tiled-gallery\" class=\"aligncenter size-full wp-image-29921\" /></a></p>
<p>Check out a <a href=\"http://www.andersnoren.se/themes/rams/\" target=\"_blank\">live demo</a> to see Rams in action and make sure to navigate through the various templates and styles.</p>
<h3>One Theme Option</h3>
<p>Rams includes only one theme option. Yes, you read that correctly. The color control option allows you to set the background color of the sidebar as well as the accent color of the content. Rams includes no other options and no widget areas. That means that it takes no effort whatsoever to get your site looking just like the demo.</p>
<p>Norén skillfully captures the essence of Dieter Rams&#8217; <a href=\"http://www.sfmoma.org/about/press/press_exhibitions/releases/880\" target=\"_blank\">principles of good design</a> in this tribute theme. If you&#8217;re looking for a beautiful, simple blog design with plenty of room for content to breathe, Rams is a solid option. <a href=\"http://wordpress.org/themes/rams\" target=\"_blank\">Download</a> it for free from WordPress.org.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 Sep 2014 04:58:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: Syed Balkhi on The Overnight Success of OptinMonster\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=29899\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"http://wptavern.com/syed-balkhi-on-the-overnight-success-of-optinmonster\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3253:\"<a href=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/MonsterFeaturedImage.png\" rel=\"prettyphoto[29899]\"><img class=\"size-full wp-image-29901\" src=\"http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/MonsterFeaturedImage.png?resize=640%2C345\" alt=\"Monster Featured Image\" /></a>photo credit: <a href=\"https://www.flickr.com/photos/jdhancock/3777558632/\">JD Hancock</a> &#8211; <a href=\"http://creativecommons.org/licenses/by/2.0/\">cc</a>
<p>Created by Syed Balkhi and Thomas Griffin, <a title=\"http://optinmonster.com/\" href=\"http://optinmonster.com/\">OptinMonster</a> is one of the most popular WordPress plugins when it comes to converting visitors into subscribers and customers. Its success is one of the reasons the duo decided to <a title=\"http://www.poststat.us/syed-balkhi-thomas-griffin-awesome-motive/\" href=\"http://www.poststat.us/syed-balkhi-thomas-griffin-awesome-motive/\">join forces</a>. While the team enjoys the success of OptinMonster today, the plugin almost didn&#8217;t make it to the market.</p>
<p>Balkhi <a title=\"http://www.balkhis.com/how-we-turned-a-failed-product-into-a-six-figure-business-in-less-than-a-month/\" href=\"http://www.balkhis.com/how-we-turned-a-failed-product-into-a-six-figure-business-in-less-than-a-month/\">shares a story on his personal site</a> that explains how he and Griffin turned OptinMonster into a 10 month-long, overnight success story.</p>
<blockquote><p>That night was the longest night ever. Once we added List25 along with few other sites, our servers crashed. Since neither of us were sysadmins, we couldn’t get the servers to scale properly.</p>
<p>We consulted with a few sysadmins and long story short the issue was our reporting. The WordPress database couldn’t handle that many rewrites. We were tracking impressions and conversions for every site (imagine the amount of database writes).</p>
<p>We really had two options at this point: completely pivot in 30 days or close down shop.</p></blockquote>
<p>Stories like this are great because it gives us a glimpse into the work involved to create a stellar product. What&#8217;s of particular interest to me is that it almost didn&#8217;t see the light of day. The team persevered, made a pivot, and are now the proud owners of a great plugin.</p>
<p>I&#8217;d love to see more developers share their journeys. Other developers that have shared their stories include:</p>
<ul>
<li><a href=\"http://wptavern.com/chris-wiegman-on-why-he-sold-better-wp-security-to-ithemes\" target=\"_blank\">Chris Wiegman on Why He Sold Better WP Security to iThemes</a></li>
<li><a href=\"http://wptavern.com/jason-schuller-shares-his-experience-running-a-wordpress-theme-business\" target=\"_blank\">Jason Schuller Shares His Experience Running a WordPress Theme Business</a></li>
<li><a title=\"https://bruteprotect.com/bruteprotect-joins-automattic/\" href=\"https://bruteprotect.com/bruteprotect-joins-automattic/\">BruteProtect Joins Automattic</a></li>
</ul>
<p>I almost think I&#8217;m in the wrong business when I hear about WordPress companies or specific products making millions of dollars. However, stories like the ones above are reminders that there is a lot of work that goes on behind the scenes to create a successful product.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Sep 2014 23:04:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: Poll: Who Uses Reader In The WordPress Mobile Apps?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=29874\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"http://wptavern.com/poll-who-uses-reader-in-the-wordpress-mobile-apps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2434:\"<p>WordPress for iOS 4.3 is <a title=\"http://apps.wordpress.org/2014/09/04/4-3-release/\" href=\"http://apps.wordpress.org/2014/09/04/4-3-release/\">now available</a> for download from the App Store. The new release contains updates to stats and reader. You can now see more details in the stats chart for Visitors and Views. Just tap any of the views available such as Days, Weeks, or Months.</p>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/WordPressForiOS4point3FeaturedImage.png\" rel=\"prettyphoto[29874]\"><img class=\"aligncenter size-full wp-image-29876\" src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/WordPressForiOS4point3FeaturedImage.png?resize=735%2C321\" alt=\"WordPress For iOS 4 Poin 3 Featured Image\" /></a></p>
<a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/FollowAnyASiteInReader.png\" rel=\"prettyphoto[29874]\"><img class=\"wp-image-29882 size-medium\" src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/FollowAnyASiteInReader.png?resize=300%2C111\" alt=\"Follow Any Site In Reader\" /></a>Follow Any Site In Reader
<p>In previous versions of the app, reader was limited to WordPress.com and self hosted sites using Jetpack. In 4.3, you can add any site to the reader by URL or tag essentially turning it into an RSS Feed Reader.</p>
<p>The app contains several improvements under the hood to prepare for the release of iOS 8. Among some of the features slated for the next version include an iOS 8 <em>Today</em> extension to view stats, a major interface update for notifications, and a limited roll out of a new WYSIWYG post editor.</p>
<h2>Who Uses The Reader Part Of The Mobile Apps?</h2>
<p>Being able to add any site to the reader is a nice enhancement but it&#8217;s not enough to convince me to use it. I use <a title=\"http://feedly.com/\" href=\"http://feedly.com/\">Feedly</a> as my feed reader both on the desktop and my phone. The interface of reader makes it difficult to quickly skim the headlines of several different websites and I&#8217;d rather not manage so many sites on my phone. I&#8217;ve also found it to not be the ideal experience to consume content.</p>
<p>I wonder how many people use this portion of the app. Help me figure it out by participating in the poll. If you vote yes, let me know in the comments how you use it.</p>
Note: There is a poll embedded within this post, please visit the site to participate in this post\'s poll.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Sep 2014 21:56:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Matt: 4.0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=44082\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"http://ma.tt/2014/09/4-0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:534:\"<p>WordPress 4.0, code-named Benny, <a href=\"http://wordpress.org/news/2014/09/benny/\">is now available</a>. The response so far has been great, over 200k downloads in just a few hours. Today we celebrate, <a href=\"http://wordpress.org/download/counter/\">watch the counter</a>, and tomorrow go back to work on 4.1. <img src=\"http://i1.wp.com/s.ma.tt/blog/wp-includes/images/smilies/icon_smile.gif?w=604\" alt=\":)\" class=\"wp-smiley\" /> For those following along at home, the 3.x series of WordPress was downloaded 300 million times.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Sep 2014 21:00:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WPTavern: Pressgram to Shut Down, Development Discontinued\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=29842\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://wptavern.com/pressgram-to-shut-down-development-discontinued\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4734:\"<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/03/pressgram-feature.jpg\" rel=\"prettyphoto[29842]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/03/pressgram-feature.jpg?resize=800%2C373\" alt=\"pressgram-feature\" class=\"aligncenter size-full wp-image-19956\" /></a></p>
<p><a href=\"http://pressgr.am/\" target=\"_blank\">Pressgram</a> founder John Saddington <a href=\"http://john.do/bye-pressgram/\" target=\"_blank\">announced</a> today that he will be shutting down the project and pulling the app from the Apple Store on September 11. The app started as a <a href=\"http://wptavern.com/pressgram-launches-wordpress-powered-photo-sharing-app\" target=\"_blank\">WordPress-powered photo sharing app</a> and evolved to support all kinds of publishing platforms. Last March, Saddington <a href=\"http://wptavern.com/pressgram-2-0-removes-social-layer-to-focus-on-publishing\" target=\"_blank\">dropped the social layer</a> in favor of focusing his efforts on the publishing features.</p>
<p>Despite running a successful <a href=\"https://www.kickstarter.com/projects/tentblogger/pressgram-an-image-sharing-app-built-for-an-indepe\" target=\"_blank\">$50K+ Kickstarter campaign</a>, Saddington was not able to continue development on the project.</p>
<blockquote><p>Today marks the 2-year (official) anniversary of Pressgram and it is with a very heavy heart that I am announcing that active development on Pressgram is being discontinued.</p></blockquote>
<p>He does not specify the reasons for shutting down the app in his departure post, which is more of a thank you to investors and a farewell to users. However, his responses to users on Twitter indicate that he could not continue to uphold the financial burden of the Amazon AWS costs of running the service, which centralized publishing requests to various social outlets.</p>
<blockquote class=\"twitter-tweet\" width=\"550\"><p><a href=\"https://twitter.com/Tarendai\">@Tarendai</a> <a href=\"https://twitter.com/Pressgram\">@Pressgram</a> // custom built API to handle a ton of requests from the users, especially to publish to multiple techs and platforms.</p>
<p>&mdash; John Saddington (@saddington) <a href=\"https://twitter.com/saddington/status/507596625582120960\">September 4, 2014</a></p></blockquote>
<p></p>
<p>In response to users who inquired whether or not they will be able to continue using the app, Saddington <a href=\"https://twitter.com/saddington/status/507523755485052928\" target=\"_blank\">replied</a>, &#8220;The service will turn off officially at the end of the month, unfortunately.&#8221;</p>
<p>When Pressgram was in the crowdfunding stage, WordPress co-founder Matt Mullenweg had pledged $10K dollars to help get it off the ground but eventually withdrew his pledge when he learned that the project would not be open source. The last time we spoke with Saddington, he was open to open sourcing the app but has thus far continued with it under a proprietary license. Now that development is being discontinued, users want to know about the possibility of open sourcing the code so that it doesn&#8217;t disappear. He confirmed that this is still a possibility.</p>
<blockquote class=\"twitter-tweet\" width=\"550\"><p><a href=\"https://twitter.com/ramiabraham\">@ramiabraham</a> <a href=\"https://twitter.com/Pressgram\">@Pressgram</a> always a possibility.</p>
<p>&mdash; John Saddington (@saddington) <a href=\"https://twitter.com/saddington/status/507587286129598464\">September 4, 2014</a></p></blockquote>
<p></p>
<p>At a later date, Saddington <a href=\"https://twitter.com/saddington/status/507479571688476673\" target=\"_blank\">plans to share more thoughts</a> about why the project didn&#8217;t end up working out. The information will undoubtedly be of interest to his many Kickstarter backers, some of whom pledged hundreds of dollars to see this app become a reality.</p>
<p>From the beginning, Pressgram had mass appeal, given that it used WordPress to power a creative application with the potential to become a viable alternative to some of the larger players, such as Instagram. Many in the WordPress community were hoping that that app would be open source, since it was originally based on open source software and could potentially help move the WordPress app space forward.</p>
<p>If Pressgram were open source, it&#8217;s possible that someone could use the code as a starting place to build an app that doesn&#8217;t require a centralized service. Where could Saddington have taken Pressgram if he had a team of enthusiastic open source contributors surrounding the project and improving upon it at a faster rate? Would you like to see the app open sourced or do you think it should be simply retired? Let us know in the comments.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Sep 2014 20:42:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: WPWeekly Episode 161 – The CTO Of CrowdFavorite, Chris Lema\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"http://wptavern.com?p=29854&preview_id=29854\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"http://wptavern.com/wpweekly-episode-161-the-cto-of-crowdfavorite-chris-lema\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3852:\"<p><a title=\"http://marcuscouch.com/\" href=\"http://marcuscouch.com/\">Marcus Couch</a> and I are joined by <a title=\"http://crowdfavorite.com\" href=\"http://crowdfavorite.com\">CrowdFavorite</a> CTO, <a title=\"http://chrislema.com/\" href=\"http://chrislema.com/\">Chris Lema</a>. We talk about his new position and what the <a title=\"http://crowdfavorite.com/blog/2014/08/ithemes-crowd-favorite-partner-in-new-product-development/\" href=\"http://crowdfavorite.com/blog/2014/08/ithemes-crowd-favorite-partner-in-new-product-development/\">joint-venture partnership</a> means for both CrowdFavorite and iThemes. Lema explains what the word <em>enterprise</em> means for WordPress products and near the end of the show, gives us his prediction on what will happen in the service and product sectors of the WordPress ecosystem.</p>
<h2>Stories Discussed:</h2>
<p><a title=\"http://wptavern.com/critical-security-vulnerability-found-in-wordpress-slider-revolution-plugin-immediate-update-advised\" href=\"http://wptavern.com/critical-security-vulnerability-found-in-wordpress-slider-revolution-plugin-immediate-update-advised\">Critical Security Vulnerability Found in WordPress Slider Revolution Plugin, Immediate Update Advised</a><br />
<a title=\"http://wptavern.com/prowordpress-subreddit-passes-1000-subscribers\" href=\"http://wptavern.com/prowordpress-subreddit-passes-1000-subscribers\">ProWordPress Subreddit Passes 1,000 Subscribers </a><br />
<a title=\"http://wptavern.com/why-you-might-consider-adding-development-hours-to-your-changelog\" href=\"http://wptavern.com/why-you-might-consider-adding-development-hours-to-your-changelog\">Why You Might Consider Adding Development Hours to Your Changelog</a><br />
<a title=\"http://wptavern.com/the-hidden-savings-of-a-wordcamp-ticket\" href=\"http://wptavern.com/the-hidden-savings-of-a-wordcamp-ticket\">The Hidden Savings Of a WordCamp Ticket</a></p>
<h2>Plugins Picked By Marcus:</h2>
<p><a title=\"http://wordpress.org/plugins/wp-scroll-depth/\" href=\"http://wordpress.org/plugins/wp-scroll-depth/\">WP Scroll Depth</a> is a small Google Analytics plugin that allows you to measure how far down the page your users are scrolling. It monitors the 25%, 50%, 75%, and 100% scroll points, sending a Google Analytics Event at each one. You can also track when specific elements on the page are scrolled into view. On a blog, for example, you could send a Scroll Depth event whenever the user reaches the end of a post.</p>
<p><a title=\"http://wordpress.org/plugins/embed-custom-field/\" href=\"http://wordpress.org/plugins/embed-custom-field/\">Embed Custom Field</a> adds a shortcode for including a custom field on a page or post. Create a custom field on your post/page, then use the following shortcode to include it on your site: [embed_custom_field \"field-name-here\"]</p>
<p><a title=\"http://wordpress.org/plugins/wp-taxi-me/\" href=\"http://wordpress.org/plugins/wp-taxi-me/\">WP Taxi Me</a> adds the ability to order a taxi directly from your mobile site using Uber. You can encourage users to register for Uber using an optional setting as well. The plugin hides itself if the user isn&#8217;t on mobile, but users can still register for Uber.</p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, September 10th 9:30 P.M. Eastern</p>
<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\" target=\"_blank\">Click here to subscribe</a></p>
<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href=\"http://www.wptavern.com/feed/podcast\" target=\"_blank\">Click here to subscribe</a></p>
<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\" target=\"_blank\">Click here to subscribe</a></p>
<p><strong>Listen To Episode #161:</strong><br />
</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Sep 2014 19:38:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WPTavern: WordPress 4.0 Benny Now Available for Download\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wptavern.com/?p=29690\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"http://wptavern.com/wordpress-4-0-benny-now-available-for-download\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6916:\"<p>WordPress 4.0 &#8220;Benny&#8221; was released today, named for American jazz and swing musician <a href=\"http://en.wikipedia.org/wiki/Benny_Goodman\" target=\"_blank\">Benny Goodman</a>, also known as the &#8220;King of Swing.&#8221;</p>
<p>Development for 4.0 <a href=\"http://wptavern.com/wordpress-4-0-kicks-off-development-today-helen-hou-sandi-to-lead-release\" target=\"_blank\">kicked off at the end of April</a>, led by <a href=\"http://profiles.wordpress.org/helen\" target=\"_blank\">Helen Hou-Sandí</a>. This release includes hundreds of refinements and a few brand new features, culminating in a more polished media and editing experience. You&#8217;ll also find some exciting new tools for developers. Here&#8217;s a quick overview of what&#8217;s new.</p>
<h2>New Media Grid View</h2>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/media-library.png\" rel=\"prettyphoto[29690]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/media-library.png?resize=1025%2C409\" alt=\"media-library\" class=\"aligncenter size-full wp-image-29695\" /></a></p>
<p>The WordPress media library has a beautiful new default grid view. When you click on an item, the attachment details will launch a preview that allows you to easily edit and navigate items in your library. Media is now easier to manage with the &#8220;bulk select&#8221; option which enables you to delete multiple items at once.</p>
<h2>Improved Writing Experience</h2>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/sticky-editing-tools.png\" rel=\"prettyphoto[29690]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/sticky-editing-tools.png?resize=1025%2C572\" alt=\"sticky-editing-tools\" class=\"aligncenter size-full wp-image-29706\" /></a></p>
<p>Composing in WordPress has never been better. The visual editor now expands to fit your content, instead of the awkward scrollbar you used to see within the content area. The editing experience is smoother with a fixed toolbar as you scroll, which means your tools will follow you as your content expands.</p>
<h2>oEmbed Previews</h2>
<div class=\"wp-video\"><!--[if lt IE 9]><script>document.createElement(\'video\');</script><![endif]-->
<a href=\"http://wptavern.com/wp-content/uploads/2014/09/oembed-previews.mp4\">http://wptavern.com/wp-content/uploads/2014/09/oembed-previews.mp4</a></div><div class=\"media-shortcode-extend\"><div class=\"media-info video-info\"><ul class=\"media-meta\"><li><span class=\"prep\">Run Time</span> <span class=\"data\">0:17</span></li><li><span class=\"prep\">Dimensions</span> <span class=\"data\">1,312 &#215; 800</span></li><li><span class=\"prep\">File Name</span> <span class=\"data\"><a href=\"http://wptavern.com/wp-content/uploads/2014/09/oembed-previews.mp4\">oembed-previews.mp4</a></span></li><li><span class=\"prep\">File Size</span> <span class=\"data\">2.41 MB</span></li><li><span class=\"prep\">File Type</span> <span class=\"data\">MP4</span></li><li><span class=\"prep\">Mime Type</span> <span class=\"data\">video/quicktime</span></li></ul></div><button class=\"media-info-toggle\">Video Info</button></div>
<p>WordPress 4.0 adds oEmbed support for TED talks, Mixcloud, CollegeHumor.com, Issuu, Polldaddy’s short URL format, YouTube playlist URLs. The visual editor now displays previews of media added via on oEmbed URL. The video above is included on the 4.0 about page, demonstrating oEmbed previews in action.</p>
<h2>Refreshed Plugin Install and Search Experience</h2>
<p><a href=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/add-plugins.png\" rel=\"prettyphoto[29690]\"><img src=\"http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/add-plugins.png?resize=1025%2C447\" alt=\"add-plugins\" class=\"aligncenter size-full wp-image-29712\" /></a></p>
<p>WordPress 4.0 makes it much easier to search for plugins in the admin. The plugin installer now displays plugin as cards in a grid view. Plugin authors can add <a href=\"http://wptavern.com/wordpress-4-0-adds-custom-icons-to-the-plugin-installer\" target=\"_blank\">custom icons</a> that will appear in the installer. Clicking on a listing launches the plugin details modal with a description, ratings, reviews, compatibility information and more.</p>
<h2>Improved Language Support</h2>
<p><a href=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/wordpress-languages.jpg\" rel=\"prettyphoto[29690]\"><img src=\"http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/wordpress-languages.jpg?resize=809%2C381\" alt=\"wordpress-languages\" class=\"aligncenter size-full wp-image-25834\" /></a></p>
<p>This release adds major <a href=\"http://wptavern.com/major-internationalization-improvements-planned-for-wordpress-4-0\" target=\"_blank\">internationalization improvements</a> to the software. <a href=\"http://wptavern.com/wordpress-4-0-to-add-language-selection-to-installation\">Language selection</a> is now available at installation and language management has been streamlined in the dashboard.</p>
<h3>What&#8217;s new under the hood?</h3>
<p>WordPress 4.0 also includes an exciting array of new developer goodies. Here are a few of the highlights:</p>
<h5>Customizer API</h5>
<p>This release adds a new <a href=\"https://core.trac.wordpress.org/ticket/27406\" target=\"_blank\">Panels API</a> that enables developers to group customizer controls into sections. It also includes support for contextual controls that will be visible or hidden based on the page the user is viewing. The improved customizer offers a wider array of controls and parameters that allow developers to extend it for more varied uses beyond themes.</p>
<h5>Query Ordering</h5>
<p>WordPress 4.0 includes <a href=\"http://make.wordpress.org/core/2014/08/29/a-more-powerful-order-by-in-wordpress-4-0/\" target=\"_blank\">a more powerful ORDER BY</a> argument for developers working with <a href=\"http://codex.wordpress.org/Class_Reference/WP_Query\" target=\"_blank\">WP_Query</a>. Developers can now pass an array to WP_Query as the value for <a href=\"http://codex.wordpress.org/Class_Reference/WP_Query#Order_.26_Orderby_Parameters\" target=\"_blank\">orderby</a> for more flexible and precise querying.</p>
<h5>External Libraries</h5>
<p>This major release includes updates for libraries used in WordPress, including TinyMCE 4.1.3, jQuery 1.11.1, MediaElement 2.15.</p>
<p>You can find the full list of all the changes on the <a href=\"http://codex.wordpress.org/Version_4.0\" target=\"_blank\">4.0 release page</a>, which was created by volunteers from the docs team.</p>
<p>WordPress 4.0 is the result of the tireless efforts of 275 contributors. If code is poetry, then this release is a skillfully-written sonnet that resolves problem spots and introduces new tools that users will love. Once you update, you&#8217;ll wonder how you ever lived without these improvements. Visit your WordPress site and navigate to Dashboard > Update to get 4.0 and take advantage of all the shiny new features.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Sep 2014 17:13:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:10:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 16 Sep 2014 04:59:28 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:14:\"content-length\";s:6:\"213819\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Tue, 16 Sep 2014 04:45:13 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";s:13:\"accept-ranges\";s:5:\"bytes\";}s:5:\"build\";s:14:\"20130911040210\";}","no");
INSERT INTO wp40_options VALUES("448","_transient_timeout_feed_mod_867bd5c64f85878d03a060509cd2f92c","1410886772","no");
INSERT INTO wp40_options VALUES("449","_transient_feed_mod_867bd5c64f85878d03a060509cd2f92c","1410843572","no");
INSERT INTO wp40_options VALUES("450","_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109","1410886772","no");
INSERT INTO wp40_options VALUES("451","_transient_feed_b9388c83948825c1edaef0d856b7b109","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"
	
\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:72:\"
		
		
		
		
		
		
				

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordPress Plugins » View: Most Popular\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"http://wordpress.org/plugins/browse/popular/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordPress Plugins » View: Most Popular\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 16 Sep 2014 04:33:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"http://bbpress.org/?v=1.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:15:{i:0;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"WordPress SEO by Yoast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"http://wordpress.org/plugins/wordpress-seo/#post-8321\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Jan 2009 20:34:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"8321@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Joost de Valk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Contact Form 7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"http://wordpress.org/plugins/contact-form-7/#post-2141\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2007 12:45:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"2141@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Just another contact form plugin. Simple but flexible.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Akismet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"http://wordpress.org/plugins/akismet/#post-15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 22:11:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"15@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Google XML Sitemaps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://wordpress.org/plugins/google-sitemap-generator/#post-132\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 22:31:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"132@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"This plugin will generate a special XML sitemap which will help search engines to better index your blog.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"arnee\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Wordfence Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"http://wordpress.org/plugins/wordfence/#post-29832\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 04 Sep 2011 03:13:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"29832@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:137:\"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Wordfence\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"All in One SEO Pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://wordpress.org/plugins/all-in-one-seo-pack/#post-753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 30 Mar 2007 20:08:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"753@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"uberdose\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"WooCommerce - excelling eCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"http://wordpress.org/plugins/woocommerce/#post-29860\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Sep 2011 08:13:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"29860@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"WooThemes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"TinyMCE Advanced\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://wordpress.org/plugins/tinymce-advanced/#post-2082\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2007 15:00:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"2082@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew Ozz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Jetpack by WordPress.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"http://wordpress.org/plugins/jetpack/#post-23862\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Jan 2011 02:21:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"23862@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"Supercharge your WordPress site with powerful features previously only available to WordPress.com users.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tim Moore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"MailPoet Newsletters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"http://wordpress.org/plugins/wysija-newsletters/#post-32629\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 02 Dec 2011 17:09:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"32629@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"Send newsletters, post notifications or autoresponders from WordPress easily, and beautifully.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"MailPoet Staff\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"iThemes Security (formerly Better WP Security)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"http://wordpress.org/plugins/better-wp-security/#post-21738\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Oct 2010 22:06:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"21738@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"The easiest, most effective way to secure WordPress in seconds.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Chris Wiegman\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Google Analytics by Yoast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Sep 2007 12:15:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"2316@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:124:\"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Joost de Valk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"WP-PageNavi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"http://wordpress.org/plugins/wp-pagenavi/#post-363\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 23:17:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"363@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Adds a more advanced paging navigation interface.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Lester Chan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"WordPress Importer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"http://wordpress.org/plugins/wordpress-importer/#post-18101\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 May 2010 17:42:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"18101@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Brian Colinger\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"WP-Optimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://wordpress.org/plugins/wp-optimize/#post-8691\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Jan 2009 04:28:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"8691@http://wordpress.org/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:132:\"Simple but effective plugin allows you to extensively clean up your WordPress database and optimize it without doing manual queries.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"ruhanirabin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:45:\"http://wordpress.org/plugins/rss/view/popular\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:11:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 16 Sep 2014 04:59:34 GMT\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:7:\"expires\";s:29:\"Tue, 16 Sep 2014 05:08:42 GMT\";s:13:\"cache-control\";s:0:\"\";s:6:\"pragma\";s:0:\"\";s:13:\"last-modified\";s:31:\"Tue, 16 Sep 2014 04:33:42 +0000\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";}s:5:\"build\";s:14:\"20130911040210\";}","no");
INSERT INTO wp40_options VALUES("452","_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109","1410886772","no");
INSERT INTO wp40_options VALUES("453","_transient_feed_mod_b9388c83948825c1edaef0d856b7b109","1410843572","no");
INSERT INTO wp40_options VALUES("454","_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51","1410886772","no");
INSERT INTO wp40_options VALUES("455","_transient_dash_4077549d03da2e451c8b5f002294ff51","<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://wordpress.org/news/2014/09/benny/\'>WordPress 4.0 “Benny”</a> <span class=\"rss-date\">September 4, 2014</span><div class=\"rssSummary\">Version 4.0 of WordPress, named “Benny” in honor of jazz clarinetist and bandleader Benny Goodman, is available for download or update in your WordPress dashboard. While 4.0 is just another number for us after 3.9 and before 4.1, we feel we’ve put a little extra polish into it. This release brings you a smoother writing and management experience [&hellip;]</div></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://wptavern.com/pho-a-free-minimalist-masonry-wordpress-theme\'>WPTavern: Pho: A Free Minimalist, Masonry WordPress Theme</a></li><li><a class=\'rsswidget\' href=\'http://wptavern.com/free-psd-template-for-creating-a-wordpress-org-plugin-banner\'>WPTavern: Free PSD Template for Creating a WordPress.org Plugin Banner</a></li><li><a class=\'rsswidget\' href=\'http://wptavern.com/new-plugin-adds-conditional-profile-fields-to-buddypress\'>WPTavern: New Plugin Adds Conditional Profile Fields to BuddyPress</a></li></ul></div><div class=\"rss-widget\"><ul><li class=\'dashboard-news-plugin\'><span>Popular Plugin:</span> <a href=\'http://wordpress.org/plugins/jetpack/\' class=\'dashboard-news-plugin-link\'>Jetpack by WordPress.com</a>&nbsp;<span>(<a href=\'plugin-install.php?tab=plugin-information&amp;plugin=jetpack&amp;_wpnonce=ad8c404c09&amp;TB_iframe=true&amp;width=600&amp;height=800\' class=\'thickbox\' title=\'Jetpack by WordPress.com\'>Install</a>)</span></li></ul></div>","no");
INSERT INTO wp40_options VALUES("457","rewrite_rules","a:72:{s:34:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml$\";s:40:\"index.php?xml_sitemap=params=$matches[2]\";s:38:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml\\.gz$\";s:49:\"index.php?xml_sitemap=params=$matches[2];zip=true\";s:35:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.html$\";s:50:\"index.php?xml_sitemap=params=$matches[2];html=true\";s:38:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.html.gz$\";s:59:\"index.php?xml_sitemap=params=$matches[2];html=true;zip=true\";s:56:\"archives/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:44:\"archives/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"archives/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"archives/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:41:\"archives/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:23:\"archives/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"archives/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"archives/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:42:\"archives/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:24:\"archives/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=37&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"archives/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:44:\"archives/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:83:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:78:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:71:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:53:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:70:\"archives/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:65:\"archives/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:58:\"archives/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:40:\"archives/date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:57:\"archives/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:52:\"archives/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:45:\"archives/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:27:\"archives/date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:37:\"archives/[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"archives/[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"archives/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"archives/([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:50:\"archives/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:45:\"archives/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:38:\"archives/([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:45:\"archives/([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:30:\"archives/([0-9]+)(/[0-9]+)?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:26:\"archives/[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"archives/[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"archives/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}","yes");
INSERT INTO wp40_options VALUES("462","_site_transient_timeout_theme_roots","1410851789","yes");
INSERT INTO wp40_options VALUES("463","_site_transient_theme_roots","a:4:{s:7:\"pacific\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}","yes");





CREATE TABLE `wp40_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8;

INSERT INTO wp40_postmeta VALUES("2","4","_wp_attached_file","2014/09/main_image.png");
INSERT INTO wp40_postmeta VALUES("3","4","_wp_attachment_context","custom-header");
INSERT INTO wp40_postmeta VALUES("4","4","_wp_attachment_metadata","a:5:{s:5:\"width\";i:950;s:6:\"height\";i:295;s:4:\"file\";s:22:\"2014/09/main_image.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"main_image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"main_image-300x93.png\";s:5:\"width\";i:300;s:6:\"height\";i:93;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}");
INSERT INTO wp40_postmeta VALUES("5","4","_wp_attachment_is_custom_header","pacific");
INSERT INTO wp40_postmeta VALUES("13","7","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("14","7","_edit_lock","1410250571:1");
INSERT INTO wp40_postmeta VALUES("16","9","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("17","9","_edit_lock","1410250418:1");
INSERT INTO wp40_postmeta VALUES("19","11","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("20","11","_edit_lock","1410250427:1");
INSERT INTO wp40_postmeta VALUES("22","13","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("23","13","_edit_lock","1410172773:1");
INSERT INTO wp40_postmeta VALUES("25","15","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("26","15","_edit_lock","1410172792:1");
INSERT INTO wp40_postmeta VALUES("28","17","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("29","17","_edit_lock","1410172811:1");
INSERT INTO wp40_postmeta VALUES("31","19","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("32","19","_edit_lock","1410250498:1");
INSERT INTO wp40_postmeta VALUES("34","21","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("35","21","_edit_lock","1410250512:1");
INSERT INTO wp40_postmeta VALUES("37","23","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("38","23","_edit_lock","1410172868:1");
INSERT INTO wp40_postmeta VALUES("40","25","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("41","25","_edit_lock","1410172885:1");
INSERT INTO wp40_postmeta VALUES("43","27","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("44","27","_edit_lock","1410250553:1");
INSERT INTO wp40_postmeta VALUES("46","29","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("47","29","_edit_lock","1410250563:1");
INSERT INTO wp40_postmeta VALUES("49","32","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("50","32","_edit_lock","1410257275:1");
INSERT INTO wp40_postmeta VALUES("51","32","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("52","34","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("53","34","_edit_lock","1410162104:1");
INSERT INTO wp40_postmeta VALUES("54","34","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("55","37","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("56","37","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("57","37","_edit_lock","1410161264:1");
INSERT INTO wp40_postmeta VALUES("58","39","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("59","39","_edit_lock","1410161411:1");
INSERT INTO wp40_postmeta VALUES("60","39","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("61","41","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("62","41","_edit_lock","1410161460:1");
INSERT INTO wp40_postmeta VALUES("63","41","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("64","43","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("65","43","_edit_lock","1410255280:1");
INSERT INTO wp40_postmeta VALUES("66","43","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("67","45","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("68","45","_edit_lock","1410255186:1");
INSERT INTO wp40_postmeta VALUES("69","45","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("70","47","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("71","47","_edit_lock","1410172981:1");
INSERT INTO wp40_postmeta VALUES("72","47","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("73","49","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("74","49","_edit_lock","1410172999:1");
INSERT INTO wp40_postmeta VALUES("75","49","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("76","51","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("77","51","_edit_lock","1410173053:1");
INSERT INTO wp40_postmeta VALUES("78","51","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("79","53","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("80","53","_edit_lock","1410255279:1");
INSERT INTO wp40_postmeta VALUES("81","53","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("82","55","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("83","55","_edit_lock","1410255277:1");
INSERT INTO wp40_postmeta VALUES("84","55","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("85","57","_edit_last","1");
INSERT INTO wp40_postmeta VALUES("86","57","_edit_lock","1410255361:1");
INSERT INTO wp40_postmeta VALUES("87","57","_wp_page_template","default");
INSERT INTO wp40_postmeta VALUES("88","59","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("89","59","_menu_item_menu_item_parent","0");
INSERT INTO wp40_postmeta VALUES("90","59","_menu_item_object_id","37");
INSERT INTO wp40_postmeta VALUES("91","59","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("92","59","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("93","59","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("94","59","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("95","59","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("97","60","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("98","60","_menu_item_menu_item_parent","0");
INSERT INTO wp40_postmeta VALUES("99","60","_menu_item_object_id","32");
INSERT INTO wp40_postmeta VALUES("100","60","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("101","60","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("102","60","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("103","60","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("104","60","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("106","61","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("107","61","_menu_item_menu_item_parent","60");
INSERT INTO wp40_postmeta VALUES("108","61","_menu_item_object_id","34");
INSERT INTO wp40_postmeta VALUES("109","61","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("110","61","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("111","61","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("112","61","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("113","61","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("115","62","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("116","62","_menu_item_menu_item_parent","60");
INSERT INTO wp40_postmeta VALUES("117","62","_menu_item_object_id","39");
INSERT INTO wp40_postmeta VALUES("118","62","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("119","62","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("120","62","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("121","62","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("122","62","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("124","63","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("125","63","_menu_item_menu_item_parent","60");
INSERT INTO wp40_postmeta VALUES("126","63","_menu_item_object_id","41");
INSERT INTO wp40_postmeta VALUES("127","63","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("128","63","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("129","63","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("130","63","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("131","63","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("133","64","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("134","64","_menu_item_menu_item_parent","0");
INSERT INTO wp40_postmeta VALUES("135","64","_menu_item_object_id","43");
INSERT INTO wp40_postmeta VALUES("136","64","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("137","64","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("138","64","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("139","64","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("140","64","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("142","65","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("143","65","_menu_item_menu_item_parent","64");
INSERT INTO wp40_postmeta VALUES("144","65","_menu_item_object_id","45");
INSERT INTO wp40_postmeta VALUES("145","65","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("146","65","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("147","65","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("148","65","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("149","65","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("151","66","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("152","66","_menu_item_menu_item_parent","64");
INSERT INTO wp40_postmeta VALUES("153","66","_menu_item_object_id","47");
INSERT INTO wp40_postmeta VALUES("154","66","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("155","66","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("156","66","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("157","66","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("158","66","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("160","67","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("161","67","_menu_item_menu_item_parent","64");
INSERT INTO wp40_postmeta VALUES("162","67","_menu_item_object_id","49");
INSERT INTO wp40_postmeta VALUES("163","67","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("164","67","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("165","67","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("166","67","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("167","67","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("169","68","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("170","68","_menu_item_menu_item_parent","64");
INSERT INTO wp40_postmeta VALUES("171","68","_menu_item_object_id","51");
INSERT INTO wp40_postmeta VALUES("172","68","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("173","68","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("174","68","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("175","68","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("176","68","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("178","69","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("179","69","_menu_item_menu_item_parent","0");
INSERT INTO wp40_postmeta VALUES("180","69","_menu_item_object_id","53");
INSERT INTO wp40_postmeta VALUES("181","69","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("182","69","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("183","69","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("184","69","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("185","69","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("187","70","_menu_item_type","taxonomy");
INSERT INTO wp40_postmeta VALUES("188","70","_menu_item_menu_item_parent","0");
INSERT INTO wp40_postmeta VALUES("189","70","_menu_item_object_id","1");
INSERT INTO wp40_postmeta VALUES("190","70","_menu_item_object","category");
INSERT INTO wp40_postmeta VALUES("191","70","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("192","70","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("193","70","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("194","70","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("196","71","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("197","71","_menu_item_menu_item_parent","0");
INSERT INTO wp40_postmeta VALUES("198","71","_menu_item_object_id","37");
INSERT INTO wp40_postmeta VALUES("199","71","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("200","71","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("201","71","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("202","71","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("203","71","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("205","72","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("206","72","_menu_item_menu_item_parent","0");
INSERT INTO wp40_postmeta VALUES("207","72","_menu_item_object_id","55");
INSERT INTO wp40_postmeta VALUES("208","72","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("209","72","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("210","72","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("211","72","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("212","72","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("214","73","_menu_item_type","post_type");
INSERT INTO wp40_postmeta VALUES("215","73","_menu_item_menu_item_parent","0");
INSERT INTO wp40_postmeta VALUES("216","73","_menu_item_object_id","57");
INSERT INTO wp40_postmeta VALUES("217","73","_menu_item_object","page");
INSERT INTO wp40_postmeta VALUES("218","73","_menu_item_target","");
INSERT INTO wp40_postmeta VALUES("219","73","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO wp40_postmeta VALUES("220","73","_menu_item_xfn","");
INSERT INTO wp40_postmeta VALUES("221","73","_menu_item_url","");
INSERT INTO wp40_postmeta VALUES("223","74","_wp_attached_file","2014/09/recruit.jpg");
INSERT INTO wp40_postmeta VALUES("224","74","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:437;s:4:\"file\";s:19:\"2014/09/recruit.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"recruit-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"recruit-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"recruit-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:17:\"recruit-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:19:\"recruit-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:19:\"recruit-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:19:\"recruit-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:5;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS Kiss Digital\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1146671734;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("225","9","_thumbnail_id","74");
INSERT INTO wp40_postmeta VALUES("226","75","_wp_attached_file","2014/09/honolulu_office.jpg");
INSERT INTO wp40_postmeta VALUES("227","75","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:494;s:4:\"file\";s:27:\"2014/09/honolulu_office.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"honolulu_office-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"honolulu_office-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"honolulu_office-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:25:\"honolulu_office-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:27:\"honolulu_office-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:27:\"honolulu_office-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:27:\"honolulu_office-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:7;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"FinePix A303\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1036996419;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"17.1\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0035714285714286\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("228","11","_thumbnail_id","75");
INSERT INTO wp40_postmeta VALUES("229","76","_wp_attached_file","2014/09/kamehameha_mall.jpg");
INSERT INTO wp40_postmeta VALUES("230","76","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:494;s:4:\"file\";s:27:\"2014/09/kamehameha_mall.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"kamehameha_mall-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"kamehameha_mall-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"kamehameha_mall-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:25:\"kamehameha_mall-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:27:\"kamehameha_mall-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:27:\"kamehameha_mall-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:27:\"kamehameha_mall-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:7;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"FinePix A303\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1036384694;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"5.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0041666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("231","13","_thumbnail_id","76");
INSERT INTO wp40_postmeta VALUES("232","77","_wp_attached_file","2014/09/golden-gate_mall.jpg");
INSERT INTO wp40_postmeta VALUES("233","77","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:494;s:4:\"file\";s:28:\"2014/09/golden-gate_mall.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"golden-gate_mall-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"golden-gate_mall-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"golden-gate_mall-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:26:\"golden-gate_mall-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:28:\"golden-gate_mall-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:28:\"golden-gate_mall-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:28:\"golden-gate_mall-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:4.29999999999999982236431605997495353221893310546875;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"EX-S600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1150437812;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"6.2\";s:3:\"iso\";i:0;s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("234","15","_thumbnail_id","77");
INSERT INTO wp40_postmeta VALUES("235","78","_wp_attached_file","2014/09/orient_mall.jpg");
INSERT INTO wp40_postmeta VALUES("236","78","_wp_attachment_metadata","a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:23:\"2014/09/orient_mall.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"orient_mall-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"orient_mall-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"orient_mall-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:21:\"orient_mall-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:23:\"orient_mall-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:23:\"orient_mall-640x113.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:23:\"orient_mall-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:2.600000000000000088817841970012523233890533447265625;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon PowerShot A520\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1141468984;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:6:\"5.8125\";s:3:\"iso\";i:0;s:13:\"shutter_speed\";s:5:\"0.125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("237","17","_thumbnail_id","78");
INSERT INTO wp40_postmeta VALUES("238","79","_wp_attached_file","2014/09/bangkok_garden.jpg");
INSERT INTO wp40_postmeta VALUES("239","79","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:437;s:4:\"file\";s:26:\"2014/09/bangkok_garden.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"bangkok_garden-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"bangkok_garden-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"bangkok_garden-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:24:\"bangkok_garden-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:26:\"bangkok_garden-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:26:\"bangkok_garden-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:26:\"bangkok_garden-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:11;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS Kiss Digital\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1146318295;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"28\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("240","19","_thumbnail_id","79");
INSERT INTO wp40_postmeta VALUES("241","80","_wp_attached_file","2014/09/shiodome_restaurants.jpg");
INSERT INTO wp40_postmeta VALUES("242","80","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:494;s:4:\"file\";s:32:\"2014/09/shiodome_restaurants.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"shiodome_restaurants-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"shiodome_restaurants-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"shiodome_restaurants-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:30:\"shiodome_restaurants-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:32:\"shiodome_restaurants-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:32:\"shiodome_restaurants-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:32:\"shiodome_restaurants-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:2.79999999999999982236431605997495353221893310546875;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"FinePix A303\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1082228617;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"5.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.05\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("243","21","_thumbnail_id","80");
INSERT INTO wp40_postmeta VALUES("244","81","_wp_attached_file","2014/09/jogja_exhibition.jpg");
INSERT INTO wp40_postmeta VALUES("245","81","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:494;s:4:\"file\";s:28:\"2014/09/jogja_exhibition.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"jogja_exhibition-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"jogja_exhibition-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"jogja_exhibition-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:26:\"jogja_exhibition-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:28:\"jogja_exhibition-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:28:\"jogja_exhibition-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:28:\"jogja_exhibition-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:2.79999999999999982236431605997495353221893310546875;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"FinePix A303\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1067093360;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"5.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:17:\"0.022222222222222\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("246","23","_thumbnail_id","81");
INSERT INTO wp40_postmeta VALUES("247","82","_wp_attached_file","2014/09/macaroni.jpg");
INSERT INTO wp40_postmeta VALUES("248","82","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:494;s:4:\"file\";s:20:\"2014/09/macaroni.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"macaroni-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"macaroni-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"macaroni-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:18:\"macaroni-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:20:\"macaroni-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:20:\"macaroni-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:20:\"macaroni-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:2.79999999999999982236431605997495353221893310546875;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-FX8\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1119015529;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"5.8\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("249","25","_thumbnail_id","82");
INSERT INTO wp40_postmeta VALUES("250","83","_wp_attached_file","2014/09/fireworks.png");
INSERT INTO wp40_postmeta VALUES("251","83","_wp_attachment_metadata","a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:21:\"2014/09/fireworks.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"fireworks-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"fireworks-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"fireworks-90x90.png\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:19:\"fireworks-61x61.png\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:21:\"fireworks-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:21:\"fireworks-640x113.png\";s:5:\"width\";i:640;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:21:\"fireworks-302x123.png\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}");
INSERT INTO wp40_postmeta VALUES("252","27","_thumbnail_id","83");
INSERT INTO wp40_postmeta VALUES("253","84","_wp_attached_file","2014/09/jogjakarta.jpg");
INSERT INTO wp40_postmeta VALUES("254","84","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:494;s:4:\"file\";s:22:\"2014/09/jogjakarta.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"jogjakarta-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"jogjakarta-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"jogjakarta-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:20:\"jogjakarta-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:22:\"jogjakarta-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:22:\"jogjakarta-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:22:\"jogjakarta-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:2.79999999999999982236431605997495353221893310546875;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Finecam SL400R\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1117976395;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"5.8\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0055555555555556\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("255","29","_thumbnail_id","84");
INSERT INTO wp40_postmeta VALUES("256","85","_wp_attached_file","2014/09/changi_airport.jpg");
INSERT INTO wp40_postmeta VALUES("257","85","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:494;s:4:\"file\";s:26:\"2014/09/changi_airport.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"changi_airport-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"changi_airport-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"changi_airport-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:24:\"changi_airport-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:26:\"changi_airport-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:26:\"changi_airport-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:26:\"changi_airport-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:2.600000000000000088817841970012523233890533447265625;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon PowerShot A520\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1131704703;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:6:\"5.8125\";s:3:\"iso\";i:0;s:13:\"shutter_speed\";s:7:\"0.00125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("258","7","_thumbnail_id","85");
INSERT INTO wp40_postmeta VALUES("259","86","_wp_attached_file","2014/09/shiodome_mall.jpg");
INSERT INTO wp40_postmeta VALUES("260","86","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:268;s:4:\"file\";s:25:\"2014/09/shiodome_mall.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"shiodome_mall-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"shiodome_mall-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"shiodome_mall-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:23:\"shiodome_mall-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:25:\"shiodome_mall-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:25:\"shiodome_mall-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:25:\"shiodome_mall-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("261","45","_thumbnail_id","86");
INSERT INTO wp40_postmeta VALUES("262","87","_wp_attached_file","2014/09/durian_mall.jpg");
INSERT INTO wp40_postmeta VALUES("263","87","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:268;s:4:\"file\";s:23:\"2014/09/durian_mall.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"durian_mall-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"durian_mall-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"durian_mall-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:21:\"durian_mall-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:23:\"durian_mall-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:23:\"durian_mall-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:23:\"durian_mall-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("264","47","_thumbnail_id","87");
INSERT INTO wp40_postmeta VALUES("265","88","_wp_attached_file","2014/09/chao-phraya_mall.jpg");
INSERT INTO wp40_postmeta VALUES("266","88","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:268;s:4:\"file\";s:28:\"2014/09/chao-phraya_mall.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"chao-phraya_mall-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"chao-phraya_mall-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"chao-phraya_mall-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:26:\"chao-phraya_mall-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:28:\"chao-phraya_mall-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:28:\"chao-phraya_mall-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:28:\"chao-phraya_mall-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("267","49","_thumbnail_id","88");
INSERT INTO wp40_postmeta VALUES("268","89","_wp_attached_file","2014/09/thamrin_mall.jpg");
INSERT INTO wp40_postmeta VALUES("269","89","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:269;s:4:\"file\";s:24:\"2014/09/thamrin_mall.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"thamrin_mall-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"thamrin_mall-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"thamrin_mall-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:22:\"thamrin_mall-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:24:\"thamrin_mall-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:24:\"thamrin_mall-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:24:\"thamrin_mall-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;}}");
INSERT INTO wp40_postmeta VALUES("270","51","_thumbnail_id","89");
INSERT INTO wp40_postmeta VALUES("271","91","_form","<p>Your Name (required)<br />
    [text* your-name] </p>

<p>Your Email (required)<br />
    [email* your-email] </p>

<p>Subject<br />
    [text your-subject] </p>

<p>Your Message<br />
    [textarea your-message] </p>

<p>[submit \"Send\"]</p>");
INSERT INTO wp40_postmeta VALUES("272","91","_mail","a:8:{s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:200:\"From: [your-name] <[your-email]>
Subject: [your-subject]

Message Body:
[your-message]

--
This e-mail was sent from a contact form on Pacific Mall Development Co.,Ltd. (http://localhost/DocumentRoot)\";s:9:\"recipient\";s:26:\"masdi@prima-softindo.co.id\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}");
INSERT INTO wp40_postmeta VALUES("273","91","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:142:\"Message Body:
[your-message]

--
This e-mail was sent from a contact form on Pacific Mall Development Co.,Ltd. (http://localhost/DocumentRoot)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}");
INSERT INTO wp40_postmeta VALUES("274","91","_messages","a:6:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";}");
INSERT INTO wp40_postmeta VALUES("275","91","_additional_settings","");
INSERT INTO wp40_postmeta VALUES("276","91","_locale","en_US");
INSERT INTO wp40_postmeta VALUES("277","92","_form","<table> 
<tr><th>Nama Perusahaan<span class=\"require\">
* required</span></th>
<td>[text* company 60/ class:length-l class:text]</td></tr>
<tr><th>Email Anda<span class=\"require\">
* required</span></th>
<td>[text* email 60/ class:length-l class:text]</td></tr>
<tr><th>Nama Anda<span class=\"require\">
* required</span></th>
<td>[text* your_name 40/ class:length-m class:text]</td></tr>
<tr><th>Nomor Telepon</th>
<td>[tel tel 40/ class:length-m class:text]</td></tr>
<tr><th>Isi Pesan<span class=\"require\">
* required</span></th>
<td>[textarea* content 60*7 class:length-l class:text]</td></tr>
</table>
[submit class:submit \"Kirim Pesan\"]");
INSERT INTO wp40_postmeta VALUES("278","92","_mail","a:8:{s:7:\"subject\";s:30:\"Pacific Malls Development Site\";s:6:\"sender\";s:21:\"[your_name] <[email]>\";s:4:\"body\";s:301:\"Saya [your_name], memiliki pertanyaan terhadap perusahaan Anda. Terima kasih atas perhatian Anda.

Profil Lengkap:

Nama Perusahaan  :[company]
Nama Lengkap        :[your_name]
Email                         :[email]
Telepon                    :[tel]
Isi Pesan                   :[content]
Terima kasih\";s:9:\"recipient\";s:26:\"masdi@prima-softindo.co.id\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}");
INSERT INTO wp40_postmeta VALUES("279","92","_mail_2","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:41:\"Terima Kasih Banyak Atas Pertanyaan Anda.\";s:6:\"sender\";s:49:\"Pacific Malls Development <[pacific@example.com]>\";s:4:\"body\";s:802:\"Kepada [your_name]  - [company] 
Terima kasih banyak atas pertanyaan Anda ke Pacific Mall Development Co., Ltd. 
Berkenaan dengan isi pertanyaan Anda, kami akan menghubungi Anda dari orang yang bertanggung jawab dalam satu hari 
kerja. 
Mohon maaf jika pertanyaan yang Anda ajukan mendapatkan respon yang lambat.
Pacific Malls Development akan terus berusaha dengan itikad baik dengan tujuan pembangunan dan pengoperasian 
fasilitas komersial yang dapat membantu Anda dan semua orang.
Terima kasih banyak. 
----------------------------------------------------------------------------- 
Pacific Mall Development Co., Ltd. 
[Kontak] panggilan khusus 03-0000-0000 
* Jam 08:45 s/d 18:00 (Senin sampai Jumat kecuali hari libur) 
-----------------------------------------------------------------------------\";s:9:\"recipient\";s:7:\"[email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}");
INSERT INTO wp40_postmeta VALUES("280","92","_messages","a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}");
INSERT INTO wp40_postmeta VALUES("281","92","_additional_settings","");
INSERT INTO wp40_postmeta VALUES("282","92","_locale","en_US");
INSERT INTO wp40_postmeta VALUES("283","57","_keywords","");
INSERT INTO wp40_postmeta VALUES("284","57","_description","");
INSERT INTO wp40_postmeta VALUES("297","45","_keywords","");
INSERT INTO wp40_postmeta VALUES("298","45","_description","");
INSERT INTO wp40_postmeta VALUES("299","96","_wp_attached_file","2014/09/sitemap.jpg");
INSERT INTO wp40_postmeta VALUES("300","96","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:366;s:4:\"file\";s:19:\"2014/09/sitemap.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sitemap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sitemap-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"sitemap-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:17:\"sitemap-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:19:\"sitemap-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:19:\"sitemap-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:19:\"sitemap-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}");
INSERT INTO wp40_postmeta VALUES("301","57","_thumbnail_id","96");
INSERT INTO wp40_postmeta VALUES("302","97","_wp_attached_file","2014/09/about.jpg");
INSERT INTO wp40_postmeta VALUES("303","97","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:491;s:4:\"file\";s:17:\"2014/09/about.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-300x223.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"about-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:15:\"about-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:17:\"about-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:17:\"about-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:17:\"about-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}");
INSERT INTO wp40_postmeta VALUES("304","32","_thumbnail_id","97");
INSERT INTO wp40_postmeta VALUES("305","98","_wp_attached_file","2014/09/mall.jpg");
INSERT INTO wp40_postmeta VALUES("306","98","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:349;s:4:\"file\";s:16:\"2014/09/mall.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"mall-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"mall-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"mall-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:14:\"mall-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:16:\"mall-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:16:\"mall-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:16:\"mall-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}");
INSERT INTO wp40_postmeta VALUES("307","43","_thumbnail_id","98");
INSERT INTO wp40_postmeta VALUES("308","99","_wp_attached_file","2014/09/inquiry.jpg");
INSERT INTO wp40_postmeta VALUES("309","99","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:354;s:4:\"file\";s:19:\"2014/09/inquiry.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"inquiry-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"inquiry-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"inquiry-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:17:\"inquiry-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:19:\"inquiry-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:19:\"inquiry-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:19:\"inquiry-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}");
INSERT INTO wp40_postmeta VALUES("310","53","_thumbnail_id","99");
INSERT INTO wp40_postmeta VALUES("311","100","_wp_attached_file","2014/09/privacy.jpg");
INSERT INTO wp40_postmeta VALUES("312","100","_wp_attachment_metadata","a:5:{s:5:\"width\";i:658;s:6:\"height\";i:749;s:4:\"file\";s:19:\"2014/09/privacy.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"privacy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"privacy-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"privacy-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"small_thumbnail\";a:4:{s:4:\"file\";s:17:\"privacy-61x61.jpg\";s:5:\"width\";i:61;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large_thumbnail\";a:4:{s:4:\"file\";s:19:\"privacy-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"category_image\";a:4:{s:4:\"file\";s:19:\"privacy-658x113.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pickup_thumbnail\";a:4:{s:4:\"file\";s:19:\"privacy-302x123.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}");
INSERT INTO wp40_postmeta VALUES("313","55","_thumbnail_id","100");
INSERT INTO wp40_postmeta VALUES("314","32","_keywords","Nama Perusahaan");
INSERT INTO wp40_postmeta VALUES("315","32","_description","Pacific Mall Development Co.,Ltd.");





CREATE TABLE `wp40_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

INSERT INTO wp40_posts VALUES("4","1","2014-09-08 05:03:46","2014-09-08 05:03:46","http://example.com/wp-content/uploads/2014/09/main_image.png","main_image.png","","inherit","open","open","","main_image-png","","","2014-09-08 05:03:46","2014-09-08 05:03:46","","0","http://example.com/wp-content/uploads/2014/09/main_image.png","0","attachment","image/png","0");
INSERT INTO wp40_posts VALUES("7","3","2014-09-08 06:55:48","2014-09-08 06:55:48","Durian Mall menganggap Bandara Changi merupakan acuan utama di dalam negeri Singapura. Bila dideskripsikan dengan satu ungkapan singkat, Changi adalah bandara yang serba ada. ada bioskop, hotel, rumah sakit dll. Hal-hal berikut bisa ditemui di Changi International Airport.
<h3>Internet Corner</h3>
Ada disiapkan dalam transit area, sehingga tidak akan sulit menemukannya. Komputer yang disiapkan berbasis OS versi Bahasa Inggeris, namun bebas dipakai oleh siapapun. Disamping itu, bila anda membawa laptop dan LAN Cable, langsung bisa dihubungkan ke LAN, sehingga di Bandara Changi, anda bisa beraktifitas sebagaimana layaknya di kantor atau di rumah.
<h3>Transit Hotel</h3>
Namanya resminya, Ambassador Transit Hotel. Terletak di lantai 3, terminal 1 dan terminal 2 Bandara Changi. Kami mencoba check-in di hotel ini sebelum melewati Immigration Counter, masuk ke Singapura. Yang perlu dicatat bahwa barang bagasi hanya bisa diambil setelah melewati imigrasi masuk ke Singapura.
<h3><em>Nursery Room</em></h3>
Nursery room disiapkan di berbagai tempat di Bandara Changi, sehingga ibu-ibu bebas memanfaatkannya untuk menyusui atau mengganti popok bayi. Sebetulnya di setiap toilet juga disiapkan bed b ayi untuk mengganti popok, namun di nursery room ini, disamping bangku untuk menyusui anak dan air panas untuk membuat susu bayi, juga tempatnya yang bersih bisa membuat ibu dan bayi merasa nyaman.

Bagi ibu yang membawa bayi, silakan mencari tempatnya bila anda berada di Bandara Changi.

&nbsp;","Changi, Bandara Penghubung Asia","","publish","open","open","","changi-bandara-penghubung-asia","","","2014-09-09 08:16:11","2014-09-09 08:16:11","","0","http://example.com/?p=7","0","post","","0");
INSERT INTO wp40_posts VALUES("8","1","2014-09-08 06:55:48","2014-09-08 06:55:48","Durian Mall menganggap Bandara Changi merupakan acuan utama di dalam negeri Singapura. Bila dideskripsikan dengan satu ungkapan singkat, Changi adalah bandara yang serba ada. ada bioskop, hotel, rumah sakit dll. Hal-hal berikut bisa ditemui di Changi International Airport.
<h3>Internet Corner</h3>
Ada disiapkan dalam transit area, sehingga tidak akan sulit menemukannya. Komputer yang disiapkan berbasis OS versi Bahasa Inggeris, namun bebas dipakai oleh siapapun. Disamping itu, bila anda membawa laptop dan LAN Cable, langsung bisa dihubungkan ke LAN, sehingga di Bandara Changi, anda bisa beraktifitas sebagaimana layaknya di kantor atau di rumah.
<h3>Transit Hotel</h3>
Namanya resminya, Ambassador Transit Hotel. Terletak di lantai 3, terminal 1 dan terminal 2 Bandara Changi. Kami mencoba check-in di hotel ini sebelum melewati Immigration Counter, masuk ke Singapura. Yang perlu dicatat bahwa barang bagasi hanya bisa diambil setelah melewati imigrasi masuk ke Singapura.
<h3><em>Nursery Room</em></h3>
Nursery room disiapkan di berbagai tempat di Bandara Changi, sehingga ibu-ibu bebas memanfaatkannya untuk menyusui atau mengganti popok bayi. Sebetulnya di setiap toilet juga disiapkan bed b ayi untuk mengganti popok, namun di nursery room ini, disamping bangku untuk menyusui anak dan air panas untuk membuat susu bayi, juga tempatnya yang bersih bisa membuat ibu dan bayi merasa nyaman.

Bagi ibu yang membawa bayi, silakan mencari tempatnya bila anda berada di Bandara Changi.

&nbsp;","Changi, Bandara Penghubung Asia","","inherit","open","open","","7-revision-v1","","","2014-09-08 06:55:48","2014-09-08 06:55:48","","7","http://example.com/archives/8","0","revision","","0");
INSERT INTO wp40_posts VALUES("9","7","2014-09-08 06:58:47","2014-09-08 06:58:47","Sebagai bagian dari berkontribusi kepada berbagai wilayah melalui pengembangan dan manajemen bangunan komersial, kami membutuhkan beberapa karyawan muda yang mempunyai kemauan keras serta kreatifitas tinggi. Setelah menjalani 3 bulan masa pelatihan, akan ditugaskan di kantor cabang Hawai. Untuk keterangan lebih lanjut, silakan menghubungi Asabu, Divisi Personalia di nomor 03-0000-0000.","Info Lowongan","","publish","open","open","","info-lowongan","","","2014-09-09 08:13:38","2014-09-09 08:13:38","","0","http://example.com/?p=9","0","post","","0");
INSERT INTO wp40_posts VALUES("10","1","2014-09-08 06:58:47","2014-09-08 06:58:47","Sebagai bagian dari berkontribusi kepada berbagai wilayah melalui pengembangan dan manajemen bangunan komersial, kami membutuhkan beberapa karyawan muda yang mempunyai kemauan keras serta kreatifitas tinggi. Setelah menjalani 3 bulan masa pelatihan, akan ditugaskan di kantor cabang Hawai. Untuk keterangan lebih lanjut, silakan menghubungi Asabu, Divisi Personalia di nomor 03-0000-0000.","Info Lowongan","","inherit","open","open","","9-revision-v1","","","2014-09-08 06:58:47","2014-09-08 06:58:47","","9","http://example.com/archives/10","0","revision","","0");
INSERT INTO wp40_posts VALUES("11","6","2014-09-08 06:59:13","2014-09-08 06:59:13","Februari 2010, Pacific Mall Development Co.,Ltd., telah membuka kantor cabang baru di Honolulu, Hawai Amerika Serikat. Selama ini kami fokus pada pengembangan dan manajemen bangunan komersial di Jepang dan Asia Tenggara. Sebagai bagian dari peringatan ulang tahun ke-10, kami mengembangkan wilayah bisnis kami ke kawasan Oceania. Kami semakin bergairah mengembangkan bangunan komersial untuk bisa lebih bermanfaat kepada wilayah yang lebih luas.","Cabang Baru di Honolulu","","publish","open","open","","cabang-baru-di-honolulu","","","2014-09-09 08:13:47","2014-09-09 08:13:47","","0","http://example.com/?p=11","0","post","","0");
INSERT INTO wp40_posts VALUES("12","1","2014-09-08 06:59:13","2014-09-08 06:59:13","Februari 2010, Pacific Mall Development Co.,Ltd., telah membuka kantor cabang baru di Honolulu, Hawai Amerika Serikat. Selama ini kami fokus pada pengembangan dan manajemen bangunan komersial di Jepang dan Asia Tenggara. Sebagai bagian dari peringatan ulang tahun ke-10, kami mengembangkan wilayah bisnis kami ke kawasan Oceania. Kami semakin bergairah mengembangkan bangunan komersial untuk bisa lebih bermanfaat kepada wilayah yang lebih luas.","Cabang Baru di Honolulu","","inherit","open","open","","11-revision-v1","","","2014-09-08 06:59:13","2014-09-08 06:59:13","","11","http://example.com/archives/12","0","revision","","0");
INSERT INTO wp40_posts VALUES("13","6","2014-09-08 06:59:54","2014-09-08 06:59:54","Juli 2010, di Beach Walk Street Honolulu, Hawai Amerika Serikat, telah dibuka Kamehameha Mall. Disamping toko alat-alat surfing serta <em>Hawaian Culture</em>, juga ada lantai restoran sehingga bisa menikmati makanan cita rasa lokal. Dengan diadakannya berbagai event di lapangan Hamehameha tiap hari, para pelancong bisa menikmati hari-hari di spot baru Hawai ini. Silakan mampir bila anda berlibur di Hawai.","Kamehameha Mall di Honolulu","","publish","open","open","","kamehameha-mall-di-honolulu","","","2014-09-09 08:14:38","2014-09-09 08:14:38","","0","http://example.com/?p=13","0","post","","0");
INSERT INTO wp40_posts VALUES("14","1","2014-09-08 06:59:54","2014-09-08 06:59:54","Juli 2010, di Beach Walk Street Honolulu, Hawai Amerika Serikat, telah dibuka Kamehameha Mall. Disamping toko alat-alat surfing serta <em>Hawaian Culture</em>, juga ada lantai restoran sehingga bisa menikmati makanan cita rasa lokal. Dengan diadakannya berbagai event di lapangan Hamehameha tiap hari, para pelancong bisa menikmati hari-hari di spot baru Hawai ini. Silakan mampir bila anda berlibur di Hawai.","Kamehameha Mall di Honolulu","","inherit","open","open","","13-revision-v1","","","2014-09-08 06:59:54","2014-09-08 06:59:54","","13","http://example.com/archives/14","0","revision","","0");
INSERT INTO wp40_posts VALUES("15","6","2014-09-08 07:00:27","2014-09-08 07:00:27","Mei 2011, Golden Gate Mall diresmikan di Nob Hill, San Francisco, California Amerika Serikat. Mall ini berada di pusat Nob Hill, sebuah distrik yang berada di dataran tinggi dan terkenal dengan kawasan pemukiman elit. Dari mall kelihatan pemandangan cantik berupa Mark Hopkins Hotel dan Grace Cathedral. Setelah turun dari kereta di Powel St Station BART &amp; Muni, bisa dicapai selama 20 menit dengan <em>Cable Car</em>. Bila anda melakukan perjalanan ke San Francisco, silakan mampir di Golden Gate Mall.","Golden Gate Mall di Nob Hill, San Francisco","","publish","open","open","","golden-gate-mall-di-nob-hill-san-francisco","","","2014-09-09 08:14:38","2014-09-09 08:14:38","","0","http://example.com/?p=15","0","post","","0");
INSERT INTO wp40_posts VALUES("16","1","2014-09-08 07:00:27","2014-09-08 07:00:27","Mei 2011, Golden Gate Mall diresmikan di Nob Hill, San Francisco, California Amerika Serikat. Mall ini berada di pusat Nob Hill, sebuah distrik yang berada di dataran tinggi dan terkenal dengan kawasan pemukiman elit. Dari mall kelihatan pemandangan cantik berupa Mark Hopkins Hotel dan Grace Cathedral. Setelah turun dari kereta di Powel St Station BART &amp; Muni, bisa dicapai selama 20 menit dengan <em>Cable Car</em>. Bila anda melakukan perjalanan ke San Francisco, silakan mampir di Golden Gate Mall.","Golden Gate Mall di Nob Hill, San Francisco","","inherit","open","open","","15-revision-v1","","","2014-09-08 07:00:27","2014-09-08 07:00:27","","15","http://example.com/archives/16","0","revision","","0");
INSERT INTO wp40_posts VALUES("17","6","2014-09-08 07:00:54","2014-09-08 07:00:54","Oriental Mall akan dibuka di Kuala Lumpur Malaysia pada bulan April 2012. Oriental Mall berdekatan dengan Stasiun Kuala Lumpur lama. Stasiun ini terkenal dengan keberadaan Heritage Station Hotel di dalam area stasiun. Nama Oriental Mall berasal dari Oriental Express, nama kereta yang melewati stasiun tersebut menelusuri kawasan Asia Tenggara. Kami akan bahu membahu mewujudkan sebuah mall yang bisa menjadi refresentasi mall di Asia Tenggara.","Oriental Mall di Kuala Lumpur","","publish","open","open","","oriental-mall-di-kuala-lumpur","","","2014-09-09 08:14:37","2014-09-09 08:14:37","","0","http://example.com/?p=17","0","post","","0");
INSERT INTO wp40_posts VALUES("18","1","2014-09-08 07:00:54","2014-09-08 07:00:54","Oriental Mall akan dibuka di Kuala Lumpur Malaysia pada bulan April 2012. Oriental Mall berdekatan dengan Stasiun Kuala Lumpur lama. Stasiun ini terkenal dengan keberadaan Heritage Station Hotel di dalam area stasiun. Nama Oriental Mall berasal dari Oriental Express, nama kereta yang melewati stasiun tersebut menelusuri kawasan Asia Tenggara. Kami akan bahu membahu mewujudkan sebuah mall yang bisa menjadi refresentasi mall di Asia Tenggara.","Oriental Mall di Kuala Lumpur","","inherit","open","open","","17-revision-v1","","","2014-09-08 07:00:54","2014-09-08 07:00:54","","17","http://example.com/archives/18","0","revision","","0");
INSERT INTO wp40_posts VALUES("19","4","2014-09-08 07:01:27","2014-09-08 07:01:27","Tanggal 7 Maret, mulai jam 13:00, di area air mancur lantai 1 Chao Phraya Mall, akan dibagikan bibit Cassia Slatensis(bunga berwana kuning) kepada 100 pengunjung pertama.  Bunga ini tumbuh di halaman Suan Pakkad Palace. Svarga, yang bekerja sebagai tukang kebun istana milik Chun Pot itu selama bertahun-tahun, akan menjelaskan bagaimana membuat <em>royal garden</em> yg tidak membutuhkan perawatan berlebih.

<span><span>Waktu : 30 Juli, Mulai jam 13:00</span></span>
Lokasi : Area Air Mancur, <span><span>Lantai 1 Chao Phraya Mall</span></span>","Bangkok Royal Garden Fair","","publish","open","open","","bangkok-royal-garden-fair","","","2014-09-09 08:14:58","2014-09-09 08:14:58","","0","http://example.com/?p=19","0","post","","0");
INSERT INTO wp40_posts VALUES("20","1","2014-09-08 07:01:27","2014-09-08 07:01:27","Tanggal 7 Maret, mulai jam 13:00, di area air mancur lantai 1 Chao Phraya Mall, akan dibagikan bibit Cassia Slatensis(bunga berwana kuning) kepada 100 pengunjung pertama.  Bunga ini tumbuh di halaman Suan Pakkad Palace. Svarga, yang bekerja sebagai tukang kebun istana milik Chun Pot itu selama bertahun-tahun, akan menjelaskan bagaimana membuat <em>royal garden</em> yg tidak membutuhkan perawatan berlebih.

<span><span>Waktu : 30 Juli, Mulai jam 13:00</span></span>
Lokasi : Area Air Mancur, <span><span>Lantai 1 Chao Phraya Mall</span></span>","Bangkok Royal Garden Fair","","inherit","open","open","","19-revision-v1","","","2014-09-08 07:01:27","2014-09-08 07:01:27","","19","http://example.com/archives/20","0","revision","","0");
INSERT INTO wp40_posts VALUES("21","2","2014-09-08 07:01:52","2014-09-08 07:01:52","Sebentar lagi nafsu makan di musim gugur akan datang. Anda bisa lebih cepat mencoba nikmat makanan musim gugur di semua restoran lantai 15 Shiodome Mall.

Di Hokkaizen, ada Akiwazen yang banyak menggunakan jamur pinus(Matsutake) dan ginkyo. Disamping itu ada restoran ramen ala Kyoto bernama Gojooohashi  yang menyajikan ramen sehat sanma asing. Jangan lupa bahwa ada kedai es krim yang bernama Kyushunyugyo, menyiapkan ogon manis yang 50% terbuat dari  annoimo, jenis kentang yang berasal dari Tanegashima.

Tanggal: Mulai 1 September, selama 2 minggu
Tempat： Restoran lantai 15 Shiodome Mall","Pengumuman Wisata Kuliner Shiodome","","publish","open","open","","pengumuman-wisata-kuliner-shiodome","","","2014-09-09 08:15:12","2014-09-09 08:15:12","","0","http://example.com/?p=21","0","post","","0");
INSERT INTO wp40_posts VALUES("22","1","2014-09-08 07:01:52","2014-09-08 07:01:52","Sebentar lagi nafsu makan di musim gugur akan datang. Anda bisa lebih cepat mencoba nikmat makanan musim gugur di semua restoran lantai 15 Shiodome Mall.

Di Hokkaizen, ada Akiwazen yang banyak menggunakan jamur pinus(Matsutake) dan ginkyo. Disamping itu ada restoran ramen ala Kyoto bernama Gojooohashi  yang menyajikan ramen sehat sanma asing. Jangan lupa bahwa ada kedai es krim yang bernama Kyushunyugyo, menyiapkan ogon manis yang 50% terbuat dari  annoimo, jenis kentang yang berasal dari Tanegashima.

Tanggal: Mulai 1 September, selama 2 minggu
Tempat： Restoran lantai 15 Shiodome Mall","Pengumuman Wisata Kuliner Shiodome","","inherit","open","open","","21-revision-v1","","","2014-09-08 07:01:52","2014-09-08 07:01:52","","21","http://example.com/archives/22","0","revision","","0");
INSERT INTO wp40_posts VALUES("23","5","2014-09-08 07:02:32","2014-09-08 07:02:32","Mulai tanggal 1 oktober selama satu bulan, akan diadakan pameran produk kuno Kota Jogjakarta yang akan diselenggarakan di jakarta tepatnya di Thamrin Mall

Banyak item kerajinan dari para pekerja terampil dari kota jogjakarta, seperti misalnya kerajinan dari perak, lukisan tradisional dan lokakarya yang berasal dari daerah tamansari sekitar candi borobudur. jangan lewatkan.

waktu : jam 10:00 sampai selesai
tempat : thamrin mall","Pengumuman \"Pameran Produk Kuno Kota Jogjakarta\" akan diselenggarakan","","publish","open","open","","pengumuman-pameran-produk-kuno-kota-jogjakarta-akan-diselenggarakan","","","2014-09-09 08:15:38","2014-09-09 08:15:38","","0","http://example.com/?p=23","0","post","","0");
INSERT INTO wp40_posts VALUES("24","1","2014-09-08 07:02:32","2014-09-08 07:02:32","Mulai tanggal 1 oktober selama satu bulan, akan diadakan pameran produk kuno Kota Jogjakarta yang akan diselenggarakan di jakarta tepatnya di Thamrin Mall

Banyak item kerajinan dari para pekerja terampil dari kota jogjakarta, seperti misalnya kerajinan dari perak, lukisan tradisional dan lokakarya yang berasal dari daerah tamansari sekitar candi borobudur. jangan lewatkan.

waktu : jam 10:00 sampai selesai
tempat : thamrin mall","Pengumuman \"Pameran Produk Kuno Kota Jogjakarta\" akan diselenggarakan","","inherit","open","open","","23-revision-v1","","","2014-09-08 07:02:32","2014-09-08 07:02:32","","23","http://example.com/archives/24","0","revision","","0");
INSERT INTO wp40_posts VALUES("25","5","2014-09-08 07:02:55","2014-09-08 07:02:55","Hari ini, adik perempuan dari staf Mr. A datang dengan 2 putrinya yang lucu-lucu, membawakan Makaroni Sukutaru hasil masakan sendiri, masakan rumahan Indonesia.

Besok Staff Mr.A berulang tahun. Menjelang ulang tahun biasanya orang Indonesia membagikan kue atau makanan kepada orang-orang dekatnya. Kebiasaan ini agak berbeda dengan di Jepang, orang yang berulang tahun menerima hadiah. Sebuah tradisi yang bagus untuk ditiru.

Ternyata Makaroni Sukutaru ini sangat enak, dan sayapun nambah 3 kali. Bahkan yang tersisa pun saya bawa ke rumah sebagai oleh-oleh.

Aaaahhh..., jadi tidak sabar menunggu hari ulang tahun Mr. A tahun depan. :D

&nbsp;
<h2>Cara Membuat Makaroni Sukutaru</h2>
<h3>Bahan</h3>
<ul>
	<li>Telur</li>
	<li>Makaroni</li>
	<li>Susu Kental</li>
	<li>Daging Sapi</li>
	<li>Keju</li>
</ul>
<h3>Cara Membuat</h3>
<ol>
	<li>Makaroni direbus agak keras.</li>
	<li>Masukkan telur, susu kental, dan daging sapi ke dalam tempat adukan, lalu aduk dengan baik.</li>
	<li>Setelah itu, masukkan makaroni lalu aduk kembali pelan-pelan lalu masukkan ke wadah cetakan yang tahan panas.</li>
	<li> Taburkan keju di atasnya lalu masukkan ke oven.</li>
	<li>Setelah terpanggang selama kurang lebih 15 menit, warna sudah menjadi agak coklat, keluarkan dari oven. Dan siap dihidangkan.</li>
</ol>
Enak dinikmati saat masih hangat maupun setelah menjadi dingin.","Makaroni Sukutaru","","publish","open","open","","makaroni-sukutaru","","","2014-09-09 08:15:38","2014-09-09 08:15:38","","0","http://example.com/?p=25","0","post","","0");
INSERT INTO wp40_posts VALUES("26","1","2014-09-08 07:02:55","2014-09-08 07:02:55","Hari ini, adik perempuan dari staf Mr. A datang dengan 2 putrinya yang lucu-lucu, membawakan Makaroni Sukutaru hasil masakan sendiri, masakan rumahan Indonesia.

Besok Staff Mr.A berulang tahun. Menjelang ulang tahun biasanya orang Indonesia membagikan kue atau makanan kepada orang-orang dekatnya. Kebiasaan ini agak berbeda dengan di Jepang, orang yang berulang tahun menerima hadiah. Sebuah tradisi yang bagus untuk ditiru.

Ternyata Makaroni Sukutaru ini sangat enak, dan sayapun nambah 3 kali. Bahkan yang tersisa pun saya bawa ke rumah sebagai oleh-oleh.

Aaaahhh..., jadi tidak sabar menunggu hari ulang tahun Mr. A tahun depan. :D

&nbsp;
<h2>Cara Membuat Makaroni Sukutaru</h2>
<h3>Bahan</h3>
<ul>
	<li>Telur</li>
	<li>Makaroni</li>
	<li>Susu Kental</li>
	<li>Daging Sapi</li>
	<li>Keju</li>
</ul>
<h3>Cara Membuat</h3>
<ol>
	<li>Makaroni direbus agak keras.</li>
	<li>Masukkan telur, susu kental, dan daging sapi ke dalam tempat adukan, lalu aduk dengan baik.</li>
	<li>Setelah itu, masukkan makaroni lalu aduk kembali pelan-pelan lalu masukkan ke wadah cetakan yang tahan panas.</li>
	<li> Taburkan keju di atasnya lalu masukkan ke oven.</li>
	<li>Setelah terpanggang selama kurang lebih 15 menit, warna sudah menjadi agak coklat, keluarkan dari oven. Dan siap dihidangkan.</li>
</ol>
Enak dinikmati saat masih hangat maupun setelah menjadi dingin.","Makaroni Sukutaru","","inherit","open","open","","25-revision-v1","","","2014-09-08 07:02:55","2014-09-08 07:02:55","","25","http://example.com/archives/26","0","revision","","0");
INSERT INTO wp40_posts VALUES("27","2","2014-09-08 07:03:20","2014-09-08 07:03:20","Jumat malam pekan lalu, diselenggarakan Festival musim panas Shiodome Mall yang ke 9.  Kami berharap para pengunjung bisa menikmatinya.

Dengan suksesnya pelaksanaan pesta kembang api yang merupakan puncak festival kali ini, menyisakan pengalaman yang sangat menggembirakan. Gangguan hujan yang semula dikhawatirkan pun tidak ada.

Sebetulnya pesta kembang api pada festival ini, direncanakan setelah pelaksanaan Festival musim panas Shoidome Mall tahun lalu. Kami banyak belajar dengan mengunjungi berbagai pesta kembang api berskala nasional seperti di Tokyo Bay dan Sungai Sumida. Disamping itu, kami tidak lupa berdiskusi langsung dengan ahli kembang api di Asakusa. Tak lupa kami mengucapkan banyak terima kasih kepada berbagai pihak yang telah membantu kami.","Pesta Kembang Api di Festival Musim Panas Shiodome Mall","","publish","open","open","","pesta-kembang-api-di-festival-musim-panas-shiodome-mall","","","2014-09-09 08:15:53","2014-09-09 08:15:53","","0","http://example.com/?p=27","0","post","","0");
INSERT INTO wp40_posts VALUES("28","1","2014-09-08 07:03:20","2014-09-08 07:03:20","Jumat malam pekan lalu, diselenggarakan Festival musim panas Shiodome Mall yang ke 9.  Kami berharap para pengunjung bisa menikmatinya.

Dengan suksesnya pelaksanaan pesta kembang api yang merupakan puncak festival kali ini, menyisakan pengalaman yang sangat menggembirakan. Gangguan hujan yang semula dikhawatirkan pun tidak ada.

Sebetulnya pesta kembang api pada festival ini, direncanakan setelah pelaksanaan Festival musim panas Shoidome Mall tahun lalu. Kami banyak belajar dengan mengunjungi berbagai pesta kembang api berskala nasional seperti di Tokyo Bay dan Sungai Sumida. Disamping itu, kami tidak lupa berdiskusi langsung dengan ahli kembang api di Asakusa. Tak lupa kami mengucapkan banyak terima kasih kepada berbagai pihak yang telah membantu kami.","Pesta Kembang Api di Festival Musim Panas Shiodome Mall","","inherit","open","open","","27-revision-v1","","","2014-09-08 07:03:20","2014-09-08 07:03:20","","27","http://example.com/archives/28","0","revision","","0");
INSERT INTO wp40_posts VALUES("29","5","2014-09-08 07:03:42","2014-09-08 07:03:42","Dalam mempersiapkan pameran yang akan diselenggarakan bulan Oktober, kami berkunjung ke kota Yogyakarta yang biasa dipanggil Jogja.

Jogja adalah kota tua yang sering disebut sebagai ibukota Indonesia versi dulu. Pada dasarnya memang terasa ada kemiripan dengan Kyoto Jepang, disamping memang ada hubungan sebagai sister city dengan Kyoto. Sampai saat ini, Jogja masih memiliki sultan yang sekaligus merangkap sebagai gubernur.

Dari Jakarta, bisa ditempuh selama sekitar 1 jam dengan pesawat domestik. Dibanding Jakarta, Jogja terasa sedikit sejuk dan bersih. Mungkin hal ini diakibatkan tidak adanya kemacetan seperti di Jakarta. Di sini tidak ditemukan bajaj yang menghasilkan gas buangan , sumber polusi.  Konon Sultan Jogja melarang aktifitas yang tidak mempertimbangkan kenyamanan lingkungan.

Sebagai gantinya, di jogja masih ditemukan banyak andong dan becak. Masih sering menyaksikan kuda yang diberi hiasan bunga di kepala dan pundak, sedang asyik memakan rumput di sana-sini.

Di jalan utama Malioboro , ada sebuah departemen store besar. Di sana kami mengunjungi 2 toko kamera untuk mencari kamera digital. Dari sisi harga, tidak berbeda jauh dengan harga barang yang sama di Jepang.

Dengan berbekal kamera digital tersebut, kami menuju sebuah workshop tidak jauh dari Istana Tamansari. Kami mencari produk seni seperti lukisan tradisional serta kerajinan perak untuk dipajang di pameran.","Kota Jogja","","publish","open","open","","kota-jogja","","","2014-09-09 08:16:03","2014-09-09 08:16:03","","0","http://example.com/?p=29","0","post","","0");
INSERT INTO wp40_posts VALUES("30","1","2014-09-08 07:03:42","2014-09-08 07:03:42","Dalam mempersiapkan pameran yang akan diselenggarakan bulan Oktober, kami berkunjung ke kota Yogyakarta yang biasa dipanggil Jogja.

Jogja adalah kota tua yang sering disebut sebagai ibukota Indonesia versi dulu. Pada dasarnya memang terasa ada kemiripan dengan Kyoto Jepang, disamping memang ada hubungan sebagai sister city dengan Kyoto. Sampai saat ini, Jogja masih memiliki sultan yang sekaligus merangkap sebagai gubernur.

Dari Jakarta, bisa ditempuh selama sekitar 1 jam dengan pesawat domestik. Dibanding Jakarta, Jogja terasa sedikit sejuk dan bersih. Mungkin hal ini diakibatkan tidak adanya kemacetan seperti di Jakarta. Di sini tidak ditemukan bajaj yang menghasilkan gas buangan , sumber polusi.  Konon Sultan Jogja melarang aktifitas yang tidak mempertimbangkan kenyamanan lingkungan.

Sebagai gantinya, di jogja masih ditemukan banyak andong dan becak. Masih sering menyaksikan kuda yang diberi hiasan bunga di kepala dan pundak, sedang asyik memakan rumput di sana-sini.

Di jalan utama Malioboro , ada sebuah departemen store besar. Di sana kami mengunjungi 2 toko kamera untuk mencari kamera digital. Dari sisi harga, tidak berbeda jauh dengan harga barang yang sama di Jepang.

Dengan berbekal kamera digital tersebut, kami menuju sebuah workshop tidak jauh dari Istana Tamansari. Kami mencari produk seni seperti lukisan tradisional serta kerajinan perak untuk dipajang di pameran.","Kota Jogja","","inherit","open","open","","29-revision-v1","","","2014-09-08 07:03:42","2014-09-08 07:03:42","","29","http://example.com/archives/30","0","revision","","0");
INSERT INTO wp40_posts VALUES("32","1","2014-09-08 07:24:24","2014-09-08 07:24:24","<table>
<tbody>
<tr>
<th>Nama Perusahaan</th>
<td>Pacific Malls Development Co.,Ltd.</td>
</tr>
<tr>
<th>Pimpinan</th>
<td>Daihiro Umihara</td>
</tr>
<tr>
<th>Tahun berdiri</th>
<td>Januari 2000</td>
</tr>
<tr>
<th>Modal</th>
<td>Rp. 33.552.243.000</td>
</tr>
<tr>
<th>Kantor Pusat</th>
<td>3F Pacific Mall Building, 0-1-2 Kaigan, Minato-Ku, Tokyo, 105-0000</td>
</tr>
<tr>
<th>Bisnis</th>
<td>Pengembangan, Sewa, Managemen, Operasional Komersial Building di Asia Tenggara dan Oceania</td>
</tr>
<tr>
<th>Main Client</th>
<td>Takeshiba Kensetsu Kouki Co.,Ltd.
SENTOSA BUILDING CO.,LTD.</td>
</tr>
<tr>
<th>Main Bank</th>
<td>Southeast Asia Pacific Ocean Bank Cabang Minato</td>
</tr>
</tbody>
</table>","PROFILE","","publish","open","open","","about","","","2014-09-09 10:09:37","2014-09-09 10:09:37","","0","http://example.com/?page_id=32","100","page","","0");
INSERT INTO wp40_posts VALUES("33","1","2014-09-08 07:24:24","2014-09-08 07:24:24","<table>
<tbody>
<tr>
<th>Nama Perusahaan</th>
<td>Pacific Malls Development Co.,Ltd.</td>
</tr>
<tr>
<th>Pimpinan</th>
<td>Daihiro Umihara</td>
</tr>
<tr>
<th>Tahun berdiri</th>
<td>Januari 2000</td>
</tr>
<tr>
<th>Modal</th>
<td>Rp. 33.552.243.000</td>
</tr>
<tr>
<th>Kantor Pusat</th>
<td>3F Pacific Mall Building, 0-1-2 Kaigan, Minato-Ku, Tokyo, 105-0000</td>
</tr>
<tr>
<th>Bisnis</th>
<td>Pengembangan, Sewa, Managemen, Operasional Komersial Building di Asia Tenggara dan Oceania</td>
</tr>
<tr>
<th>Main Client</th>
<td>Takeshiba Kensetsu Kouki Co.,Ltd.
SENTOSA BUILDING CO.,LTD.</td>
</tr>
<tr>
<th>Main Bank</th>
<td>Southeast Asia Pacific Ocean Bank Cabang Minato</td>
</tr>
</tbody>
</table>","PROFILE","","inherit","open","open","","32-revision-v1","","","2014-09-08 07:24:24","2014-09-08 07:24:24","","32","http://example.com/archives/33","0","revision","","0");
INSERT INTO wp40_posts VALUES("34","1","2014-09-08 07:29:38","2014-09-08 07:29:38","<h2>Bisnis Outline</h2>
Sejak didirikan, Pacific Malls Development Co.,Ltd., Secara terpadu melakukan pengembangan, Penyewaan, Manajemen, Operational terhadap bangunan komersial di Asia Tenggara dan Oceania.

Konsep kami adalah \"Dengan pengembangan Shopping Mall di berbagai daerah di dunia, membantu menghubungkan orang-orang dan wilayah\". Kami menjalankan berbagai bidang usaha dengan tujuan utama memberikan manfaat  kepada daerah tempat kami beraktifitas. Kami selalu berusaha memberikan layanan yang lebih baik buat semuanya.
<h2>1. Bidang Pengembangan &amp; Penyewaan</h2>
Dari awal kami menangani bidang pengembangan fasilitas komersial, sebagai bagian dari pembangunan perkotaan. Untuk menjadikan sebuah bangunan selalu diminati oleh banyak orang, kami menggali dengan seksama karakteristik konsumen setempat, sebagai bahan dalam melakukan desain bangunan yang bisa menyatu dengan perencanaan kota.
<h2>2. Bidang Manajemen &amp; Operational</h2>
Fasilitas komersial harus bisa menjawab perubahan kebutuhan sebuah wilayah. Untuk itu kami bekerja sama dengan berbagai kalangan dan pelaku berbagai bidang usaha untuk memberikan layanan yang lebih memuaskan. Sebagai media untuk mempererat hubungan dengan berbagai bidang usaha tersebut, secara berkala maupun tidak, setiap tahun kami ikut telibat dalam berbagai event.","BUSINESS","","publish","open","open","","business","","","2014-09-08 07:29:38","2014-09-08 07:29:38","","32","http://example.com/?page_id=34","110","page","","0");
INSERT INTO wp40_posts VALUES("36","1","2014-09-08 07:29:38","2014-09-08 07:29:38","<h2>Bisnis Outline</h2>
Sejak didirikan, Pacific Malls Development Co.,Ltd., Secara terpadu melakukan pengembangan, Penyewaan, Manajemen, Operational terhadap bangunan komersial di Asia Tenggara dan Oceania.

Konsep kami adalah \"Dengan pengembangan Shopping Mall di berbagai daerah di dunia, membantu menghubungkan orang-orang dan wilayah\". Kami menjalankan berbagai bidang usaha dengan tujuan utama memberikan manfaat  kepada daerah tempat kami beraktifitas. Kami selalu berusaha memberikan layanan yang lebih baik buat semuanya.
<h2>1. Bidang Pengembangan &amp; Penyewaan</h2>
Dari awal kami menangani bidang pengembangan fasilitas komersial, sebagai bagian dari pembangunan perkotaan. Untuk menjadikan sebuah bangunan selalu diminati oleh banyak orang, kami menggali dengan seksama karakteristik konsumen setempat, sebagai bahan dalam melakukan desain bangunan yang bisa menyatu dengan perencanaan kota.
<h2>2. Bidang Manajemen &amp; Operational</h2>
Fasilitas komersial harus bisa menjawab perubahan kebutuhan sebuah wilayah. Untuk itu kami bekerja sama dengan berbagai kalangan dan pelaku berbagai bidang usaha untuk memberikan layanan yang lebih memuaskan. Sebagai media untuk mempererat hubungan dengan berbagai bidang usaha tersebut, secara berkala maupun tidak, setiap tahun kami ikut telibat dalam berbagai event.","BUSINESS","","inherit","open","open","","34-revision-v1","","","2014-09-08 07:29:38","2014-09-08 07:29:38","","34","http://example.com/archives/36","0","revision","","0");
INSERT INTO wp40_posts VALUES("37","1","2014-09-08 07:30:00","2014-09-08 07:30:00","","HOME","","publish","open","open","","home","","","2014-09-08 07:30:00","2014-09-08 07:30:00","","0","http://example.com/?page_id=37","0","page","","0");
INSERT INTO wp40_posts VALUES("38","1","2014-09-08 07:30:00","2014-09-08 07:30:00","","HOME","","inherit","open","open","","37-revision-v1","","","2014-09-08 07:30:00","2014-09-08 07:30:00","","37","http://example.com/archives/38","0","revision","","0");
INSERT INTO wp40_posts VALUES("39","1","2014-09-08 07:32:19","2014-09-08 07:32:19","<style type=\"text/css\"><!--
.adjacent_post_links,#content_date_author{ display:none; }
--></style>
<table>
<tbody>
<tr>
<th>Januari 2000</th>
<td>Pacific Malls Development Co., Ltd. Didirikan di Minato-ku Tokyo, dan memulai pengembangan dan manajemen gedung komersial.</td>
</tr>
<tr>
<th>Maret 2001</th>
<td>Shiodome Mall, Minato-ku, Tokyo, Mulai beroperasi</td>
</tr>
<tr>
<th>Mei 2003</th>
<td>Thamrin Mall di Jakarta, Mulai beroperasi</td>
</tr>
<tr>
<th>Agustus 2004</th>
<td>Dorian Mall di Orchard Road Singapura, Mulai beroperasi</td>
</tr>
<tr>
<th>Desember 2007</th>
<td>Chao Phraya Mall di Jalan Maharat, Bangkok Thailand, Mulai beroperasi</td>
</tr>
<tr>
<th>Februari 2010</th>
<td>Mall Pacific Development Co., Ltd. Cabang Honolulu di Hawai Amerika Serikat, Berdiri</td>
</tr>
<tr>
<th>Juli 2010</th>
<td>The Kamehameha Mall di Honolulu Hawai, Mulai beroperasi</td>
</tr>
<tr>
<th>Mei 2011</th>
<td>Golden Gate Mall di Nob Hill San Fransisco, Mulai beroperasi</td>
</tr>
<tr>
<th>April 2012</th>
<td>Oriental Mall di Stasiun Tua Kuala Lumpur, Mulai beroperasi</td>
</tr>
</tbody>
</table>","HISTORY","","publish","open","open","","history","","","2014-09-08 07:32:19","2014-09-08 07:32:19","","32","http://example.com/?page_id=39","120","page","","0");
INSERT INTO wp40_posts VALUES("40","1","2014-09-08 07:30:52","2014-09-08 07:30:52","<style type=\"text/css\"><!--
.adjacent_post_links,#content_date_author{ display:none; }
--></style>
<table>
<tbody>
<tr>
<th>Januari 2000</th>
<td>Pacific Malls Development Co., Ltd. Didirikan di Minato-ku Tokyo, dan memulai pengembangan dan manajemen gedung komersial.</td>
</tr>
<tr>
<th>Maret 2001</th>
<td>Shiodome Mall, Minato-ku, Tokyo, Mulai beroperasi</td>
</tr>
<tr>
<th>Mei 2003</th>
<td>Thamrin Mall di Jakarta, Mulai beroperasi</td>
</tr>
<tr>
<th>Agustus 2004</th>
<td>Dorian Mall di Orchard Road Singapura, Mulai beroperasi</td>
</tr>
<tr>
<th>Desember 2007</th>
<td>Chao Phraya Mall di Jalan Maharat, Bangkok Thailand, Mulai beroperasi</td>
</tr>
<tr>
<th>Februari 2010</th>
<td>Mall Pacific Development Co., Ltd. Cabang Honolulu di Hawai Amerika Serikat, Berdiri</td>
</tr>
<tr>
<th>Juli 2010</th>
<td>The Kamehameha Mall di Honolulu Hawai, Mulai beroperasi</td>
</tr>
<tr>
<th>Mei 2011</th>
<td>Golden Gate Mall di Nob Hill San Fransisco, Mulai beroperasi</td>
</tr>
<tr>
<th>April 2012</th>
<td>Oriental Mall di Stasiun Tua Kuala Lumpur, Mulai beroperasi</td>
</tr>
</tbody>
</table>","HISTORY","","inherit","open","open","","39-revision-v1","","","2014-09-08 07:30:52","2014-09-08 07:30:52","","39","http://example.com/archives/40","0","revision","","0");
INSERT INTO wp40_posts VALUES("41","1","2014-09-08 07:33:09","2014-09-08 07:33:09","<div>
<h2><span>Pacific Mall Development Co, Ltd</span></h2>
</div>
<table>
<tbody>
<tr>
<th><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">Alamat</span></th>
<td><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">〒 105-0000</span><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">Kaigan, Minato-ku, Tokyo 0-1-2 Pacific Mall Building 3F</span></td>
</tr>
<tr>
<th><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">TEL</span></th>
<td><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">03-0000-0000</span></td>
</tr>
<tr>
<th><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">Mengakses</span></th>
<td><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">3 menit berjalan kaki dari Toei Oedo Line, Asakusa \"Stasiun Daimon\" dari Exit B1 JR Yamanote Line, Keihin Tohoku Line atau dari \"Hamamatsucho stasiun\" keluar utara.</span><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\"> ※ Anda dapat menggunakan lantai pertama parkir Pacific Mall bangunan bawah tanah ketika bepergian dengan mobil.</span></td>
</tr>
</tbody>
</table>","ACCESS","","publish","open","open","","access","","","2014-09-08 07:33:09","2014-09-08 07:33:09","","32","http://example.com/?page_id=41","130","page","","0");
INSERT INTO wp40_posts VALUES("42","1","2014-09-08 07:33:09","2014-09-08 07:33:09","<div>
<h2><span>Pacific Mall Development Co, Ltd</span></h2>
</div>
<table>
<tbody>
<tr>
<th><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">Alamat</span></th>
<td><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">〒 105-0000</span><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">Kaigan, Minato-ku, Tokyo 0-1-2 Pacific Mall Building 3F</span></td>
</tr>
<tr>
<th><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">TEL</span></th>
<td><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">03-0000-0000</span></td>
</tr>
<tr>
<th><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">Mengakses</span></th>
<td><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\">3 menit berjalan kaki dari Toei Oedo Line, Asakusa \"Stasiun Daimon\" dari Exit B1 JR Yamanote Line, Keihin Tohoku Line atau dari \"Hamamatsucho stasiun\" keluar utara.</span><span class=\"google-src-text\" style=\"direction: ltr; text-align: left;\"> ※ Anda dapat menggunakan lantai pertama parkir Pacific Mall bangunan bawah tanah ketika bepergian dengan mobil.</span></td>
</tr>
</tbody>
</table>","ACCESS","","inherit","open","open","","41-revision-v1","","","2014-09-08 07:33:09","2014-09-08 07:33:09","","41","http://example.com/archives/42","0","revision","","0");
INSERT INTO wp40_posts VALUES("43","1","2014-09-08 07:34:07","2014-09-08 07:34:07","[child_pages size=\'pickup_thumbnail\']","PORTFOLIO","","publish","open","open","","mall","","","2014-09-09 03:07:41","2014-09-09 03:07:41","","0","http://example.com/?page_id=43","200","page","","0");
INSERT INTO wp40_posts VALUES("44","1","2014-09-08 07:34:07","2014-09-08 07:34:07","","PORTFOLIO","","inherit","open","open","","43-revision-v1","","","2014-09-08 07:34:07","2014-09-08 07:34:07","","43","http://example.com/archives/44","0","revision","","0");
INSERT INTO wp40_posts VALUES("45","1","2014-09-08 07:35:12","2014-09-08 07:35:12","<h2>Info Mall</h2>
Tokyo Shidome sering dijuluki Manhattan-nya Asia Timur. Dibuka tahun 2002, Shiodome Mall merupakan Shopping Mall terbesar di area Tokyo. Mall ini berdekatan dengan Taman Hama Rikyu, di dalam area Shiodome Shio Site.

Mall ini berkembang menjadi mall multi fungsi yang menyajikan banyak layanan tempat hiburan berkwalitas elit seperti bioskop, museum, ataupun bank dan klinik kesehatan yang tingkat pelayanan publiknya ber-level tinggi.
<h2>Info Belanja</h2>","SHIODOME MALL","Tokyo Shidome sering dijuluki Manhattan-nya Asia Timur. Dibuka tahun 2002, Shiodome Mall merupakan Shopping Mall terbesar di area Tokyo. Mall ini berdekatan dengan Taman Hama Rikyu, di dalam area Shiodome Shio Site.","publish","open","open","","tokyo","","","2014-09-09 09:08:36","2014-09-09 09:08:36","","43","http://example.com/?page_id=45","210","page","","0");
INSERT INTO wp40_posts VALUES("46","1","2014-09-08 07:35:12","2014-09-08 07:35:12","<h2>Info Mall</h2>
Tokyo Shidome sering dijuluki Manhattan-nya Asia Timur. Dibuka tahun 2002, Shiodome Mall merupakan Shopping Mall terbesar di area Tokyo. Mall ini berdekatan dengan Taman Hama Rikyu, di dalam area Shiodome Shio Site.

Mall ini berkembang menjadi mall multi fungsi yang menyajikan banyak layanan tempat hiburan berkwalitas elit seperti bioskop, museum, ataupun bank dan klinik kesehatan yang tingkat pelayanan publiknya ber-level tinggi.
<h2>Info Belanja</h2>","SHIODOME MALL","","inherit","open","open","","45-revision-v1","","","2014-09-08 07:35:12","2014-09-08 07:35:12","","45","http://example.com/archives/46","0","revision","","0");
INSERT INTO wp40_posts VALUES("47","1","2014-09-08 07:36:32","2014-09-08 07:36:32","<h2>Info Mall</h2>
Dalam rangka menyesuaikan perkembangan zaman, di Orchard Road, pusat kota Singapura telah dibangun Durian Mall tahun 2004. Mall yang mulai direncanakan tahun 2003 ini berfungsi merapikan serta mengaktifkan kembali toko-toko kecil yang sudah ada sejak lama di daerah tersebut.

Mall ini juga berperan sebagai landmark perpaduan sejarah Singapura dengan peradaban modern. Saat ini Durian Mall merupakan shopping spot bagi para kawula muda setempat.

&nbsp;
<h2>Info Belanja</h2>","DURIAN MALL","","publish","open","open","","singapore","","","2014-09-08 07:36:32","2014-09-08 07:36:32","","43","http://example.com/?page_id=47","220","page","","0");
INSERT INTO wp40_posts VALUES("48","1","2014-09-08 07:36:11","2014-09-08 07:36:11","<h2>Info Mall</h2>
Dalam rangka menyesuaikan perkembangan zaman, di Orchard Road, pusat kota Singapura telah dibangun Durian Mall tahun 2004. Mall yang mulai direncanakan tahun 2003 ini berfungsi merapikan serta mengaktifkan kembali toko-toko kecil yang sudah ada sejak lama di daerah tersebut.

Mall ini juga berperan sebagai landmark perpaduan sejarah Singapura dengan peradaban modern. Saat ini Durian Mall merupakan shopping spot bagi para kawula muda setempat.

&nbsp;
<h2>Info Belanja</h2>","DURIAN MALL","","inherit","open","open","","47-revision-v1","","","2014-09-08 07:36:11","2014-09-08 07:36:11","","47","http://example.com/archives/48","0","revision","","0");
INSERT INTO wp40_posts VALUES("49","1","2014-09-08 07:37:05","2014-09-08 07:37:05","<h2>Info Mall</h2>
Chao Phraya Mall, dibuka pada tahun 2007  di lokasi yang lalu lintasnya nyaman, di persimpangan jalan Taiwangu dan jalan Maharat.

Sekitar Mall adalah obyek wisata candi utama di Thailand, Wat Arun dan Wat Pho. Mall ini adalah merupakan perwujudan fasilitas komersial baru untuk menjawab kebutuhan para wisatawan maupun penduduk setempat.
<h2>Info Belanja</h2>","CHAO PHRAYA MALL","","publish","open","open","","bangkok","","","2014-09-08 07:37:23","2014-09-08 07:37:23","","43","http://example.com/?page_id=49","230","page","","0");
INSERT INTO wp40_posts VALUES("50","1","2014-09-08 07:37:05","2014-09-08 07:37:05","<h2>Info Mall</h2>
Chao Phraya Mall, dibuka pada tahun 2007  di lokasi yang lalu lintasnya nyaman, di persimpangan jalan Taiwangu dan jalan Maharat.

Sekitar Mall adalah obyek wisata candi utama di Thailand, Wat Arun dan Wat Pho. Mall ini adalah merupakan perwujudan fasilitas komersial baru untuk menjawab kebutuhan para wisatawan maupun penduduk setempat.
<h2>Info Belanja</h2>","CHAO PHRAYA MALL","","inherit","open","open","","49-revision-v1","","","2014-09-08 07:37:05","2014-09-08 07:37:05","","49","http://example.com/archives/50","0","revision","","0");
INSERT INTO wp40_posts VALUES("51","1","2014-09-08 07:38:54","2014-09-08 07:38:54","<h2>Info Mall</h2>
Jalan Thamrin ada di Pusat Kota Jakarta, tempat dimana gedung menjulang berjejer seperti Bank Indonesia dan Keduataan Besar Jepang. Di jalan inilah dibuka Thamrin Mall yang dibangun tahun 2003 sebagai bagian dari pengembangan perkotaan.

Latar belakang budaya Jakarta yang dipadu dengan perkembangan yang pesat beberapa dekade terakhir, memacu pengembangan sebuah Mall yang diminati berbagai kalangan masyarakat.
<h2>Info Belanja</h2>","THAMRIN MALL","","publish","open","open","","jakarta","","","2014-09-08 07:39:05","2014-09-08 07:39:05","","43","http://example.com/?page_id=51","240","page","","0");
INSERT INTO wp40_posts VALUES("52","1","2014-09-08 07:38:54","2014-09-08 07:38:54","<h2>Info Mall</h2>
Jalan Thamrin ada di Pusat Kota Jakarta, tempat dimana gedung menjulang berjejer seperti Bank Indonesia dan Keduataan Besar Jepang. Di jalan inilah dibuka Thamrin Mall yang dibangun tahun 2003 sebagai bagian dari pengembangan perkotaan.

Latar belakang budaya Jakarta yang dipadu dengan perkembangan yang pesat beberapa dekade terakhir, memacu pengembangan sebuah Mall yang diminati berbagai kalangan masyarakat.
<h2>Info Belanja</h2>","THAMRIN MALL","","inherit","open","open","","51-revision-v1","","","2014-09-08 07:38:54","2014-09-08 07:38:54","","51","http://example.com/archives/52","0","revision","","0");
INSERT INTO wp40_posts VALUES("53","1","2014-09-08 07:39:43","2014-09-08 07:39:43","Silakan menelpon kami atau mengisi form di bawah ini bila ada hal yang ingin ditanyakan, disampaikan terkait Pacific Mall Development Co., Ltd.
<h2>Kontak Telpon</h2>
Line khusus pertanyaan dan pengaduan
※Jam kerja: 8:45～18:00（Senin～Jumat、Hari libur nasional）
TEL 03-0000-0000
<h2>Hubungi Kami dengan Form Khusus</h2>
Masukan Informasi tentang diri anda, Keamanan transmisi menggunakan komunikasi enskripsi SSL. 
[contact-form-7 id=\"92\" title=\"Contact Mall Development\"]","CONTACT US","","publish","open","open","","inquiry","","","2014-09-09 03:26:32","2014-09-09 03:26:32","","0","http://example.com/?page_id=53","300","page","","0");
INSERT INTO wp40_posts VALUES("54","1","2014-09-08 07:39:43","2014-09-08 07:39:43","Silakan menelpon kami atau mengisi form di bawah ini bila ada hal yang ingin ditanyakan, disampaikan terkait Pacific Mall Development Co., Ltd.
<h2>Kontak Telpon</h2>
Line khusus pertanyaan dan pengaduan
※Jam kerja: 8:45～18:00（Senin～Jumat、Hari libur nasional）
TEL 03-0000-0000
<h2>Hubungi Kami dengan Form Khusus</h2>
Masukan Informasi tentang diri anda, Keamanan transmisi menggunakan komunikasi enskripsi SSL. ","CONTACT US","","inherit","open","open","","53-revision-v1","","","2014-09-08 07:39:43","2014-09-08 07:39:43","","53","http://example.com/archives/54","0","revision","","0");
INSERT INTO wp40_posts VALUES("55","1","2014-09-08 07:44:18","2014-09-08 07:44:18","<h2>Kebijakan Dasar</h2>
<p>Kami sangat ketat terhadap pemakaian data personal. Di setiap level administrasi, pengecekan kerahasiaan data personal selalu kami tekankan. Kami bertanggungjawab, sebagai bagian dari kepatuhan terhadap undang-undang perlindungan data personal ataupun undang-undang lain yang berhubungan dengan data personal, akan menggunakan segala data sesuai kebutuhkannya, dan menjaga keamanan data-data tersebut untuk tidak beralih ke pihak ketiga.</p>
<h3>1. Pengambilan Data Personal</h3>
<p>Kami memanfaatkan data personal tidak melebihi sisi kebutuhan dalam hal adaministrasi. Di samping itu, kami memperoleh data-data tersebut secara legal dan tidak melanggar etika.</p>
<h3>2. Tujuan Penggunaan Data Personal</h3>
<p>Data yang kami peroleh, tidak akan kami pergunakan selain dari tujuan awal dimintanya data-data personal tersebut, tanpa persetujuan yang bersangkutan. Data-data tersebut kami peruntukkan sebagai berikut:</p>
<ul>
<li>Penjelasan hal-hal yang berhubungan dengan administrasi layanan</li>
<li>Sebagai tujuan pengiriman dokumen yang berhubungan dengan layanan</li>
<li>Untuk support dan layanan purna jual</li>
<li>Untuk menjawab pertanyaan yang dilayankan kepada kami</li>
<li>Peningkatan kwalitas layanan</li>
</ul>
<h3>3. Skala Manajemen Kerahasiaan Data Personal</h3>
<p>Untuk menjaga kerahasiaan personal, kami menerapkan prosedur pemanfaatan data yang sangat ketat. Selain masalah keamanan data tersebut, kami juga menerapkan prosedur baku untuk menjaga validitas data-data tersebut. Bilamana ada hal yang terjadi diluar prosedur, kami juga sudah menyiapkan prosedur penanganan masalah yang cepat.</p>
<h3>4. Pemanfaatan Data Ke Pihak Ketiga</h3>
<p>Selain beberapa case di bawah ini,  kami tidak akan memberikan data personal ke pihak ketiga tanpa persetujuan yang bersangkutan.</p>
<ul>
<li>Diminta oleh penegak hukum / aparat yang berwenang</li>
<li>Keperluan data tersebut di perusahaan rekanan yang berhubungan dengan adaministrasi pemanfaatan data tersebut</li>
<li>Namun untuk case ini, kamipun menerapkan manajemen perlindungan data yang sangat ketat dengan perusahaan rekanan</li>
<li>Dibutuhkan untuk sesuatu hal yang berhubungan dengan keselamatan jiwa dan harta benda  orang lain, dan kami tidak bisa  menghubungi pemilik data personal tersebut</li>
</ul>
<p>&nbsp;</p>
<h3>5. Hubungi Kami</h3>
<p>Silakan menghubungi kami bila ada kritik dan saran tentang hal yang berhubungan dengan manajemen perlindungan data pribadi di tempat kami, atau yang terkait dengan data personal anda. Segala kritik dan saran akan kami tindak lanjuti secepat mungkin setelah kami bisa mengkonfirmasi kebenaran data yang bersangkutan.<br />","PRIVACY","","publish","open","open","","privacy","","","2014-09-08 07:44:18","2014-09-08 07:44:18","","0","http://example.com/?page_id=55","400","page","","0");
INSERT INTO wp40_posts VALUES("56","1","2014-09-08 07:40:15","2014-09-08 07:40:15","<h2>Kebijakan Dasar</h2>
<p>Kami sangat ketat terhadap pemakaian data personal. Di setiap level administrasi, pengecekan kerahasiaan data personal selalu kami tekankan. Kami bertanggungjawab, sebagai bagian dari kepatuhan terhadap undang-undang perlindungan data personal ataupun undang-undang lain yang berhubungan dengan data personal, akan menggunakan segala data sesuai kebutuhkannya, dan menjaga keamanan data-data tersebut untuk tidak beralih ke pihak ketiga.</p>
<h3>1. Pengambilan Data Personal</h3>
<p>Kami memanfaatkan data personal tidak melebihi sisi kebutuhan dalam hal adaministrasi. Di samping itu, kami memperoleh data-data tersebut secara legal dan tidak melanggar etika.</p>
<h3>2. Tujuan Penggunaan Data Personal</h3>
<p>Data yang kami peroleh, tidak akan kami pergunakan selain dari tujuan awal dimintanya data-data personal tersebut, tanpa persetujuan yang bersangkutan. Data-data tersebut kami peruntukkan sebagai berikut:</p>
<ul>
<li>Penjelasan hal-hal yang berhubungan dengan administrasi layanan</li>
<li>Sebagai tujuan pengiriman dokumen yang berhubungan dengan layanan</li>
<li>Untuk support dan layanan purna jual</li>
<li>Untuk menjawab pertanyaan yang dilayankan kepada kami</li>
<li>Peningkatan kwalitas layanan</li>
</ul>
<h3>3. Skala Manajemen Kerahasiaan Data Personal</h3>
<p>Untuk menjaga kerahasiaan personal, kami menerapkan prosedur pemanfaatan data yang sangat ketat. Selain masalah keamanan data tersebut, kami juga menerapkan prosedur baku untuk menjaga validitas data-data tersebut. Bilamana ada hal yang terjadi diluar prosedur, kami juga sudah menyiapkan prosedur penanganan masalah yang cepat.</p>
<h3>4. Pemanfaatan Data Ke Pihak Ketiga</h3>
<p>Selain beberapa case di bawah ini,  kami tidak akan memberikan data personal ke pihak ketiga tanpa persetujuan yang bersangkutan.</p>
<ul>
<li>Diminta oleh penegak hukum / aparat yang berwenang</li>
<li>Keperluan data tersebut di perusahaan rekanan yang berhubungan dengan adaministrasi pemanfaatan data tersebut</li>
<li>Namun untuk case ini, kamipun menerapkan manajemen perlindungan data yang sangat ketat dengan perusahaan rekanan</li>
<li>Dibutuhkan untuk sesuatu hal yang berhubungan dengan keselamatan jiwa dan harta benda  orang lain, dan kami tidak bisa  menghubungi pemilik data personal tersebut</li>
</ul>
<p>&nbsp;</p>
<h3>5. Hubungi Kami</h3>
<p>Silakan menghubungi kami bila ada kritik dan saran tentang hal yang berhubungan dengan manajemen perlindungan data pribadi di tempat kami, atau yang terkait dengan data personal anda. Segala kritik dan saran akan kami tindak lanjuti secepat mungkin setelah kami bisa mengkonfirmasi kebenaran data yang bersangkutan.<br />","PRIVACY","","inherit","open","open","","55-revision-v1","","","2014-09-08 07:40:15","2014-09-08 07:40:15","","55","http://example.com/archives/56","0","revision","","0");
INSERT INTO wp40_posts VALUES("57","1","2014-09-08 07:40:47","2014-09-08 07:40:47","[sitemap]","SITE MAP","","publish","open","open","","site-map","","","2014-09-09 07:16:49","2014-09-09 07:16:49","","0","http://example.com/?page_id=57","500","page","","0");
INSERT INTO wp40_posts VALUES("58","1","2014-09-08 07:40:47","2014-09-08 07:40:47","","SITE MAP","","inherit","open","open","","57-revision-v1","","","2014-09-08 07:40:47","2014-09-08 07:40:47","","57","http://example.com/archives/58","0","revision","","0");
INSERT INTO wp40_posts VALUES("59","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","59","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","0","http://example.com/?p=59","1","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("60","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","60","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","0","http://example.com/?p=60","2","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("61","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","61","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","32","http://example.com/?p=61","3","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("62","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","62","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","32","http://example.com/?p=62","4","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("63","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","63","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","32","http://example.com/?p=63","5","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("64","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","64","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","0","http://example.com/?p=64","6","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("65","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","65","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","43","http://example.com/?p=65","7","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("66","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","66","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","43","http://example.com/?p=66","8","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("67","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","67","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","43","http://example.com/?p=67","9","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("68","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","68","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","43","http://example.com/?p=68","10","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("69","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","69","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","0","http://example.com/?p=69","12","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("70","1","2014-09-08 10:06:36","2014-09-08 10:06:36"," ","","","publish","open","open","","70","","","2014-09-08 10:06:36","2014-09-08 10:06:36","","0","http://example.com/?p=70","11","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("71","1","2014-09-08 10:06:59","2014-09-08 10:06:59"," ","","","publish","open","open","","71","","","2014-09-08 10:06:59","2014-09-08 10:06:59","","0","http://example.com/?p=71","1","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("72","1","2014-09-08 10:06:59","2014-09-08 10:06:59"," ","","","publish","open","open","","72","","","2014-09-08 10:06:59","2014-09-08 10:06:59","","0","http://example.com/?p=72","2","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("73","1","2014-09-08 10:06:59","2014-09-08 10:06:59"," ","","","publish","open","open","","73","","","2014-09-08 10:06:59","2014-09-08 10:06:59","","0","http://example.com/?p=73","3","nav_menu_item","","0");
INSERT INTO wp40_posts VALUES("74","1","2014-09-08 10:41:06","2014-09-08 10:41:06","","recruit","","inherit","open","open","","recruit","","","2014-09-08 10:41:06","2014-09-08 10:41:06","","9","http://example.com/wp-content/uploads/2014/09/recruit.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("75","1","2014-09-08 10:41:33","2014-09-08 10:41:33","","honolulu_office","","inherit","open","open","","honolulu_office","","","2014-09-08 10:41:33","2014-09-08 10:41:33","","11","http://example.com/wp-content/uploads/2014/09/honolulu_office.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("76","1","2014-09-08 10:41:51","2014-09-08 10:41:51","","kamehameha_mall","","inherit","open","open","","kamehameha_mall","","","2014-09-08 10:41:51","2014-09-08 10:41:51","","13","http://example.com/wp-content/uploads/2014/09/kamehameha_mall.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("77","1","2014-09-08 10:42:11","2014-09-08 10:42:11","","golden-gate_mall","","inherit","open","open","","golden-gate_mall","","","2014-09-08 10:42:11","2014-09-08 10:42:11","","15","http://example.com/wp-content/uploads/2014/09/golden-gate_mall.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("78","1","2014-09-08 10:42:30","2014-09-08 10:42:30","","orient_mall","","inherit","open","open","","orient_mall","","","2014-09-08 10:42:30","2014-09-08 10:42:30","","17","http://example.com/wp-content/uploads/2014/09/orient_mall.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("79","1","2014-09-08 10:42:49","2014-09-08 10:42:49","","bangkok_garden","","inherit","open","open","","bangkok_garden","","","2014-09-08 10:42:49","2014-09-08 10:42:49","","19","http://example.com/wp-content/uploads/2014/09/bangkok_garden.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("80","1","2014-09-08 10:43:09","2014-09-08 10:43:09","","shiodome_restaurants","","inherit","open","open","","shiodome_restaurants","","","2014-09-08 10:43:09","2014-09-08 10:43:09","","21","http://example.com/wp-content/uploads/2014/09/shiodome_restaurants.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("81","1","2014-09-08 10:43:26","2014-09-08 10:43:26","","jogja_exhibition","","inherit","open","open","","jogja_exhibition","","","2014-09-08 10:43:26","2014-09-08 10:43:26","","23","http://example.com/wp-content/uploads/2014/09/jogja_exhibition.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("82","1","2014-09-08 10:43:44","2014-09-08 10:43:44","","macaroni","","inherit","open","open","","macaroni","","","2014-09-08 10:43:44","2014-09-08 10:43:44","","25","http://example.com/wp-content/uploads/2014/09/macaroni.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("83","1","2014-09-08 10:44:01","2014-09-08 10:44:01","","fireworks","","inherit","open","open","","fireworks","","","2014-09-08 10:44:01","2014-09-08 10:44:01","","27","http://example.com/wp-content/uploads/2014/09/fireworks.png","0","attachment","image/png","0");
INSERT INTO wp40_posts VALUES("84","1","2014-09-08 10:44:18","2014-09-08 10:44:18","","jogjakarta","","inherit","open","open","","jogjakarta","","","2014-09-08 10:44:18","2014-09-08 10:44:18","","29","http://example.com/wp-content/uploads/2014/09/jogjakarta.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("85","1","2014-09-08 10:44:34","2014-09-08 10:44:34","","changi_airport","","inherit","open","open","","changi_airport","","","2014-09-08 10:44:34","2014-09-08 10:44:34","","7","http://example.com/wp-content/uploads/2014/09/changi_airport.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("86","1","2014-09-08 10:44:58","2014-09-08 10:44:58","","shiodome_mall","","inherit","open","open","","shiodome_mall","","","2014-09-08 10:44:58","2014-09-08 10:44:58","","45","http://example.com/wp-content/uploads/2014/09/shiodome_mall.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("87","1","2014-09-08 10:45:20","2014-09-08 10:45:20","","durian_mall","","inherit","open","open","","durian_mall","","","2014-09-08 10:45:20","2014-09-08 10:45:20","","47","http://example.com/wp-content/uploads/2014/09/durian_mall.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("88","1","2014-09-08 10:45:36","2014-09-08 10:45:36","","chao-phraya_mall","","inherit","open","open","","chao-phraya_mall","","","2014-09-08 10:45:36","2014-09-08 10:45:36","","49","http://example.com/wp-content/uploads/2014/09/chao-phraya_mall.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("89","1","2014-09-08 10:46:28","2014-09-08 10:46:28","","thamrin_mall","","inherit","open","open","","thamrin_mall","","","2014-09-08 10:46:28","2014-09-08 10:46:28","","51","http://example.com/wp-content/uploads/2014/09/thamrin_mall.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("90","1","2014-09-09 03:07:41","2014-09-09 03:07:41","[child_pages size=\'pickup_thumbnail\']","PORTFOLIO","","inherit","open","open","","43-revision-v1","","","2014-09-09 03:07:41","2014-09-09 03:07:41","","43","http://example.com/archives/90","0","revision","","0");
INSERT INTO wp40_posts VALUES("91","1","2014-09-09 03:25:06","2014-09-09 03:25:06","<p>Your Name (required)<br />
    [text* your-name] </p>

<p>Your Email (required)<br />
    [email* your-email] </p>

<p>Subject<br />
    [text your-subject] </p>

<p>Your Message<br />
    [textarea your-message] </p>

<p>[submit \"Send\"]</p>
[your-subject]
[your-name] <[your-email]>
From: [your-name] <[your-email]>
Subject: [your-subject]

Message Body:
[your-message]

--
This e-mail was sent from a contact form on Pacific Mall Development Co.,Ltd. (http://example.com)
masdi@prima-softindo.co.id


0
0

[your-subject]
[your-name] <[your-email]>
Message Body:
[your-message]

--
This e-mail was sent from a contact form on Pacific Mall Development Co.,Ltd. (http://example.com)
[your-email]


0
0
Your message was sent successfully. Thanks.
Failed to send your message. Please try later or contact the administrator by another method.
Validation errors occurred. Please confirm the fields and submit it again.
Failed to send your message. Please try later or contact the administrator by another method.
Please accept the terms to proceed.
Please fill the required field.","Contact form 1","","publish","open","open","","contact-form-1","","","2014-09-09 03:25:06","2014-09-09 03:25:06","","0","http://example.com/?post_type=wpcf7_contact_form&p=91","0","wpcf7_contact_form","","0");
INSERT INTO wp40_posts VALUES("92","1","2014-09-09 03:25:57","2014-09-09 03:25:57","<table> 
<tr><th>Nama Perusahaan<span class=\"require\">
* required</span></th>
<td>[text* company 60/ class:length-l class:text]</td></tr>
<tr><th>Email Anda<span class=\"require\">
* required</span></th>
<td>[text* email 60/ class:length-l class:text]</td></tr>
<tr><th>Nama Anda<span class=\"require\">
* required</span></th>
<td>[text* your_name 40/ class:length-m class:text]</td></tr>
<tr><th>Nomor Telepon</th>
<td>[tel tel 40/ class:length-m class:text]</td></tr>
<tr><th>Isi Pesan<span class=\"require\">
* required</span></th>
<td>[textarea* content 60*7 class:length-l class:text]</td></tr>
</table>
[submit class:submit \"Kirim Pesan\"]
Pacific Malls Development Site
[your_name] <[email]>
Saya [your_name], memiliki pertanyaan terhadap perusahaan Anda. Terima kasih atas perhatian Anda.

Profil Lengkap:

Nama Perusahaan  :[company]
Nama Lengkap        :[your_name]
Email                         :[email]
Telepon                    :[tel]
Isi Pesan                   :[content]
Terima kasih
masdi@prima-softindo.co.id




1
Terima Kasih Banyak Atas Pertanyaan Anda.
Pacific Malls Development <[pacific@example.com]>
Kepada [your_name]  - [company] 
Terima kasih banyak atas pertanyaan Anda ke Pacific Mall Development Co., Ltd. 
Berkenaan dengan isi pertanyaan Anda, kami akan menghubungi Anda dari orang yang bertanggung jawab dalam satu hari 
kerja. 
Mohon maaf jika pertanyaan yang Anda ajukan mendapatkan respon yang lambat.
Pacific Malls Development akan terus berusaha dengan itikad baik dengan tujuan pembangunan dan pengoperasian 
fasilitas komersial yang dapat membantu Anda dan semua orang.
Terima kasih banyak. 
----------------------------------------------------------------------------- 
Pacific Mall Development Co., Ltd. 
[Kontak] panggilan khusus 03-0000-0000 
* Jam 08:45 s/d 18:00 (Senin sampai Jumat kecuali hari libur) 
-----------------------------------------------------------------------------
[email]




Your message was sent successfully. Thanks.
Failed to send your message. Please try later or contact the administrator by another method.
Validation errors occurred. Please confirm the fields and submit it again.
Failed to send your message. Please try later or contact the administrator by another method.
Please accept the terms to proceed.
Please fill the required field.
Your entered code is incorrect.
Number format seems invalid.
This number is too small.
This number is too large.
Email address seems invalid.
URL seems invalid.
Telephone number seems invalid.
Your answer is not correct.
Date format seems invalid.
This date is too early.
This date is too late.
Failed to upload file.
This file type is not allowed.
This file is too large.
Failed to upload file. Error occurred.","Contact Mall Development","","publish","open","open","","contact-mall-development","","","2014-09-09 04:51:08","2014-09-09 04:51:08","","0","http://example.com/?post_type=wpcf7_contact_form&#038;p=92","0","wpcf7_contact_form","","0");
INSERT INTO wp40_posts VALUES("93","1","2014-09-09 03:26:32","2014-09-09 03:26:32","Silakan menelpon kami atau mengisi form di bawah ini bila ada hal yang ingin ditanyakan, disampaikan terkait Pacific Mall Development Co., Ltd.
<h2>Kontak Telpon</h2>
Line khusus pertanyaan dan pengaduan
※Jam kerja: 8:45～18:00（Senin～Jumat、Hari libur nasional）
TEL 03-0000-0000
<h2>Hubungi Kami dengan Form Khusus</h2>
Masukan Informasi tentang diri anda, Keamanan transmisi menggunakan komunikasi enskripsi SSL. 
[contact-form-7 id=\"92\" title=\"Contact Mall Development\"]","CONTACT US","","inherit","open","open","","53-revision-v1","","","2014-09-09 03:26:32","2014-09-09 03:26:32","","53","http://example.com/archives/93","0","revision","","0");
INSERT INTO wp40_posts VALUES("94","1","2014-09-09 07:16:49","2014-09-09 07:16:49","[sitemap]","SITE MAP","","inherit","open","open","","57-revision-v1","","","2014-09-09 07:16:49","2014-09-09 07:16:49","","57","http://example.com/archives/94","0","revision","","0");
INSERT INTO wp40_posts VALUES("95","1","2014-09-09 09:08:36","2014-09-09 09:08:36","<h2>Info Mall</h2>
Tokyo Shidome sering dijuluki Manhattan-nya Asia Timur. Dibuka tahun 2002, Shiodome Mall merupakan Shopping Mall terbesar di area Tokyo. Mall ini berdekatan dengan Taman Hama Rikyu, di dalam area Shiodome Shio Site.

Mall ini berkembang menjadi mall multi fungsi yang menyajikan banyak layanan tempat hiburan berkwalitas elit seperti bioskop, museum, ataupun bank dan klinik kesehatan yang tingkat pelayanan publiknya ber-level tinggi.
<h2>Info Belanja</h2>","SHIODOME MALL","Tokyo Shidome sering dijuluki Manhattan-nya Asia Timur. Dibuka tahun 2002, Shiodome Mall merupakan Shopping Mall terbesar di area Tokyo. Mall ini berdekatan dengan Taman Hama Rikyu, di dalam area Shiodome Shio Site.","inherit","open","open","","45-revision-v1","","","2014-09-09 09:08:36","2014-09-09 09:08:36","","45","http://example.com/archives/95","0","revision","","0");
INSERT INTO wp40_posts VALUES("96","1","2014-09-09 09:32:00","2014-09-09 09:32:00","","sitemap","","inherit","open","open","","sitemap","","","2014-09-09 09:32:00","2014-09-09 09:32:00","","57","http://example.com/wp-content/uploads/2014/09/sitemap.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("97","1","2014-09-09 09:32:18","2014-09-09 09:32:18","","about","","inherit","open","open","","about-2","","","2014-09-09 09:32:18","2014-09-09 09:32:18","","32","http://example.com/wp-content/uploads/2014/09/about.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("98","1","2014-09-09 09:32:28","2014-09-09 09:32:28","","mall","","inherit","open","open","","mall-2","","","2014-09-09 09:32:28","2014-09-09 09:32:28","","43","http://example.com/wp-content/uploads/2014/09/mall.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("99","1","2014-09-09 09:32:46","2014-09-09 09:32:46","","inquiry","","inherit","open","open","","inquiry-2","","","2014-09-09 09:32:46","2014-09-09 09:32:46","","53","http://example.com/wp-content/uploads/2014/09/inquiry.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("100","1","2014-09-09 09:32:56","2014-09-09 09:32:56","","privacy","","inherit","open","open","","privacy-2","","","2014-09-09 09:32:56","2014-09-09 09:32:56","","55","http://example.com/wp-content/uploads/2014/09/privacy.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp40_posts VALUES("101","1","2014-09-15 03:18:54","0000-00-00 00:00:00","","Auto Draft","","auto-draft","open","open","","","","","2014-09-15 03:18:54","0000-00-00 00:00:00","","0","http://example.com/?p=101","0","post","","0");





CREATE TABLE `wp40_site_cache` (
  `hash` varchar(32) NOT NULL,
  `content` longtext NOT NULL,
  `device_url` text NOT NULL,
  `type` varchar(10) NOT NULL,
  `post_type` varchar(200) NOT NULL,
  `headers` text NOT NULL,
  `user_agent` text NOT NULL,
  `server` varchar(16) NOT NULL,
  `create_time` datetime NOT NULL,
  `expire_time` datetime NOT NULL,
  PRIMARY KEY (`hash`),
  KEY `expire_time` (`expire_time`),
  KEY `type` (`type`,`post_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO wp40_site_cache VALUES("1384ddfde831c90a3594fc1a8c2b0527","<?xml version=\"1.0\" encoding=\"UTF-8\"?><rss version=\"2.0\"
	xmlns:content=\"http://purl.org/rss/1.0/modules/content/\"
	xmlns:wfw=\"http://wellformedweb.org/CommentAPI/\"
	xmlns:dc=\"http://purl.org/dc/elements/1.1/\"
	xmlns:atom=\"http://www.w3.org/2005/Atom\"
	xmlns:sy=\"http://purl.org/rss/1.0/modules/syndication/\"
	xmlns:slash=\"http://purl.org/rss/1.0/modules/slash/\"
	>

<channel>
	<title>Pacific Mall Development Co.,Ltd. &#187; COLUMN</title>
	<atom:link href=\"http://example.com/archives/category/column/feed\" rel=\"self\" type=\"application/rss+xml\" />
	<link>http://example.com</link>
	<description>by build a mall we  connect peoples all  over the world.</description>
	<lastBuildDate>Tue, 09 Sep 2014 10:09:37 +0000</lastBuildDate>
	<language>en-US</language>
		<sy:updatePeriod>hourly</sy:updatePeriod>
		<sy:updateFrequency>1</sy:updateFrequency>
	<generator>http://wordpress.org/?v=4.0</generator>
	<item>
		<title>Kota Jogja</title>
		<link>http://example.com/archives/29</link>
		<comments>http://example.com/archives/29#comments</comments>
		<pubDate>Mon, 08 Sep 2014 07:03:42 +0000</pubDate>
		<dc:creator><![CDATA[Aoyama PR Thamrin Mall]]></dc:creator>
				<category><![CDATA[COLUMN]]></category>

		<guid isPermaLink=\"false\">http://example.com/?p=29</guid>
		<description><![CDATA[Dalam mempersiapkan pameran yang akan diselenggarakan bulan Oktober, kami berkunjung ke kota Yogyakarta yang biasa dipanggil Jogja. Jogja adalah kota tua yang sering disebut sebagai ibukota Indonesia versi dulu. Pada dasarnya memang terasa ada kemiripan dengan Kyoto Jepang, disamping memang&#160;...]]></description>
				<content:encoded><![CDATA[<p>Dalam mempersiapkan pameran yang akan diselenggarakan bulan Oktober, kami berkunjung ke kota Yogyakarta yang biasa dipanggil Jogja.</p>
<p>Jogja adalah kota tua yang sering disebut sebagai ibukota Indonesia versi dulu. Pada dasarnya memang terasa ada kemiripan dengan Kyoto Jepang, disamping memang ada hubungan sebagai sister city dengan Kyoto. Sampai saat ini, Jogja masih memiliki sultan yang sekaligus merangkap sebagai gubernur.</p>
<p>Dari Jakarta, bisa ditempuh selama sekitar 1 jam dengan pesawat domestik. Dibanding Jakarta, Jogja terasa sedikit sejuk dan bersih. Mungkin hal ini diakibatkan tidak adanya kemacetan seperti di Jakarta. Di sini tidak ditemukan bajaj yang menghasilkan gas buangan , sumber polusi.  Konon Sultan Jogja melarang aktifitas yang tidak mempertimbangkan kenyamanan lingkungan.</p>
<p>Sebagai gantinya, di jogja masih ditemukan banyak andong dan becak. Masih sering menyaksikan kuda yang diberi hiasan bunga di kepala dan pundak, sedang asyik memakan rumput di sana-sini.</p>
<p>Di jalan utama Malioboro , ada sebuah departemen store besar. Di sana kami mengunjungi 2 toko kamera untuk mencari kamera digital. Dari sisi harga, tidak berbeda jauh dengan harga barang yang sama di Jepang.</p>
<p>Dengan berbekal kamera digital tersebut, kami menuju sebuah workshop tidak jauh dari Istana Tamansari. Kami mencari produk seni seperti lukisan tradisional serta kerajinan perak untuk dipajang di pameran.</p>
]]></content:encoded>
			<wfw:commentRss>http://example.com/archives/29/feed</wfw:commentRss>
		<slash:comments>0</slash:comments>
		</item>
		<item>
		<title>Pesta Kembang Api di Festival Musim Panas Shiodome Mall</title>
		<link>http://example.com/archives/27</link>
		<comments>http://example.com/archives/27#comments</comments>
		<pubDate>Mon, 08 Sep 2014 07:03:20 +0000</pubDate>
		<dc:creator><![CDATA[Hamamatsu PR Shiodome Mall]]></dc:creator>
				<category><![CDATA[COLUMN]]></category>

		<guid isPermaLink=\"false\">http://example.com/?p=27</guid>
		<description><![CDATA[Jumat malam pekan lalu, diselenggarakan Festival musim panas Shiodome Mall yang ke 9.  Kami berharap para pengunjung bisa menikmatinya. Dengan suksesnya pelaksanaan pesta kembang api yang merupakan puncak festival kali ini, menyisakan pengalaman yang sangat menggembirakan. Gangguan hujan yang semula&#160;...]]></description>
				<content:encoded><![CDATA[<p>Jumat malam pekan lalu, diselenggarakan Festival musim panas Shiodome Mall yang ke 9.  Kami berharap para pengunjung bisa menikmatinya.</p>
<p>Dengan suksesnya pelaksanaan pesta kembang api yang merupakan puncak festival kali ini, menyisakan pengalaman yang sangat menggembirakan. Gangguan hujan yang semula dikhawatirkan pun tidak ada.</p>
<p>Sebetulnya pesta kembang api pada festival ini, direncanakan setelah pelaksanaan Festival musim panas Shoidome Mall tahun lalu. Kami banyak belajar dengan mengunjungi berbagai pesta kembang api berskala nasional seperti di Tokyo Bay dan Sungai Sumida. Disamping itu, kami tidak lupa berdiskusi langsung dengan ahli kembang api di Asakusa. Tak lupa kami mengucapkan banyak terima kasih kepada berbagai pihak yang telah membantu kami.</p>
]]></content:encoded>
			<wfw:commentRss>http://example.com/archives/27/feed</wfw:commentRss>
		<slash:comments>0</slash:comments>
		</item>
		<item>
		<title>Makaroni Sukutaru</title>
		<link>http://example.com/archives/25</link>
		<comments>http://example.com/archives/25#comments</comments>
		<pubDate>Mon, 08 Sep 2014 07:02:55 +0000</pubDate>
		<dc:creator><![CDATA[Aoyama PR Thamrin Mall]]></dc:creator>
				<category><![CDATA[COLUMN]]></category>

		<guid isPermaLink=\"false\">http://example.com/?p=25</guid>
		<description><![CDATA[Hari ini, adik perempuan dari staf Mr. A datang dengan 2 putrinya yang lucu-lucu, membawakan Makaroni Sukutaru hasil masakan sendiri, masakan rumahan Indonesia. Besok Staff Mr.A berulang tahun. Menjelang ulang tahun biasanya orang Indonesia membagikan kue atau makanan kepada orang-orang&#160;...]]></description>
				<content:encoded><![CDATA[<p>Hari ini, adik perempuan dari staf Mr. A datang dengan 2 putrinya yang lucu-lucu, membawakan Makaroni Sukutaru hasil masakan sendiri, masakan rumahan Indonesia.</p>
<p>Besok Staff Mr.A berulang tahun. Menjelang ulang tahun biasanya orang Indonesia membagikan kue atau makanan kepada orang-orang dekatnya. Kebiasaan ini agak berbeda dengan di Jepang, orang yang berulang tahun menerima hadiah. Sebuah tradisi yang bagus untuk ditiru.</p>
<p>Ternyata Makaroni Sukutaru ini sangat enak, dan sayapun nambah 3 kali. Bahkan yang tersisa pun saya bawa ke rumah sebagai oleh-oleh.</p>
<p>Aaaahhh&#8230;, jadi tidak sabar menunggu hari ulang tahun Mr. A tahun depan. <img src=\"http://example.com/wp-includes/images/smilies/icon_biggrin.gif\" alt=\":D\" class=\"wp-smiley\" /></p>
<p>&nbsp;</p>
<h2>Cara Membuat Makaroni Sukutaru</h2>
<h3>Bahan</h3>
<ul>
<li>Telur</li>
<li>Makaroni</li>
<li>Susu Kental</li>
<li>Daging Sapi</li>
<li>Keju</li>
</ul>
<h3>Cara Membuat</h3>
<ol>
<li>Makaroni direbus agak keras.</li>
<li>Masukkan telur, susu kental, dan daging sapi ke dalam tempat adukan, lalu aduk dengan baik.</li>
<li>Setelah itu, masukkan makaroni lalu aduk kembali pelan-pelan lalu masukkan ke wadah cetakan yang tahan panas.</li>
<li> Taburkan keju di atasnya lalu masukkan ke oven.</li>
<li>Setelah terpanggang selama kurang lebih 15 menit, warna sudah menjadi agak coklat, keluarkan dari oven. Dan siap dihidangkan.</li>
</ol>
<p>Enak dinikmati saat masih hangat maupun setelah menjadi dingin.</p>
]]></content:encoded>
			<wfw:commentRss>http://example.com/archives/25/feed</wfw:commentRss>
		<slash:comments>0</slash:comments>
		</item>
		<item>
		<title>Changi, Bandara Penghubung Asia</title>
		<link>http://example.com/archives/7</link>
		<comments>http://example.com/archives/7#comments</comments>
		<pubDate>Mon, 08 Sep 2014 06:55:48 +0000</pubDate>
		<dc:creator><![CDATA[Kanda PR Durian Mall]]></dc:creator>
				<category><![CDATA[COLUMN]]></category>

		<guid isPermaLink=\"false\">http://example.com/?p=7</guid>
		<description><![CDATA[Durian Mall menganggap Bandara Changi merupakan acuan utama di dalam negeri Singapura. Bila dideskripsikan dengan satu ungkapan singkat, Changi adalah bandara yang serba ada. ada bioskop, hotel, rumah sakit dll. Hal-hal berikut bisa ditemui di Changi International Airport. Internet Corner&#160;...]]></description>
				<content:encoded><![CDATA[<p>Durian Mall menganggap Bandara Changi merupakan acuan utama di dalam negeri Singapura. Bila dideskripsikan dengan satu ungkapan singkat, Changi adalah bandara yang serba ada. ada bioskop, hotel, rumah sakit dll. Hal-hal berikut bisa ditemui di Changi International Airport.</p>
<h3>Internet Corner</h3>
<p>Ada disiapkan dalam transit area, sehingga tidak akan sulit menemukannya. Komputer yang disiapkan berbasis OS versi Bahasa Inggeris, namun bebas dipakai oleh siapapun. Disamping itu, bila anda membawa laptop dan LAN Cable, langsung bisa dihubungkan ke LAN, sehingga di Bandara Changi, anda bisa beraktifitas sebagaimana layaknya di kantor atau di rumah.</p>
<h3>Transit Hotel</h3>
<p>Namanya resminya, Ambassador Transit Hotel. Terletak di lantai 3, terminal 1 dan terminal 2 Bandara Changi. Kami mencoba check-in di hotel ini sebelum melewati Immigration Counter, masuk ke Singapura. Yang perlu dicatat bahwa barang bagasi hanya bisa diambil setelah melewati imigrasi masuk ke Singapura.</p>
<h3><em>Nursery Room</em></h3>
<p>Nursery room disiapkan di berbagai tempat di Bandara Changi, sehingga ibu-ibu bebas memanfaatkannya untuk menyusui atau mengganti popok bayi. Sebetulnya di setiap toilet juga disiapkan bed b ayi untuk mengganti popok, namun di nursery room ini, disamping bangku untuk menyusui anak dan air panas untuk membuat susu bayi, juga tempatnya yang bersih bisa membuat ibu dan bayi merasa nyaman.</p>
<p>Bagi ibu yang membawa bayi, silakan mencari tempatnya bila anda berada di Bandara Changi.</p>
<p>&nbsp;</p>
]]></content:encoded>
			<wfw:commentRss>http://example.com/archives/7/feed</wfw:commentRss>
		<slash:comments>0</slash:comments>
		</item>
	</channel>
</rss>

<!-- page cached by WP SiteManager -->","|http|localhost|/DocumentRoot/archives/category/column/feed","taxonomy","category|column","a:7:{s:12:\"X-Powered-By\";s:9:\"PHP/5.4.7\";s:10:\"X-Pingback\";s:29:\"http://example.com/xmlrpc.php\";s:13:\"Last-Modified\";s:29:\"Tue, 09 Sep 2014 10:09:37 GMT\";s:4:\"ETag\";s:34:\"\"e7eb74032711e8aa4d37d5d2754f4c7a\"\";s:4:\"Vary\";s:17:\"User-Agent,Cookie\";s:12:\"Content-Type\";s:23:\"text/xml; charset=UTF-8\";s:18:\"X-Static-Cached-By\";s:14:\"WP SiteManager\";}","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:32.0) Gecko/20100101 Firefox/32.0","","2014-09-10 07:08:52","2014-09-10 08:08:52");
INSERT INTO wp40_site_cache VALUES("d987ffb0941cf12b8ae52f50a9779b08","<!DOCTYPE HTML>
<html dir=\"ltr\" lang=\"id\">
    <head>
        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
        <title>
            Pacific Mall Development Co.,Ltd. | by build a mall we  connect peoples all  over the world.        </title>
        <link rel=\"apple-touch-icon\" href=\"http://example.com/wp-content/themes/pacific/images/touch-icon.png\" />
        <link rel=\"shortcut icon\" href=\"http://example.com/wp-content/themes/pacific/images/favicon.ico\" />
        <link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"http://example.com/wp-content/themes/pacific/style.css\" />
        <!--[if lt IE 9]>
          <meta http-equiv=\"Imagetoolbar\" content=\"no\" />
          <script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>
        <![endif]-->
        <meta name=\"keywords\" content=\"Pacific Mall Development Co.,Ltd.\" />
<meta name=\"description\" content=\"by build a mall we connect peoples all over the world\" />

<!-- WP SiteManager OGP Tags -->
<meta property=\"og:title\" content=\"Pacific Mall Development Co.,Ltd.\" />
<meta property=\"og:type\" content=\"website\" />
<meta property=\"og:url\" content=\"http://example.com/\" />
<meta property=\"og:description\" content=\"by build a mall we connect peoples all over the world\" />
<meta property=\"og:site_name\" content=\"Pacific Mall Development Co.,Ltd.\" />

<!-- WP SiteManager Twitter Cards Tags -->
<meta name=\"twitter:title\" content=\"Pacific Mall Development Co.,Ltd.\" />
<meta name=\"twitter:url\" content=\"http://example.com/\" />
<meta name=\"twitter:description\" content=\"by build a mall we connect peoples all over the world\" />
<meta name=\"twitter:card\" content=\"summary\" />
<link rel=\"alternate\" type=\"application/rss+xml\" title=\"Pacific Mall Development Co.,Ltd. &raquo; HOME Comments Feed\" href=\"http://example.com/home/feed\" />
<link rel=\'stylesheet\' id=\'contact-form-7-css\'  href=\'http://example.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=3.9.3\' type=\'text/css\' media=\'all\' />
<link rel=\'stylesheet\' id=\'child-pages-shortcode-css-css\'  href=\'http://example.com/wp-content/themes/pacific/css/child-pages-shortcode/style.css?ver=1.1.4\' type=\'text/css\' media=\'all\' />
<script type=\'text/javascript\' src=\'http://example.com/wp-includes/js/jquery/jquery.js?ver=1.11.1\'></script>
<script type=\'text/javascript\' src=\'http://example.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\'></script>
<script type=\'text/javascript\' src=\'http://example.com/wp-content/plugins/child-pages-shortcode/js/child-pages-shortcode.min.js?ver=1.1.4\'></script>
<link rel=\"EditURI\" type=\"application/rsd+xml\" title=\"RSD\" href=\"http://example.com/xmlrpc.php?rsd\" />
<link rel=\"wlwmanifest\" type=\"application/wlwmanifest+xml\" href=\"http://example.com/wp-includes/wlwmanifest.xml\" /> 
<meta name=\"generator\" content=\"WordPress 4.0\" />
<link rel=\'shortlink\' href=\'http://example.com/\' />
<link rel=\"canonical\" href=\"http://example.com/\" />
    </head>
    <body class=\"home page page-id-37 page-template-default\">
        <div id=\"wrap\">
            <section id=\"description\">
                <h1>by build a mall we  connect peoples all  over the world.</h1>
            </section><!-- #description end -->
            <div id=\"container\">
                <header id=\"header\">
                    <h1 id=\"site-id\">
                        <a href=\"http://example.com/\">
                            <img src=\"http://example.com/wp-content/themes/pacific/images/header/site_id.png\" alt=\"Pacific Mall Development Co.,Ltd.\" />
                        </a>
                    </h1><!-- #site-id end -->
                    <div id=\"utility-group\">
                        <nav id=\"utility-nav\" class=\"menu-utility-container\"><ul id=\"menu-utility\" class=\"menu\"><li id=\"menu-item-71\" class=\"menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-37 current_page_item menu-item-71\"><a href=\"http://example.com/\">HOME</a></li>
<li id=\"menu-item-72\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-72\"><a href=\"http://example.com/privacy\">PRIVACY</a></li>
<li id=\"menu-item-73\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-73\"><a href=\"http://example.com/site-map\">SITE MAP</a></li>
</ul></nav>                        <div id=\"header-widget-area\">
                            <aside class=\"widget_search\">
                                <form role=\"search\" method=\"get\" id=\"searchform\" class=\"searchform\" action=\"http://example.com/\">
				<div>
					<label class=\"screen-reader-text\" for=\"s\">Search for:</label>
					<input type=\"text\" value=\"\" name=\"s\" id=\"s\" />
					<input type=\"submit\" id=\"searchsubmit\" value=\"Search\" />
				</div>
			</form>                            </aside><!-- .widget_search end -->
                        </div><!-- #header-widget-area end -->
                    </div><!-- #utility-group end -->
                </header><!-- #header end -->
                <nav id=\"global-nav\" class=\"menu-global-container\"><ul id=\"menu-global\" class=\"menu\"><li id=\"menu-item-59\" class=\"menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-37 current_page_item menu-item-59\"><a href=\"http://example.com/\">HOME</a></li>
<li id=\"menu-item-60\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-60\"><a href=\"http://example.com/about\">PROFILE</a>
<ul class=\"sub-menu\">
	<li id=\"menu-item-61\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-61\"><a href=\"http://example.com/about/business\">BUSINESS</a></li>
	<li id=\"menu-item-62\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-62\"><a href=\"http://example.com/about/history\">HISTORY</a></li>
	<li id=\"menu-item-63\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-63\"><a href=\"http://example.com/about/access\">ACCESS</a></li>
</ul>
</li>
<li id=\"menu-item-64\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-64\"><a href=\"http://example.com/mall\">PORTFOLIO</a>
<ul class=\"sub-menu\">
	<li id=\"menu-item-65\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-65\"><a href=\"http://example.com/mall/tokyo\">SHIODOME MALL</a></li>
	<li id=\"menu-item-66\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-66\"><a href=\"http://example.com/mall/singapore\">DURIAN MALL</a></li>
	<li id=\"menu-item-67\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-67\"><a href=\"http://example.com/mall/bangkok\">CHAO PHRAYA MALL</a></li>
	<li id=\"menu-item-68\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-68\"><a href=\"http://example.com/mall/jakarta\">THAMRIN MALL</a></li>
</ul>
</li>
<li id=\"menu-item-70\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-70\"><a href=\"http://example.com/archives/category/column\">COLUMN</a></li>
<li id=\"menu-item-69\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-69\"><a href=\"http://example.com/inquiry\">CONTACT US</a></li>
</ul></nav>                                    <section id=\"branding\">
                        <img src=\"http://example.com/wp-content/uploads/2014/09/main_image.png\" 
                             width=\"950\" 
                             height=\"295\" alt=\"\" />
                    </section><!-- #branding end -->
                                <section id=\"contents-body\">
                    <section id=\"contents\">
    <section id=\"malls-pickup\">
        <div class=\"malls-group\">
                                <article><h1>
                            <a href=\"http://example.com/mall/tokyo\">
                                SHIODOME MALL                            </a></h1>
                        <a href=\"http://example.com/mall/tokyo\">
                            <img width=\"302\" height=\"123\" src=\"http://example.com/wp-content/uploads/2014/09/shiodome_mall-302x123.jpg\" class=\"attachment-pickup_thumbnail wp-post-image\" alt=\"SHIODOME MALL\" title=\"SHIODOME MALL\" />                        </a>
                        <p>Tokyo Shidome sering dijuluki Manhattan-nya Asia Timur. Dibuka tahun 2002, Shiodome Mall merupakan Shopping Mall terbesar di area Tokyo. Mall&nbsp;&#8230;</p>
                        <div class=\"continue-button\">
                            <a href=\"http://example.com/mall/tokyo\">See More</a>
                        </div>
                    </article>
                                        <article><h1>
                            <a href=\"http://example.com/mall/singapore\">
                                DURIAN MALL                            </a></h1>
                        <a href=\"http://example.com/mall/singapore\">
                            <img width=\"302\" height=\"123\" src=\"http://example.com/wp-content/uploads/2014/09/durian_mall-302x123.jpg\" class=\"attachment-pickup_thumbnail wp-post-image\" alt=\"DURIAN MALL\" title=\"DURIAN MALL\" />                        </a>
                        <p>Info Mall Dalam rangka menyesuaikan perkembangan zaman, di Orchard Road, pusat kota Singapura telah dibangun Durian Mall tahun 2004. Mall&nbsp;&#8230;</p>
                        <div class=\"continue-button\">
                            <a href=\"http://example.com/mall/singapore\">See More</a>
                        </div>
                    </article>
                                        </div><!--#malls-group end-->
                    <div class=\"malls-group\">
                                            <article><h1>
                            <a href=\"http://example.com/mall/bangkok\">
                                CHAO PHRAYA MALL                            </a></h1>
                        <a href=\"http://example.com/mall/bangkok\">
                            <img width=\"302\" height=\"123\" src=\"http://example.com/wp-content/uploads/2014/09/chao-phraya_mall-302x123.jpg\" class=\"attachment-pickup_thumbnail wp-post-image\" alt=\"CHAO PHRAYA MALL\" title=\"CHAO PHRAYA MALL\" />                        </a>
                        <p>Info Mall Chao Phraya Mall, dibuka pada tahun 2007  di lokasi yang lalu lintasnya nyaman, di persimpangan jalan Taiwangu dan&nbsp;&#8230;</p>
                        <div class=\"continue-button\">
                            <a href=\"http://example.com/mall/bangkok\">See More</a>
                        </div>
                    </article>
                                        <article><h1>
                            <a href=\"http://example.com/mall/jakarta\">
                                THAMRIN MALL                            </a></h1>
                        <a href=\"http://example.com/mall/jakarta\">
                            <img width=\"302\" height=\"123\" src=\"http://example.com/wp-content/uploads/2014/09/thamrin_mall-302x123.jpg\" class=\"attachment-pickup_thumbnail wp-post-image\" alt=\"THAMRIN MALL\" title=\"THAMRIN MALL\" />                        </a>
                        <p>Info Mall Jalan Thamrin ada di Pusat Kota Jakarta, tempat dimana gedung menjulang berjejer seperti Bank Indonesia dan Keduataan Besar&nbsp;&#8230;</p>
                        <div class=\"continue-button\">
                            <a href=\"http://example.com/mall/jakarta\">See More</a>
                        </div>
                    </article>
                            </div><!-- .malls-group end -->
    </section><!-- #malls-pickup end -->
    <section id=\"latest-columns\">
        <h1 id=\"latest-columns-title\">Recent Column</h1>
        <span class=\"link-text archive-link\"><a href=\"http://example.com/archives/category/column\">Column List</a></span>
        <div class=\"column-group head\">
                                <article class=\"column-article\">
                        <h1 class=\"update-title\">
                            <a href=\"http://example.com/archives/29\" 
                               title=\"Kota Jogja\">
                                Kota Jogja</a></h1>
                        <time class=\"entry-date\" datetime=\"2014-09-08\">
                            September 8, 2014                        </time>
                        <a href=\"http://example.com/archives/29\">
                            <img width=\"90\" height=\"90\" src=\"http://example.com/wp-content/uploads/2014/09/jogjakarta-90x90.jpg\" class=\"attachment-post-thumbnail wp-post-image\" alt=\"Kota Jogja\" title=\"Kota Jogja\" />                        </a>
                        <p>Dalam mempersiapkan pameran yang akan diselenggarakan bulan Oktober, kami berkunjung&nbsp;&#8230;</p>
                        <span class=\"link-text\">
                            <a href=\"http://example.com/archives/29\">Read More...</a>
                        </span>
                    </article>
                                        <article class=\"column-article\">
                        <h1 class=\"update-title\">
                            <a href=\"http://example.com/archives/27\" 
                               title=\"Pesta Kembang Api di Festival Musim Panas Shiodome Mall\">
                                Pesta Kembang Api di Festival Musim Panas Shiodome Mall</a></h1>
                        <time class=\"entry-date\" datetime=\"2014-09-08\">
                            September 8, 2014                        </time>
                        <a href=\"http://example.com/archives/27\">
                            <img width=\"90\" height=\"90\" src=\"http://example.com/wp-content/uploads/2014/09/fireworks-90x90.png\" class=\"attachment-post-thumbnail wp-post-image\" alt=\"Pesta Kembang Api di Festival Musim Panas Shiodome Mall\" title=\"Pesta Kembang Api di Festival Musim Panas Shiodome Mall\" />                        </a>
                        <p>Jumat malam pekan lalu, diselenggarakan Festival musim panas Shiodome Mall&nbsp;&#8230;</p>
                        <span class=\"link-text\">
                            <a href=\"http://example.com/archives/27\">Read More...</a>
                        </span>
                    </article>
                                        </div><!-- .column-group end -->
                    <div class=\"column-group\">
                                            <article class=\"column-article\">
                        <h1 class=\"update-title\">
                            <a href=\"http://example.com/archives/25\" 
                               title=\"Makaroni Sukutaru\">
                                Makaroni Sukutaru</a></h1>
                        <time class=\"entry-date\" datetime=\"2014-09-08\">
                            September 8, 2014                        </time>
                        <a href=\"http://example.com/archives/25\">
                            <img width=\"90\" height=\"90\" src=\"http://example.com/wp-content/uploads/2014/09/macaroni-90x90.jpg\" class=\"attachment-post-thumbnail wp-post-image\" alt=\"Makaroni Sukutaru\" title=\"Makaroni Sukutaru\" />                        </a>
                        <p>Hari ini, adik perempuan dari staf Mr. A datang dengan&nbsp;&#8230;</p>
                        <span class=\"link-text\">
                            <a href=\"http://example.com/archives/25\">Read More...</a>
                        </span>
                    </article>
                                        <article class=\"column-article\">
                        <h1 class=\"update-title\">
                            <a href=\"http://example.com/archives/7\" 
                               title=\"Changi, Bandara Penghubung Asia\">
                                Changi, Bandara Penghubung Asia</a></h1>
                        <time class=\"entry-date\" datetime=\"2014-09-08\">
                            September 8, 2014                        </time>
                        <a href=\"http://example.com/archives/7\">
                            <img width=\"90\" height=\"90\" src=\"http://example.com/wp-content/uploads/2014/09/changi_airport-90x90.jpg\" class=\"attachment-post-thumbnail wp-post-image\" alt=\"Changi, Bandara Penghubung Asia\" title=\"Changi, Bandara Penghubung Asia\" />                        </a>
                        <p>Durian Mall menganggap Bandara Changi merupakan acuan utama di dalam&nbsp;&#8230;</p>
                        <span class=\"link-text\">
                            <a href=\"http://example.com/archives/7\">Read More...</a>
                        </span>
                    </article>
                            </div><!-- .column-group end -->
    </section><!-- #latest-columns end -->
</section><!-- #contents end -->

<section id=\"sidebar\">
    <aside class=\"rss_link\">
        <a href=\"http://example.com/feed\"><img src=\"http://example.com/wp-content/themes/pacific/images/btn_rss_feed.png\" width=\"250\" height=\"28\" alt=\"RSS\" /></a>    </aside>
    <div id=\"primary\" class=\"widget-area\">            <aside id=\"event-info\" class=\"news-list\">
                <h1>
                    EVENT                </h1>
                <div class=\"info-wrap\"><ul>                                <li>
                                    <time class=\"entry-date\"
                                          datetime=\"2014-09-08\">
                                              September 8, 2014                                    </time>
                                    <h2>
                                        <a href=\"http://example.com/archives/23\">
                                            Pengumuman &#8220;Pameran Produk Kuno Kota Jogjakarta&#8221; akan diselenggarakan                                        </a>
                                    </h2>
                                    <a href=\"http://example.com/archives/23\">
                                        <img width=\"61\" height=\"61\" src=\"http://example.com/wp-content/uploads/2014/09/jogja_exhibition-61x61.jpg\" class=\"attachment-small_thumbnail wp-post-image\" alt=\"Pengumuman &#8220;Pameran Produk Kuno Kota Jogjakarta&#8221; akan diselenggarakan\" title=\"Pengumuman &#8220;Pameran Produk Kuno Kota Jogjakarta&#8221; akan diselenggarakan\" />                                    </a>
                                    <p>Mulai tanggal 1 oktober selama satu bulan, akan diadakan pameran&nbsp;&#8230;</p>
                                </li>
                                                                <li>
                                    <time class=\"entry-date\"
                                          datetime=\"2014-09-08\">
                                              September 8, 2014                                    </time>
                                    <h2>
                                        <a href=\"http://example.com/archives/21\">
                                            Pengumuman Wisata Kuliner Shiodome                                        </a>
                                    </h2>
                                    <a href=\"http://example.com/archives/21\">
                                        <img width=\"61\" height=\"61\" src=\"http://example.com/wp-content/uploads/2014/09/shiodome_restaurants-61x61.jpg\" class=\"attachment-small_thumbnail wp-post-image\" alt=\"Pengumuman Wisata Kuliner Shiodome\" title=\"Pengumuman Wisata Kuliner Shiodome\" />                                    </a>
                                    <p>Sebentar lagi nafsu makan di musim gugur akan datang. Anda&nbsp;&#8230;</p>
                                </li>
                                                    </ul>
                    <span class=\"link-text\">
                        <a href=\"http://example.com/archives/category/event\">
                            EVENT LIST
                        </a>
                    </span>
                </div>
            </aside>
                        <aside id=\"malls-info\" class=\"news-list\">
                <h1>
                    MALLS                </h1>
                <div class=\"info-wrap\"><ul>                                <li>
                                    <time class=\"entry-date\"
                                          datetime=\"2014-09-08\">
                                              September 8, 2014                                    </time>
                                    <h2>
                                        <a href=\"http://example.com/archives/17\">
                                            Oriental Mall di Kuala Lumpur                                        </a>
                                    </h2>
                                    <a href=\"http://example.com/archives/17\">
                                        <img width=\"61\" height=\"61\" src=\"http://example.com/wp-content/uploads/2014/09/orient_mall-61x61.jpg\" class=\"attachment-small_thumbnail wp-post-image\" alt=\"Oriental Mall di Kuala Lumpur\" title=\"Oriental Mall di Kuala Lumpur\" />                                    </a>
                                    <p>Oriental Mall akan dibuka di Kuala Lumpur Malaysia pada bulan&nbsp;&#8230;</p>
                                </li>
                                                                <li>
                                    <time class=\"entry-date\"
                                          datetime=\"2014-09-08\">
                                              September 8, 2014                                    </time>
                                    <h2>
                                        <a href=\"http://example.com/archives/15\">
                                            Golden Gate Mall di Nob Hill, San Francisco                                        </a>
                                    </h2>
                                    <a href=\"http://example.com/archives/15\">
                                        <img width=\"61\" height=\"61\" src=\"http://example.com/wp-content/uploads/2014/09/golden-gate_mall-61x61.jpg\" class=\"attachment-small_thumbnail wp-post-image\" alt=\"Golden Gate Mall di Nob Hill, San Francisco\" title=\"Golden Gate Mall di Nob Hill, San Francisco\" />                                    </a>
                                    <p>Mei 2011, Golden Gate Mall diresmikan di Nob Hill, San&nbsp;&#8230;</p>
                                </li>
                                                    </ul>
                    <span class=\"link-text\">
                        <a href=\"http://example.com/archives/category/malls\">
                            MALLS LIST
                        </a>
                    </span>
                </div>
            </aside>
                        <aside id=\"information-info\" class=\"news-list\">
                <h1>
                    INFORMATION                </h1>
                <div class=\"info-wrap\"><ul>                                <li>
                                    <time class=\"entry-date\"
                                          datetime=\"2014-09-08\">
                                              September 8, 2014                                    </time>
                                    <h2>
                                        <a href=\"http://example.com/archives/11\">
                                            Cabang Baru di Honolulu                                        </a>
                                    </h2>
                                    <a href=\"http://example.com/archives/11\">
                                        <img width=\"61\" height=\"61\" src=\"http://example.com/wp-content/uploads/2014/09/honolulu_office-61x61.jpg\" class=\"attachment-small_thumbnail wp-post-image\" alt=\"Cabang Baru di Honolulu\" title=\"Cabang Baru di Honolulu\" />                                    </a>
                                    <p>Februari 2010, Pacific Mall Development Co.,Ltd., telah membuka kantor cabang&nbsp;&#8230;</p>
                                </li>
                                                                <li>
                                    <time class=\"entry-date\"
                                          datetime=\"2014-09-08\">
                                              September 8, 2014                                    </time>
                                    <h2>
                                        <a href=\"http://example.com/archives/9\">
                                            Info Lowongan                                        </a>
                                    </h2>
                                    <a href=\"http://example.com/archives/9\">
                                        <img width=\"61\" height=\"61\" src=\"http://example.com/wp-content/uploads/2014/09/recruit-61x61.jpg\" class=\"attachment-small_thumbnail wp-post-image\" alt=\"Info Lowongan\" title=\"Info Lowongan\" />                                    </a>
                                    <p>Sebagai bagian dari berkontribusi kepada berbagai wilayah melalui pengembangan dan&nbsp;&#8230;</p>
                                </li>
                                                    </ul>
                    <span class=\"link-text\">
                        <a href=\"http://example.com/archives/category/information\">
                            INFORMATION LIST
                        </a>
                    </span>
                </div>
            </aside>
                </div><!-- #primary end -->
</section><!-- #sidebar end --></section><!-- #contents-body end -->
</div><!-- #container end -->
<div id=\"footer-container\">
    <footer id=\"footer\">
        <p id=\"copyright\"><small>Copyright &copy; Pacific Mall Development Co.,Ltd. All rights reserved.</small></p>
    </footer><!-- #footer end -->
</div><!-- #footer-container end -->
</div><!-- #wrap end -->
<script src=\"http://example.com/wp-content/themes/pacific/js/scroll.js\"></script>
<script type=\'text/javascript\' src=\'http://example.com/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20\'></script>
<script type=\'text/javascript\'>
/* <![CDATA[ */
var _wpcf7 = {\"loaderUrl\":\"http:\\/\\/localhost\\/DocumentRoot\\/wp-content\\/plugins\\/contact-form-7\\/images\\/ajax-loader.gif\",\"sending\":\"Sending ...\",\"cached\":\"1\"};
/* ]]> */
</script>
<script type=\'text/javascript\' src=\'http://example.com/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=3.9.3\'></script>
</body>
</html>

<!-- page cached by WP SiteManager -->","|http|localhost|/DocumentRoot/","front","page","a:6:{s:12:\"X-Powered-By\";s:9:\"PHP/5.4.7\";s:10:\"X-Pingback\";s:29:\"http://example.com/xmlrpc.php\";s:12:\"Content-Type\";s:24:\"text/html; charset=UTF-8\";s:4:\"Vary\";s:17:\"User-Agent,Cookie\";s:4:\"Link\";s:36:\"<http://example.com/>; rel=shortlink\";s:18:\"X-Static-Cached-By\";s:14:\"WP SiteManager\";}","Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36","","2014-09-16 04:59:06","2014-09-16 05:59:06");
INSERT INTO wp40_site_cache VALUES("f7b230265bee0c43301f5d6e234482a2","<!DOCTYPE HTML>
<html dir=\"ltr\" lang=\"id\">
    <head>
        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
        <title>
            PORTFOLIO | Pacific Mall Development Co.,Ltd.        </title>
        <link rel=\"apple-touch-icon\" href=\"http://example.com/wp-content/themes/pacific/images/touch-icon.png\" />
        <link rel=\"shortcut icon\" href=\"http://example.com/wp-content/themes/pacific/images/favicon.ico\" />
        <link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"http://example.com/wp-content/themes/pacific/style.css\" />
        <!--[if lt IE 9]>
          <meta http-equiv=\"Imagetoolbar\" content=\"no\" />
          <script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>
        <![endif]-->
        <meta name=\"keywords\" content=\"Pacific Mall Development Co.,Ltd.\" />
<meta name=\"description\" content=\"by build a mall we connect peoples all over the world\" />

<!-- WP SiteManager OGP Tags -->
<meta property=\"og:title\" content=\"PORTFOLIO\" />
<meta property=\"og:type\" content=\"article\" />
<meta property=\"og:url\" content=\"http://example.com/mall\" />
<meta property=\"og:description\" content=\"by build a mall we connect peoples all over the world\" />
<meta property=\"og:site_name\" content=\"Pacific Mall Development Co.,Ltd.\" />
<meta property=\"og:image\" content=\"http://example.com/wp-content/uploads/2014/09/mall.jpg\" />

<!-- WP SiteManager Twitter Cards Tags -->
<meta name=\"twitter:title\" content=\"PORTFOLIO\" />
<meta name=\"twitter:url\" content=\"http://example.com/mall\" />
<meta name=\"twitter:description\" content=\"by build a mall we connect peoples all over the world\" />
<meta name=\"twitter:card\" content=\"summary\" />
<meta name=\"twitter:image\" content=\"http://example.com/wp-content/uploads/2014/09/mall-300x159.jpg\" />
<link rel=\"alternate\" type=\"application/rss+xml\" title=\"Pacific Mall Development Co.,Ltd. &raquo; PORTFOLIO Comments Feed\" href=\"http://example.com/mall/feed\" />
<link rel=\'stylesheet\' id=\'contact-form-7-css\'  href=\'http://example.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=3.9.3\' type=\'text/css\' media=\'all\' />
<link rel=\'stylesheet\' id=\'child-pages-shortcode-css-css\'  href=\'http://example.com/wp-content/themes/pacific/css/child-pages-shortcode/style.css?ver=1.1.4\' type=\'text/css\' media=\'all\' />
<script type=\'text/javascript\' src=\'http://example.com/wp-includes/js/jquery/jquery.js?ver=1.11.1\'></script>
<script type=\'text/javascript\' src=\'http://example.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1\'></script>
<script type=\'text/javascript\' src=\'http://example.com/wp-content/plugins/child-pages-shortcode/js/child-pages-shortcode.min.js?ver=1.1.4\'></script>
<link rel=\"EditURI\" type=\"application/rsd+xml\" title=\"RSD\" href=\"http://example.com/xmlrpc.php?rsd\" />
<link rel=\"wlwmanifest\" type=\"application/wlwmanifest+xml\" href=\"http://example.com/wp-includes/wlwmanifest.xml\" /> 
<meta name=\"generator\" content=\"WordPress 4.0\" />
<link rel=\'shortlink\' href=\'http://example.com/?p=43\' />
<link rel=\"canonical\" href=\"http://example.com/mall\" />
    </head>
    <body class=\"page page-id-43 page-parent page-template-default\">
        <div id=\"wrap\">
            <section id=\"description\">
                <h1>by build a mall we  connect peoples all  over the world.</h1>
            </section><!-- #description end -->
            <div id=\"container\">
                <header id=\"header\">
                    <h1 id=\"site-id\">
                        <a href=\"http://example.com/\">
                            <img src=\"http://example.com/wp-content/themes/pacific/images/header/site_id.png\" alt=\"Pacific Mall Development Co.,Ltd.\" />
                        </a>
                    </h1><!-- #site-id end -->
                    <div id=\"utility-group\">
                        <nav id=\"utility-nav\" class=\"menu-utility-container\"><ul id=\"menu-utility\" class=\"menu\"><li id=\"menu-item-71\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-71\"><a href=\"http://example.com/\">HOME</a></li>
<li id=\"menu-item-72\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-72\"><a href=\"http://example.com/privacy\">PRIVACY</a></li>
<li id=\"menu-item-73\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-73\"><a href=\"http://example.com/site-map\">SITE MAP</a></li>
</ul></nav>                        <div id=\"header-widget-area\">
                            <aside class=\"widget_search\">
                                <form role=\"search\" method=\"get\" id=\"searchform\" class=\"searchform\" action=\"http://example.com/\">
				<div>
					<label class=\"screen-reader-text\" for=\"s\">Search for:</label>
					<input type=\"text\" value=\"\" name=\"s\" id=\"s\" />
					<input type=\"submit\" id=\"searchsubmit\" value=\"Search\" />
				</div>
			</form>                            </aside><!-- .widget_search end -->
                        </div><!-- #header-widget-area end -->
                    </div><!-- #utility-group end -->
                </header><!-- #header end -->
                <nav id=\"global-nav\" class=\"menu-global-container\"><ul id=\"menu-global\" class=\"menu\"><li id=\"menu-item-59\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-59\"><a href=\"http://example.com/\">HOME</a></li>
<li id=\"menu-item-60\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-60\"><a href=\"http://example.com/about\">PROFILE</a>
<ul class=\"sub-menu\">
	<li id=\"menu-item-61\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-61\"><a href=\"http://example.com/about/business\">BUSINESS</a></li>
	<li id=\"menu-item-62\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-62\"><a href=\"http://example.com/about/history\">HISTORY</a></li>
	<li id=\"menu-item-63\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-63\"><a href=\"http://example.com/about/access\">ACCESS</a></li>
</ul>
</li>
<li id=\"menu-item-64\" class=\"menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-43 current_page_item menu-item-has-children menu-item-64\"><a href=\"http://example.com/mall\">PORTFOLIO</a>
<ul class=\"sub-menu\">
	<li id=\"menu-item-65\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-65\"><a href=\"http://example.com/mall/tokyo\">SHIODOME MALL</a></li>
	<li id=\"menu-item-66\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-66\"><a href=\"http://example.com/mall/singapore\">DURIAN MALL</a></li>
	<li id=\"menu-item-67\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-67\"><a href=\"http://example.com/mall/bangkok\">CHAO PHRAYA MALL</a></li>
	<li id=\"menu-item-68\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-68\"><a href=\"http://example.com/mall/jakarta\">THAMRIN MALL</a></li>
</ul>
</li>
<li id=\"menu-item-70\" class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-70\"><a href=\"http://example.com/archives/category/column\">COLUMN</a></li>
<li id=\"menu-item-69\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-69\"><a href=\"http://example.com/inquiry\">CONTACT US</a></li>
</ul></nav>                                <section id=\"contents-body\">
                    <nav id=\"bread-crumb\" class=\"bread_crumb\">
	<ul>
		<li class=\"level-1 top\"><a href=\"http://example.com/\">HOME</a></li>
		<li class=\"level-2 sub tail current\">PORTFOLIO</li>
	</ul>
</nav>
<section id=\"contents\">
    <article>
    <header class=\"page-header\">
        <img width=\"658\" height=\"113\" src=\"http://example.com/wp-content/uploads/2014/09/mall-658x113.jpg\" class=\"attachment-category_image wp-post-image\" alt=\"mall\" id=\"category_image\" />        <h1 class=\"page-title\">
            PORTFOLIO        </h1>
    </header>
    <section class=\"entry-content\">
        <div class=\"child_pages child_pages-pickup_thumbnail\">
<div id=\"child_page-45\" class=\"child_page\" style=\"width:50%;max-width:100%;\"><div class=\"child_page-container\"><div class=\"post_thumb\"><a href=\"http://example.com/mall/tokyo\"><img src=\"http://example.com/wp-content/uploads/2014/09/shiodome_mall-302x123.jpg\" class=\"attachment-pickup_thumbnail wp-post-image\" alt=\"shiodome_mall\" /></a></div><div class=\"post_content\"><h4><a href=\"http://example.com/mall/tokyo\">SHIODOME MALL</a></h4><div class=\"post_excerpt\">Tokyo Shidome sering dijuluki Manhattan-nya Asia Timur. Dibuka tahun 2002, Shiodome Mall merupakan Shopping Mall terbesar di area Tokyo. Mall ini berdekatan dengan Taman Hama Rikyu, di dalam area Shiodome Shio Site.</div></div><!-- .post_content  --></div><!-- .child_page-container --></div><!-- #child_page-45\" -->

<div id=\"child_page-47\" class=\"child_page\" style=\"width:50%;max-width:100%;\"><div class=\"child_page-container\"><div class=\"post_thumb\"><a href=\"http://example.com/mall/singapore\"><img src=\"http://example.com/wp-content/uploads/2014/09/durian_mall-302x123.jpg\" class=\"attachment-pickup_thumbnail wp-post-image\" alt=\"durian_mall\" /></a></div><div class=\"post_content\"><h4><a href=\"http://example.com/mall/singapore\">DURIAN MALL</a></h4><div class=\"post_excerpt\">Info Mall Dalam rangka menyesuaikan perkembangan zaman, di Orchard Road, pusat kota Singapura telah dibangun Durian Mall tahun 2004. Mall yang mulai direncanakan tahun 2003 ini berfungsi merapikan serta mengaktifkan kembali toko-toko kecil yang sudah ada sejak lama di daerah&nbsp;...</div></div><!-- .post_content  --></div><!-- .child_page-container --></div><!-- #child_page-47\" -->

<div id=\"child_page-49\" class=\"child_page\" style=\"width:50%;max-width:100%;\"><div class=\"child_page-container\"><div class=\"post_thumb\"><a href=\"http://example.com/mall/bangkok\"><img src=\"http://example.com/wp-content/uploads/2014/09/chao-phraya_mall-302x123.jpg\" class=\"attachment-pickup_thumbnail wp-post-image\" alt=\"chao-phraya_mall\" /></a></div><div class=\"post_content\"><h4><a href=\"http://example.com/mall/bangkok\">CHAO PHRAYA MALL</a></h4><div class=\"post_excerpt\">Info Mall Chao Phraya Mall, dibuka pada tahun 2007  di lokasi yang lalu lintasnya nyaman, di persimpangan jalan Taiwangu dan jalan Maharat. Sekitar Mall adalah obyek wisata candi utama di Thailand, Wat Arun dan Wat Pho. Mall ini adalah merupakan&nbsp;...</div></div><!-- .post_content  --></div><!-- .child_page-container --></div><!-- #child_page-49\" -->

<div id=\"child_page-51\" class=\"child_page\" style=\"width:50%;max-width:100%;\"><div class=\"child_page-container\"><div class=\"post_thumb\"><a href=\"http://example.com/mall/jakarta\"><img src=\"http://example.com/wp-content/uploads/2014/09/thamrin_mall-302x123.jpg\" class=\"attachment-pickup_thumbnail wp-post-image\" alt=\"thamrin_mall\" /></a></div><div class=\"post_content\"><h4><a href=\"http://example.com/mall/jakarta\">THAMRIN MALL</a></h4><div class=\"post_excerpt\">Info Mall Jalan Thamrin ada di Pusat Kota Jakarta, tempat dimana gedung menjulang berjejer seperti Bank Indonesia dan Keduataan Besar Jepang. Di jalan inilah dibuka Thamrin Mall yang dibangun tahun 2003 sebagai bagian dari pengembangan perkotaan. Latar belakang budaya Jakarta&nbsp;...</div></div><!-- .post_content  --></div><!-- .child_page-container --></div><!-- #child_page-51\" -->
</div>
            </section>
</article>
    <aside id=\"back_to_top\">
    <a href=\"#wrap\" onclick=\"scrollup();
            return false;\">
        <img src=\"http://example.com/wp-content/themes/pacific/images/btn_back_to_top.png\" 
             alt=\"back to top\" 
             width=\"146\" 
             height=\"42\" />
    </a>
</aside></section><!-- #contents end -->
<section id=\"sidebar\">
        <div id=\"primary\" class=\"widget-area\">
        <aside id=\"sub_navi-3\" class=\"widget-container sub_navi-widget\">
<h1 class=\"widget-title\">PORTFOLIO</h1>
<ul class=\"sub_navi\">
<li class=\"page_item page-item-43 current_page_item\"><a href=\"http://example.com/mall\">PORTFOLIO</a></li>
<li class=\"page_item page-item-45\"><a href=\"http://example.com/mall/tokyo\">SHIODOME MALL</a></li>
<li class=\"page_item page-item-47\"><a href=\"http://example.com/mall/singapore\">DURIAN MALL</a></li>
<li class=\"page_item page-item-49\"><a href=\"http://example.com/mall/bangkok\">CHAO PHRAYA MALL</a></li>
<li class=\"page_item page-item-51\"><a href=\"http://example.com/mall/jakarta\">THAMRIN MALL</a></li>
</ul>
</aside>
    </div><!-- #primary end -->
    <div id=\"secondary\" class=\"widget-area\">
        facebook like box
    </div><!-- #secondary end -->
</section><!-- #sidebar end --></section><!-- #contents-body end -->
</div><!-- #container end -->
<div id=\"footer-container\">
    <footer id=\"footer\">
        <p id=\"copyright\"><small>Copyright &copy; Pacific Mall Development Co.,Ltd. All rights reserved.</small></p>
    </footer><!-- #footer end -->
</div><!-- #footer-container end -->
</div><!-- #wrap end -->
<script src=\"http://example.com/wp-content/themes/pacific/js/scroll.js\"></script>
<script type=\'text/javascript\' src=\'http://example.com/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20\'></script>
<script type=\'text/javascript\'>
/* <![CDATA[ */
var _wpcf7 = {\"loaderUrl\":\"http:\\/\\/localhost\\/DocumentRoot\\/wp-content\\/plugins\\/contact-form-7\\/images\\/ajax-loader.gif\",\"sending\":\"Sending ...\",\"cached\":\"1\"};
/* ]]> */
</script>
<script type=\'text/javascript\' src=\'http://example.com/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=3.9.3\'></script>
</body>
</html>

<!-- page cached by WP SiteManager -->","|http|localhost|/DocumentRoot/mall","single","page","a:6:{s:12:\"X-Powered-By\";s:9:\"PHP/5.4.7\";s:10:\"X-Pingback\";s:29:\"http://example.com/xmlrpc.php\";s:12:\"Content-Type\";s:24:\"text/html; charset=UTF-8\";s:4:\"Vary\";s:17:\"User-Agent,Cookie\";s:4:\"Link\";s:41:\"<http://example.com/?p=43>; rel=shortlink\";s:18:\"X-Static-Cached-By\";s:14:\"WP SiteManager\";}","Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36","","2014-09-15 01:47:47","2014-09-15 07:47:47");





CREATE TABLE `wp40_sitemanager_device` (
  `device_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_name` text NOT NULL,
  `keyword` text NOT NULL,
  `builtin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`device_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO wp40_sitemanager_device VALUES("1","iPad","\\(iPad","0");
INSERT INTO wp40_sitemanager_device VALUES("2","iPhone","\\(iPhone","0");
INSERT INTO wp40_sitemanager_device VALUES("3","iPod","\\(iPod","0");
INSERT INTO wp40_sitemanager_device VALUES("4","Android"," Android .+ Mobile ","0");
INSERT INTO wp40_sitemanager_device VALUES("5","Android Tablet"," Android ","0");
INSERT INTO wp40_sitemanager_device VALUES("6","IEMobile","IEMobile","0");
INSERT INTO wp40_sitemanager_device VALUES("7","Windows Phone","Windows Phone","0");
INSERT INTO wp40_sitemanager_device VALUES("8","Firefox Mobile","Android; Mobile; .+Firefox","0");
INSERT INTO wp40_sitemanager_device VALUES("9","Firefox Tablet","Android; Tablet; .+Firefox","0");





CREATE TABLE `wp40_sitemanager_device_group` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_name` text NOT NULL,
  `theme` text NOT NULL,
  `slug` tinytext NOT NULL,
  `priority` int(11) NOT NULL,
  `builtin` binary(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO wp40_sitemanager_device_group VALUES("1","Tablet","","tablet","200","0");
INSERT INTO wp40_sitemanager_device_group VALUES("2","Smart Phone","","smart","100","0");





CREATE TABLE `wp40_sitemanager_device_relation` (
  `group_id` bigint(20) NOT NULL,
  `device_id` bigint(20) NOT NULL,
  KEY `group_id` (`group_id`,`device_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO wp40_sitemanager_device_relation VALUES("1","1");
INSERT INTO wp40_sitemanager_device_relation VALUES("1","5");
INSERT INTO wp40_sitemanager_device_relation VALUES("1","9");
INSERT INTO wp40_sitemanager_device_relation VALUES("2","2");
INSERT INTO wp40_sitemanager_device_relation VALUES("2","3");
INSERT INTO wp40_sitemanager_device_relation VALUES("2","4");
INSERT INTO wp40_sitemanager_device_relation VALUES("2","6");
INSERT INTO wp40_sitemanager_device_relation VALUES("2","7");
INSERT INTO wp40_sitemanager_device_relation VALUES("2","8");





CREATE TABLE `wp40_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO wp40_term_relationships VALUES("7","1","0");
INSERT INTO wp40_term_relationships VALUES("9","2","0");
INSERT INTO wp40_term_relationships VALUES("11","2","0");
INSERT INTO wp40_term_relationships VALUES("13","4","0");
INSERT INTO wp40_term_relationships VALUES("15","4","0");
INSERT INTO wp40_term_relationships VALUES("17","4","0");
INSERT INTO wp40_term_relationships VALUES("19","3","0");
INSERT INTO wp40_term_relationships VALUES("21","3","0");
INSERT INTO wp40_term_relationships VALUES("23","3","0");
INSERT INTO wp40_term_relationships VALUES("25","1","0");
INSERT INTO wp40_term_relationships VALUES("27","1","0");
INSERT INTO wp40_term_relationships VALUES("29","1","0");
INSERT INTO wp40_term_relationships VALUES("59","5","0");
INSERT INTO wp40_term_relationships VALUES("60","5","0");
INSERT INTO wp40_term_relationships VALUES("61","5","0");
INSERT INTO wp40_term_relationships VALUES("62","5","0");
INSERT INTO wp40_term_relationships VALUES("63","5","0");
INSERT INTO wp40_term_relationships VALUES("64","5","0");
INSERT INTO wp40_term_relationships VALUES("65","5","0");
INSERT INTO wp40_term_relationships VALUES("66","5","0");
INSERT INTO wp40_term_relationships VALUES("67","5","0");
INSERT INTO wp40_term_relationships VALUES("68","5","0");
INSERT INTO wp40_term_relationships VALUES("69","5","0");
INSERT INTO wp40_term_relationships VALUES("70","5","0");
INSERT INTO wp40_term_relationships VALUES("71","6","0");
INSERT INTO wp40_term_relationships VALUES("72","6","0");
INSERT INTO wp40_term_relationships VALUES("73","6","0");





CREATE TABLE `wp40_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO wp40_term_taxonomy VALUES("1","1","category","","0","4");
INSERT INTO wp40_term_taxonomy VALUES("2","2","category","","0","2");
INSERT INTO wp40_term_taxonomy VALUES("3","3","category","","0","3");
INSERT INTO wp40_term_taxonomy VALUES("4","4","category","","0","3");
INSERT INTO wp40_term_taxonomy VALUES("5","5","nav_menu","","0","12");
INSERT INTO wp40_term_taxonomy VALUES("6","6","nav_menu","","0","3");





CREATE TABLE `wp40_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO wp40_terms VALUES("1","COLUMN","column","0");
INSERT INTO wp40_terms VALUES("2","INFORMATION","information","0");
INSERT INTO wp40_terms VALUES("3","EVENT","event","0");
INSERT INTO wp40_terms VALUES("4","MALLS","malls","0");
INSERT INTO wp40_terms VALUES("5","global","global","0");
INSERT INTO wp40_terms VALUES("6","utility","utility","0");





CREATE TABLE `wp40_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

INSERT INTO wp40_usermeta VALUES("1","1","nickname","pacific");
INSERT INTO wp40_usermeta VALUES("2","1","first_name","");
INSERT INTO wp40_usermeta VALUES("3","1","last_name","");
INSERT INTO wp40_usermeta VALUES("4","1","description","");
INSERT INTO wp40_usermeta VALUES("5","1","rich_editing","true");
INSERT INTO wp40_usermeta VALUES("6","1","comment_shortcuts","false");
INSERT INTO wp40_usermeta VALUES("7","1","admin_color","fresh");
INSERT INTO wp40_usermeta VALUES("8","1","use_ssl","0");
INSERT INTO wp40_usermeta VALUES("9","1","show_admin_bar_front","true");
INSERT INTO wp40_usermeta VALUES("10","1","wp40_capabilities","a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO wp40_usermeta VALUES("11","1","wp40_user_level","10");
INSERT INTO wp40_usermeta VALUES("12","1","dismissed_wp_pointers","wp350_media,wp360_revisions,wp360_locks,wp390_widgets");
INSERT INTO wp40_usermeta VALUES("13","1","show_welcome_panel","1");
INSERT INTO wp40_usermeta VALUES("15","1","wp40_user-settings","libraryContent=browse&editor=html&mfold=o&ed_size=218&widgets_access=off&dfw_width=822");
INSERT INTO wp40_usermeta VALUES("16","1","wp40_user-settings-time","1410172872");
INSERT INTO wp40_usermeta VALUES("17","1","wp40_dashboard_quick_press_last_post_id","101");
INSERT INTO wp40_usermeta VALUES("18","1","session_tokens","a:5:{s:64:\"ad8d0b2b613bdb4791b12f022e8513e1960c213fe5546ddf16690f60f8c9a2cc\";i:1411358637;s:64:\"3c3089fb710ab29d62e08d46ff69cf67b726cfa5db6ee3072d4c3f51a0ab50ee\";i:1411446676;s:64:\"3c4556d5d22e55a52930ac700c2304c20d9b6f5b4e504198880ae0b48e1feeee\";i:1411960732;s:64:\"e90769a6c257d9b8752c68a0a21d0214cc506ede32868c5e5a65e5d5cf61cb99\";i:1410941536;s:64:\"2980839d5aa232bb5bc8edb8586603b719a8073136c8a067b206c22db9ebfc5b\";i:1412053160;}");
INSERT INTO wp40_usermeta VALUES("19","1","meta-box-order_post","a:3:{s:4:\"side\";s:51:\"submitdiv,postimagediv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:83:\"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv,commentsdiv\";s:8:\"advanced\";s:0:\"\";}");
INSERT INTO wp40_usermeta VALUES("20","1","screen_layout_post","2");
INSERT INTO wp40_usermeta VALUES("21","1","managenav-menuscolumnshidden","a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}");
INSERT INTO wp40_usermeta VALUES("22","1","metaboxhidden_nav-menus","a:3:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}");
INSERT INTO wp40_usermeta VALUES("23","1","nav_menu_recently_edited","5");
INSERT INTO wp40_usermeta VALUES("24","1","meta-box-order_page","a:3:{s:4:\"side\";s:36:\"submitdiv,postimagediv,pageparentdiv\";s:6:\"normal\";s:87:\"postmeta_meta_box,postexcerpt,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}");
INSERT INTO wp40_usermeta VALUES("25","1","screen_layout_page","2");
INSERT INTO wp40_usermeta VALUES("26","2","nickname","hamamatsu");
INSERT INTO wp40_usermeta VALUES("27","2","first_name","Hamamatsu");
INSERT INTO wp40_usermeta VALUES("28","2","last_name","PR Shiodome Mall");
INSERT INTO wp40_usermeta VALUES("29","2","description","");
INSERT INTO wp40_usermeta VALUES("30","2","rich_editing","true");
INSERT INTO wp40_usermeta VALUES("31","2","comment_shortcuts","false");
INSERT INTO wp40_usermeta VALUES("32","2","admin_color","fresh");
INSERT INTO wp40_usermeta VALUES("33","2","use_ssl","0");
INSERT INTO wp40_usermeta VALUES("34","2","show_admin_bar_front","true");
INSERT INTO wp40_usermeta VALUES("35","2","wp40_capabilities","a:1:{s:6:\"editor\";b:1;}");
INSERT INTO wp40_usermeta VALUES("36","2","wp40_user_level","7");
INSERT INTO wp40_usermeta VALUES("37","2","dismissed_wp_pointers","wp350_media,wp360_revisions,wp360_locks,wp390_widgets");
INSERT INTO wp40_usermeta VALUES("38","3","nickname","kanda");
INSERT INTO wp40_usermeta VALUES("39","3","first_name","Kanda");
INSERT INTO wp40_usermeta VALUES("40","3","last_name","PR Durian Mall");
INSERT INTO wp40_usermeta VALUES("41","3","description","");
INSERT INTO wp40_usermeta VALUES("42","3","rich_editing","true");
INSERT INTO wp40_usermeta VALUES("43","3","comment_shortcuts","false");
INSERT INTO wp40_usermeta VALUES("44","3","admin_color","fresh");
INSERT INTO wp40_usermeta VALUES("45","3","use_ssl","0");
INSERT INTO wp40_usermeta VALUES("46","3","show_admin_bar_front","true");
INSERT INTO wp40_usermeta VALUES("47","3","wp40_capabilities","a:1:{s:6:\"editor\";b:1;}");
INSERT INTO wp40_usermeta VALUES("48","3","wp40_user_level","7");
INSERT INTO wp40_usermeta VALUES("49","3","dismissed_wp_pointers","wp350_media,wp360_revisions,wp360_locks,wp390_widgets");
INSERT INTO wp40_usermeta VALUES("50","4","nickname","shinagawa");
INSERT INTO wp40_usermeta VALUES("51","4","first_name","Shinagawa");
INSERT INTO wp40_usermeta VALUES("52","4","last_name","PR Chao Phraya Mall");
INSERT INTO wp40_usermeta VALUES("53","4","description","");
INSERT INTO wp40_usermeta VALUES("54","4","rich_editing","true");
INSERT INTO wp40_usermeta VALUES("55","4","comment_shortcuts","false");
INSERT INTO wp40_usermeta VALUES("56","4","admin_color","fresh");
INSERT INTO wp40_usermeta VALUES("57","4","use_ssl","0");
INSERT INTO wp40_usermeta VALUES("58","4","show_admin_bar_front","true");
INSERT INTO wp40_usermeta VALUES("59","4","wp40_capabilities","a:1:{s:6:\"editor\";b:1;}");
INSERT INTO wp40_usermeta VALUES("60","4","wp40_user_level","7");
INSERT INTO wp40_usermeta VALUES("61","4","dismissed_wp_pointers","wp350_media,wp360_revisions,wp360_locks,wp390_widgets");
INSERT INTO wp40_usermeta VALUES("62","5","nickname","aoyama");
INSERT INTO wp40_usermeta VALUES("63","5","first_name","Aoyama");
INSERT INTO wp40_usermeta VALUES("64","5","last_name","PR Thamrin Mall");
INSERT INTO wp40_usermeta VALUES("65","5","description","");
INSERT INTO wp40_usermeta VALUES("66","5","rich_editing","true");
INSERT INTO wp40_usermeta VALUES("67","5","comment_shortcuts","false");
INSERT INTO wp40_usermeta VALUES("68","5","admin_color","fresh");
INSERT INTO wp40_usermeta VALUES("69","5","use_ssl","0");
INSERT INTO wp40_usermeta VALUES("70","5","show_admin_bar_front","true");
INSERT INTO wp40_usermeta VALUES("71","5","wp40_capabilities","a:1:{s:6:\"editor\";b:1;}");
INSERT INTO wp40_usermeta VALUES("72","5","wp40_user_level","7");
INSERT INTO wp40_usermeta VALUES("73","5","dismissed_wp_pointers","wp350_media,wp360_revisions,wp360_locks,wp390_widgets");
INSERT INTO wp40_usermeta VALUES("74","6","nickname","osaki");
INSERT INTO wp40_usermeta VALUES("75","6","first_name","Osaki");
INSERT INTO wp40_usermeta VALUES("76","6","last_name","Divisi Perencanaan");
INSERT INTO wp40_usermeta VALUES("77","6","description","");
INSERT INTO wp40_usermeta VALUES("78","6","rich_editing","true");
INSERT INTO wp40_usermeta VALUES("79","6","comment_shortcuts","false");
INSERT INTO wp40_usermeta VALUES("80","6","admin_color","fresh");
INSERT INTO wp40_usermeta VALUES("81","6","use_ssl","0");
INSERT INTO wp40_usermeta VALUES("82","6","show_admin_bar_front","true");
INSERT INTO wp40_usermeta VALUES("83","6","wp40_capabilities","a:1:{s:6:\"editor\";b:1;}");
INSERT INTO wp40_usermeta VALUES("84","6","wp40_user_level","7");
INSERT INTO wp40_usermeta VALUES("85","6","dismissed_wp_pointers","wp350_media,wp360_revisions,wp360_locks,wp390_widgets");
INSERT INTO wp40_usermeta VALUES("86","7","nickname","azabu");
INSERT INTO wp40_usermeta VALUES("87","7","first_name","Azabu");
INSERT INTO wp40_usermeta VALUES("88","7","last_name","Divisi Personalia");
INSERT INTO wp40_usermeta VALUES("89","7","description","");
INSERT INTO wp40_usermeta VALUES("90","7","rich_editing","true");
INSERT INTO wp40_usermeta VALUES("91","7","comment_shortcuts","false");
INSERT INTO wp40_usermeta VALUES("92","7","admin_color","fresh");
INSERT INTO wp40_usermeta VALUES("93","7","use_ssl","0");
INSERT INTO wp40_usermeta VALUES("94","7","show_admin_bar_front","true");
INSERT INTO wp40_usermeta VALUES("95","7","wp40_capabilities","a:1:{s:6:\"editor\";b:1;}");
INSERT INTO wp40_usermeta VALUES("96","7","wp40_user_level","7");
INSERT INTO wp40_usermeta VALUES("97","7","dismissed_wp_pointers","wp350_media,wp360_revisions,wp360_locks,wp390_widgets");
INSERT INTO wp40_usermeta VALUES("98","1","closedpostboxes_page","a:0:{}");
INSERT INTO wp40_usermeta VALUES("99","1","metaboxhidden_page","a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}");





CREATE TABLE `wp40_users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO wp40_users VALUES("1","pacific","$P$B2Dy4wgxr1MrthYXXwrVodkRtzrnUm0","pacific","masdi@prima-softindo.co.id","","2014-09-08 03:23:31","","0","pacific");
INSERT INTO wp40_users VALUES("2","hamamatsu","$P$BsViUeYZXFAE/3WqW1vU4tYpZ3Nlpn.","hamamatsu","hamamatsu@example.com","","2014-09-09 07:52:56","","0","Hamamatsu PR Shiodome Mall");
INSERT INTO wp40_users VALUES("3","kanda","$P$BWEFPFDiswKKxSpHItcO/24iaK9DBh1","kanda","kanda@example.com","","2014-09-09 08:01:41","","0","Kanda PR Durian Mall");
INSERT INTO wp40_users VALUES("4","shinagawa","$P$BJ2HWNsLR6HDK/lv5BY2ezGuEpYY0x0","shinagawa","shinagawa@example.com","","2014-09-09 08:02:22","","0","Shinagawa PR Chao Phraya Mall");
INSERT INTO wp40_users VALUES("5","aoyama","$P$BT/R0udtWvYWHNA0lYxsvjCp8gHv0e/","aoyama","aoyama@example.com","","2014-09-09 08:03:05","","0","Aoyama PR Thamrin Mall");
INSERT INTO wp40_users VALUES("6","osaki","$P$B1rnGX0SLY/CRpgZIqOVbUejPjuAnW0","osaki","osaki@example.com","","2014-09-09 08:03:44","","0","Osaki Divisi Perencanaan");
INSERT INTO wp40_users VALUES("7","azabu","$P$BiCeH96kfOXx/8g4/IN8oDfYjfNY9L.","azabu","azabu@example.com","","2014-09-09 08:07:20","","0","Azabu Divisi Personalia");



