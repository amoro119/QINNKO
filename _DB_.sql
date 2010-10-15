-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2010 年 10 月 12 日 10:33
-- 服务器版本: 5.1.41
-- PHP 版本: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `magento`
--

-- --------------------------------------------------------

--
-- 表的结构 `adminnotification_inbox`
--

CREATE TABLE IF NOT EXISTS `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `severity` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `url` varchar(255) NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_remove` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_SEVERITY` (`severity`),
  KEY `IDX_IS_READ` (`is_read`),
  KEY `IDX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-07-25 01:24:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 1, 0),
(2, 4, '2008-08-02 01:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 1, 0),
(3, 3, '2008-08-02 01:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 1, 0),
(4, 3, '2008-08-13 17:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 1, 0),
(5, 1, '2008-09-02 21:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 1, 0),
(6, 3, '2008-09-15 22:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 1, 0),
(7, 3, '2008-09-17 20:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 1, 0),
(8, 4, '2008-11-07 23:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 1, 0),
(9, 3, '2008-11-20 01:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 1, 0),
(10, 3, '2008-11-26 21:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 1, 0),
(11, 3, '2008-12-30 07:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 1, 0),
(12, 2, '2008-12-30 21:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 1, 0),
(13, 2, '2009-01-12 20:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 1, 0),
(14, 3, '2009-01-24 00:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 1, 0),
(15, 3, '2009-02-02 21:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 1, 0),
(16, 3, '2009-02-24 00:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 1, 0),
(17, 3, '2009-02-27 01:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 1, 0),
(18, 2, '2009-03-03 23:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 1, 0),
(19, 3, '2009-03-31 02:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 1, 0),
(20, 3, '2009-04-18 04:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 1, 0),
(21, 3, '2009-05-19 22:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 1, 0),
(22, 3, '2009-05-29 22:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 1, 0),
(23, 3, '2009-06-01 19:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 1, 0),
(24, 3, '2009-07-02 01:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 1, 0),
(25, 3, '2009-07-23 06:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 1, 0),
(26, 4, '2009-08-28 18:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URL‘s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 1, 0),
(27, 2, '2009-09-23 20:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 1, 0),
(28, 4, '2009-09-25 14:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 1, 0),
(29, 4, '2009-10-07 00:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 1, 0),
(30, 4, '2009-12-08 23:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 1, 0),
(31, 4, '2009-12-31 09:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 1, 0),
(32, 4, '2010-02-13 03:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 1, 0),
(33, 3, '2010-02-20 02:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 1, 0),
(34, 4, '2010-04-23 20:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 0),
(35, 4, '2010-05-31 17:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magento’s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 0),
(36, 4, '2010-06-10 20:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 0),
(37, 4, '2010-07-26 21:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 0),
(38, 4, '2010-07-28 05:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 0),
(39, 4, '2010-07-28 20:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `admin_assert`
--

CREATE TABLE IF NOT EXISTS `admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assert_type` varchar(20) NOT NULL DEFAULT '',
  `assert_data` text,
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ACL Asserts' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `admin_assert`
--


-- --------------------------------------------------------

--
-- 表的结构 `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tree_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `role_type` char(1) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `role_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_id`),
  KEY `parent_id` (`parent_id`,`sort_order`),
  KEY `tree_level` (`tree_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='ACL Roles' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(5, 1, 2, 0, 'U', 1, '梁');

-- --------------------------------------------------------

--
-- 表的结构 `admin_rule`
--

CREATE TABLE IF NOT EXISTS `admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  `resource_id` varchar(255) NOT NULL DEFAULT '',
  `privileges` varchar(20) NOT NULL DEFAULT '',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0',
  `role_type` char(1) DEFAULT NULL,
  `permission` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `resource` (`resource_id`,`role_id`),
  KEY `role_id` (`role_id`,`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='ACL Rules' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `admin_rule`
--

INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', '', 0, 'G', 'allow');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `user_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `username` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT NULL,
  `logdate` datetime DEFAULT NULL,
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reload_acl_flag` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `extra` text,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Users' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`) VALUES
(1, '梁', '勤', 'test@test.com', 'admin', 'd5bca4861ce6cbedd9a1b949ead669fe:Ut', '2008-08-07 14:39:09', '2010-10-05 08:23:02', '2010-10-12 06:43:38', 19, 0, 1, 'a:1:{s:11:"configState";a:40:{s:14:"design_package";s:1:"1";s:12:"design_theme";s:1:"1";s:11:"design_head";s:1:"1";s:13:"design_header";s:1:"1";s:13:"design_footer";s:1:"1";s:16:"design_watermark";s:1:"1";s:17:"design_pagination";s:1:"0";s:15:"general_country";s:1:"1";s:14:"general_locale";s:1:"1";s:25:"general_store_information";s:1:"1";s:12:"dev_restrict";s:1:"1";s:9:"dev_debug";s:1:"1";s:20:"dev_translate_inline";s:1:"1";s:7:"dev_log";s:1:"1";s:6:"dev_js";s:1:"1";s:7:"dev_css";s:1:"1";s:7:"web_url";s:1:"1";s:7:"web_seo";s:1:"0";s:12:"web_unsecure";s:1:"0";s:10:"web_secure";s:1:"0";s:11:"web_default";s:1:"0";s:9:"web_polls";s:1:"0";s:10:"web_cookie";s:1:"0";s:11:"web_session";s:1:"0";s:24:"web_browser_capabilities";s:1:"0";s:14:"catalog_review";s:1:"1";s:16:"catalog_frontend";s:1:"1";s:15:"catalog_sitemap";s:1:"1";s:20:"catalog_productalert";s:1:"1";s:25:"catalog_productalert_cron";s:1:"1";s:19:"catalog_placeholder";s:1:"1";s:25:"catalog_recently_products";s:1:"1";s:13:"catalog_price";s:1:"1";s:18:"catalog_navigation";s:1:"1";s:14:"catalog_search";s:1:"1";s:11:"catalog_seo";s:1:"1";s:20:"catalog_downloadable";s:1:"1";s:22:"catalog_custom_options";s:1:"0";s:11:"cms_wysiwyg";s:1:"1";s:31:"advanced_modules_disable_output";s:1:"1";}}');

-- --------------------------------------------------------

--
-- 表的结构 `api_assert`
--

CREATE TABLE IF NOT EXISTS `api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assert_type` varchar(20) NOT NULL DEFAULT '',
  `assert_data` text,
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `api_assert`
--


-- --------------------------------------------------------

--
-- 表的结构 `api_role`
--

CREATE TABLE IF NOT EXISTS `api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tree_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `role_type` char(1) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `role_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_id`),
  KEY `parent_id` (`parent_id`,`sort_order`),
  KEY `tree_level` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `api_role`
--


-- --------------------------------------------------------

--
-- 表的结构 `api_rule`
--

CREATE TABLE IF NOT EXISTS `api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  `resource_id` varchar(255) NOT NULL DEFAULT '',
  `privileges` varchar(20) NOT NULL DEFAULT '',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0',
  `role_type` char(1) DEFAULT NULL,
  `permission` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `resource` (`resource_id`,`role_id`),
  KEY `role_id` (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `api_rule`
--


-- --------------------------------------------------------

--
-- 表的结构 `api_session`
--

CREATE TABLE IF NOT EXISTS `api_session` (
  `user_id` mediumint(9) unsigned NOT NULL,
  `logdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sessid` varchar(40) NOT NULL DEFAULT '',
  KEY `API_SESSION_USER` (`user_id`),
  KEY `API_SESSION_SESSID` (`sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

--
-- 转存表中的数据 `api_session`
--


-- --------------------------------------------------------

--
-- 表的结构 `api_user`
--

CREATE TABLE IF NOT EXISTS `api_user` (
  `user_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `username` varchar(40) NOT NULL DEFAULT '',
  `api_key` varchar(40) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT NULL,
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reload_acl_flag` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `api_user`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogindex_aggregation`
--

CREATE TABLE IF NOT EXISTS `catalogindex_aggregation` (
  `aggregation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `data` mediumtext,
  PRIMARY KEY (`aggregation_id`),
  UNIQUE KEY `IDX_STORE_KEY` (`store_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalogindex_aggregation`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogindex_aggregation_tag`
--

CREATE TABLE IF NOT EXISTS `catalogindex_aggregation_tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_code` varchar(255) NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `IDX_CODE` (`tag_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalogindex_aggregation_tag`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogindex_aggregation_to_tag`
--

CREATE TABLE IF NOT EXISTS `catalogindex_aggregation_to_tag` (
  `aggregation_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `IDX_AGGREGATION_TAG` (`aggregation_id`,`tag_id`),
  KEY `FK_CATALOGINDEX_AGGREGATION_TO_TAG_TAG` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalogindex_aggregation_to_tag`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogindex_eav`
--

CREATE TABLE IF NOT EXISTS `catalogindex_eav` (
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`store_id`,`entity_id`,`attribute_id`,`value`),
  KEY `IDX_VALUE` (`value`),
  KEY `FK_CATALOGINDEX_EAV_ENTITY` (`entity_id`),
  KEY `FK_CATALOGINDEX_EAV_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOGINDEX_EAV_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalogindex_eav`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogindex_minimal_price`
--

CREATE TABLE IF NOT EXISTS `catalogindex_minimal_price` (
  `index_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_group_id` smallint(3) unsigned NOT NULL DEFAULT '0',
  `qty` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_class_id` smallint(6) NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`index_id`),
  KEY `IDX_VALUE` (`value`),
  KEY `IDX_QTY` (`qty`),
  KEY `FK_CATALOGINDEX_MINIMAL_PRICE_ENTITY` (`entity_id`),
  KEY `FK_CATALOGINDEX_MINIMAL_PRICE_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `FK_CI_MINIMAL_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_FULL` (`entity_id`,`qty`,`customer_group_id`,`value`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalogindex_minimal_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogindex_price`
--

CREATE TABLE IF NOT EXISTS `catalogindex_price` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `customer_group_id` smallint(3) unsigned NOT NULL DEFAULT '0',
  `qty` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_class_id` smallint(6) NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned DEFAULT NULL,
  KEY `IDX_VALUE` (`value`),
  KEY `IDX_QTY` (`qty`),
  KEY `FK_CATALOGINDEX_PRICE_ENTITY` (`entity_id`),
  KEY `FK_CATALOGINDEX_PRICE_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOGINDEX_PRICE_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `IDX_RANGE_VALUE` (`entity_id`,`attribute_id`,`customer_group_id`,`value`),
  KEY `FK_CI_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_FULL` (`entity_id`,`attribute_id`,`customer_group_id`,`value`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalogindex_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `cataloginventory_stock`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock` (
  `stock_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `stock_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog inventory Stocks list' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `cataloginventory_stock`
--

INSERT INTO `cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- 表的结构 `cataloginventory_stock_item`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `stock_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `use_config_min_qty` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_qty_decimal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `backorders` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `use_config_backorders` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000',
  `use_config_min_sale_qty` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `use_config_max_sale_qty` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_in_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `low_stock_date` datetime DEFAULT NULL,
  `notify_stock_qty` decimal(12,4) DEFAULT NULL,
  `use_config_notify_stock_qty` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `manage_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_config_manage_stock` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `stock_status_changed_automatically` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_config_qty_increments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `use_config_enable_qty_increments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_qty_increments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `IDX_STOCK_PRODUCT` (`product_id`,`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_ITEM_PRODUCT` (`product_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_ITEM_STOCK` (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Invetory Stock Item Data' AUTO_INCREMENT=123 ;

--
-- 转存表中的数据 `cataloginventory_stock_item`
--

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_automatically`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_increments`, `enable_qty_increments`) VALUES
(120, 166, 1, '849.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0),
(122, 168, 1, '10.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cataloginventory_stock_status`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `stock_id` smallint(4) unsigned NOT NULL,
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `stock_status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_STOCK` (`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cataloginventory_stock_status`
--

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(166, 1, 1, '849.0000', 1),
(168, 1, 1, '10.0000', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cataloginventory_stock_status_idx`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `stock_id` smallint(4) unsigned NOT NULL,
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `stock_status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_STOCK` (`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cataloginventory_stock_status_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `cataloginventory_stock_status_tmp`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `stock_id` smallint(4) unsigned NOT NULL,
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `stock_status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_STOCK` (`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_WEBSITE` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cataloginventory_stock_status_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogrule`
--

CREATE TABLE IF NOT EXISTS `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `customer_group_ids` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `conditions_serialized` mediumtext NOT NULL,
  `actions_serialized` mediumtext NOT NULL,
  `stop_rules_processing` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `simple_action` varchar(32) NOT NULL,
  `discount_amount` decimal(12,4) NOT NULL,
  `website_ids` text,
  PRIMARY KEY (`rule_id`),
  KEY `sort_order` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `catalogrule`
--

INSERT INTO `catalogrule` (`rule_id`, `name`, `description`, `from_date`, `to_date`, `customer_group_ids`, `is_active`, `conditions_serialized`, `actions_serialized`, `stop_rules_processing`, `sort_order`, `simple_action`, `discount_amount`, `website_ids`) VALUES
(1, 'Sony Sale', '20% discount on all Sony products.', '2008-08-25', '2009-01-31', '0,1,2,3', 1, 'a:7:{s:4:"type";s:34:"catalogrule/rule_condition_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";s:10:"conditions";a:2:{i:0;a:5:{s:4:"type";s:34:"catalogrule/rule_condition_product";s:9:"attribute";s:12:"manufacturer";s:8:"operator";s:2:"==";s:5:"value";s:0:"";s:18:"is_value_processed";b:0;}i:1;a:5:{s:4:"type";s:34:"catalogrule/rule_condition_product";s:9:"attribute";s:5:"price";s:8:"operator";s:2:"<=";s:5:"value";d:100;s:18:"is_value_processed";b:0;}}}', 'a:4:{s:4:"type";s:34:"catalogrule/rule_action_collection";s:9:"attribute";N;s:8:"operator";s:1:"=";s:5:"value";N;}', 1, 0, 'by_percent', '0.0000', '1'),
(3, 'CODEDEMOSTORE', '10% off all Toshiba laptops', '2008-08-06', '2009-08-23', '0,1,2,4', 1, 'a:7:{s:4:"type";s:34:"catalogrule/rule_condition_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";s:10:"conditions";a:1:{i:0;a:5:{s:4:"type";s:34:"catalogrule/rule_condition_product";s:9:"attribute";s:12:"manufacturer";s:8:"operator";s:2:"==";s:5:"value";s:0:"";s:18:"is_value_processed";b:0;}}}', 'a:4:{s:4:"type";s:34:"catalogrule/rule_action_collection";s:9:"attribute";N;s:8:"operator";s:1:"=";s:5:"value";N;}', 0, 0, 'by_percent', '0.0000', '1'),
(4, 'Anashria 20 percent Off', '', '2008-08-27', '2009-08-28', '0,1,2,4', 1, 'a:7:{s:4:"type";s:34:"catalogrule/rule_condition_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";s:10:"conditions";a:1:{i:0;a:5:{s:4:"type";s:34:"catalogrule/rule_condition_product";s:9:"attribute";s:3:"sku";s:8:"operator";s:2:"==";s:5:"value";s:3:"ana";s:18:"is_value_processed";b:0;}}}', 'a:4:{s:4:"type";s:34:"catalogrule/rule_action_collection";s:9:"attribute";N;s:8:"operator";s:1:"=";s:5:"value";N;}', 1, 0, 'by_percent', '0.0000', '1'),
(5, '20 percent off selected Furniture', '', '2008-08-24', '2009-09-28', '0,1,2,4', 1, 'a:7:{s:4:"type";s:34:"catalogrule/rule_condition_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"any";s:10:"conditions";a:3:{i:0;a:5:{s:4:"type";s:34:"catalogrule/rule_condition_product";s:9:"attribute";s:3:"sku";s:8:"operator";s:2:"==";s:5:"value";s:6:"384822";s:18:"is_value_processed";b:0;}i:1;a:5:{s:4:"type";s:34:"catalogrule/rule_condition_product";s:9:"attribute";s:3:"sku";s:8:"operator";s:2:"==";s:5:"value";s:6:"349838";s:18:"is_value_processed";b:0;}i:2;a:5:{s:4:"type";s:34:"catalogrule/rule_condition_product";s:9:"attribute";s:3:"sku";s:8:"operator";s:2:"==";s:5:"value";s:4:"1112";s:18:"is_value_processed";b:0;}}}', 'a:4:{s:4:"type";s:34:"catalogrule/rule_action_collection";s:9:"attribute";N;s:8:"operator";s:1:"=";s:5:"value";N;}', 1, 0, 'by_percent', '0.0000', '1'),
(6, '20 percent off T shirts', '', '2008-08-28', '2009-10-30', '0,1,2', 1, 'a:7:{s:4:"type";s:34:"catalogrule/rule_condition_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";s:10:"conditions";a:1:{i:0;a:5:{s:4:"type";s:34:"catalogrule/rule_condition_product";s:9:"attribute";s:16:"attribute_set_id";s:8:"operator";s:2:"==";s:5:"value";s:2:"41";s:18:"is_value_processed";b:0;}}}', 'a:4:{s:4:"type";s:34:"catalogrule/rule_action_collection";s:9:"attribute";N;s:8:"operator";s:1:"=";s:5:"value";N;}', 0, 0, 'by_percent', '0.0000', '1'),
(7, 'Christmas Rule', '', '2008-12-21', '2009-01-24', '0,1,2,3,4', 0, 'a:6:{s:4:"type";s:34:"catalogrule/rule_condition_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";}', 'a:4:{s:4:"type";s:34:"catalogrule/rule_action_collection";s:9:"attribute";N;s:8:"operator";s:1:"=";s:5:"value";N;}', 0, 0, 'by_percent', '10.0000', '1');

-- --------------------------------------------------------

--
-- 表的结构 `catalogrule_affected_product`
--

CREATE TABLE IF NOT EXISTS `catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalogrule_affected_product`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogrule_group_website`
--

CREATE TABLE IF NOT EXISTS `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `rule_id` (`rule_id`),
  KEY `customer_group_id` (`customer_group_id`),
  KEY `website_id` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `catalogrule_group_website`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogrule_product`
--

CREATE TABLE IF NOT EXISTS `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `action_operator` enum('to_fixed','to_percent','by_fixed','by_percent') NOT NULL DEFAULT 'to_fixed',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `action_stop` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `sort_order` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `FK_catalogrule_product_rule` (`rule_id`),
  KEY `FK_catalogrule_product_customergroup` (`customer_group_id`),
  KEY `FK_catalogrule_product_website` (`website_id`),
  KEY `FK_CATALOGRULE_PRODUCT_PRODUCT` (`product_id`),
  KEY `IDX_FROM_TIME` (`from_time`),
  KEY `IDX_TO_TIME` (`to_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalogrule_product`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogrule_product_price`
--

CREATE TABLE IF NOT EXISTS `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_date` date NOT NULL DEFAULT '0000-00-00',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `website_id` smallint(5) unsigned NOT NULL,
  `latest_start_date` date DEFAULT NULL,
  `earliest_end_date` date DEFAULT NULL,
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `rule_date` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `FK_catalogrule_product_price_customergroup` (`customer_group_id`),
  KEY `FK_catalogrule_product_price_website` (`website_id`),
  KEY `FK_CATALOGRULE_PRODUCT_PRICE_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalogrule_product_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalogsearch_fulltext`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_fulltext` (
  `product_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `data_index` longtext NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`),
  FULLTEXT KEY `data_index` (`data_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalogsearch_fulltext`
--

INSERT INTO `catalogsearch_fulltext` (`product_id`, `store_id`, `data_index`) VALUES
(166, 3, 'HTC Touch Diamond Enabled Black HTC HTC Touch Diamond HTC Touch Diamond Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design. Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design. Featuring a sharp 2.8-inch touch screen housed within a stunning formation of brushed metal and flawless faceted edges, the HTC Touch Diamond is as beautiful to behold as it is to use. With HTC’s vibrant touch-responsive user interface, TouchFLO™ 3D, and ultra-fast HSDPA internet connectivity… the HTC Touch Diamond offers a rich online experience to rival a notebook computer, allowing you to interact with Google, YouTube, and Wikipedia as freely as you would with a broadband connection. Your contacts, favourite music, videos and photos are no longer an uninspired line of text. With TouchFLO 3D, album artwork, video stills and snapshots of your friends’ and family’s faces are brought to life for you to interact, play and launch at your fingertips. A 3.2 megapixel auto-focus camera will help you capture the perfect moment in style and with a massive 4GB of internal storage you can keep all the files you need. The integrated ultra-sensitive GPS will help you find your destination as quickly and efficiently as a dedicated satellite navigation unit. Style and substance in a phone are no longer mutually exclusive. The HTC Touch Diamond has arrived. Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design. Featuring a sharp 2.8-inch touch screen housed within a stunning formation of brushed metal and flawless faceted edges, the HTC Touch Diamond is as beautiful to behold as it is to use. With HTC’s vibrant touch-responsive user interface, TouchFLO™ 3D, and ultra-fast HSDPA internet connectivity… the HTC Touch Diamond offers a rich online experience to rival a notebook computer, allowing you to interact with Google, YouTube, and Wikipedia as freely as you would with a broadband connection. Your contacts, favourite music, videos and photos are no longer an uninspired line of text. With TouchFLO 3D, album artwork, video stills and snapshots of your friends’ and family’s faces are brought to life for you to interact, play and launch at your fingertips. A 3.2 megapixel auto-focus camera will help you capture the perfect moment in style and with a massive 4GB of internal storage you can keep all the files you need. The integrated ultra-sensitive GPS will help you find your destination as quickly and efficiently as a dedicated satellite navigation unit. Style and substance in a phone are no longer mutually exclusive. The HTC Touch Diamond has arrived. 102 mm (L) X 51 mm (W) X 11.35 mm (T) 750'),
(166, 2, 'HTC Touch Diamond Enabled Black HTC HTC Touch Diamond HTC Touch Diamond Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design. Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design. Featuring a sharp 2.8-inch touch screen housed within a stunning formation of brushed metal and flawless faceted edges, the HTC Touch Diamond is as beautiful to behold as it is to use. With HTC’s vibrant touch-responsive user interface, TouchFLO™ 3D, and ultra-fast HSDPA internet connectivity… the HTC Touch Diamond offers a rich online experience to rival a notebook computer, allowing you to interact with Google, YouTube, and Wikipedia as freely as you would with a broadband connection. Your contacts, favourite music, videos and photos are no longer an uninspired line of text. With TouchFLO 3D, album artwork, video stills and snapshots of your friends’ and family’s faces are brought to life for you to interact, play and launch at your fingertips. A 3.2 megapixel auto-focus camera will help you capture the perfect moment in style and with a massive 4GB of internal storage you can keep all the files you need. The integrated ultra-sensitive GPS will help you find your destination as quickly and efficiently as a dedicated satellite navigation unit. Style and substance in a phone are no longer mutually exclusive. The HTC Touch Diamond has arrived. Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design. Featuring a sharp 2.8-inch touch screen housed within a stunning formation of brushed metal and flawless faceted edges, the HTC Touch Diamond is as beautiful to behold as it is to use. With HTC’s vibrant touch-responsive user interface, TouchFLO™ 3D, and ultra-fast HSDPA internet connectivity… the HTC Touch Diamond offers a rich online experience to rival a notebook computer, allowing you to interact with Google, YouTube, and Wikipedia as freely as you would with a broadband connection. Your contacts, favourite music, videos and photos are no longer an uninspired line of text. With TouchFLO 3D, album artwork, video stills and snapshots of your friends’ and family’s faces are brought to life for you to interact, play and launch at your fingertips. A 3.2 megapixel auto-focus camera will help you capture the perfect moment in style and with a massive 4GB of internal storage you can keep all the files you need. The integrated ultra-sensitive GPS will help you find your destination as quickly and efficiently as a dedicated satellite navigation unit. Style and substance in a phone are no longer mutually exclusive. The HTC Touch Diamond has arrived. 102 mm (L) X 51 mm (W) X 11.35 mm (T) 750 1'),
(168, 1, 'RE02357E-1 Nokia Enabled 10 Gray Mens 匹克PEAK 2010新款情侣休闲鞋 男 女式 鞋子 休闲 匹克PEAK 2010新款情侣休闲鞋 男 女式 鞋子 * 产品名称：匹克PEAK 情侣休闲鞋 RE... * 上市时间: 2010-06-10 * 货号: RE02357E-1 * 运动鞋分类: 情侣休闲鞋 * 男女款: 情侣款 * 鞋帮款式: 低帮 * 外底材料: 防滑橡胶 * 中底材料: EVA * 鞋面材料: 网布 * 颜色分类: 女款 浅灰/大红 ... * 运动鞋尺码: 40 38 36 ... * 科技: 易弯折功能 * 适合场地: 硬地 * 功能: 透气 * 流行元素: 网状 * 代言明星: 巴蒂尔 * 品牌: 匹克 * 价格区间: 51-100元 1 99 1'),
(168, 2, 'RE02357E-1 Nokia Enabled 10 Gray Mens 匹克PEAK 2010新款情侣休闲鞋 男 女式 鞋子 休闲 匹克PEAK 2010新款情侣休闲鞋 男 女式 鞋子 * 产品名称：匹克PEAK 情侣休闲鞋 RE... * 上市时间: 2010-06-10 * 货号: RE02357E-1 * 运动鞋分类: 情侣休闲鞋 * 男女款: 情侣款 * 鞋帮款式: 低帮 * 外底材料: 防滑橡胶 * 中底材料: EVA * 鞋面材料: 网布 * 颜色分类: 女款 浅灰/大红 ... * 运动鞋尺码: 40 38 36 ... * 科技: 易弯折功能 * 适合场地: 硬地 * 功能: 透气 * 流行元素: 网状 * 代言明星: 巴蒂尔 * 品牌: 匹克 * 价格区间: 51-100元 1 99 1'),
(166, 1, 'HTC Touch Diamond Enabled Black HTC HTC Touch Diamond HTC Touch Diamond Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design. Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design. Featuring a sharp 2.8-inch touch screen housed within a stunning formation of brushed metal and flawless faceted edges, the HTC Touch Diamond is as beautiful to behold as it is to use. With HTC’s vibrant touch-responsive user interface, TouchFLO™ 3D, and ultra-fast HSDPA internet connectivity… the HTC Touch Diamond offers a rich online experience to rival a notebook computer, allowing you to interact with Google, YouTube, and Wikipedia as freely as you would with a broadband connection. Your contacts, favourite music, videos and photos are no longer an uninspired line of text. With TouchFLO 3D, album artwork, video stills and snapshots of your friends’ and family’s faces are brought to life for you to interact, play and launch at your fingertips. A 3.2 megapixel auto-focus camera will help you capture the perfect moment in style and with a massive 4GB of internal storage you can keep all the files you need. The integrated ultra-sensitive GPS will help you find your destination as quickly and efficiently as a dedicated satellite navigation unit. Style and substance in a phone are no longer mutually exclusive. The HTC Touch Diamond has arrived. Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design. Featuring a sharp 2.8-inch touch screen housed within a stunning formation of brushed metal and flawless faceted edges, the HTC Touch Diamond is as beautiful to behold as it is to use. With HTC’s vibrant touch-responsive user interface, TouchFLO™ 3D, and ultra-fast HSDPA internet connectivity… the HTC Touch Diamond offers a rich online experience to rival a notebook computer, allowing you to interact with Google, YouTube, and Wikipedia as freely as you would with a broadband connection. Your contacts, favourite music, videos and photos are no longer an uninspired line of text. With TouchFLO 3D, album artwork, video stills and snapshots of your friends’ and family’s faces are brought to life for you to interact, play and launch at your fingertips. A 3.2 megapixel auto-focus camera will help you capture the perfect moment in style and with a massive 4GB of internal storage you can keep all the files you need. The integrated ultra-sensitive GPS will help you find your destination as quickly and efficiently as a dedicated satellite navigation unit. Style and substance in a phone are no longer mutually exclusive. The HTC Touch Diamond has arrived. 102 mm (L) X 51 mm (W) X 11.35 mm (T) 750 1');

-- --------------------------------------------------------

--
-- 表的结构 `catalogsearch_query`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query_text` varchar(255) NOT NULL DEFAULT '',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `synonym_for` varchar(255) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `display_in_terms` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `is_processed` tinyint(1) DEFAULT '0',
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`query_id`),
  KEY `FK_CATALOGSEARCH_QUERY_STORE` (`store_id`),
  KEY `IDX_SEARCH_QUERY` (`query_text`,`store_id`,`popularity`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `catalogsearch_query`
--

INSERT INTO `catalogsearch_query` (`query_id`, `query_text`, `num_results`, `popularity`, `redirect`, `synonym_for`, `store_id`, `display_in_terms`, `is_active`, `is_processed`, `updated_at`) VALUES
(1, 'Test', 8, 654, '', '', 1, 1, 1, 0, '2008-08-05 22:33:02'),
(2, 'acer', 1, 394, '', '', 1, 1, 1, 0, '2008-08-05 23:53:34'),
(3, 'couch', 2, 367, '', '', 1, 1, 1, 0, '2008-08-05 13:05:23'),
(4, 'Shirts', 3, 410, '', '', 1, 1, 1, 0, '2008-08-05 23:08:53'),
(5, 'APPLE', 2, 511, '', '', 1, 1, 1, 0, '2008-08-05 23:54:26'),
(6, 'phone', 6, 462, '', '', 1, 1, 1, 0, '2008-08-06 07:35:05'),
(7, 'Nokia', 1, 366, '', '', 1, 1, 1, 0, '2008-08-05 17:59:32'),
(8, 'sony', 3, 1092, '', '', 1, 1, 1, 0, '2008-08-06 08:06:44'),
(9, 'clogs', 1, 391, 'http://demo.magentocommerce.com/cn-clogs-beach-garden-clog-1.html', '', 1, 1, 1, 0, '2008-08-06 09:57:22'),
(10, 'canon', 2, 341, '', '', 1, 1, 1, 0, '2008-08-05 14:22:37'),
(11, 'red', 20, 596, '', '', 1, 1, 1, 0, '2008-08-05 21:01:37'),
(12, 'ferrari', 1, 284, '', '', 1, 1, 1, 0, '2008-08-05 22:44:46'),
(13, 'shirt', 5, 444, '', '', 1, 1, 1, 0, '2008-08-05 16:33:30'),
(14, 'computer', 10, 2032, '', '', 1, 1, 1, 0, '2008-08-06 00:30:46'),
(15, 'samsung', 3, 381, '', '', 1, 1, 1, 0, '2008-08-05 14:00:38'),
(16, 'ipod', 1, 435, '', '', 1, 1, 1, 0, '2008-08-05 14:10:35'),
(18, 'rebel', 1, 280, '', '', 1, 1, 1, 0, '2008-08-06 07:38:22'),
(19, 'camera', 13, 1322, '', '', 1, 1, 1, 0, '2008-08-05 20:38:13'),
(20, 'Anashria Womens Premier Leather Sandal', 1, 332, '', '', 1, 1, 1, 0, '2008-08-06 04:21:08'),
(21, 'west', 6, 395, '', '', 1, 1, 1, 0, '2008-08-05 16:42:11'),
(22, 'mens', 11, 352, '', '', 1, 1, 1, 0, '2008-08-04 02:37:27'),
(23, 'design', 19, 826, '', '', 1, 1, 1, 0, '2008-08-05 10:18:45'),
(24, 'coalesce', 1, 385, '', '', 1, 1, 1, 0, '2008-08-05 16:36:34'),
(25, 'nine west', 1, 22, '', '', 1, 1, 1, 0, '2008-08-06 08:53:59'),
(26, 'Zolof The Rock And Roll Destroyer', 1, 22, '', '', 1, 1, 1, 0, '2008-08-05 02:23:42'),
(27, 'T-Shirt', 4, 394, '', '', 1, 1, 1, 0, '2008-08-05 18:10:27'),
(28, 'children', 1, 377, '', '', 1, 1, 1, 0, '2008-08-04 00:23:21'),
(29, 'Cameras', 1, 453, '', '', 1, 1, 1, 0, '2008-08-05 01:17:52'),
(30, 'Sony VAIO', 2, 458, '', '', 1, 1, 1, 0, '2008-08-06 05:46:44'),
(31, 'camera case', 1, 443, '', '', 1, 1, 1, 0, '2008-08-05 16:07:18'),
(32, 'lucero', 1, 269, '', '', 1, 1, 1, 0, '2008-08-05 14:16:58'),
(33, 'clog', 1, 367, '', '', 1, 1, 1, 0, '2008-08-05 08:12:31'),
(34, 'apparel', 3, 353, '', '', 1, 1, 1, 0, '2008-08-01 10:36:56'),
(35, 'comp', 23, 36, '', '', 1, 1, 1, 0, '2008-08-03 22:43:00'),
(36, 'black', 11, 21, '', '', 1, 1, 1, 0, '2008-08-04 23:07:15'),
(37, 'laptop', 6, 300, '', 'notebook', 1, 1, 1, 0, '2008-08-05 23:41:19'),
(38, 'photo', 11, 44, '', '', 1, 1, 1, 0, '2008-08-02 21:18:17'),
(39, 'ottoman', 2, 189, '', '', 1, 1, 1, 0, '2008-08-05 04:38:40'),
(40, '匹克', 0, 6, '', '', 1, 1, 1, 0, '2010-10-12 07:42:49'),
(41, '鞋', 0, 2, '', '', 1, 1, 1, 0, '2010-10-12 07:28:34'),
(42, 'Diamond', 1, 4, '', '', 1, 1, 1, 0, '2010-10-12 07:42:53'),
(43, 'PEAK', 0, 14, '', '', 1, 1, 1, 0, '2010-10-12 08:09:45'),
(44, 'diomand', 0, 3, '', '', 1, 1, 1, 0, '2010-10-12 07:42:15'),
(45, '2010', 0, 1, '', '', 1, 1, 1, 0, '2010-10-12 07:46:45'),
(46, '新款', 0, 1, '', '', 1, 1, 1, 0, '2010-10-12 07:46:58');

-- --------------------------------------------------------

--
-- 表的结构 `catalogsearch_result`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `relevance` decimal(6,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`query_id`,`product_id`),
  KEY `IDX_QUERY` (`query_id`),
  KEY `IDX_PRODUCT` (`product_id`),
  KEY `IDX_RELEVANCE` (`query_id`,`relevance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalogsearch_result`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_anc_categs_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  KEY `IDX_CATEGORY` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_anc_categs_index_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_anc_categs_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  KEY `IDX_CATEGORY` (`category_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_anc_categs_index_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_anc_products_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_anc_products_index_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_anc_products_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_anc_products_index_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `children_count` int(11) NOT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_LEVEL` (`level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Category Entityies' AUTO_INCREMENT=69 ;

--
-- 转存表中的数据 `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 9, 12, 0, '2007-07-20 18:46:08', '2007-08-07 09:50:15', '1', 1, 0, 31),
(3, 9, 12, 1, '2007-08-22 15:54:41', '2010-10-08 07:13:52', '1/3', 3, 1, 30),
(20, 9, 12, 44, '2007-08-25 13:14:09', '2010-10-10 06:59:05', '1/3/43/44/20', 1, 4, 0),
(35, 9, 12, 0, '2010-10-06 13:07:21', '2010-10-06 13:07:21', '/35', 21, 1, 2),
(36, 9, 12, 35, '2010-10-06 13:07:47', '2010-10-06 13:07:47', '/35/36', 1, 2, 0),
(37, 9, 12, 35, '2010-10-06 13:08:28', '2010-10-06 13:08:28', '/35/37', 2, 2, 0),
(39, 9, 12, 44, '2010-10-06 13:10:05', '2010-10-10 06:59:14', '1/3/43/44/39', 2, 4, 0),
(40, 9, 12, 68, '2010-10-06 13:10:27', '2010-10-06 13:11:50', '1/3/54/58/68/40', 6, 5, 0),
(41, 9, 12, 68, '2010-10-06 13:10:54', '2010-10-06 13:12:00', '1/3/54/58/68/41', 1, 5, 0),
(42, 9, 12, 66, '2010-10-06 13:11:19', '2010-10-06 13:12:08', '1/3/54/58/66/42', 3, 5, 0),
(43, 9, 12, 3, '2010-10-06 13:13:16', '2010-10-08 07:10:14', '1/3/43', 2, 2, 10),
(44, 9, 12, 43, '2010-10-06 13:13:49', '2010-10-06 13:17:52', '1/3/43/44', 1, 3, 8),
(45, 9, 12, 68, '2010-10-06 13:15:55', '2010-10-06 13:16:04', '1/3/54/58/68/45', 5, 5, 0),
(46, 9, 12, 67, '2010-10-06 13:16:35', '2010-10-12 08:07:39', '1/3/54/58/67/46', 1, 5, 0),
(47, 9, 12, 67, '2010-10-06 13:16:47', '2010-10-06 13:18:29', '1/3/54/58/67/47', 2, 5, 0),
(48, 9, 12, 68, '2010-10-06 13:17:00', '2010-10-06 13:18:35', '1/3/54/58/68/48', 4, 5, 0),
(49, 9, 12, 68, '2010-10-06 13:17:11', '2010-10-06 13:18:41', '1/3/54/58/68/49', 2, 5, 0),
(50, 9, 12, 68, '2010-10-06 13:17:26', '2010-10-06 13:18:48', '1/3/54/58/68/50', 3, 5, 0),
(51, 9, 12, 66, '2010-10-06 13:18:05', '2010-10-06 13:18:55', '1/3/54/58/66/51', 2, 5, 0),
(52, 9, 12, 66, '2010-10-06 13:18:21', '2010-10-06 13:19:02', '1/3/54/58/66/52', 1, 5, 0),
(53, 9, 12, 43, '2010-10-06 13:19:14', '2010-10-06 13:19:24', '1/3/43/53', 2, 3, 0),
(54, 9, 12, 3, '2010-10-06 13:19:33', '2010-10-12 06:45:54', '1/3/54', 1, 2, 18),
(56, 9, 12, 68, '2010-10-06 14:07:57', '2010-10-10 06:56:39', '1/3/54/58/68/56', 8, 5, 0),
(57, 9, 12, 68, '2010-10-06 14:08:25', '2010-10-06 14:08:33', '1/3/54/58/68/57', 7, 5, 0),
(58, 9, 12, 54, '2010-10-08 07:15:24', '2010-10-12 08:03:49', '1/3/54/58', 1, 3, 16),
(59, 9, 12, 54, '2010-10-10 06:55:01', '2010-10-10 06:56:03', '1/3/54/59', 2, 3, 0),
(60, 9, 12, 44, '2010-10-10 06:59:42', '2010-10-10 06:59:42', '1/3/43/44/60', 3, 4, 0),
(61, 9, 12, 44, '2010-10-10 06:59:55', '2010-10-10 07:00:53', '1/3/43/44/61', 4, 4, 0),
(62, 9, 12, 44, '2010-10-10 07:04:19', '2010-10-10 07:04:19', '1/3/43/44/62', 5, 4, 0),
(63, 9, 12, 44, '2010-10-10 07:04:43', '2010-10-10 07:04:43', '1/3/43/44/63', 6, 4, 0),
(64, 9, 12, 44, '2010-10-10 07:05:07', '2010-10-10 07:05:07', '1/3/43/44/64', 7, 4, 0),
(65, 9, 12, 44, '2010-10-10 07:05:28', '2010-10-10 07:05:28', '1/3/43/44/65', 8, 4, 0),
(66, 9, 12, 58, '2010-10-12 06:48:08', '2010-10-12 06:48:08', '1/3/54/58/66', 1, 4, 3),
(67, 9, 12, 58, '2010-10-12 06:48:39', '2010-10-12 08:04:57', '1/3/54/58/67', 2, 4, 2),
(68, 9, 12, 58, '2010-10-12 06:49:08', '2010-10-12 06:49:08', '1/3/54/58/68', 3, 4, 8);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` datetime DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_DATETIME_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- 转存表中的数据 `catalog_category_entity_datetime`
--

INSERT INTO `catalog_category_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 9, 565, 0, 35, NULL),
(2, 9, 566, 0, 35, NULL),
(3, 9, 565, 0, 36, NULL),
(4, 9, 566, 0, 36, NULL),
(5, 9, 565, 0, 37, NULL),
(6, 9, 566, 0, 37, NULL),
(9, 9, 565, 0, 3, NULL),
(10, 9, 566, 0, 3, NULL),
(11, 9, 565, 0, 20, NULL),
(12, 9, 566, 0, 20, NULL),
(13, 9, 565, 0, 39, NULL),
(14, 9, 566, 0, 39, NULL),
(15, 9, 565, 0, 40, NULL),
(16, 9, 566, 0, 40, NULL),
(17, 9, 565, 0, 41, NULL),
(18, 9, 566, 0, 41, NULL),
(19, 9, 565, 0, 42, NULL),
(20, 9, 566, 0, 42, NULL),
(21, 9, 565, 0, 43, NULL),
(22, 9, 566, 0, 43, NULL),
(23, 9, 565, 0, 44, NULL),
(24, 9, 566, 0, 44, NULL),
(25, 9, 565, 0, 45, NULL),
(26, 9, 566, 0, 45, NULL),
(27, 9, 565, 0, 46, NULL),
(28, 9, 566, 0, 46, NULL),
(29, 9, 565, 0, 47, NULL),
(30, 9, 566, 0, 47, NULL),
(31, 9, 565, 0, 48, NULL),
(32, 9, 566, 0, 48, NULL),
(33, 9, 565, 0, 49, NULL),
(34, 9, 566, 0, 49, NULL),
(35, 9, 565, 0, 50, NULL),
(36, 9, 566, 0, 50, NULL),
(37, 9, 565, 0, 51, NULL),
(38, 9, 566, 0, 51, NULL),
(39, 9, 565, 0, 52, NULL),
(40, 9, 566, 0, 52, NULL),
(41, 9, 565, 0, 53, NULL),
(42, 9, 566, 0, 53, NULL),
(43, 9, 565, 0, 54, NULL),
(44, 9, 566, 0, 54, NULL),
(47, 9, 565, 0, 56, NULL),
(48, 9, 566, 0, 56, NULL),
(49, 9, 565, 0, 57, NULL),
(50, 9, 566, 0, 57, NULL),
(51, 9, 565, 0, 58, NULL),
(52, 9, 566, 0, 58, NULL),
(53, 9, 565, 0, 59, NULL),
(54, 9, 566, 0, 59, NULL),
(55, 9, 565, 0, 60, NULL),
(56, 9, 566, 0, 60, NULL),
(57, 9, 565, 0, 61, NULL),
(58, 9, 566, 0, 61, NULL),
(59, 9, 565, 1, 62, NULL),
(60, 9, 566, 1, 62, NULL),
(61, 9, 565, 1, 63, NULL),
(62, 9, 566, 1, 63, NULL),
(63, 9, 565, 1, 64, NULL),
(64, 9, 566, 1, 64, NULL),
(65, 9, 565, 1, 65, NULL),
(66, 9, 566, 1, 65, NULL),
(67, 9, 565, 1, 66, NULL),
(68, 9, 566, 1, 66, NULL),
(69, 9, 565, 1, 67, NULL),
(70, 9, 566, 1, 67, NULL),
(71, 9, 565, 1, 68, NULL),
(72, 9, 566, 1, 68, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_DECIMAL_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_category_entity_decimal`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity_int`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_INT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_EMTITY_INT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_EMTITY_INT_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=361 ;

--
-- 转存表中的数据 `catalog_category_entity_int`
--

INSERT INTO `catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(11, 9, 119, 0, 1, 1),
(25, 9, 119, 0, 3, 1),
(26, 9, 120, 0, 20, 0),
(33, 9, 119, 0, 20, 1),
(76, 9, 564, 0, 20, 1),
(77, 9, 961, 0, 1, 1),
(78, 9, 961, 0, 3, 1),
(90, 9, 961, 0, 20, 0),
(104, 9, 119, 0, 35, 0),
(105, 9, 961, 0, 35, 1),
(106, 9, 117, 0, 35, NULL),
(107, 9, 120, 0, 35, 0),
(108, 9, 564, 0, 35, 1),
(109, 9, 119, 0, 36, 0),
(110, 9, 961, 0, 36, 1),
(111, 9, 117, 0, 36, NULL),
(112, 9, 120, 0, 36, 0),
(113, 9, 564, 0, 36, 1),
(114, 9, 119, 0, 37, 0),
(115, 9, 961, 0, 37, 0),
(116, 9, 117, 0, 37, NULL),
(117, 9, 120, 0, 37, 0),
(118, 9, 564, 0, 37, 1),
(124, 9, 117, 0, 3, NULL),
(125, 9, 120, 0, 3, 0),
(126, 9, 564, 0, 3, 1),
(128, 9, 117, 0, 20, NULL),
(129, 9, 119, 0, 39, 1),
(130, 9, 961, 0, 39, 0),
(131, 9, 117, 0, 39, NULL),
(132, 9, 120, 0, 39, 0),
(133, 9, 564, 0, 39, 1),
(134, 9, 119, 0, 40, 1),
(135, 9, 961, 0, 40, 0),
(136, 9, 117, 0, 40, NULL),
(137, 9, 120, 0, 40, 0),
(138, 9, 564, 0, 40, 1),
(139, 9, 119, 0, 41, 1),
(140, 9, 961, 0, 41, 0),
(141, 9, 117, 0, 41, NULL),
(142, 9, 120, 0, 41, 0),
(143, 9, 564, 0, 41, 1),
(144, 9, 119, 0, 42, 1),
(145, 9, 961, 0, 42, 0),
(146, 9, 117, 0, 42, NULL),
(147, 9, 120, 0, 42, 0),
(148, 9, 564, 0, 42, 1),
(163, 9, 119, 0, 43, 1),
(164, 9, 961, 0, 43, 1),
(165, 9, 117, 0, 43, NULL),
(166, 9, 120, 0, 43, 0),
(167, 9, 564, 0, 43, 1),
(168, 9, 119, 0, 44, 1),
(169, 9, 961, 0, 44, 0),
(170, 9, 117, 0, 44, NULL),
(171, 9, 120, 0, 44, 0),
(172, 9, 564, 0, 44, 1),
(178, 9, 119, 0, 45, 1),
(179, 9, 961, 0, 45, 0),
(180, 9, 117, 0, 45, NULL),
(181, 9, 120, 0, 45, 0),
(182, 9, 564, 0, 45, 1),
(186, 9, 119, 0, 46, 1),
(187, 9, 961, 0, 46, 0),
(188, 9, 117, 0, 46, NULL),
(189, 9, 120, 0, 46, 1),
(190, 9, 564, 0, 46, 1),
(191, 9, 119, 0, 47, 1),
(192, 9, 961, 0, 47, 0),
(193, 9, 117, 0, 47, NULL),
(194, 9, 120, 0, 47, 0),
(195, 9, 564, 0, 47, 1),
(196, 9, 119, 0, 48, 1),
(197, 9, 961, 0, 48, 0),
(198, 9, 117, 0, 48, NULL),
(199, 9, 120, 0, 48, 0),
(200, 9, 564, 0, 48, 1),
(201, 9, 119, 0, 49, 1),
(202, 9, 961, 0, 49, 0),
(203, 9, 117, 0, 49, NULL),
(204, 9, 120, 0, 49, 0),
(205, 9, 564, 0, 49, 1),
(206, 9, 119, 0, 50, 1),
(207, 9, 961, 0, 50, 0),
(208, 9, 117, 0, 50, NULL),
(209, 9, 120, 0, 50, 0),
(210, 9, 564, 0, 50, 1),
(213, 9, 119, 0, 51, 1),
(214, 9, 961, 0, 51, 0),
(215, 9, 117, 0, 51, NULL),
(216, 9, 120, 0, 51, 0),
(217, 9, 564, 0, 51, 1),
(218, 9, 119, 0, 52, 1),
(219, 9, 961, 0, 52, 0),
(220, 9, 117, 0, 52, NULL),
(221, 9, 120, 0, 52, 0),
(222, 9, 564, 0, 52, 1),
(241, 9, 119, 0, 53, 1),
(242, 9, 961, 0, 53, 0),
(243, 9, 117, 0, 53, NULL),
(244, 9, 120, 0, 53, 0),
(245, 9, 564, 0, 53, 1),
(249, 9, 119, 0, 54, 1),
(250, 9, 961, 0, 54, 1),
(251, 9, 117, 0, 54, NULL),
(252, 9, 120, 0, 54, 0),
(253, 9, 564, 0, 54, 1),
(262, 9, 119, 0, 56, 1),
(263, 9, 961, 0, 56, 0),
(264, 9, 117, 0, 56, NULL),
(265, 9, 120, 0, 56, 0),
(266, 9, 564, 0, 56, 1),
(267, 9, 119, 0, 57, 1),
(268, 9, 961, 0, 57, 0),
(269, 9, 117, 0, 57, NULL),
(270, 9, 120, 0, 57, 0),
(271, 9, 564, 0, 57, 1),
(278, 9, 119, 0, 58, 1),
(279, 9, 961, 0, 58, 0),
(280, 9, 117, 0, 58, NULL),
(281, 9, 120, 0, 58, 0),
(282, 9, 564, 0, 58, 1),
(283, 9, 119, 0, 59, 1),
(284, 9, 961, 0, 59, 0),
(285, 9, 117, 0, 59, NULL),
(286, 9, 120, 0, 59, 0),
(287, 9, 564, 0, 59, 1),
(303, 9, 119, 0, 60, 1),
(304, 9, 961, 0, 60, 1),
(305, 9, 117, 0, 60, NULL),
(306, 9, 120, 0, 60, 0),
(307, 9, 564, 0, 60, 1),
(308, 9, 119, 0, 61, 1),
(309, 9, 961, 0, 61, 1),
(310, 9, 117, 0, 61, NULL),
(311, 9, 120, 0, 61, 0),
(312, 9, 564, 0, 61, 1),
(315, 9, 119, 0, 62, 1),
(316, 9, 119, 1, 62, 1),
(317, 9, 961, 1, 62, 0),
(318, 9, 117, 1, 62, NULL),
(319, 9, 120, 0, 62, 0),
(320, 9, 564, 1, 62, 1),
(321, 9, 119, 0, 63, 1),
(322, 9, 119, 1, 63, 1),
(323, 9, 961, 1, 63, 0),
(324, 9, 117, 1, 63, NULL),
(325, 9, 120, 0, 63, 0),
(326, 9, 564, 1, 63, 1),
(327, 9, 119, 0, 64, 1),
(328, 9, 119, 1, 64, 1),
(329, 9, 961, 1, 64, 0),
(330, 9, 117, 1, 64, NULL),
(331, 9, 120, 0, 64, 0),
(332, 9, 564, 1, 64, 1),
(333, 9, 119, 0, 65, 1),
(334, 9, 119, 1, 65, 1),
(335, 9, 961, 1, 65, 0),
(336, 9, 117, 1, 65, NULL),
(337, 9, 120, 0, 65, 0),
(338, 9, 564, 1, 65, 1),
(339, 9, 117, 1, 54, 6),
(340, 9, 564, 1, 54, 2),
(342, 9, 119, 0, 66, 1),
(343, 9, 119, 1, 66, 1),
(344, 9, 961, 1, 66, 0),
(345, 9, 117, 1, 66, NULL),
(346, 9, 120, 0, 66, 0),
(347, 9, 564, 1, 66, 1),
(348, 9, 119, 0, 67, 1),
(349, 9, 119, 1, 67, 1),
(352, 9, 120, 0, 67, 0),
(354, 9, 119, 0, 68, 1),
(355, 9, 119, 1, 68, 1),
(356, 9, 961, 1, 68, 0),
(357, 9, 117, 1, 68, NULL),
(358, 9, 120, 0, 68, 0),
(359, 9, 564, 1, 68, 1),
(360, 9, 564, 1, 58, 1);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity_text`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_TEXT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=338 ;

--
-- 转存表中的数据 `catalog_category_entity_text`
--

INSERT INTO `catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 9, 121, 0, 3, '3,18,4,5,16,17,19,24,10,22,23,13,8,12,26,25,15,20'),
(4, 9, 123, 0, 3, '18,10,13,20'),
(22, 9, 122, 0, 20, '20'),
(46, 9, 122, 0, 3, ''),
(125, 9, 115, 0, 20, ''),
(126, 9, 530, 0, 20, ''),
(133, 9, 121, 0, 20, '20'),
(134, 9, 123, 0, 20, ''),
(145, 9, 112, 0, 20, ''),
(146, 9, 116, 0, 20, ''),
(147, 9, 112, 0, 35, ''),
(148, 9, 115, 0, 35, ''),
(149, 9, 116, 0, 35, ''),
(150, 9, 530, 0, 35, ''),
(151, 9, 927, 0, 35, ''),
(152, 9, 112, 0, 36, ''),
(153, 9, 115, 0, 36, ''),
(154, 9, 116, 0, 36, ''),
(155, 9, 530, 0, 36, ''),
(156, 9, 927, 0, 36, ''),
(157, 9, 112, 0, 37, ''),
(158, 9, 115, 0, 37, ''),
(159, 9, 116, 0, 37, ''),
(160, 9, 530, 0, 37, ''),
(161, 9, 927, 0, 37, ''),
(167, 9, 112, 0, 3, ''),
(168, 9, 115, 0, 3, ''),
(169, 9, 116, 0, 3, ''),
(170, 9, 530, 0, 3, ''),
(171, 9, 927, 0, 3, ''),
(172, 9, 927, 0, 20, ''),
(173, 9, 112, 0, 39, ''),
(174, 9, 115, 0, 39, ''),
(175, 9, 116, 0, 39, ''),
(176, 9, 530, 0, 39, ''),
(177, 9, 927, 0, 39, ''),
(178, 9, 112, 0, 40, ''),
(179, 9, 115, 0, 40, ''),
(180, 9, 116, 0, 40, ''),
(181, 9, 530, 0, 40, ''),
(182, 9, 927, 0, 40, ''),
(183, 9, 112, 0, 41, ''),
(184, 9, 115, 0, 41, ''),
(185, 9, 116, 0, 41, ''),
(186, 9, 530, 0, 41, ''),
(187, 9, 927, 0, 41, ''),
(188, 9, 112, 0, 42, ''),
(189, 9, 115, 0, 42, ''),
(190, 9, 116, 0, 42, ''),
(191, 9, 530, 0, 42, ''),
(192, 9, 927, 0, 42, ''),
(193, 9, 112, 0, 43, ''),
(194, 9, 115, 0, 43, ''),
(195, 9, 116, 0, 43, ''),
(196, 9, 530, 0, 43, ''),
(197, 9, 927, 0, 43, ''),
(198, 9, 112, 0, 44, ''),
(199, 9, 115, 0, 44, ''),
(200, 9, 116, 0, 44, ''),
(201, 9, 530, 0, 44, ''),
(202, 9, 927, 0, 44, ''),
(203, 9, 112, 0, 45, ''),
(204, 9, 115, 0, 45, ''),
(205, 9, 116, 0, 45, ''),
(206, 9, 530, 0, 45, ''),
(207, 9, 927, 0, 45, ''),
(208, 9, 112, 0, 46, ''),
(209, 9, 115, 0, 46, ''),
(210, 9, 116, 0, 46, ''),
(211, 9, 530, 0, 46, ''),
(212, 9, 927, 0, 46, ''),
(213, 9, 112, 0, 47, ''),
(214, 9, 115, 0, 47, ''),
(215, 9, 116, 0, 47, ''),
(216, 9, 530, 0, 47, ''),
(217, 9, 927, 0, 47, ''),
(218, 9, 112, 0, 48, ''),
(219, 9, 115, 0, 48, ''),
(220, 9, 116, 0, 48, ''),
(221, 9, 530, 0, 48, ''),
(222, 9, 927, 0, 48, ''),
(223, 9, 112, 0, 49, ''),
(224, 9, 115, 0, 49, ''),
(225, 9, 116, 0, 49, ''),
(226, 9, 530, 0, 49, ''),
(227, 9, 927, 0, 49, ''),
(228, 9, 112, 0, 50, ''),
(229, 9, 115, 0, 50, ''),
(230, 9, 116, 0, 50, ''),
(231, 9, 530, 0, 50, ''),
(232, 9, 927, 0, 50, ''),
(233, 9, 112, 0, 51, ''),
(234, 9, 115, 0, 51, ''),
(235, 9, 116, 0, 51, ''),
(236, 9, 530, 0, 51, ''),
(237, 9, 927, 0, 51, ''),
(238, 9, 112, 0, 52, ''),
(239, 9, 115, 0, 52, ''),
(240, 9, 116, 0, 52, ''),
(241, 9, 530, 0, 52, ''),
(242, 9, 927, 0, 52, ''),
(243, 9, 112, 0, 53, ''),
(244, 9, 115, 0, 53, ''),
(245, 9, 116, 0, 53, ''),
(246, 9, 530, 0, 53, ''),
(247, 9, 927, 0, 53, ''),
(248, 9, 112, 0, 54, ''),
(249, 9, 115, 0, 54, ''),
(250, 9, 116, 0, 54, ''),
(251, 9, 530, 0, 54, ''),
(252, 9, 927, 0, 54, ''),
(258, 9, 112, 0, 56, ''),
(259, 9, 115, 0, 56, ''),
(260, 9, 116, 0, 56, ''),
(261, 9, 530, 0, 56, ''),
(262, 9, 927, 0, 56, ''),
(263, 9, 112, 0, 57, ''),
(264, 9, 115, 0, 57, ''),
(265, 9, 116, 0, 57, ''),
(266, 9, 530, 0, 57, ''),
(267, 9, 927, 0, 57, ''),
(268, 9, 112, 0, 58, ''),
(269, 9, 115, 0, 58, ''),
(270, 9, 116, 0, 58, ''),
(271, 9, 530, 0, 58, ''),
(272, 9, 927, 0, 58, ''),
(273, 9, 112, 0, 59, ''),
(274, 9, 115, 0, 59, ''),
(275, 9, 116, 0, 59, ''),
(276, 9, 530, 0, 59, ''),
(277, 9, 927, 0, 59, ''),
(278, 9, 112, 0, 60, ''),
(279, 9, 115, 0, 60, ''),
(280, 9, 116, 0, 60, ''),
(281, 9, 530, 0, 60, ''),
(282, 9, 927, 0, 60, ''),
(283, 9, 112, 0, 61, ''),
(284, 9, 115, 0, 61, ''),
(285, 9, 116, 0, 61, ''),
(286, 9, 530, 0, 61, ''),
(287, 9, 927, 0, 61, ''),
(288, 9, 927, 0, 62, ''),
(289, 9, 112, 1, 62, ''),
(290, 9, 115, 1, 62, ''),
(291, 9, 116, 1, 62, ''),
(292, 9, 530, 1, 62, ''),
(293, 9, 927, 1, 62, ''),
(294, 9, 927, 0, 63, ''),
(295, 9, 112, 1, 63, ''),
(296, 9, 115, 1, 63, ''),
(297, 9, 116, 1, 63, ''),
(298, 9, 530, 1, 63, ''),
(299, 9, 927, 1, 63, ''),
(300, 9, 927, 0, 64, ''),
(301, 9, 112, 1, 64, ''),
(302, 9, 115, 1, 64, ''),
(303, 9, 116, 1, 64, ''),
(304, 9, 530, 1, 64, ''),
(305, 9, 927, 1, 64, ''),
(306, 9, 927, 0, 65, ''),
(307, 9, 112, 1, 65, ''),
(308, 9, 115, 1, 65, ''),
(309, 9, 116, 1, 65, ''),
(310, 9, 530, 1, 65, ''),
(311, 9, 927, 1, 65, ''),
(312, 9, 530, 1, 54, '<reference name="head"> \r\n    <action method="addItem"><type>skin_js</type><name>js/accordian.pack.js</name></action>\r\n    <!--添加 js  myjs.js 文件在 /skin/frontend/主题包文件夹/主题文件夹/js-->\r\n</reference>\r\n<reference name="left">\r\n            <block type="catalog/navigation" name="catalog.leftnav" after="currency" template="catalog/navigation/left.phtml"/>\r\n</reference>'),
(316, 9, 530, 1, 58, '<reference name="left">\r\n            <block type="catalog/navigation" name="catalog.leftnav" after="currency" template="catalog/navigation/left.phtml"/>\r\n</reference>'),
(318, 9, 927, 0, 66, ''),
(319, 9, 112, 1, 66, ''),
(320, 9, 115, 1, 66, ''),
(321, 9, 116, 1, 66, ''),
(322, 9, 530, 1, 66, ''),
(323, 9, 927, 1, 66, ''),
(324, 9, 927, 0, 67, ''),
(328, 9, 530, 1, 67, '<reference name="left">\r\n            <block type="catalog/navigation" name="catalog.leftnav" after="currency" template="catalog/navigation/left.phtml"/>\r\n</reference>'),
(329, 9, 927, 1, 67, ''),
(330, 9, 927, 0, 68, ''),
(331, 9, 112, 1, 68, ''),
(332, 9, 115, 1, 68, ''),
(333, 9, 116, 1, 68, ''),
(334, 9, 530, 1, 68, ''),
(335, 9, 927, 1, 68, ''),
(337, 9, 530, 1, 46, '<reference name="left">\r\n            <block type="catalog/navigation" name="catalog.leftnav" after="currency" template="catalog/navigation/left.phtml"/>\r\n</reference>');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`) USING BTREE,
  KEY `FK_ATTRIBUTE_VARCHAR_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=496 ;

--
-- 转存表中的数据 `catalog_category_entity_varchar`
--

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 9, 111, 0, 3, 'Root Catalog'),
(2, 9, 118, 0, 3, 'PRODUCTS'),
(3, 9, 479, 0, 3, 'root-catalog'),
(39, 9, 111, 0, 20, '经典'),
(40, 9, 118, 0, 20, 'PRODUCTS'),
(41, 9, 479, 0, 20, 'household-items'),
(69, 9, 533, 0, 20, 'a-a-c-a/a-a/household-items.html'),
(177, 9, 114, 0, 20, ''),
(178, 9, 563, 0, 20, ''),
(179, 9, 514, 0, 20, ''),
(204, 9, 533, 1, 20, 'a-a-c-a/a-a/household-items.html'),
(205, 9, 111, 0, 35, '女士'),
(206, 9, 114, 0, 35, ''),
(207, 9, 479, 0, 35, 'a-a'),
(208, 9, 118, 0, 35, 'PRODUCTS'),
(209, 9, 563, 0, 35, ''),
(210, 9, 514, 0, 35, ''),
(211, 9, 111, 0, 36, '手提包'),
(212, 9, 114, 0, 36, ''),
(213, 9, 479, 0, 36, 'ae-ae-aoe'),
(214, 9, 118, 0, 36, 'PRODUCTS'),
(215, 9, 563, 0, 36, ''),
(216, 9, 514, 0, 36, ''),
(217, 9, 533, 1, 36, '/ae-ae-aoe.html'),
(218, 9, 533, 0, 36, '/ae-ae-aoe.html'),
(219, 9, 111, 0, 37, '旅行箱'),
(220, 9, 114, 0, 37, ''),
(221, 9, 479, 0, 37, 'ae-e-oec'),
(222, 9, 118, 0, 37, 'PRODUCTS'),
(223, 9, 563, 0, 37, ''),
(224, 9, 514, 0, 37, ''),
(225, 9, 533, 1, 37, '/ae-e-oec.html'),
(226, 9, 533, 0, 37, '/ae-e-oec.html'),
(233, 9, 114, 0, 3, ''),
(234, 9, 563, 0, 3, ''),
(235, 9, 514, 0, 3, ''),
(239, 9, 111, 0, 39, '时尚'),
(240, 9, 114, 0, 39, ''),
(241, 9, 479, 0, 39, 'ae-e-oec'),
(242, 9, 118, 0, 39, 'PRODUCTS'),
(243, 9, 563, 0, 39, ''),
(244, 9, 514, 0, 39, ''),
(245, 9, 533, 1, 39, 'a-a-c-a/a-a/ae-e-oec.html'),
(246, 9, 533, 0, 39, 'a-a-c-a/a-a/ae-e-oec.html'),
(247, 9, 111, 0, 40, '皮夹&小型皮具'),
(248, 9, 114, 0, 40, ''),
(249, 9, 479, 0, 40, 'cs-a-a-az-cs-a'),
(250, 9, 118, 0, 40, 'PRODUCTS'),
(251, 9, 563, 0, 40, ''),
(252, 9, 514, 0, 40, ''),
(253, 9, 111, 0, 41, '时尚首饰'),
(254, 9, 114, 0, 41, ''),
(255, 9, 479, 0, 41, 'ae-a-se-e'),
(256, 9, 118, 0, 41, 'PRODUCTS'),
(257, 9, 563, 0, 41, ''),
(258, 9, 514, 0, 41, ''),
(259, 9, 533, 1, 41, 'a-a/a-a/e-e-1/ae-a-se-e.html'),
(260, 9, 533, 0, 41, 'a-a/a-a/e-e-1/ae-a-se-e.html'),
(261, 9, 111, 0, 42, '腰带'),
(262, 9, 114, 0, 42, ''),
(263, 9, 479, 0, 42, 'e-a'),
(264, 9, 118, 0, 42, 'PRODUCTS'),
(265, 9, 563, 0, 42, ''),
(266, 9, 514, 0, 42, ''),
(267, 9, 533, 1, 42, 'a-a/a-a/e-aeoe/e-a.html'),
(268, 9, 533, 0, 42, 'a-a/a-a/e-aeoe/e-a.html'),
(269, 9, 111, 0, 43, '个性搭配'),
(270, 9, 114, 0, 43, ''),
(271, 9, 479, 0, 43, 'a-a-c-a'),
(272, 9, 118, 0, 43, 'PRODUCTS'),
(273, 9, 563, 0, 43, ''),
(274, 9, 514, 0, 43, ''),
(275, 9, 111, 0, 44, '女士'),
(276, 9, 114, 0, 44, ''),
(277, 9, 479, 0, 44, 'a-a'),
(278, 9, 118, 0, 44, 'PRODUCTS'),
(279, 9, 563, 0, 44, ''),
(280, 9, 514, 0, 44, ''),
(281, 9, 533, 1, 40, 'a-a/a-a/e-e-1/cs-a-a-az-cs-a.html'),
(282, 9, 533, 0, 40, 'a-a/a-a/e-e-1/cs-a-a-az-cs-a.html'),
(285, 9, 111, 0, 45, '太阳眼镜'),
(286, 9, 114, 0, 45, ''),
(287, 9, 479, 0, 45, 'a-e-coe-e-oe'),
(288, 9, 118, 0, 45, 'PRODUCTS'),
(289, 9, 563, 0, 45, ''),
(290, 9, 514, 0, 45, ''),
(291, 9, 111, 0, 46, '鞋履'),
(292, 9, 114, 0, 46, ''),
(293, 9, 479, 0, 46, 'ez-a'),
(294, 9, 118, 0, 46, 'PRODUCTS'),
(295, 9, 563, 0, 46, ''),
(296, 9, 514, 0, 46, ''),
(297, 9, 111, 0, 47, '记事本'),
(298, 9, 114, 0, 47, ''),
(299, 9, 479, 0, 47, 'e-a-aeoe'),
(300, 9, 118, 0, 47, 'PRODUCTS'),
(301, 9, 563, 0, 47, ''),
(302, 9, 514, 0, 47, ''),
(303, 9, 111, 0, 48, '钢笔'),
(304, 9, 114, 0, 48, ''),
(305, 9, 479, 0, 48, 'e-c'),
(306, 9, 118, 0, 48, 'PRODUCTS'),
(307, 9, 563, 0, 48, ''),
(308, 9, 514, 0, 48, ''),
(309, 9, 111, 0, 49, '腕表'),
(310, 9, 114, 0, 49, ''),
(311, 9, 479, 0, 49, 'e-e'),
(312, 9, 118, 0, 49, 'PRODUCTS'),
(313, 9, 563, 0, 49, ''),
(314, 9, 514, 0, 49, ''),
(315, 9, 111, 0, 50, '高级珠宝'),
(316, 9, 114, 0, 50, ''),
(317, 9, 479, 0, 50, 'e-c-c-a'),
(318, 9, 118, 0, 50, 'PRODUCTS'),
(319, 9, 563, 0, 50, ''),
(320, 9, 514, 0, 50, ''),
(323, 9, 111, 0, 51, '索菲亚科波拉'),
(324, 9, 114, 0, 51, ''),
(325, 9, 479, 0, 51, 'c-e-a-sc-ae-ae'),
(326, 9, 118, 0, 51, 'PRODUCTS'),
(327, 9, 563, 0, 51, ''),
(328, 9, 514, 0, 51, ''),
(329, 9, 111, 0, 52, '成衣'),
(330, 9, 114, 0, 52, ''),
(331, 9, 479, 0, 52, 'ae-e'),
(332, 9, 118, 0, 52, 'PRODUCTS'),
(333, 9, 563, 0, 52, ''),
(334, 9, 514, 0, 52, ''),
(335, 9, 111, 0, 53, '男士'),
(336, 9, 114, 0, 53, ''),
(337, 9, 479, 0, 53, 'c-a'),
(338, 9, 118, 0, 53, 'PRODUCTS'),
(339, 9, 563, 0, 53, ''),
(340, 9, 514, 0, 53, ''),
(341, 9, 111, 0, 54, '产品目录'),
(342, 9, 114, 0, 54, ''),
(343, 9, 479, 0, 54, 'a-a'),
(344, 9, 118, 0, 54, 'PRODUCTS'),
(345, 9, 563, 0, 54, ''),
(346, 9, 514, 0, 54, ''),
(347, 9, 533, 1, 54, 'a-a.html'),
(348, 9, 533, 0, 54, 'a-a.html'),
(357, 9, 111, 0, 56, '手提包'),
(358, 9, 114, 0, 56, ''),
(359, 9, 479, 0, 56, 'ae-ae-aoe'),
(360, 9, 118, 0, 56, 'PRODUCTS'),
(361, 9, 563, 0, 56, ''),
(362, 9, 514, 0, 56, ''),
(363, 9, 533, 1, 56, 'a-a/a-a/e-e-1/ae-ae-aoe.html'),
(364, 9, 533, 0, 56, 'a-a/a-a/e-e-1/ae-ae-aoe.html'),
(365, 9, 111, 0, 57, '旅行箱'),
(366, 9, 114, 0, 57, ''),
(367, 9, 479, 0, 57, 'ae-e-oec'),
(368, 9, 118, 0, 57, 'PRODUCTS'),
(369, 9, 563, 0, 57, ''),
(370, 9, 514, 0, 57, ''),
(371, 9, 533, 1, 57, 'a-a/a-a/e-e-1/ae-e-oec.html'),
(372, 9, 533, 0, 57, 'a-a/a-a/e-e-1/ae-e-oec.html'),
(375, 9, 533, 1, 43, 'a-a-c-a.html'),
(376, 9, 533, 0, 43, 'a-a-c-a.html'),
(377, 9, 533, 1, 44, 'a-a-c-a/a-a.html'),
(378, 9, 533, 0, 44, 'a-a-c-a/a-a.html'),
(379, 9, 533, 1, 45, 'a-a/a-a/e-e-1/a-e-coe-e-oe.html'),
(380, 9, 533, 0, 45, 'a-a/a-a/e-e-1/a-e-coe-e-oe.html'),
(381, 9, 533, 1, 46, 'a-a/a-a/ez/ez-a.html'),
(382, 9, 533, 0, 46, 'a-a/a-a/ez/ez-a.html'),
(383, 9, 533, 1, 47, 'a-a/a-a/ez/e-a-aeoe.html'),
(384, 9, 533, 0, 47, 'a-a/a-a/ez/e-a-aeoe.html'),
(385, 9, 533, 1, 48, 'a-a/a-a/e-e-1/e-c.html'),
(386, 9, 533, 0, 48, 'a-a/a-a/e-e-1/e-c.html'),
(387, 9, 533, 1, 49, 'a-a/a-a/e-e-1/e-e.html'),
(388, 9, 533, 0, 49, 'a-a/a-a/e-e-1/e-e.html'),
(389, 9, 533, 1, 50, 'a-a/a-a/e-e-1/e-c-c-a.html'),
(390, 9, 533, 0, 50, 'a-a/a-a/e-e-1/e-c-c-a.html'),
(391, 9, 533, 1, 51, 'a-a/a-a/e-aeoe/c-e-a-sc-ae-ae.html'),
(392, 9, 533, 0, 51, 'a-a/a-a/e-aeoe/c-e-a-sc-ae-ae.html'),
(393, 9, 533, 1, 52, 'a-a/a-a/e-aeoe/ae-e.html'),
(394, 9, 533, 0, 52, 'a-a/a-a/e-aeoe/ae-e.html'),
(395, 9, 533, 1, 53, 'a-a-c-a/c-a.html'),
(396, 9, 533, 0, 53, 'a-a-c-a/c-a.html'),
(397, 9, 111, 0, 58, '女士'),
(398, 9, 114, 0, 58, ''),
(399, 9, 479, 0, 58, 'a-a'),
(400, 9, 118, 0, 58, 'PRODUCTS'),
(401, 9, 563, 0, 58, ''),
(402, 9, 514, 0, 58, ''),
(403, 9, 533, 1, 58, 'a-a/a-a.html'),
(404, 9, 533, 0, 58, 'a-a/a-a.html'),
(405, 9, 111, 0, 59, '男士'),
(406, 9, 114, 0, 59, ''),
(407, 9, 479, 0, 59, 'c-a'),
(408, 9, 118, 0, 59, 'PRODUCTS'),
(409, 9, 563, 0, 59, ''),
(410, 9, 514, 0, 59, ''),
(411, 9, 533, 1, 59, 'a-a/c-a.html'),
(412, 9, 533, 0, 59, 'a-a/c-a.html'),
(415, 9, 111, 0, 60, '俭约'),
(416, 9, 114, 0, 60, ''),
(417, 9, 479, 0, 60, 'a-c'),
(418, 9, 118, 0, 60, 'PRODUCTS'),
(419, 9, 563, 0, 60, ''),
(420, 9, 514, 0, 60, ''),
(421, 9, 533, 1, 60, 'a-a-c-a/a-a/a-c.html'),
(422, 9, 533, 0, 60, 'a-a-c-a/a-a/a-c.html'),
(423, 9, 111, 0, 61, '可爱'),
(424, 9, 114, 0, 61, ''),
(425, 9, 479, 0, 61, 'a-c'),
(426, 9, 118, 0, 61, 'PRODUCTS'),
(427, 9, 563, 0, 61, ''),
(428, 9, 514, 0, 61, ''),
(429, 9, 533, 1, 61, 'a-a-c-a/a-a/a-c-1.html'),
(430, 9, 533, 0, 61, 'a-a-c-a/a-a/a-c-1.html'),
(431, 9, 111, 0, 62, '性感'),
(432, 9, 111, 1, 62, '性感'),
(433, 9, 114, 1, 62, ''),
(434, 9, 479, 0, 62, 'ae-ae'),
(435, 9, 118, 1, 62, 'PRODUCTS'),
(436, 9, 563, 1, 62, ''),
(437, 9, 514, 1, 62, ''),
(438, 9, 533, 1, 62, 'a-a-c-a/a-a/ae-ae.html'),
(439, 9, 533, 0, 62, 'a-a-c-a/a-a/ae-ae.html'),
(440, 9, 111, 0, 63, '端庄'),
(441, 9, 111, 1, 63, '端庄'),
(442, 9, 114, 1, 63, ''),
(443, 9, 479, 0, 63, 'c-a'),
(444, 9, 118, 1, 63, 'PRODUCTS'),
(445, 9, 563, 1, 63, ''),
(446, 9, 514, 1, 63, ''),
(447, 9, 533, 1, 63, 'a-a-c-a/a-a/c-a.html'),
(448, 9, 533, 0, 63, 'a-a-c-a/a-a/c-a.html'),
(449, 9, 111, 0, 64, '个性'),
(450, 9, 111, 1, 64, '个性'),
(451, 9, 114, 1, 64, ''),
(452, 9, 479, 0, 64, 'a-ae'),
(453, 9, 118, 1, 64, 'PRODUCTS'),
(454, 9, 563, 1, 64, ''),
(455, 9, 514, 1, 64, ''),
(456, 9, 533, 1, 64, 'a-a-c-a/a-a/a-ae.html'),
(457, 9, 533, 0, 64, 'a-a-c-a/a-a/a-ae.html'),
(458, 9, 111, 0, 65, '宴会'),
(459, 9, 111, 1, 65, '宴会'),
(460, 9, 114, 1, 65, ''),
(461, 9, 479, 0, 65, 'a-a-s'),
(462, 9, 118, 1, 65, 'PRODUCTS'),
(463, 9, 563, 1, 65, ''),
(464, 9, 514, 1, 65, ''),
(465, 9, 533, 1, 65, 'a-a-c-a/a-a/a-a-s.html'),
(466, 9, 533, 0, 65, 'a-a-c-a/a-a/a-a-s.html'),
(467, 9, 118, 1, 54, 'PAGE'),
(469, 9, 111, 0, 66, '衣服'),
(470, 9, 111, 1, 66, '衣服'),
(471, 9, 114, 1, 66, ''),
(472, 9, 479, 0, 66, 'e-aeoe'),
(473, 9, 118, 1, 66, 'PRODUCTS'),
(474, 9, 563, 1, 66, ''),
(475, 9, 514, 1, 66, ''),
(476, 9, 533, 1, 66, 'a-a/a-a/e-aeoe.html'),
(477, 9, 533, 0, 66, 'a-a/a-a/e-aeoe.html'),
(478, 9, 111, 0, 67, '鞋'),
(479, 9, 111, 1, 67, '鞋'),
(481, 9, 479, 0, 67, 'ez'),
(485, 9, 533, 1, 67, 'a-a/a-a/ez.html'),
(486, 9, 533, 0, 67, 'a-a/a-a/ez.html'),
(487, 9, 111, 0, 68, '配饰'),
(488, 9, 111, 1, 68, '配饰'),
(489, 9, 114, 1, 68, ''),
(490, 9, 479, 0, 68, 'e-e'),
(491, 9, 118, 1, 68, 'PRODUCTS'),
(492, 9, 563, 1, 68, ''),
(493, 9, 514, 1, 68, ''),
(494, 9, 533, 1, 68, 'a-a/a-a/e-e-1.html'),
(495, 9, 533, 0, 68, 'a-a/a-a/e-e-1.html');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_flat_store_1`
--

CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_1` (
  `entity_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `children_count` int(11) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `image` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` text,
  `meta_description` text,
  `landing_page` int(10) NOT NULL DEFAULT '0',
  `display_mode` varchar(255) NOT NULL DEFAULT '',
  `is_active` int(10) NOT NULL DEFAULT '0',
  `is_anchor` int(10) NOT NULL DEFAULT '0',
  `all_children` text,
  `path_in_store` text,
  `children` text,
  `url_key` varchar(255) NOT NULL DEFAULT '',
  `page_layout` varchar(255) NOT NULL DEFAULT '',
  `custom_layout_update` text,
  `url_path` varchar(255) NOT NULL DEFAULT '',
  `custom_design` varchar(255) NOT NULL DEFAULT '',
  `custom_design_apply` int(10) NOT NULL DEFAULT '0',
  `custom_design_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `custom_design_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `available_sort_by` text,
  `default_sort_by` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_PATH` (`path`),
  KEY `IDX_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_flat_store_1`
--

INSERT INTO `catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `name`, `description`, `image`, `meta_title`, `meta_keywords`, `meta_description`, `landing_page`, `display_mode`, `is_active`, `is_anchor`, `all_children`, `path_in_store`, `children`, `url_key`, `page_layout`, `custom_layout_update`, `url_path`, `custom_design`, `custom_design_apply`, `custom_design_from`, `custom_design_to`, `available_sort_by`, `default_sort_by`) VALUES
(1, 0, '2007-07-20 18:46:08', '2007-08-07 09:50:15', '1', 1, 0, 26, 1, '', '', '', '', '', '', 0, '', 1, 0, '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '2007-08-22 15:54:41', '2007-12-05 04:38:59', '1/3', 3, 1, 25, 1, 'Root Catalog', '', '', '', '', '', 0, 'PRODUCTS', 1, 0, '3,18,4,5,16,17,19,24,10,22,23,13,8,12,26,25,15,20', '', '18,10,13,20', 'root-catalog', '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(20, 3, '2007-08-25 13:14:09', '2008-08-07 23:58:57', '1/3/20', 20, 2, 0, 1, 'Household Items', '', '', '', '', '', 0, 'PRODUCTS', 0, 0, '20', '20', '', 'household-items', '', '', 'household-items.html', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_flat_store_2`
--

CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_2` (
  `entity_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `children_count` int(11) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `image` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` text,
  `meta_description` text,
  `landing_page` int(10) NOT NULL DEFAULT '0',
  `display_mode` varchar(255) NOT NULL DEFAULT '',
  `is_active` int(10) NOT NULL DEFAULT '0',
  `is_anchor` int(10) NOT NULL DEFAULT '0',
  `all_children` text,
  `path_in_store` text,
  `children` text,
  `url_key` varchar(255) NOT NULL DEFAULT '',
  `page_layout` varchar(255) NOT NULL DEFAULT '',
  `custom_layout_update` text,
  `url_path` varchar(255) NOT NULL DEFAULT '',
  `custom_design` varchar(255) NOT NULL DEFAULT '',
  `custom_design_apply` int(10) NOT NULL DEFAULT '0',
  `custom_design_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `custom_design_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `available_sort_by` text,
  `default_sort_by` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_PATH` (`path`),
  KEY `IDX_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_flat_store_2`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_flat_store_3`
--

CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_3` (
  `entity_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `children_count` int(11) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `image` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` text,
  `meta_description` text,
  `landing_page` int(10) NOT NULL DEFAULT '0',
  `display_mode` varchar(255) NOT NULL DEFAULT '',
  `is_active` int(10) NOT NULL DEFAULT '0',
  `is_anchor` int(10) NOT NULL DEFAULT '0',
  `all_children` text,
  `path_in_store` text,
  `children` text,
  `url_key` varchar(255) NOT NULL DEFAULT '',
  `page_layout` varchar(255) NOT NULL DEFAULT '',
  `custom_layout_update` text,
  `url_path` varchar(255) NOT NULL DEFAULT '',
  `custom_design` varchar(255) NOT NULL DEFAULT '',
  `custom_design_apply` int(10) NOT NULL DEFAULT '0',
  `custom_design_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `custom_design_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `available_sort_by` text,
  `default_sort_by` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_PATH` (`path`),
  KEY `IDX_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_flat_store_3`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `UNQ_CATEGORY_PRODUCT` (`category_id`,`product_id`),
  KEY `CATALOG_CATEGORY_PRODUCT_CATEGORY` (`category_id`),
  KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_product`
--

INSERT INTO `catalog_category_product` (`category_id`, `product_id`, `position`) VALUES
(46, 166, 1),
(46, 168, 1);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product_index`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) NOT NULL DEFAULT '0',
  `is_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visibility` tinyint(3) unsigned NOT NULL,
  UNIQUE KEY `UNQ_CATEGORY_PRODUCT` (`category_id`,`product_id`,`store_id`),
  KEY `FK_CATALOG_CATEGORY_PRODUCT_INDEX_PRODUCT_ENTITY` (`product_id`),
  KEY `FK_CATALOG_CATEGORY_PRODUCT_INDEX_CATEGORY_ENTITY` (`category_id`),
  KEY `IDX_JOIN` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `IDX_BASE` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_product_index`
--

INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(3, 166, 0, 0, 1, 4),
(3, 168, 0, 0, 1, 4),
(46, 166, 1, 1, 1, 4),
(46, 168, 1, 1, 1, 4),
(3, 166, 0, 0, 2, 4),
(3, 168, 0, 0, 2, 4),
(46, 166, 1, 1, 2, 4),
(46, 168, 1, 1, 2, 4);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product_index_enbl_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `visibility` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `IDX_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_product_index_enbl_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product_index_enbl_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `visibility` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `IDX_PRODUCT` (`product_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_product_index_enbl_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) NOT NULL DEFAULT '0',
  `is_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visibility` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_product_index_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) NOT NULL DEFAULT '0',
  `is_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visibility` tinyint(3) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_category_product_index_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_compare_item`
--

CREATE TABLE IF NOT EXISTS `catalog_compare_item` (
  `catalog_compare_item_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(11) unsigned DEFAULT NULL,
  `product_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `FK_CATALOG_COMPARE_ITEM_CUSTOMER` (`customer_id`),
  KEY `FK_CATALOG_COMPARE_ITEM_PRODUCT` (`product_id`),
  KEY `IDX_VISITOR_PRODUCTS` (`visitor_id`,`product_id`),
  KEY `IDX_CUSTOMER_PRODUCTS` (`customer_id`,`product_id`),
  KEY `FK_CATALOG_COMPARE_ITEM_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_compare_item`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `frontend_input_renderer` varchar(255) DEFAULT NULL,
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_searchable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_filterable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_comparable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_visible_on_front` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_html_allowed_on_front` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_used_for_price_rules` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'deprecated after 1.4.0.1',
  `is_filterable_in_search` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `used_in_product_listing` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `used_for_sort_by` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_configurable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `apply_to` varchar(255) NOT NULL,
  `is_visible_in_advanced_search` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `is_wysiwyg_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_used_for_promo_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=964 ;

--
-- 转存表中的数据 `catalog_eav_attribute`
--

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
(96, NULL, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, '', 1, 1, 0, 1),
(97, NULL, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, '', 1, 1, 0, 1),
(98, NULL, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, '', 1, 1, 0, 1),
(99, NULL, 2, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 1),
(100, NULL, 2, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'simple,virtual,downloadable', 0, 1, 0, 1),
(101, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'simple,bundle', 0, 1, 0, 1),
(102, NULL, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 'simple', 0, 1, 0, 1),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(104, NULL, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(105, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(107, NULL, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(109, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 1, 0, 1),
(110, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(111, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(112, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(113, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(114, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(115, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(116, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(117, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(118, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(119, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(120, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(121, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(122, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(123, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(270, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 1, 0, 0),
(271, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(272, NULL, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 'simple', 1, 1, 0, 1),
(273, NULL, 2, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 1, 0, 1),
(274, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 1, 0, 1),
(476, NULL, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(479, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(481, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 1, 0, 1),
(492, NULL, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(493, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 1, 0, 1),
(494, NULL, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(495, NULL, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(496, NULL, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(497, NULL, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'simple', 0, 1, 0, 1),
(498, NULL, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(499, NULL, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(500, NULL, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(501, NULL, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 1, 1, 0, 1),
(502, NULL, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(503, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 1, 0, 1),
(506, NULL, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, '', 0, 1, 0, 1),
(507, NULL, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(508, NULL, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(509, NULL, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(510, NULL, 1, 1, 1, 2, 1, 1, 0, 1, 1, 0, 0, 1, 'simple,grouped,configurable', 1, 1, 0, 1),
(513, NULL, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(514, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(525, NULL, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'simple,grouped,configurable', 0, 1, 0, 1),
(526, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(530, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(531, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(533, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(562, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'simple,grouped,configurable', 0, 1, 0, 1),
(563, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(564, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(565, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(566, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(567, NULL, 2, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 1, 0, 1),
(568, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 1, 0, 1),
(569, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 1, 0, 1),
(570, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(571, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(572, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(573, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(701, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(702, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(703, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(704, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 1, 0, 1),
(705, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 1, 0, 1),
(706, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 1, 0, 1),
(835, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(836, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(837, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 0, 0, 1),
(838, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(859, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 'bundle', 0, 0, 0, 1),
(860, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'bundle', 0, 0, 0, 1),
(861, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 'bundle', 0, 0, 0, 1),
(862, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 'bundle', 0, 0, 0, 1),
(863, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 'bundle', 0, 0, 0, 1),
(873, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 1),
(874, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 1),
(875, NULL, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, '', 0, 0, 0, 1),
(876, NULL, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 1),
(877, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 1),
(878, NULL, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 1),
(879, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, '', 0, 0, 0, 1),
(880, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, '', 0, 0, 0, 1),
(881, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, '', 0, 0, 0, 1),
(903, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, '', 0, 0, 0, 1),
(904, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 'downloadable', 0, 0, 0, 1),
(905, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 'downloadable', 0, 0, 0, 1),
(906, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 'downloadable', 0, 0, 0, 1),
(927, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(928, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(929, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(930, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(931, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(960, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 1),
(961, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(962, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(963, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`option_id`),
  KEY `FK_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bundle Options' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_bundle_option`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_option_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_OPTION_STORE` (`option_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bundle Selections' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_bundle_option_value`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_price_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `customer_group_id` smallint(3) unsigned NOT NULL,
  `min_price` decimal(12,4) NOT NULL,
  `max_price` decimal(12,4) NOT NULL,
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `IDX_WEBSITE` (`website_id`),
  KEY `IDX_CUSTOMER_GROUP` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_bundle_price_index`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_selection`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL,
  `parent_product_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `selection_price_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `selection_qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `selection_can_change_qty` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`selection_id`),
  KEY `FK_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION` (`option_id`),
  KEY `FK_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bundle Selections' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_bundle_selection`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_stock_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `stock_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `stock_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`entity_id`,`stock_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_bundle_stock_index`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_enabled_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `UNQ_PRODUCT_STORE` (`product_id`,`store_id`),
  KEY `IDX_PRODUCT_VISIBILITY_IN_STORE` (`product_id`,`store_id`,`visibility`),
  KEY `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_enabled_index`
--

INSERT INTO `catalog_product_enabled_index` (`product_id`, `store_id`, `visibility`) VALUES
(166, 1, 4);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple',
  `sku` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `has_options` smallint(1) NOT NULL DEFAULT '0',
  `required_options` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `sku` (`sku`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Product Entityies' AUTO_INCREMENT=169 ;

--
-- 转存表中的数据 `catalog_product_entity`
--

INSERT INTO `catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `created_at`, `updated_at`, `has_options`, `required_options`) VALUES
(166, 10, 38, 'simple', 'HTC Touch Diamond', '2008-07-25 02:22:13', '2010-10-12 08:09:36', 0, 0),
(168, 10, 40, 'simple', ' RE02357E-1', '2010-10-12 07:59:38', '2010-10-12 08:29:12', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` datetime DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE` (`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DATETIME_PRODUCT_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `catalog_product_entity_datetime`
--

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(2, 10, 704, 0, 166, NULL),
(3, 10, 705, 0, 166, NULL),
(4, 10, 568, 0, 166, NULL),
(5, 10, 569, 0, 166, NULL),
(6, 10, 572, 0, 166, NULL),
(7, 10, 573, 0, 166, NULL),
(14, 10, 704, 0, 168, NULL),
(15, 10, 705, 0, 168, NULL),
(16, 10, 568, 0, 168, '2010-10-12 00:00:00'),
(17, 10, 569, 0, 168, NULL),
(18, 10, 572, 0, 168, NULL),
(19, 10, 573, 0, 168, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE` (`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_PRODUCT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=430 ;

--
-- 转存表中的数据 `catalog_product_entity_decimal`
--

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(294, 10, 101, 0, 166, '0.3000'),
(295, 10, 99, 0, 166, '750.0000'),
(411, 10, 100, 0, 166, NULL),
(412, 10, 567, 0, 166, NULL),
(426, 10, 101, 0, 168, '10.0000'),
(427, 10, 99, 0, 168, '99.0000'),
(428, 10, 100, 0, 168, NULL),
(429, 10, 567, 0, 168, '88.0000');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_gallery`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_GALLERY_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_GALLERY_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_GALLERY_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_entity_gallery`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_int`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_INT_STORE` (`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_INT_PRODUCT_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=703 ;

--
-- 转存表中的数据 `catalog_product_entity_int`
--

INSERT INTO `catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(555, 10, 273, 0, 166, 1),
(556, 10, 274, 0, 166, 2),
(557, 10, 526, 0, 166, 4),
(558, 10, 272, 0, 166, 24),
(559, 10, 102, 0, 166, 122),
(687, 10, 903, 0, 166, 0),
(692, 10, 962, 0, 166, 0),
(693, 10, 102, 0, 168, 20),
(694, 10, 273, 0, 168, 1),
(695, 10, 274, 0, 168, 2),
(696, 10, 526, 0, 168, 4),
(697, 10, 903, 0, 168, 1),
(698, 10, 502, 0, 168, 39),
(699, 10, 107, 0, 168, NULL),
(700, 10, 272, 0, 168, 61),
(701, 10, 501, 0, 168, 36),
(702, 10, 962, 0, 168, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_media_gallery`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  KEY `FK_CATALOG_PRODUCT_MEDIA_GALLERY_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_PRODUCT_MEDIA_GALLERY_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog product media gallery' AUTO_INCREMENT=373 ;

--
-- 转存表中的数据 `catalog_product_entity_media_gallery`
--

INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `entity_id`, `value`) VALUES
(166, 703, 166, '/h/t/htc-touch-diamond.jpg'),
(367, 703, 168, '/d/e/demo_1.jpg'),
(368, 703, 168, '/t/2/t22ejmxjvbxxxxxxxx_94504595.jpg'),
(369, 703, 168, '/t/2/t20ejmxj4bxxxxxxxx_94504595_002.jpg'),
(370, 703, 168, '/t/1/t1yr4dxgnpxxbrlrc3_045847.jpg'),
(371, 703, 168, '/t/1/t1ynxmxhbnxxbk9ukw_022933.jpg'),
(372, 703, 168, '/t/1/t11xtmxejexxcifrg8_101423.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_media_gallery_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery_value` (
  `value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `position` int(11) unsigned DEFAULT NULL,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_MEDIA_GALLERY_VALUE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog product media gallery values';

--
-- 转存表中的数据 `catalog_product_entity_media_gallery_value`
--

INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `label`, `position`, `disabled`) VALUES
(166, 0, '', 1, 1),
(367, 0, '', 1, 0),
(368, 0, '', 2, 0),
(369, 0, '', 3, 0),
(370, 0, '', 4, 0),
(371, 0, '', 5, 0),
(372, 0, '', 6, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_text`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_TEXT_STORE` (`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_TEXT_PRODUCT_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=706 ;

--
-- 转存表中的数据 `catalog_product_entity_text`
--

INSERT INTO `catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(442, 10, 495, 0, 166, 'HTC Touch Diamond'),
(443, 10, 104, 0, 166, ''),
(444, 10, 506, 0, 166, 'Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design.'),
(445, 10, 97, 0, 166, 'Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design.\r\n\r\nFeaturing a sharp 2.8-inch touch screen housed within a stunning formation of brushed metal and flawless faceted edges, the HTC Touch Diamond is as beautiful to behold as it is to use.\r\n\r\nWith HTC’s vibrant touch-responsive user interface, TouchFLO™ 3D, and ultra-fast HSDPA internet connectivity… the HTC Touch Diamond offers a rich online experience to rival a notebook computer, allowing you to interact with Google, YouTube, and Wikipedia as freely as you would with a broadband connection.\r\n\r\nYour contacts, favourite music, videos and photos are no longer an uninspired line of text. With TouchFLO 3D, album artwork, video stills and snapshots of your friends’ and family’s faces are brought to life for you to interact, play and launch at your fingertips.\r\n\r\nA 3.2 megapixel auto-focus camera will help you capture the perfect moment in style and with a massive 4GB of internal storage you can keep all the files you need. The integrated ultra-sensitive GPS will help you find your destination as quickly and efficiently as a dedicated satellite navigation unit.\r\n\r\nStyle and substance in a phone are no longer mutually exclusive. The HTC Touch Diamond has arrived.'),
(446, 10, 492, 0, 166, 'Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design.\r\n\r\nFeaturing a sharp 2.8-inch touch screen housed within a stunning formation of brushed metal and flawless faceted edges, the HTC Touch Diamond is as beautiful to behold as it is to use.\r\n\r\nWith HTC’s vibrant touch-responsive user interface, TouchFLO™ 3D, and ultra-fast HSDPA internet connectivity… the HTC Touch Diamond offers a rich online experience to rival a notebook computer, allowing you to interact with Google, YouTube, and Wikipedia as freely as you would with a broadband connection.\r\n\r\nYour contacts, favourite music, videos and photos are no longer an uninspired line of text. With TouchFLO 3D, album artwork, video stills and snapshots of your friends’ and family’s faces are brought to life for you to interact, play and launch at your fingertips.\r\n\r\nA 3.2 megapixel auto-focus camera will help you capture the perfect moment in style and with a massive 4GB of internal storage you can keep all the files you need. The integrated ultra-sensitive GPS will help you find your destination as quickly and efficiently as a dedicated satellite navigation unit.\r\n\r\nStyle and substance in a phone are no longer mutually exclusive. The HTC Touch Diamond has arrived.'),
(447, 10, 494, 0, 166, '102 mm (L) X 51 mm (W) X 11.35 mm (T)'),
(448, 10, 496, 0, 166, ''),
(449, 10, 531, 0, 166, ''),
(700, 10, 495, 0, 168, '休闲'),
(701, 10, 104, 0, 168, ''),
(702, 10, 506, 0, 168, '匹克PEAK 2010新款情侣休闲鞋 男 女式 鞋子'),
(703, 10, 97, 0, 168, '    * 产品名称：匹克PEAK 情侣休闲鞋 RE...\r\n    * 上市时间: 2010-06-10\r\n    * 货号: RE02357E-1\r\n    * 运动鞋分类: 情侣休闲鞋\r\n    * 男女款: 情侣款\r\n    * 鞋帮款式: 低帮\r\n    * 外底材料: 防滑橡胶\r\n    * 中底材料: EVA\r\n    * 鞋面材料: 网布\r\n    * 颜色分类: 女款 浅灰/大红 ...\r\n    * 运动鞋尺码: 40  38  36 ...\r\n    * 科技: 易弯折功能\r\n    * 适合场地: 硬地\r\n    * 功能: 透气\r\n    * 流行元素: 网状\r\n    * 代言明星: 巴蒂尔\r\n    * 品牌: 匹克\r\n    * 价格区间: 51-100元'),
(704, 10, 492, 0, 168, '1'),
(705, 10, 531, 0, 168, '');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_tier_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `all_groups` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `website_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_TIER_PRICE` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_TIER_PRICE_PRODUCT_ENTITY` (`entity_id`),
  KEY `FK_catalog_product_entity_tier_price_group` (`customer_group_id`),
  KEY `FK_CATALOG_PRODUCT_TIER_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_entity_tier_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE` (`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_PRODUCT_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1553 ;

--
-- 转存表中的数据 `catalog_product_entity_varchar`
--

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1131, 10, 96, 0, 166, 'HTC Touch Diamond'),
(1132, 10, 481, 0, 166, 'htc-touch-diamond'),
(1133, 10, 562, 0, 166, '2'),
(1134, 10, 103, 0, 166, ''),
(1135, 10, 105, 0, 166, ''),
(1136, 10, 493, 0, 166, '/h/t/htc-touch-diamond.jpg'),
(1137, 10, 109, 0, 166, '/h/t/htc-touch-diamond.jpg'),
(1138, 10, 106, 0, 166, '/h/t/htc-touch-diamond.jpg'),
(1139, 10, 571, 0, 166, ''),
(1140, 10, 836, 0, 166, 'container2'),
(1278, 10, 929, 0, 166, ''),
(1279, 10, 881, 0, 166, ''),
(1280, 10, 880, 0, 166, ''),
(1281, 10, 879, 0, 166, ''),
(1520, 10, 570, 1, 166, 'htc-touch-diamond.html'),
(1521, 10, 570, 0, 166, 'htc-touch-diamond.html'),
(1535, 10, 96, 0, 168, '匹克PEAK 2010新款情侣休闲鞋 男 女式 鞋子'),
(1536, 10, 481, 0, 168, 'peak-2010'),
(1537, 10, 562, 0, 168, '2'),
(1538, 10, 103, 0, 168, ''),
(1539, 10, 105, 0, 168, ''),
(1540, 10, 493, 0, 168, '/d/e/demo_1.jpg'),
(1541, 10, 109, 0, 168, '/d/e/demo_1.jpg'),
(1542, 10, 106, 0, 168, '/d/e/demo_1.jpg'),
(1543, 10, 571, 0, 168, ''),
(1544, 10, 836, 0, 168, 'container2'),
(1545, 10, 929, 0, 168, ''),
(1546, 10, 570, 1, 168, 'peak-2010.html'),
(1547, 10, 570, 0, 168, 'peak-2010.html'),
(1550, 10, 881, 0, 168, ''),
(1551, 10, 880, 0, 168, ''),
(1552, 10, 879, 0, 168, '');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_flat_1`
--

CREATE TABLE IF NOT EXISTS `catalog_product_flat_1` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple',
  `cost` decimal(12,4) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enable_googlecheckout` tinyint(1) DEFAULT NULL,
  `has_options` smallint(6) NOT NULL DEFAULT '0',
  `image_label` varchar(255) DEFAULT NULL,
  `links_exist` int(11) DEFAULT NULL,
  `links_purchased_separately` int(11) DEFAULT NULL,
  `links_title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `news_from_date` datetime DEFAULT NULL,
  `news_to_date` datetime DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `price_type` int(11) DEFAULT NULL,
  `price_view` int(11) DEFAULT NULL,
  `required_options` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shipment_type` int(11) DEFAULT NULL,
  `short_description` text,
  `sku` varchar(64) DEFAULT NULL,
  `sku_type` int(11) DEFAULT NULL,
  `small_image` varchar(255) DEFAULT NULL,
  `small_image_label` varchar(255) DEFAULT NULL,
  `special_from_date` datetime DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_to_date` datetime DEFAULT NULL,
  `tax_class_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_label` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url_key` varchar(255) DEFAULT NULL,
  `url_path` varchar(255) DEFAULT NULL,
  `visibility` tinyint(3) unsigned DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `weight_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_TYPE_ID` (`type_id`),
  KEY `IDX_ATRRIBUTE_SET` (`attribute_set_id`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_PRICE` (`price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=169 ;

--
-- 转存表中的数据 `catalog_product_flat_1`
--

INSERT INTO `catalog_product_flat_1` (`entity_id`, `attribute_set_id`, `type_id`, `cost`, `created_at`, `enable_googlecheckout`, `has_options`, `image_label`, `links_exist`, `links_purchased_separately`, `links_title`, `name`, `news_from_date`, `news_to_date`, `price`, `price_type`, `price_view`, `required_options`, `shipment_type`, `short_description`, `sku`, `sku_type`, `small_image`, `small_image_label`, `special_from_date`, `special_price`, `special_to_date`, `tax_class_id`, `thumbnail`, `thumbnail_label`, `updated_at`, `url_key`, `url_path`, `visibility`, `weight`, `weight_type`) VALUES
(166, 38, 'simple', NULL, '2008-07-25 02:22:13', 0, 0, '', NULL, NULL, NULL, 'HTC Touch Diamond', NULL, NULL, '750.0000', NULL, NULL, 0, NULL, 'Re-defining the perception of advanced mobile phones… the HTC Touch Diamond™ signals a giant leap forward in combining hi-tech prowess with intuitive usability and exhilarating design.', 'HTC Touch Diamond', NULL, '/h/t/htc-touch-diamond.jpg', '', NULL, NULL, NULL, 2, '/h/t/htc-touch-diamond.jpg', '', '2010-10-12 08:09:36', 'htc-touch-diamond', 'htc-touch-diamond.html', 4, '0.3000', NULL),
(168, 40, 'simple', NULL, '2010-10-12 07:59:38', 1, 1, '', NULL, NULL, NULL, '匹克PEAK 2010新款情侣休闲鞋 男 女式 鞋子', NULL, NULL, '99.0000', NULL, NULL, 1, NULL, '匹克PEAK 2010新款情侣休闲鞋 男 女式 鞋子', ' RE02357E-1', NULL, '/d/e/demo_1.jpg', '', '2010-10-12 00:00:00', '88.0000', NULL, 2, '/d/e/demo_1.jpg', '', '2010-10-12 08:29:12', 'peak-2010', 'peak-2010.html', 4, '10.0000', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_eav`
--

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(166, 102, 1, 122),
(166, 102, 2, 122),
(168, 102, 1, 20),
(168, 102, 2, 20),
(166, 272, 1, 24),
(166, 272, 2, 24),
(168, 272, 1, 61),
(168, 272, 2, 61),
(168, 501, 1, 36),
(168, 501, 2, 36),
(166, 903, 1, 0),
(166, 903, 2, 0),
(168, 903, 1, 1),
(168, 903, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` decimal(12,4) NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_eav_decimal`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav_decimal_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` decimal(12,4) NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_eav_decimal_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` decimal(12,4) NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_eav_decimal_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_eav_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_eav_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `final_price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `IDX_WEBSITE` (`website_id`),
  KEY `IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price`
--

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(166, 0, 1, 2, '750.0000', '750.0000', '750.0000', '750.0000', NULL),
(166, 1, 1, 2, '750.0000', '750.0000', '750.0000', '750.0000', NULL),
(166, 2, 1, 2, '750.0000', '750.0000', '750.0000', '750.0000', NULL),
(166, 3, 1, 2, '750.0000', '750.0000', '750.0000', '750.0000', NULL),
(166, 4, 1, 2, '750.0000', '750.0000', '750.0000', '750.0000', NULL),
(168, 0, 1, 2, '99.0000', '88.0000', '88.0000', '88.0000', NULL),
(168, 1, 1, 2, '99.0000', '88.0000', '88.0000', '88.0000', NULL),
(168, 2, 1, 2, '99.0000', '88.0000', '88.0000', '88.0000', NULL),
(168, 3, 1, 2, '99.0000', '88.0000', '88.0000', '88.0000', NULL),
(168, 4, 1, 2, '99.0000', '88.0000', '88.0000', '88.0000', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `price_type` tinyint(1) unsigned NOT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `tier_percent` decimal(12,4) DEFAULT NULL,
  `orig_price` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `base_tier` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_bundle_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `min_price` decimal(12,4) DEFAULT NULL,
  `alt_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `alt_tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_bundle_opt_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `min_price` decimal(12,4) DEFAULT NULL,
  `alt_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `alt_tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_bundle_opt_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_type` tinyint(1) unsigned DEFAULT '0',
  `is_required` tinyint(1) unsigned DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_bundle_sel_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_type` tinyint(1) unsigned DEFAULT '0',
  `is_required` tinyint(1) unsigned DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_bundle_sel_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `price_type` tinyint(1) unsigned NOT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `tier_percent` decimal(12,4) DEFAULT NULL,
  `orig_price` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `base_tier` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_bundle_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL,
  `child_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_cfg_opt_agr_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL,
  `child_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_cfg_opt_agr_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_cfg_opt_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_cfg_opt_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_downlod_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_downlod_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_downlod_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_downlod_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_final_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `orig_price` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `base_tier` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_final_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_final_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `orig_price` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `base_tier` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_final_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `final_price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `IDX_WEBSITE` (`website_id`),
  KEY `IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_opt_agr_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_opt_agr_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_opt_idx`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_opt_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `final_price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `IDX_WEBSITE` (`website_id`),
  KEY `IDX_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_price_tmp`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_tier_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `FK_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER` (`customer_group_id`),
  KEY `FK_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_tier_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_website`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL,
  `date` date DEFAULT NULL,
  `rate` float(12,4) unsigned DEFAULT '1.0000',
  PRIMARY KEY (`website_id`),
  KEY `IDX_DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `catalog_product_index_website`
--

INSERT INTO `catalog_product_index_website` (`website_id`, `date`, `rate`) VALUES
(1, '2010-10-12', 1.0000);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link` (
  `link_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `link_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `IDX_UNIQUE` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `FK_LINK_PRODUCT` (`product_id`),
  KEY `FK_LINKED_PRODUCT` (`linked_product_id`),
  KEY `FK_PRODUCT_LINK_TYPE` (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Related products' AUTO_INCREMENT=2679 ;

--
-- 转存表中的数据 `catalog_product_link`
--

INSERT INTO `catalog_product_link` (`link_id`, `product_id`, `linked_product_id`, `link_type_id`) VALUES
(2677, 168, 166, 1),
(2678, 168, 166, 4);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `link_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `product_link_attribute_code` varchar(32) NOT NULL DEFAULT '',
  `data_type` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `FK_ATTRIBUTE_PRODUCT_LINK_TYPE` (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Attributes for product link' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `catalog_product_link_attribute`
--

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 2, 'qty', 'decimal'),
(2, 1, 'position', 'int'),
(3, 4, 'position', 'int'),
(4, 5, 'position', 'int'),
(6, 1, 'qty', 'decimal'),
(7, 3, 'position', 'int'),
(8, 3, 'qty', 'decimal');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link_attribute_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_decimal` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_link_attribute_id` smallint(6) unsigned DEFAULT NULL,
  `link_id` int(11) unsigned DEFAULT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`value_id`),
  KEY `FK_DECIMAL_PRODUCT_LINK_ATTRIBUTE` (`product_link_attribute_id`),
  KEY `FK_DECIMAL_LINK` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Decimal attributes values' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_link_attribute_decimal`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link_attribute_int`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_int` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_link_attribute_id` smallint(6) unsigned DEFAULT NULL,
  `link_id` int(11) unsigned DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  KEY `FK_INT_PRODUCT_LINK_ATTRIBUTE` (`product_link_attribute_id`),
  KEY `FK_INT_PRODUCT_LINK` (`link_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `catalog_product_link_attribute_int`
--

INSERT INTO `catalog_product_link_attribute_int` (`value_id`, `product_link_attribute_id`, `link_id`, `value`) VALUES
(3, 2, 2677, 0),
(4, 3, 2678, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link_attribute_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_varchar` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_link_attribute_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `link_id` int(11) unsigned DEFAULT NULL,
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  KEY `FK_VARCHAR_PRODUCT_LINK_ATTRIBUTE` (`product_link_attribute_id`),
  KEY `FK_VARCHAR_LINK` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Varchar attributes values' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_link_attribute_varchar`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link_type`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_type` (
  `link_type_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Types of product link(Related, superproduct, bundles)' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `catalog_product_link_type`
--

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(2, 'bundle'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `is_require` tinyint(1) NOT NULL DEFAULT '1',
  `sku` varchar(64) NOT NULL DEFAULT '',
  `max_characters` int(10) unsigned DEFAULT NULL,
  `file_extension` varchar(50) DEFAULT NULL,
  `image_size_x` smallint(5) unsigned NOT NULL,
  `image_size_y` smallint(5) unsigned NOT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRODUCT` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `catalog_product_option`
--

INSERT INTO `catalog_product_option` (`option_id`, `product_id`, `type`, `is_require`, `sku`, `max_characters`, `file_extension`, `image_size_x`, `image_size_y`, `sort_order`) VALUES
(3, 168, 'drop_down', 1, '', NULL, NULL, 0, 0, 0),
(4, 168, 'drop_down', 1, '', NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price_type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `UNQ_OPTION_STORE` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION` (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_option_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option_title`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `UNQ_OPTION_STORE` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION` (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `catalog_product_option_title`
--

INSERT INTO `catalog_product_option_title` (`option_title_id`, `option_id`, `store_id`, `title`) VALUES
(3, 3, 0, '运动鞋尺码：'),
(4, 4, 0, '颜色分类');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option_type_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price_type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `UNQ_OPTION_TYPE_STORE` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE` (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `catalog_product_option_type_price`
--

INSERT INTO `catalog_product_option_type_price` (`option_type_price_id`, `option_type_id`, `store_id`, `price`, `price_type`) VALUES
(7, 7, 0, '0.0000', 'fixed'),
(8, 8, 0, '0.0000', 'fixed'),
(9, 9, 0, '0.0000', 'fixed'),
(10, 10, 0, '0.0000', 'fixed'),
(11, 11, 0, '0.0000', 'fixed'),
(12, 12, 0, '0.0000', 'fixed'),
(13, 13, 0, '0.0000', 'fixed');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option_type_title`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `UNQ_OPTION_TYPE_STORE` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION` (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `catalog_product_option_type_title`
--

INSERT INTO `catalog_product_option_type_title` (`option_type_title_id`, `option_type_id`, `store_id`, `title`) VALUES
(7, 7, 0, '35'),
(8, 8, 0, '36'),
(9, 9, 0, '37'),
(10, 10, 0, '38'),
(11, 11, 0, '红色'),
(12, 12, 0, '黑色'),
(13, 13, 0, '白色');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option_type_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sku` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION` (`option_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `catalog_product_option_type_value`
--

INSERT INTO `catalog_product_option_type_value` (`option_type_id`, `option_id`, `sku`, `sort_order`) VALUES
(7, 3, '', 0),
(8, 3, '', 0),
(9, 3, '', 0),
(10, 3, '', 0),
(11, 4, '', 0),
(12, 4, '', 0),
(13, 4, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_relation`
--

CREATE TABLE IF NOT EXISTS `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL,
  `child_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `IDX_CHILD` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

--
-- 转存表中的数据 `catalog_product_relation`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_super_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_super_attribute_id`),
  KEY `FK_SUPER_PRODUCT_ATTRIBUTE_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_super_attribute`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_super_attribute_label`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `use_default` tinyint(1) unsigned DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_ATTRIBUTE_STORE` (`product_super_attribute_id`,`store_id`),
  KEY `FK_SUPER_PRODUCT_ATTRIBUTE_LABEL` (`product_super_attribute_id`),
  KEY `FK_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_super_attribute_label`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_super_attribute_pricing`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value_index` varchar(255) NOT NULL DEFAULT '',
  `is_percent` tinyint(1) unsigned DEFAULT '0',
  `pricing_value` decimal(10,4) DEFAULT NULL,
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  KEY `FK_SUPER_PRODUCT_ATTRIBUTE_PRICING` (`product_super_attribute_id`),
  KEY `FK_CATALOG_PRODUCT_SUPER_PRICE_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_super_attribute_pricing`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_super_link`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `FK_SUPER_PRODUCT_LINK_PARENT` (`parent_id`),
  KEY `FK_catalog_product_super_link` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `catalog_product_super_link`
--


-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_website`
--

CREATE TABLE IF NOT EXISTS `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `website_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `FK_CATALOG_PRODUCT_WEBSITE_WEBSITE` (`website_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED AUTO_INCREMENT=169 ;

--
-- 转存表中的数据 `catalog_product_website`
--

INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
(166, 1),
(168, 1);

-- --------------------------------------------------------

--
-- 表的结构 `checkout_agreement`
--

CREATE TABLE IF NOT EXISTS `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `content_height` varchar(25) DEFAULT NULL,
  `checkbox_text` text NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `is_html` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `checkout_agreement`
--


-- --------------------------------------------------------

--
-- 表的结构 `checkout_agreement_store`
--

CREATE TABLE IF NOT EXISTS `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `agreement_id` (`agreement_id`,`store_id`),
  KEY `FK_CHECKOUT_AGREEMENT_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `checkout_agreement_store`
--


-- --------------------------------------------------------

--
-- 表的结构 `chronopay_api_debug`
--

CREATE TABLE IF NOT EXISTS `chronopay_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `chronopay_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `cms_block`
--

CREATE TABLE IF NOT EXISTS `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  `creation_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Blocks' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(3, 'Electronics Landing', 'electronics-landing', '<div class="left" style="width:284px; margin-right:25px;">\r\n<h3 style="margin-bottom:0;"><a href="{{store direct_url="electronics/cell-phones.html"}}"><img src="{{skin url=''images/media/head_electronics_cellphones.gif}}" alt="Cell Phones" style="display:block; border:0;"/></h3>\r\n<p><img src="{{skin url=''images/media/electronics_cellphones.jpg}}" alt="" usemap="#Map" border="0"/></p>\r\n</div>\r\n<div class="left" style="width:284px;">\r\n<h3 style="margin-bottom:0;"><a href="{{store direct_url="electronics/cameras/digital-cameras.html"}}"><img src="{{skin url=''images/media/head_electronics_digicamera.gif}}" alt="Digital Cameras" style="display:block; border:0;"/></a></h3>\r\n<p><img src="{{skin url=''images/media/electronics_digitalcameras.jpg}}" alt="" usemap="#Map2" border="0"/></p>\r\n</div>\r\n<div class="right" style="width:284px;">\r\n<h3 style="margin-bottom:0;"><a href="{{store direct_url="electronics/computers/laptops.html"}}"><img src="{{skin url=''images/media/head_electronics_laptops.gif}}" alt="Laptops" style="display:block; border:0;"/></a></h3>\r\n<p><img src="{{skin url=''images/media/electronics_laptops.jpg}}" alt="" usemap="#Map3" border="0"/></p>\r\n</div>\r\n<div class="clear"></div>\r\n\r\n<map name="Map">\r\n  <area shape="rect" coords="14,154,78,182" href="{{store direct_url="electronics/cell-phones.html?manufacturer=3"}}">\r\n  <area shape="rect" coords="12,177,80,209" href="{{store direct_url="electronics/cell-phones.html?manufacturer=20"}}">\r\n  <area shape="rect" coords="104,158,167,181" href="{{store direct_url="electronics/cell-phones.html?manufacturer=2"}}">\r\n  <area shape="rect" coords="103,181,179,208" href="{{store direct_url="electronics/cell-phones.html?manufacturer=101"}}">\r\n <area shape="rect" coords="16,203,273,432" href="{{store direct_url="electronics/cell-phones/blackberry-8100-pearl.html"}}">\r\n</map>\r\n\r\n<map name="Map2">\r\n  <area shape="rect" coords="14,152,75,179" href="{{store direct_url="electronics/cameras/digital-cameras.html?manufacturer=33"}}">\r\n  <area shape="rect" coords="109,154,163,183" href="{{store direct_url="electronics/cameras/digital-cameras.html?manufacturer=31"}}">\r\n  <area shape="rect" coords="14,177,73,208" href="{{store direct_url="electronics/cameras/digital-cameras.html?manufacturer=32"}}">\r\n  <area shape="rect" coords="106,180,177,211" href="{{store direct_url="electronics/cameras/digital-cameras.html?manufacturer=34"}}">\r\n</map>\r\n\r\n\r\n<map name="Map3">\r\n  <area shape="rect" coords="15,155,58,179" href="{{store direct_url="electronics/computers/laptops?computer_manufacturers=79"}}">\r\n  <area shape="rect" coords="114,152,159,180" href="{{store direct_url="electronics/computers/laptops?computer_manufacturers=76"}}">\r\n  <area shape="rect" coords="13,178,67,205" href="{{store direct_url="electronics/computers/laptops?computer_manufacturers=77"}}">\r\n  <area shape="rect" coords="114,180,178,205" href="{{store direct_url="electronics/computers/laptops?computer_manufacturers=74"}}">\r\n  <area shape="rect" coords="13,310,154,434" href="{{store direct_url="electronics/computers/laptops/acer-ferrari-3200-notebook-computer-pc.html"}}">\r\n  <area shape="rect" coords="167,310,279,440" href="{{store direct_url="electronics/computers/laptops/toshiba-satellite-a135-s4527-155-4-notebook-pc-intel-pentium-dual-core-processor-t2080-1-gb-ram-120-gb-hard-drive-supermulti-dvd-drive-vista-premium.html"}}">\r\n</map>', '2007-08-28 14:33:10', '2008-08-08 13:08:37', 1),
(4, 'Cellphones Landing', 'cellphones-landing', '<a href="{{store direct_url="electronics/cell-phones/sony-ericsson-w810i.html"}}"><img src="{{skin url=''images/media/cell_phone_landing_banner1.jpg}}" alt=""/></a>', '2007-08-28 14:59:44', '2008-08-08 13:07:55', 1),
(5, 'Footer Links', 'footer_links', '<ul>\r\n<li><a href="{{store direct_url="jobs"}}">求职资讯</a></li>\r\n<li><a href="{{store direct_url="legal"}}">法律声明</a></li>\r\n<li><a href="{{store direct_url="questions"}}">任何疑问</a></li>\r\n<li class="last"><a href="{{store direct_url="store"}}">专卖店</a></li>\r\n</ul>', '2007-08-30 14:01:52', '2010-10-08 09:31:09', 1),
(6, '产品目录', 'product-catalogs', '<img src="{{media url="/bg_off2.jpg"}}" alt="" />', '2010-10-10 07:25:38', '2010-10-12 03:19:25', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_block_store`
--

CREATE TABLE IF NOT EXISTS `cms_block_store` (
  `block_id` smallint(6) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `FK_CMS_BLOCK_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Blocks to Stores';

--
-- 转存表中的数据 `cms_block_store`
--

INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `root_template` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `identifier` varchar(100) NOT NULL DEFAULT '',
  `content_heading` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  `creation_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `layout_update_xml` text,
  `custom_theme` varchar(100) DEFAULT NULL,
  `custom_root_template` varchar(255) NOT NULL DEFAULT '',
  `custom_layout_update_xml` text,
  `custom_theme_from` date DEFAULT NULL,
  `custom_theme_to` date DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS pages' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', '', '<div class="page-head-alt"><h3>Whoops, our bad...</h3></div>\r\n<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class="disc">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<br/>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Demo Store.</dd>\r\n<dd>\r\n<ul class="disc">\r\n<li><a href="#" onclick="history.go(-1);">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br/><a href="{{store url=""}}">Store Home</a><br/><a href="{{store url="customer/account"}}">My Account</a></li></ul></dd></dl><br/>\r\n<p><img src="{{skin url=''images/media/404_callout1.jpg''}}" style="margin-right:15px;"/><img src="{{skin url=''images/media/404_callout2.jpg''}}" /></p>', '2007-06-20 18:38:32', '2007-08-26 19:11:13', 1, 0, NULL, NULL, '', NULL, NULL, NULL),
(2, 'Home page', 'one_column', '', '', 'home', '', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td colspan="3"><img src="{{media url="/bg_off.jpg"}}" alt="" /></td>\r\n</tr>\r\n<tr>\r\n<td><img src="{{media url="/bg_off_01.jpg"}}" alt="" /></td>\r\n<td><img src="{{media url="/bg_off_02.jpg"}}" alt="" /></td>\r\n<td><img src="{{media url="/bg_off_03.jpg"}}" alt="" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '2007-08-23 10:03:25', '2010-10-08 09:12:30', 1, 0, '', '', '', '', NULL, NULL),
(3, '求职资讯', 'one_column', '', '', 'jobs', '', '<div class="page-head">\r\n<h3>About Magento  Demo Store</h3>\r\n</div>\r\n<div class="col3-set">\r\n<div class="col-1">\r\n<p><img src="http://var-dev.varien.com:81/dev/minu/magento/skin/frontend/default/default/images/media/about_us_img.jpg" alt="Varien office pic" /></p>\r\n<p style="line-height: 1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.</small></p>\r\n<p style="color: #888; font: 1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p>\r\n</div>\r\n<div class="col-2">\r\n<p><strong style="color: #de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</strong></p>\r\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</p>\r\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi. Vestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est. Nulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat. Pellentesque eget velit. Nunc tincidunt.</p>\r\n</div>\r\n<div class="col-3">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper</p>\r\n<p><strong style="color: #de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\r\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\r\n<p>To all of you, from all of us at Magento Demo Store - Thank you and Happy eCommerce!</p>\r\n<p style="line-height: 1.2em;"><strong style="font: italic 2em Georgia, serif;">John Doe</strong><br /><small>Some important guy</small></p>\r\n</div>\r\n</div>', '2007-08-30 14:01:18', '2010-10-08 09:25:58', 1, 0, '', '', '', '', NULL, NULL),
(4, '法律声明', 'three_columns', '', '', 'legal', '', '<div class="page-head">\r\n<h3>Customer Service</h3>\r\n</div>\r\n<ul class="disc" style="margin-bottom: 15px;">\r\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\r\n<li><a href="#answer2">Privacy &amp; Security</a></li>\r\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\r\n<li><a href="#answer4">Ordering</a></li>\r\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\r\n<li><a href="#answer6">Viewing Orders</a></li>\r\n<li><a href="#answer7">Updating Account Information</a></li>\r\n</ul>\r\n<dl> <dt id="answer1">Shipping &amp; Delivery</dt> <dd style="margin-bottom: 10px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd> <dt id="answer2">Privacy &amp; Security</dt> <dd style="margin-bottom: 10px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd> <dt id="answer3">Returns &amp; Replacements</dt> <dd style="margin-bottom: 10px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd> <dt id="answer4">Ordering</dt> <dd style="margin-bottom: 10px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd> <dt id="answer5">Payment, Pricing &amp; Promotions</dt> <dd style="margin-bottom: 10px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd> <dt id="answer6">Viewing Orders</dt> <dd style="margin-bottom: 10px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd> <dt id="answer7">Updating Account Information</dt> <dd style="margin-bottom: 10px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd> </dl>', '2007-08-30 14:02:20', '2010-10-08 09:27:55', 1, 0, '', '', '', '', NULL, NULL),
(5, 'Home page', 'one_column', '', '', 'home', '', '<!-- this homepage can be used for modern theme  -->\r\n{{block type="core/template" template="sample/home.phtml"}}', '2008-04-16 14:51:52', '2008-08-08 12:23:12', 0, 0, '<!--<reference name="content">\r\n<block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page"><action method="addPriceBlockType"><type>bundle</type><block>bundle/catalog_product_price</block><template>bundle/catalog/product/price.phtml</template></action></block>\r\n<block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new"><action method="addPriceBlockType"><type>bundle</type><block>bundle/catalog_product_price</block><template>bundle/catalog/product/price.phtml</template></action></block>\r\n<block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed"><action method="addPriceBlockType"><type>bundle</type><block>bundle/catalog_product_price</block><template>bundle/catalog/product/price.phtml</template></action></block>\r\n</reference><reference name="right">\r\n<action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\r\n<action method="unsetChild"><alias>right.reports.product.compared</alias></action>\r\n</reference>-->', '', '', NULL, NULL, NULL),
(6, 'Enable Cookies', 'one_column', '', '', 'enable-cookies', '', '<div class="std">\r\n    <ul class="messages">\r\n        <li class="notice-msg">\r\n            <ul>\r\n                <li>Please enable cookies in your web browser to continue.</li>\r\n            </ul>\r\n        </li>\r\n    </ul>\r\n    <div class="page-title">\r\n        <h1><a name="top"></a>What are Cookies?</h1>\r\n    </div>\r\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website. On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically whenever you visit our site so that we can personalize your experience and provide you with better service. We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes. If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase or take advantage of certain features of our website, such as storing items in your Shopping Cart or receiving personalized recommendations. As a result, we strongly encourage you to configure your web browser to accept cookies from our website.</p>\r\n    <h2 class="subtitle">Enabling Cookies</h2>\r\n    <ul class="disc">\r\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\r\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\r\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\r\n        <li><a href="#opera">Opera 7.x</a></li>\r\n    </ul>\r\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Start Internet Explorer</p>\r\n        </li>\r\n        <li>\r\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Privacy</strong> tab</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Advanced</strong> button</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>, put another check mark in the <strong>Always accept session cookies </strong>box</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Restart Internet Explore</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\r\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> tab</p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>) under <strong>Settings</strong>. Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Expand the <strong>Cookies</strong> section</p>\r\n        </li>\r\n        <li>\r\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="opera"></a>Opera 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong> should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n</div>\r\n', '2010-05-19 09:19:48', '2010-05-19 09:19:48', 1, 0, NULL, NULL, '', NULL, NULL, NULL),
(7, '任何疑问', 'one_column', '', '', 'questions', '', '<p>xx</p>', '2010-10-08 09:29:05', '2010-10-08 09:29:05', 1, 0, '', '', '', '', NULL, NULL),
(8, '专卖店', 'one_column', '', '', 'store', '', '<p>谢谢</p>', '2010-10-08 09:29:56', '2010-10-08 09:29:56', 1, 0, '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cms_page_store`
--

CREATE TABLE IF NOT EXISTS `cms_page_store` (
  `page_id` smallint(6) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `FK_CMS_PAGE_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Pages to Stores';

--
-- 转存表中的数据 `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `core_cache`
--

CREATE TABLE IF NOT EXISTS `core_cache` (
  `id` varchar(255) NOT NULL,
  `data` mediumblob,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `expire_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `core_cache`
--


-- --------------------------------------------------------

--
-- 表的结构 `core_cache_option`
--

CREATE TABLE IF NOT EXISTS `core_cache_option` (
  `code` varchar(32) NOT NULL,
  `value` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `core_cache_option`
--

INSERT INTO `core_cache_option` (`code`, `value`) VALUES
('block_html', 0),
('collections', 0),
('config', 0),
('config_api', 0),
('eav', 0),
('layout', 0),
('translate', 0);

-- --------------------------------------------------------

--
-- 表的结构 `core_cache_tag`
--

CREATE TABLE IF NOT EXISTS `core_cache_tag` (
  `tag` varchar(255) NOT NULL,
  `cache_id` varchar(255) NOT NULL,
  KEY `IDX_TAG` (`tag`),
  KEY `IDX_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `core_cache_tag`
--


-- --------------------------------------------------------

--
-- 表的结构 `core_config_data`
--

CREATE TABLE IF NOT EXISTS `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scope` enum('default','websites','stores','config') NOT NULL DEFAULT 'default',
  `scope_id` int(11) NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT 'general',
  `value` text NOT NULL,
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `config_scope` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=225 ;

--
-- 转存表中的数据 `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(13, 'default', 0, 'general/country/default', 'CN'),
(14, 'default', 0, 'general/country/allow', 'BT,TL,CN,MO,HK,CF,DK,UA,UZ,UG,UY,TD,YE,AM,IL,IQ,IR,BZ,CV,RU,BG,HR,GU,GM,IS,GN,GW,LI,CG,CD,LY,LR,CA,GH,GA,HU,MP,GS,AQ,ZA,BW,QA,RW,LU,IN,ID,GT,EC,ER,SY,CU,TW,KG,DJ,KZ,CO,CR,CM,TV,TM,TR,LC,KN,ST,BL,VC,PM,CX,SH,MF,SM,GY,TZ,EG,ET,KI,TJ,SN,RS,SL,CY,SC,MX,TG,DM,DO,AX,AT,VE,BD,AO,AI,AG,AD,FM,NI,NG,NE,NP,PS,BS,PK,BB,PG,PY,PA,BH,BR,BF,BV,BI,GR,PW,CK,KY,DE,IT,SB,TK,LV,NO,CZ,MD,MA,MC,BN,FJ,SZ,SK,SI,SJ,LK,SG,NC,NZ,JP,CL,IM,KP,KH,GG,GD,GL,GE,VA,BE,MR,MU,TO,SA,FR,TF,GF,PF,FO,PL,PR,BA,TH,JE,ZW,HN,HT,AU,IE,EE,JM,TC,TT,BO,NR,SE,CH,GP,WF,VU,RE,BY,BM,PN,GI,FK,KW,KM,CC,PE,TN,LT,SO,JO,NA,NU,MM,RO,US,UM,VI,AS,LA,KE,FI,SD,SR,GB,IO,VG,NL,AN,MZ,LS,PH,SV,WS,PT,MN,MS,EH,ES,NF,CI,BJ,ZM,GQ,HM,VN,AZ,AF,DZ,AL,AE,OM,AR,AW,KR,MK,MV,MW,MQ,MY,YT,MH,MT,MG,ML,LB,ME'),
(15, 'default', 0, 'general/country/optional_zip_countries', ''),
(16, 'default', 0, 'general/locale/firstday', '0'),
(17, 'default', 0, 'general/locale/weekend', '0,6'),
(18, 'default', 0, 'general/store_information/name', 'QINNKO'),
(19, 'default', 0, 'general/store_information/phone', ''),
(20, 'default', 0, 'general/store_information/address', ''),
(21, 'default', 0, 'dev/restrict/allow_ips', ''),
(22, 'default', 0, 'dev/debug/profiler', '0'),
(23, 'default', 0, 'dev/translate_inline/active', '0'),
(24, 'default', 0, 'dev/translate_inline/active_admin', '0'),
(25, 'default', 0, 'dev/log/active', '0'),
(26, 'default', 0, 'dev/log/file', 'system.log'),
(27, 'default', 0, 'dev/log/exception_file', 'exception.log'),
(28, 'default', 0, 'dev/js/merge_files', '0'),
(29, 'default', 0, 'dev/js/deprecation', '0'),
(30, 'default', 0, 'dev/css/merge_css_files', '0'),
(31, 'stores', 1, 'dev/debug/profiler', '0'),
(32, 'stores', 1, 'dev/debug/template_hints', '0'),
(33, 'stores', 1, 'dev/debug/template_hints_blocks', '0'),
(34, 'default', 0, 'web/seo/use_rewrites', '1'),
(35, 'default', 0, 'web/unsecure/base_url', 'http://127.0.0.1/'),
(36, 'default', 0, 'web/secure/base_url', 'http://127.0.0.1/'),
(37, 'default', 0, 'general/locale/code', 'zh_CN'),
(38, 'default', 0, 'general/locale/timezone', 'Asia/Shanghai'),
(39, 'default', 0, 'currency/options/base', 'CNY'),
(40, 'default', 0, 'currency/options/default', 'CNY'),
(41, 'default', 0, 'currency/options/allow', 'CNY'),
(42, 'default', 0, 'web/url/use_store', '0'),
(43, 'default', 0, 'web/url/redirect_to_base', '0'),
(44, 'default', 0, 'web/unsecure/base_link_url', '{{unsecure_base_url}}'),
(45, 'default', 0, 'web/unsecure/base_skin_url', '{{unsecure_base_url}}skin/'),
(46, 'default', 0, 'web/unsecure/base_media_url', '{{unsecure_base_url}}media/'),
(47, 'default', 0, 'web/unsecure/base_js_url', '{{unsecure_base_url}}js/'),
(48, 'default', 0, 'web/secure/base_link_url', '{{secure_base_url}}'),
(49, 'default', 0, 'web/secure/base_skin_url', '{{secure_base_url}}skin/'),
(50, 'default', 0, 'web/secure/base_media_url', '{{secure_base_url}}media/'),
(51, 'default', 0, 'web/secure/base_js_url', '{{secure_base_url}}js/'),
(52, 'default', 0, 'web/secure/use_in_frontend', '0'),
(53, 'default', 0, 'web/secure/use_in_adminhtml', '0'),
(54, 'default', 0, 'web/default/front', 'cms'),
(55, 'default', 0, 'web/default/cms_home_page', 'home'),
(56, 'default', 0, 'web/default/no_route', 'cms/index/noRoute'),
(57, 'default', 0, 'web/default/cms_no_route', 'no-route'),
(58, 'default', 0, 'web/default/cms_no_cookies', 'enable-cookies'),
(59, 'default', 0, 'web/default/show_cms_breadcrumbs', '1'),
(60, 'default', 0, 'web/polls/poll_check_by_ip', '0'),
(61, 'default', 0, 'web/cookie/cookie_lifetime', '3600'),
(62, 'default', 0, 'web/cookie/cookie_path', ''),
(63, 'default', 0, 'web/cookie/cookie_domain', ''),
(64, 'default', 0, 'web/cookie/cookie_httponly', '1'),
(65, 'default', 0, 'web/session/use_remote_addr', '0'),
(66, 'default', 0, 'web/session/use_http_via', '0'),
(67, 'default', 0, 'web/session/use_http_x_forwarded_for', '0'),
(68, 'default', 0, 'web/session/use_http_user_agent', '0'),
(69, 'default', 0, 'web/session/use_frontend_sid', '1'),
(70, 'default', 0, 'web/browser_capabilities/cookies', '1'),
(71, 'default', 0, 'web/browser_capabilities/javascript', '1'),
(72, 'default', 0, 'design/package/name', 'default'),
(73, 'default', 0, 'design/package/ua_regexp', 'a:0:{}'),
(74, 'default', 0, 'design/theme/locale', ''),
(75, 'default', 0, 'design/theme/template', 'qinnko'),
(76, 'default', 0, 'design/theme/template_ua_regexp', 'a:0:{}'),
(77, 'default', 0, 'design/theme/skin', 'qinnko'),
(78, 'default', 0, 'design/theme/skin_ua_regexp', 'a:0:{}'),
(79, 'default', 0, 'design/theme/layout', 'qinnko'),
(80, 'default', 0, 'design/theme/layout_ua_regexp', 'a:0:{}'),
(81, 'default', 0, 'design/theme/default', 'qinnko'),
(82, 'default', 0, 'design/theme/default_ua_regexp', 'a:0:{}'),
(83, 'default', 0, 'design/head/default_title', 'QINNKO'),
(84, 'default', 0, 'design/head/title_prefix', ''),
(85, 'default', 0, 'design/head/title_suffix', ''),
(86, 'default', 0, 'design/head/default_description', 'Default Description'),
(87, 'default', 0, 'design/head/default_keywords', 'QINNKO, E-commerce'),
(88, 'default', 0, 'design/head/default_robots', 'INDEX,FOLLOW'),
(89, 'default', 0, 'design/head/includes', ''),
(90, 'default', 0, 'design/head/demonotice', '0'),
(91, 'default', 0, 'design/header/logo_src', 'images/logo.gif'),
(92, 'default', 0, 'design/header/logo_alt', 'QINNKO'),
(93, 'default', 0, 'design/header/welcome', 'Default welcome msg!'),
(94, 'default', 0, 'design/footer/copyright', '&copy; 2010 QINNKO Store. All Rights Reserved.'),
(95, 'default', 0, 'design/footer/absolute_footer', ''),
(96, 'default', 0, 'design/watermark/image_size', ''),
(97, 'default', 0, 'design/watermark/image_imageOpacity', ''),
(98, 'default', 0, 'design/watermark/image_position', 'stretch'),
(99, 'default', 0, 'design/watermark/small_image_size', ''),
(100, 'default', 0, 'design/watermark/small_image_imageOpacity', ''),
(101, 'default', 0, 'design/watermark/small_image_position', 'stretch'),
(102, 'default', 0, 'design/watermark/thumbnail_size', ''),
(103, 'default', 0, 'design/watermark/thumbnail_imageOpacity', ''),
(104, 'default', 0, 'design/watermark/thumbnail_position', 'stretch'),
(105, 'default', 0, 'design/pagination/pagination_frame', '5'),
(106, 'default', 0, 'design/pagination/pagination_frame_skip', ''),
(107, 'default', 0, 'design/pagination/anchor_text_for_previous', ''),
(108, 'default', 0, 'design/pagination/anchor_text_for_next', ''),
(109, 'stores', 2, 'general/locale/code', 'en_US'),
(110, 'stores', 1, 'general/locale/code', 'zh_CN'),
(111, 'default', 0, 'catalog/review/allow_guest', '0'),
(112, 'default', 0, 'catalog/frontend/list_mode', 'grid-list'),
(113, 'default', 0, 'catalog/frontend/grid_per_page_values', '9,15,30'),
(114, 'default', 0, 'catalog/frontend/grid_per_page', '9'),
(115, 'default', 0, 'catalog/frontend/list_per_page_values', '5,10,15,20,25'),
(116, 'default', 0, 'catalog/frontend/list_per_page', '10'),
(117, 'default', 0, 'catalog/frontend/list_allow_all', '0'),
(118, 'default', 0, 'catalog/frontend/default_sort_by', 'position'),
(119, 'default', 0, 'catalog/frontend/flat_catalog_category', '0'),
(120, 'default', 0, 'catalog/frontend/flat_catalog_product', '0'),
(121, 'default', 0, 'catalog/frontend/parse_url_directives', '1'),
(122, 'default', 0, 'catalog/sitemap/tree_mode', '0'),
(123, 'default', 0, 'catalog/sitemap/lines_perpage', '30'),
(124, 'default', 0, 'catalog/productalert/allow_price', '0'),
(125, 'default', 0, 'catalog/productalert/email_price_template', 'catalog_productalert_email_price_template'),
(126, 'default', 0, 'catalog/productalert/allow_stock', '0'),
(127, 'default', 0, 'catalog/productalert/email_stock_template', 'catalog_productalert_email_stock_template'),
(128, 'default', 0, 'catalog/productalert/email_identity', 'general'),
(129, 'default', 0, 'catalog/productalert_cron/frequency', 'D'),
(130, 'default', 0, 'crontab/jobs/catalog_product_alert/schedule/cron_expr', '0 0 * * *'),
(131, 'default', 0, 'crontab/jobs/catalog_product_alert/run/model', 'productalert/observer::process'),
(132, 'default', 0, 'catalog/productalert_cron/time', '00,00,00'),
(133, 'default', 0, 'catalog/productalert_cron/error_email', ''),
(134, 'default', 0, 'catalog/productalert_cron/error_email_identity', 'general'),
(135, 'default', 0, 'catalog/productalert_cron/error_email_template', 'catalog_productalert_cron_error_email_template'),
(136, 'default', 0, 'catalog/recently_products/scope', 'website'),
(137, 'default', 0, 'catalog/recently_products/viewed_count', '5'),
(138, 'default', 0, 'catalog/recently_products/compared_count', '5'),
(139, 'default', 0, 'catalog/price/scope', '0'),
(140, 'default', 0, 'catalog/navigation/max_depth', '0'),
(141, 'default', 0, 'catalog/search/min_query_length', '1'),
(142, 'default', 0, 'catalog/search/max_query_length', '128'),
(143, 'default', 0, 'catalog/search/max_query_words', '10'),
(144, 'default', 0, 'catalog/search/search_type', '1'),
(145, 'default', 0, 'catalog/search/use_layered_navigation_count', '2000'),
(146, 'default', 0, 'catalog/seo/site_map', '1'),
(147, 'default', 0, 'catalog/seo/search_terms', '1'),
(148, 'default', 0, 'catalog/seo/product_url_suffix', '.html'),
(149, 'default', 0, 'catalog/seo/category_url_suffix', '.html'),
(150, 'default', 0, 'catalog/seo/product_use_categories', '1'),
(151, 'default', 0, 'catalog/seo/save_rewrites_history', '1'),
(152, 'default', 0, 'catalog/seo/title_separator', '-'),
(153, 'default', 0, 'catalog/seo/category_canonical_tag', '0'),
(154, 'default', 0, 'catalog/seo/product_canonical_tag', '0'),
(155, 'default', 0, 'catalog/downloadable/order_item_status', '9'),
(156, 'default', 0, 'catalog/downloadable/downloads_number', '0'),
(157, 'default', 0, 'catalog/downloadable/shareable', '0'),
(158, 'default', 0, 'catalog/downloadable/samples_title', 'Samples'),
(159, 'default', 0, 'catalog/downloadable/links_title', 'Links'),
(160, 'default', 0, 'catalog/downloadable/links_target_new_window', '1'),
(161, 'default', 0, 'catalog/downloadable/content_disposition', 'inline'),
(162, 'default', 0, 'catalog/downloadable/disable_guest_checkout', '1'),
(163, 'default', 0, 'catalog/custom_options/use_calendar', '0'),
(164, 'default', 0, 'catalog/custom_options/date_fields_order', 'm,d,y'),
(165, 'default', 0, 'catalog/custom_options/time_format', '12h'),
(166, 'default', 0, 'catalog/custom_options/year_range', ','),
(167, 'default', 0, 'cms/wysiwyg/enabled', 'hidden'),
(168, 'default', 0, 'cms/wysiwyg/use_static_urls_in_catalog', '0'),
(169, 'default', 0, 'advanced/modules_disable_output/Mage_Admin', '0'),
(170, 'default', 0, 'advanced/modules_disable_output/Mage_AdminNotification', '1'),
(171, 'default', 0, 'advanced/modules_disable_output/Mage_Api', '0'),
(172, 'default', 0, 'advanced/modules_disable_output/Mage_Backup', '0'),
(173, 'default', 0, 'advanced/modules_disable_output/Mage_Bundle', '0'),
(174, 'default', 0, 'advanced/modules_disable_output/Mage_Catalog', '0'),
(175, 'default', 0, 'advanced/modules_disable_output/Mage_CatalogIndex', '0'),
(176, 'default', 0, 'advanced/modules_disable_output/Mage_CatalogInventory', '0'),
(177, 'default', 0, 'advanced/modules_disable_output/Mage_CatalogRule', '0'),
(178, 'default', 0, 'advanced/modules_disable_output/Mage_CatalogSearch', '0'),
(179, 'default', 0, 'advanced/modules_disable_output/Mage_Centinel', '0'),
(180, 'default', 0, 'advanced/modules_disable_output/Mage_Checkout', '0'),
(181, 'default', 0, 'advanced/modules_disable_output/Mage_Cms', '0'),
(182, 'default', 0, 'advanced/modules_disable_output/Mage_Compiler', '0'),
(183, 'default', 0, 'advanced/modules_disable_output/Mage_Contacts', '0'),
(184, 'default', 0, 'advanced/modules_disable_output/Mage_Core', '0'),
(185, 'default', 0, 'advanced/modules_disable_output/Mage_Cron', '0'),
(186, 'default', 0, 'advanced/modules_disable_output/Mage_Customer', '0'),
(187, 'default', 0, 'advanced/modules_disable_output/Mage_Dataflow', '0'),
(188, 'default', 0, 'advanced/modules_disable_output/Mage_Directory', '0'),
(189, 'default', 0, 'advanced/modules_disable_output/Mage_Downloadable', '0'),
(190, 'default', 0, 'advanced/modules_disable_output/Mage_Eav', '0'),
(191, 'default', 0, 'advanced/modules_disable_output/Mage_GiftMessage', '0'),
(192, 'default', 0, 'advanced/modules_disable_output/Mage_GoogleAnalytics', '0'),
(193, 'default', 0, 'advanced/modules_disable_output/Mage_GoogleBase', '0'),
(194, 'default', 0, 'advanced/modules_disable_output/Mage_GoogleCheckout', '0'),
(195, 'default', 0, 'advanced/modules_disable_output/Mage_GoogleOptimizer', '0'),
(196, 'default', 0, 'advanced/modules_disable_output/Mage_Index', '0'),
(197, 'default', 0, 'advanced/modules_disable_output/Mage_Install', '0'),
(198, 'default', 0, 'advanced/modules_disable_output/Mage_Log', '0'),
(199, 'default', 0, 'advanced/modules_disable_output/Mage_Media', '0'),
(200, 'default', 0, 'advanced/modules_disable_output/Mage_Newsletter', '0'),
(201, 'default', 0, 'advanced/modules_disable_output/Mage_Page', '0'),
(202, 'default', 0, 'advanced/modules_disable_output/Mage_Paygate', '0'),
(203, 'default', 0, 'advanced/modules_disable_output/Mage_Payment', '0'),
(204, 'default', 0, 'advanced/modules_disable_output/Mage_Paypal', '0'),
(205, 'default', 0, 'advanced/modules_disable_output/Mage_PaypalUk', '0'),
(206, 'default', 0, 'advanced/modules_disable_output/Mage_Poll', '0'),
(207, 'default', 0, 'advanced/modules_disable_output/Mage_ProductAlert', '0'),
(208, 'default', 0, 'advanced/modules_disable_output/Mage_Rating', '0'),
(209, 'default', 0, 'advanced/modules_disable_output/Mage_Reports', '0'),
(210, 'default', 0, 'advanced/modules_disable_output/Mage_Review', '0'),
(211, 'default', 0, 'advanced/modules_disable_output/Mage_Rss', '0'),
(212, 'default', 0, 'advanced/modules_disable_output/Mage_Rule', '0'),
(213, 'default', 0, 'advanced/modules_disable_output/Mage_Sales', '0'),
(214, 'default', 0, 'advanced/modules_disable_output/Mage_SalesRule', '0'),
(215, 'default', 0, 'advanced/modules_disable_output/Mage_Sendfriend', '0'),
(216, 'default', 0, 'advanced/modules_disable_output/Mage_Shipping', '0'),
(217, 'default', 0, 'advanced/modules_disable_output/Mage_Sitemap', '0'),
(218, 'default', 0, 'advanced/modules_disable_output/Mage_Tag', '0'),
(219, 'default', 0, 'advanced/modules_disable_output/Mage_Tax', '0'),
(220, 'default', 0, 'advanced/modules_disable_output/Mage_Usa', '0'),
(221, 'default', 0, 'advanced/modules_disable_output/Mage_Weee', '0'),
(222, 'default', 0, 'advanced/modules_disable_output/Mage_Widget', '0'),
(223, 'default', 0, 'advanced/modules_disable_output/Mage_Wishlist', '0'),
(224, 'default', 0, 'advanced/modules_disable_output/Phoenix_Moneybookers', '0');

-- --------------------------------------------------------

--
-- 表的结构 `core_email_template`
--

CREATE TABLE IF NOT EXISTS `core_email_template` (
  `template_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(150) DEFAULT NULL,
  `template_text` text,
  `template_styles` text,
  `template_type` int(3) unsigned DEFAULT NULL,
  `template_subject` varchar(200) DEFAULT NULL,
  `template_sender_name` varchar(200) DEFAULT NULL,
  `template_sender_email` varchar(200) DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `orig_template_code` varchar(200) DEFAULT NULL,
  `orig_template_variables` text NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `added_at` (`added_at`),
  KEY `modified_at` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email templates' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `core_email_template`
--


-- --------------------------------------------------------

--
-- 表的结构 `core_flag`
--

CREATE TABLE IF NOT EXISTS `core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flag_code` varchar(255) NOT NULL,
  `state` smallint(5) unsigned NOT NULL DEFAULT '0',
  `flag_data` text,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`flag_id`),
  KEY `last_update` (`last_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `core_flag`
--

INSERT INTO `core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(2, 'catalog_product_flat', 0, 'a:1:{s:8:"is_built";b:1;}', '2010-05-27 04:24:10'),
(3, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2010-10-05 08:23:03');

-- --------------------------------------------------------

--
-- 表的结构 `core_layout_link`
--

CREATE TABLE IF NOT EXISTS `core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `area` varchar(64) NOT NULL DEFAULT '',
  `package` varchar(64) NOT NULL DEFAULT '',
  `theme` varchar(64) NOT NULL DEFAULT '',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `store_id` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `FK_core_layout_link_update` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `core_layout_link`
--


-- --------------------------------------------------------

--
-- 表的结构 `core_layout_update`
--

CREATE TABLE IF NOT EXISTS `core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) DEFAULT NULL,
  `xml` text,
  `sort_order` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layout_update_id`),
  KEY `handle` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `core_layout_update`
--


-- --------------------------------------------------------

--
-- 表的结构 `core_resource`
--

CREATE TABLE IF NOT EXISTS `core_resource` (
  `code` varchar(50) NOT NULL DEFAULT '',
  `version` varchar(50) NOT NULL DEFAULT '',
  `data_version` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resource version registry';

--
-- 转存表中的数据 `core_resource`
--

INSERT INTO `core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.0.0', '1.0.0'),
('admin_setup', '0.7.2', '0.7.2'),
('api_setup', '0.8.1', '0.8.1'),
('backup_setup', '0.7.0', '0.7.0'),
('bundle_setup', '0.1.12', '0.1.12'),
('catalogindex_setup', '0.7.10', '0.7.10'),
('cataloginventory_setup', '0.7.8', '0.7.8'),
('catalogrule_setup', '0.7.10', '0.7.10'),
('catalogsearch_setup', '0.7.7', '0.7.7'),
('catalog_setup', '1.4.0.0.28', '1.4.0.0.28'),
('checkout_setup', '0.9.5', '0.9.5'),
('chronopay_setup', '0.1.0', NULL),
('cms_setup', '0.7.13', '0.7.13'),
('compiler_setup', '0.1.0', '0.1.0'),
('contacts_setup', '0.8.0', '0.8.0'),
('core_setup', '0.8.26', '0.8.26'),
('cron_setup', '0.7.1', '0.7.1'),
('customer_setup', '1.4.0.0.7', '1.4.0.0.7'),
('cybermut_setup', '0.1.0', NULL),
('cybersource_setup', '0.7.0', NULL),
('dataflow_setup', '0.7.4', '0.7.4'),
('directory_setup', '0.8.10', '0.8.10'),
('downloadable_setup', '1.4.0.1', '1.4.0.1'),
('eav_setup', '0.7.15', '0.7.15'),
('eway_setup', '0.1.0', NULL),
('flo2cash_setup', '0.1.1', NULL),
('giftmessage_setup', '0.7.2', '0.7.2'),
('googleanalytics_setup', '0.1.0', NULL),
('googlebase_setup', '0.1.2', '0.1.2'),
('googlecheckout_setup', '0.7.3', '0.7.3'),
('googleoptimizer_setup', '0.1.2', '0.1.2'),
('ideal_setup', '0.1.0', NULL),
('index_setup', '1.4.0.2', '1.4.0.2'),
('log_setup', '0.7.7', '0.7.7'),
('moneybookers_setup', '1.2.0.1', '1.2.0.1'),
('newsletter_setup', '0.8.2', '0.8.2'),
('oscommerce_setup', '0.8.10', NULL),
('paybox_setup', '0.1.3', NULL),
('paygate_setup', '0.7.1', '0.7.1'),
('payment_setup', '0.7.0', '0.7.0'),
('paypaluk_setup', '0.7.0', '0.7.0'),
('paypal_setup', '1.4.0.1', '1.4.0.1'),
('poll_setup', '0.7.2', '0.7.2'),
('productalert_setup', '0.7.2', '0.7.2'),
('protx_setup', '0.1.0', NULL),
('rating_setup', '0.7.2', '0.7.2'),
('reports_setup', '0.7.10', '0.7.10'),
('review_setup', '0.7.6', '0.7.6'),
('salesrule_setup', '1.4.0.0.4', '1.4.0.0.4'),
('sales_setup', '1.4.0.15', '1.4.0.15'),
('sendfriend_setup', '0.7.4', '0.7.4'),
('shipping_setup', '0.7.0', '0.7.0'),
('sitemap_setup', '0.7.2', '0.7.2'),
('strikeiron_setup', '0.9.1', NULL),
('tag_setup', '0.7.7', '0.7.7'),
('tax_setup', '1.4.0.0', '1.4.0.0'),
('usa_setup', '0.7.1', '0.7.1'),
('weee_setup', '0.13', '0.13'),
('widget_setup', '1.4.0.0.0', '1.4.0.0.0'),
('wishlist_setup', '0.7.8', '0.7.8');

-- --------------------------------------------------------

--
-- 表的结构 `core_session`
--

CREATE TABLE IF NOT EXISTS `core_session` (
  `session_id` varchar(255) NOT NULL DEFAULT '',
  `website_id` smallint(5) unsigned DEFAULT NULL,
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` mediumblob NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `FK_SESSION_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Session data store';

--
-- 转存表中的数据 `core_session`
--


-- --------------------------------------------------------

--
-- 表的结构 `core_store`
--

CREATE TABLE IF NOT EXISTS `core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL DEFAULT '',
  `website_id` smallint(5) unsigned DEFAULT '0',
  `group_id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `code` (`code`),
  KEY `FK_STORE_WEBSITE` (`website_id`),
  KEY `is_active` (`is_active`,`sort_order`),
  KEY `FK_STORE_GROUP` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `core_store`
--

INSERT INTO `core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'chinese', 1, 1, 'Chinese', 0, 1),
(2, 'english', 1, 1, 'English', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `core_store_group`
--

CREATE TABLE IF NOT EXISTS `core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `FK_STORE_GROUP_WEBSITE` (`website_id`),
  KEY `default_store_id` (`default_store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `core_store_group`
--

INSERT INTO `core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Store', 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `core_translate`
--

CREATE TABLE IF NOT EXISTS `core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `string` varchar(255) NOT NULL DEFAULT '',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `translate` varchar(255) NOT NULL DEFAULT '',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `IDX_CODE` (`store_id`,`locale`,`string`),
  KEY `FK_CORE_TRANSLATE_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Translation data' AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `core_translate`
--

INSERT INTO `core_translate` (`key_id`, `string`, `store_id`, `translate`, `locale`) VALUES
(1, 'Size', 0, 'Size', 'en_US'),
(2, 'Color', 0, 'Color', 'en_US'),
(3, 'Thumbnail Image', 0, 'Thumbnail Image', 'en_US'),
(4, 'Med image', 0, 'Med image', 'en_US'),
(5, 'Large Image', 0, 'Large Image', 'en_US'),
(6, 'Medium Image', 0, 'Medium Image', 'en_US'),
(7, 'Main Image', 0, 'Main Image', 'en_US'),
(8, 'In Depth', 0, 'In Depth', 'en_US'),
(9, 'Small Image', 0, 'Small Image', 'en_US'),
(10, 'Manufacturer', 0, 'Manufacturer', 'en_US'),
(11, 'Dimensions', 0, 'Dimensions', 'en_US'),
(12, 'Model', 0, 'Model', 'en_US'),
(13, 'Activation Information', 0, 'Activation Information', 'en_US'),
(14, 'Thumbnail', 0, 'Thumbnail', 'en_US'),
(15, 'Description', 0, 'Description', 'en_US'),
(16, 'Weight', 0, 'Weight', 'en_US'),
(17, 'Processor', 0, 'Processor', 'en_US'),
(18, 'Memory', 0, 'Memory', 'en_US'),
(19, 'Hardrive', 0, 'Hardrive', 'en_US'),
(20, 'Screensize', 0, 'Screensize', 'en_US'),
(21, 'Gender', 0, 'Gender', 'en_US'),
(22, 'Shoe Size', 0, 'Shoe Size', 'en_US'),
(23, 'Shoe Type', 0, 'Shoe Type', 'en_US'),
(24, 'shape', 0, 'shape', 'en_US'),
(25, 'Short Description', 0, 'Short Description', 'en_US'),
(26, 'Country of Origin', 0, 'Country of Origin', 'en_US'),
(27, 'Room', 0, 'Room', 'en_US'),
(28, 'Finish', 0, 'Finish', 'en_US'),
(29, 'Manufacturer1', 0, 'Manufacturer1', 'en_US'),
(30, 'color-roy', 0, 'color-roy', 'en_US'),
(31, 'Megapixels', 0, 'Megapixels', 'en_US'),
(32, 'Shirt Size', 0, 'Shirt Size', 'en_US'),
(33, 'Visibility', 0, 'Visibility', 'en_US'),
(34, 'Tax Class', 0, 'Tax Class', 'en_US'),
(35, 'Status', 0, 'Status', 'en_US'),
(36, 'Price', 0, 'Price', 'en_US'),
(37, 'Tier Price', 0, 'Tier Price', 'en_US'),
(38, 'Special Price', 0, 'Special Price', 'en_US'),
(39, 'Meta Keywords', 0, 'Meta Keywords', 'en_US'),
(40, 'Max Resolution', 0, 'Max Resolution', 'en_US'),
(41, 'RAM SIze', 0, 'RAM SIze', 'en_US'),
(42, 'Contrast Ratio', 0, 'Contrast Ratio', 'en_US'),
(43, 'Response Time', 0, 'Response Time', 'en_US'),
(44, 'CPU Speed', 0, 'CPU Speed', 'en_US'),
(45, 'Disk Speed', 0, 'Disk Speed', 'en_US'),
(46, 'Brand', 0, 'Brand', 'en_US');

-- --------------------------------------------------------

--
-- 表的结构 `core_url_rewrite`
--

CREATE TABLE IF NOT EXISTS `core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `id_path` varchar(255) NOT NULL DEFAULT '',
  `request_path` varchar(255) NOT NULL DEFAULT '',
  `target_path` varchar(255) NOT NULL DEFAULT '',
  `is_system` tinyint(1) unsigned DEFAULT '1',
  `options` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_REQUEST_PATH` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_PATH` (`id_path`,`is_system`,`store_id`),
  KEY `FK_CORE_URL_REWRITE_STORE` (`store_id`),
  KEY `FK_CORE_URL_REWRITE_CATEGORY` (`category_id`),
  KEY `FK_CORE_URL_REWRITE_PRODUCT` (`product_id`),
  KEY `IDX_ID_PATH` (`id_path`),
  KEY `IDX_CATEGORY_REWRITE` (`category_id`,`is_system`,`product_id`,`store_id`,`id_path`),
  KEY `IDX_TARGET_PATH` (`target_path`,`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=421 ;

--
-- 转存表中的数据 `core_url_rewrite`
--

INSERT INTO `core_url_rewrite` (`url_rewrite_id`, `store_id`, `category_id`, `product_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`) VALUES
(25, 1, 20, NULL, 'category/20', 'a-a-c-a/a-a/household-items.html', 'catalog/category/view/id/20', 1, '', NULL),
(276, 1, NULL, 166, 'product/166', 'htc-touch-diamond.html', 'catalog/product/view/id/166', 1, '', NULL),
(278, 1, 36, NULL, 'category/36', '/ae-ae-aoe.html', 'catalog/category/view/id/36', 1, '', NULL),
(279, 2, 36, NULL, 'category/36', '/ae-ae-aoe.html', 'catalog/category/view/id/36', 1, '', NULL),
(280, 1, 37, NULL, 'category/37', '/ae-e-oec.html', 'catalog/category/view/id/37', 1, '', NULL),
(281, 2, 37, NULL, 'category/37', '/ae-e-oec.html', 'catalog/category/view/id/37', 1, '', NULL),
(282, 1, 37, NULL, '82558200_1286370518', '/ae-ae-aoe/ae-e-oec.html', '/ae-e-oec.html', 0, 'RP', NULL),
(283, 2, 37, NULL, '93114900_1286370518', '/ae-ae-aoe/ae-e-oec.html', '/ae-e-oec.html', 0, 'RP', NULL),
(284, 1, 39, NULL, 'category/39', 'a-a-c-a/a-a/ae-e-oec.html', 'catalog/category/view/id/39', 1, '', NULL),
(285, 2, 39, NULL, 'category/39', 'a-a-c-a/a-a/ae-e-oec.html', 'catalog/category/view/id/39', 1, '', NULL),
(286, 1, 41, NULL, 'category/41', 'a-a/a-a/e-e-1/ae-a-se-e.html', 'catalog/category/view/id/41', 1, '', NULL),
(287, 2, 41, NULL, 'category/41', 'a-a/a-a/e-e-1/ae-a-se-e.html', 'catalog/category/view/id/41', 1, '', NULL),
(288, 1, 42, NULL, 'category/42', 'a-a/a-a/e-aeoe/e-a.html', 'catalog/category/view/id/42', 1, '', NULL),
(289, 2, 42, NULL, 'category/42', 'a-a/a-a/e-aeoe/e-a.html', 'catalog/category/view/id/42', 1, '', NULL),
(290, 1, 40, NULL, 'category/40', 'a-a/a-a/e-e-1/cs-a-a-az-cs-a.html', 'catalog/category/view/id/40', 1, '', NULL),
(291, 2, 40, NULL, 'category/40', 'a-a/a-a/e-e-1/cs-a-a-az-cs-a.html', 'catalog/category/view/id/40', 1, '', NULL),
(292, 1, 54, NULL, 'category/54', 'a-a.html', 'catalog/category/view/id/54', 1, '', NULL),
(293, 2, 54, NULL, 'category/54', 'a-a.html', 'catalog/category/view/id/54', 1, '', NULL),
(296, 1, 56, NULL, 'category/56', 'a-a/a-a/e-e-1/ae-ae-aoe.html', 'catalog/category/view/id/56', 1, '', NULL),
(297, 2, 56, NULL, 'category/56', 'a-a/a-a/e-e-1/ae-ae-aoe.html', 'catalog/category/view/id/56', 1, '', NULL),
(298, 1, 57, NULL, 'category/57', 'a-a/a-a/e-e-1/ae-e-oec.html', 'catalog/category/view/id/57', 1, '', NULL),
(299, 2, 57, NULL, 'category/57', 'a-a/a-a/e-e-1/ae-e-oec.html', 'catalog/category/view/id/57', 1, '', NULL),
(302, 1, 43, NULL, 'category/43', 'a-a-c-a.html', 'catalog/category/view/id/43', 1, '', NULL),
(303, 1, 44, NULL, 'category/44', 'a-a-c-a/a-a.html', 'catalog/category/view/id/44', 1, '', NULL),
(304, 1, 20, NULL, '72519100_1286522104', 'household-items.html', 'a-a-c-a/a-a/household-items.html', 0, 'RP', NULL),
(305, 1, 39, NULL, '83354500_1286522104', 'ae-e-oec.html', 'a-a-c-a/a-a/ae-e-oec.html', 0, 'RP', NULL),
(306, 1, 40, NULL, '92940700_1286522104', 'cs-a-a-az-cs-a.html', 'a-a/a-a/e-e-1/cs-a-a-az-cs-a.html', 0, 'RP', NULL),
(307, 1, 41, NULL, '03716500_1286522105', 'ae-a-se-e.html', 'a-a/a-a/e-e-1/ae-a-se-e.html', 0, 'RP', NULL),
(308, 1, 42, NULL, '13328400_1286522105', 'e-a.html', 'a-a/a-a/e-aeoe/e-a.html', 0, 'RP', NULL),
(309, 1, 45, NULL, 'category/45', 'a-a/a-a/e-e-1/a-e-coe-e-oe.html', 'catalog/category/view/id/45', 1, '', NULL),
(310, 1, 46, NULL, 'category/46', 'a-a/a-a/ez/ez-a.html', 'catalog/category/view/id/46', 1, '', NULL),
(311, 1, 47, NULL, 'category/47', 'a-a/a-a/ez/e-a-aeoe.html', 'catalog/category/view/id/47', 1, '', NULL),
(312, 1, 48, NULL, 'category/48', 'a-a/a-a/e-e-1/e-c.html', 'catalog/category/view/id/48', 1, '', NULL),
(313, 1, 49, NULL, 'category/49', 'a-a/a-a/e-e-1/e-e.html', 'catalog/category/view/id/49', 1, '', NULL),
(314, 1, 50, NULL, 'category/50', 'a-a/a-a/e-e-1/e-c-c-a.html', 'catalog/category/view/id/50', 1, '', NULL),
(315, 1, 51, NULL, 'category/51', 'a-a/a-a/e-aeoe/c-e-a-sc-ae-ae.html', 'catalog/category/view/id/51', 1, '', NULL),
(316, 1, 52, NULL, 'category/52', 'a-a/a-a/e-aeoe/ae-e.html', 'catalog/category/view/id/52', 1, '', NULL),
(317, 1, 53, NULL, 'category/53', 'a-a-c-a/c-a.html', 'catalog/category/view/id/53', 1, '', NULL),
(318, 2, 43, NULL, 'category/43', 'a-a-c-a.html', 'catalog/category/view/id/43', 1, '', NULL),
(319, 2, 44, NULL, 'category/44', 'a-a-c-a/a-a.html', 'catalog/category/view/id/44', 1, '', NULL),
(320, 2, 20, NULL, 'category/20', 'a-a-c-a/a-a/household-items.html', 'catalog/category/view/id/20', 1, '', NULL),
(321, 2, 39, NULL, '10521000_1286522106', 'ae-e-oec.html', 'a-a-c-a/a-a/ae-e-oec.html', 0, 'RP', NULL),
(322, 2, 40, NULL, '15330700_1286522106', 'cs-a-a-az-cs-a.html', 'a-a/a-a/e-e-1/cs-a-a-az-cs-a.html', 0, 'RP', NULL),
(323, 2, 41, NULL, '20127400_1286522106', 'ae-a-se-e.html', 'a-a/a-a/e-e-1/ae-a-se-e.html', 0, 'RP', NULL),
(324, 2, 42, NULL, '25946100_1286522106', 'e-a.html', 'a-a/a-a/e-aeoe/e-a.html', 0, 'RP', NULL),
(325, 2, 45, NULL, 'category/45', 'a-a/a-a/e-e-1/a-e-coe-e-oe.html', 'catalog/category/view/id/45', 1, '', NULL),
(326, 2, 46, NULL, 'category/46', 'a-a/a-a/ez/ez-a.html', 'catalog/category/view/id/46', 1, '', NULL),
(327, 2, 47, NULL, 'category/47', 'a-a/a-a/ez/e-a-aeoe.html', 'catalog/category/view/id/47', 1, '', NULL),
(328, 2, 48, NULL, 'category/48', 'a-a/a-a/e-e-1/e-c.html', 'catalog/category/view/id/48', 1, '', NULL),
(329, 2, 49, NULL, 'category/49', 'a-a/a-a/e-e-1/e-e.html', 'catalog/category/view/id/49', 1, '', NULL),
(330, 2, 50, NULL, 'category/50', 'a-a/a-a/e-e-1/e-c-c-a.html', 'catalog/category/view/id/50', 1, '', NULL),
(331, 2, 51, NULL, 'category/51', 'a-a/a-a/e-aeoe/c-e-a-sc-ae-ae.html', 'catalog/category/view/id/51', 1, '', NULL),
(332, 2, 52, NULL, 'category/52', 'a-a/a-a/e-aeoe/ae-e.html', 'catalog/category/view/id/52', 1, '', NULL),
(333, 2, 53, NULL, 'category/53', 'a-a-c-a/c-a.html', 'catalog/category/view/id/53', 1, '', NULL),
(334, 1, 58, NULL, 'category/58', 'a-a/a-a.html', 'catalog/category/view/id/58', 1, '', NULL),
(335, 2, 58, NULL, 'category/58', 'a-a/a-a.html', 'catalog/category/view/id/58', 1, '', NULL),
(336, 1, 56, NULL, '08275700_1286522138', 'a-a/ae-ae-aoe.html', 'a-a/a-a/e-e-1/ae-ae-aoe.html', 0, 'RP', NULL),
(337, 2, 56, NULL, '19585700_1286522138', 'a-a/ae-ae-aoe.html', 'a-a/a-a/e-e-1/ae-ae-aoe.html', 0, 'RP', NULL),
(338, 1, 57, NULL, '77754800_1286522142', 'a-a/ae-e-oec.html', 'a-a/a-a/e-e-1/ae-e-oec.html', 0, 'RP', NULL),
(339, 2, 57, NULL, '88322200_1286522142', 'a-a/ae-e-oec.html', 'a-a/a-a/e-e-1/ae-e-oec.html', 0, 'RP', NULL),
(340, 1, 59, NULL, 'category/59', 'a-a/c-a.html', 'catalog/category/view/id/59', 1, '', NULL),
(341, 2, 59, NULL, 'category/59', 'a-a/c-a.html', 'catalog/category/view/id/59', 1, '', NULL),
(342, 1, 40, NULL, '08514300_1286693871', 'a-a-c-a/a-a/cs-a-a-az-cs-a.html', 'a-a/a-a/e-e-1/cs-a-a-az-cs-a.html', 0, 'RP', NULL),
(343, 2, 40, NULL, '22889500_1286693871', 'a-a-c-a/a-a/cs-a-a-az-cs-a.html', 'a-a/a-a/e-e-1/cs-a-a-az-cs-a.html', 0, 'RP', NULL),
(344, 1, 42, NULL, '72810400_1286693875', 'a-a-c-a/a-a/e-a.html', 'a-a/a-a/e-aeoe/e-a.html', 0, 'RP', NULL),
(345, 2, 42, NULL, '86075900_1286693875', 'a-a-c-a/a-a/e-a.html', 'a-a/a-a/e-aeoe/e-a.html', 0, 'RP', NULL),
(346, 1, 41, NULL, '33286000_1286693881', 'a-a-c-a/a-a/ae-a-se-e.html', 'a-a/a-a/e-e-1/ae-a-se-e.html', 0, 'RP', NULL),
(347, 2, 41, NULL, '46483700_1286693881', 'a-a-c-a/a-a/ae-a-se-e.html', 'a-a/a-a/e-e-1/ae-a-se-e.html', 0, 'RP', NULL),
(348, 1, 45, NULL, '33646700_1286693886', 'a-a-c-a/a-a/a-e-coe-e-oe.html', 'a-a/a-a/e-e-1/a-e-coe-e-oe.html', 0, 'RP', NULL),
(349, 2, 45, NULL, '44109400_1286693886', 'a-a-c-a/a-a/a-e-coe-e-oe.html', 'a-a/a-a/e-e-1/a-e-coe-e-oe.html', 0, 'RP', NULL),
(350, 1, 46, NULL, '79213200_1286693890', 'a-a-c-a/a-a/ez-a.html', 'a-a/a-a/ez/ez-a.html', 0, 'RP', NULL),
(351, 2, 46, NULL, '89641800_1286693890', 'a-a-c-a/a-a/ez-a.html', 'a-a/a-a/ez/ez-a.html', 0, 'RP', NULL),
(352, 1, 47, NULL, '07948700_1286693897', 'a-a-c-a/a-a/e-a-aeoe.html', 'a-a/a-a/ez/e-a-aeoe.html', 0, 'RP', NULL),
(353, 2, 47, NULL, '25283000_1286693897', 'a-a-c-a/a-a/e-a-aeoe.html', 'a-a/a-a/ez/e-a-aeoe.html', 0, 'RP', NULL),
(354, 1, 48, NULL, '13217900_1286693901', 'a-a-c-a/a-a/e-c.html', 'a-a/a-a/e-e-1/e-c.html', 0, 'RP', NULL),
(355, 2, 48, NULL, '23680900_1286693901', 'a-a-c-a/a-a/e-c.html', 'a-a/a-a/e-e-1/e-c.html', 0, 'RP', NULL),
(356, 1, 49, NULL, '09623700_1286693906', 'a-a-c-a/a-a/e-e.html', 'a-a/a-a/e-e-1/e-e.html', 0, 'RP', NULL),
(357, 2, 49, NULL, '21613700_1286693906', 'a-a-c-a/a-a/e-e.html', 'a-a/a-a/e-e-1/e-e.html', 0, 'RP', NULL),
(358, 1, 50, NULL, '20375000_1286693910', 'a-a-c-a/a-a/e-c-c-a.html', 'a-a/a-a/e-e-1/e-c-c-a.html', 0, 'RP', NULL),
(359, 2, 50, NULL, '30836600_1286693910', 'a-a-c-a/a-a/e-c-c-a.html', 'a-a/a-a/e-e-1/e-c-c-a.html', 0, 'RP', NULL),
(360, 1, 51, NULL, '68054300_1286693914', 'a-a-c-a/a-a/c-e-a-sc-ae-ae.html', 'a-a/a-a/e-aeoe/c-e-a-sc-ae-ae.html', 0, 'RP', NULL),
(361, 2, 51, NULL, '79849900_1286693914', 'a-a-c-a/a-a/c-e-a-sc-ae-ae.html', 'a-a/a-a/e-aeoe/c-e-a-sc-ae-ae.html', 0, 'RP', NULL),
(362, 1, 52, NULL, '59045500_1286693918', 'a-a-c-a/a-a/ae-e.html', 'a-a/a-a/e-aeoe/ae-e.html', 0, 'RP', NULL),
(363, 2, 52, NULL, '70212000_1286693918', 'a-a-c-a/a-a/ae-e.html', 'a-a/a-a/e-aeoe/ae-e.html', 0, 'RP', NULL),
(364, 1, 60, NULL, 'category/60', 'a-a-c-a/a-a/a-c.html', 'catalog/category/view/id/60', 1, '', NULL),
(365, 2, 60, NULL, 'category/60', 'a-a-c-a/a-a/a-c.html', 'catalog/category/view/id/60', 1, '', NULL),
(366, 1, 61, NULL, 'category/61', 'a-a-c-a/a-a/a-c-1.html', 'catalog/category/view/id/61', 1, '', NULL),
(367, 2, 61, NULL, 'category/61', 'a-a-c-a/a-a/a-c-1.html', 'catalog/category/view/id/61', 1, '', NULL),
(368, 1, 62, NULL, 'category/62', 'a-a-c-a/a-a/ae-ae.html', 'catalog/category/view/id/62', 1, '', NULL),
(369, 2, 62, NULL, 'category/62', 'a-a-c-a/a-a/ae-ae.html', 'catalog/category/view/id/62', 1, '', NULL),
(370, 1, 63, NULL, 'category/63', 'a-a-c-a/a-a/c-a.html', 'catalog/category/view/id/63', 1, '', NULL),
(371, 2, 63, NULL, 'category/63', 'a-a-c-a/a-a/c-a.html', 'catalog/category/view/id/63', 1, '', NULL),
(372, 1, 64, NULL, 'category/64', 'a-a-c-a/a-a/a-ae.html', 'catalog/category/view/id/64', 1, '', NULL),
(373, 2, 64, NULL, 'category/64', 'a-a-c-a/a-a/a-ae.html', 'catalog/category/view/id/64', 1, '', NULL),
(374, 1, 65, NULL, 'category/65', 'a-a-c-a/a-a/a-a-s.html', 'catalog/category/view/id/65', 1, '', NULL),
(375, 2, 65, NULL, 'category/65', 'a-a-c-a/a-a/a-a-s.html', 'catalog/category/view/id/65', 1, '', NULL),
(376, 1, 66, NULL, 'category/66', 'a-a/a-a/e-aeoe.html', 'catalog/category/view/id/66', 1, '', NULL),
(377, 2, 66, NULL, 'category/66', 'a-a/a-a/e-aeoe.html', 'catalog/category/view/id/66', 1, '', NULL),
(378, 1, 52, NULL, '86470300_1286866097', 'a-a/a-a/ae-e.html', 'a-a/a-a/e-aeoe/ae-e.html', 0, 'RP', NULL),
(379, 2, 52, NULL, '96730200_1286866097', 'a-a/a-a/ae-e.html', 'a-a/a-a/e-aeoe/ae-e.html', 0, 'RP', NULL),
(380, 1, 67, NULL, 'category/67', 'a-a/a-a/ez.html', 'catalog/category/view/id/67', 1, '', NULL),
(381, 2, 67, NULL, 'category/67', 'a-a/a-a/ez.html', 'catalog/category/view/id/67', 1, '', NULL),
(382, 1, 68, NULL, 'category/68', 'a-a/a-a/e-e-1.html', 'catalog/category/view/id/68', 1, '', NULL),
(383, 2, 68, NULL, 'category/68', 'a-a/a-a/e-e-1.html', 'catalog/category/view/id/68', 1, '', NULL),
(384, 1, 41, NULL, '85884700_1286866160', 'a-a/a-a/ae-a-se-e.html', 'a-a/a-a/e-e-1/ae-a-se-e.html', 0, 'RP', NULL),
(385, 2, 41, NULL, '98388500_1286866160', 'a-a/a-a/ae-a-se-e.html', 'a-a/a-a/e-e-1/ae-a-se-e.html', 0, 'RP', NULL),
(386, 1, 46, NULL, '20900800_1286866166', 'a-a/a-a/ez-a.html', 'a-a/a-a/ez/ez-a.html', 0, 'RP', NULL),
(387, 2, 46, NULL, '32223300_1286866166', 'a-a/a-a/ez-a.html', 'a-a/a-a/ez/ez-a.html', 0, 'RP', NULL),
(388, 1, 47, NULL, '70097700_1286866171', 'a-a/a-a/e-a-aeoe.html', 'a-a/a-a/ez/e-a-aeoe.html', 0, 'RP', NULL),
(389, 2, 47, NULL, '81593500_1286866171', 'a-a/a-a/e-a-aeoe.html', 'a-a/a-a/ez/e-a-aeoe.html', 0, 'RP', NULL),
(390, 1, 49, NULL, '58910200_1286866179', 'a-a/a-a/e-e.html', 'a-a/a-a/e-e-1/e-e.html', 0, 'RP', NULL),
(391, 2, 49, NULL, '71435700_1286866179', 'a-a/a-a/e-e.html', 'a-a/a-a/e-e-1/e-e.html', 0, 'RP', NULL),
(392, 1, 50, NULL, '34868900_1286866186', 'a-a/a-a/e-c-c-a.html', 'a-a/a-a/e-e-1/e-c-c-a.html', 0, 'RP', NULL),
(393, 2, 50, NULL, '46158400_1286866186', 'a-a/a-a/e-c-c-a.html', 'a-a/a-a/e-e-1/e-c-c-a.html', 0, 'RP', NULL),
(394, 1, 51, NULL, '38883200_1286866192', 'a-a/a-a/c-e-a-sc-ae-ae.html', 'a-a/a-a/e-aeoe/c-e-a-sc-ae-ae.html', 0, 'RP', NULL),
(395, 2, 51, NULL, '49665600_1286866192', 'a-a/a-a/c-e-a-sc-ae-ae.html', 'a-a/a-a/e-aeoe/c-e-a-sc-ae-ae.html', 0, 'RP', NULL),
(396, 1, 42, NULL, '65772200_1286866198', 'a-a/a-a/e-a.html', 'a-a/a-a/e-aeoe/e-a.html', 0, 'RP', NULL),
(397, 2, 42, NULL, '77781500_1286866198', 'a-a/a-a/e-a.html', 'a-a/a-a/e-aeoe/e-a.html', 0, 'RP', NULL),
(398, 1, 48, NULL, '85700200_1286866218', 'a-a/a-a/e-c.html', 'a-a/a-a/e-e-1/e-c.html', 0, 'RP', NULL),
(399, 2, 48, NULL, '99371300_1286866218', 'a-a/a-a/e-c.html', 'a-a/a-a/e-e-1/e-c.html', 0, 'RP', NULL),
(400, 1, 45, NULL, '63262700_1286866225', 'a-a/a-a/a-e-coe-e-oe.html', 'a-a/a-a/e-e-1/a-e-coe-e-oe.html', 0, 'RP', NULL),
(401, 2, 45, NULL, '75276300_1286866225', 'a-a/a-a/a-e-coe-e-oe.html', 'a-a/a-a/e-e-1/a-e-coe-e-oe.html', 0, 'RP', NULL),
(402, 1, 40, NULL, '20234900_1286866243', 'a-a/a-a/cs-a-a-az-cs-a.html', 'a-a/a-a/e-e-1/cs-a-a-az-cs-a.html', 0, 'RP', NULL),
(403, 2, 40, NULL, '33431300_1286866243', 'a-a/a-a/cs-a-a-az-cs-a.html', 'a-a/a-a/e-e-1/cs-a-a-az-cs-a.html', 0, 'RP', NULL),
(404, 1, 57, NULL, '55698600_1286866249', 'a-a/a-a/ae-e-oec.html', 'a-a/a-a/e-e-1/ae-e-oec.html', 0, 'RP', NULL),
(405, 2, 57, NULL, '69321300_1286866249', 'a-a/a-a/ae-e-oec.html', 'a-a/a-a/e-e-1/ae-e-oec.html', 0, 'RP', NULL),
(406, 1, 56, NULL, '18986700_1286866256', 'a-a/a-a/ae-ae-aoe.html', 'a-a/a-a/e-e-1/ae-ae-aoe.html', 0, 'RP', NULL),
(407, 2, 56, NULL, '31697100_1286866256', 'a-a/a-a/ae-ae-aoe.html', 'a-a/a-a/e-e-1/ae-ae-aoe.html', 0, 'RP', NULL),
(414, 2, NULL, 166, 'product/166', 'htc-touch-diamond.html', 'catalog/product/view/id/166', 1, '', NULL),
(415, 1, 46, 168, 'product/168/46', 'a-a/a-a/ez/ez-a/peak-2010.html', 'catalog/product/view/id/168/category/46', 1, '', NULL),
(416, 1, NULL, 168, 'product/168', 'peak-2010.html', 'catalog/product/view/id/168', 1, '', NULL),
(417, 2, 46, 168, 'product/168/46', 'a-a/a-a/ez/ez-a/peak-2010.html', 'catalog/product/view/id/168/category/46', 1, '', NULL),
(418, 2, NULL, 168, 'product/168', 'peak-2010.html', 'catalog/product/view/id/168', 1, '', NULL),
(419, 1, 46, 166, 'product/166/46', 'a-a/a-a/ez/ez-a/htc-touch-diamond.html', 'catalog/product/view/id/166/category/46', 1, '', NULL),
(420, 2, 46, 166, 'product/166/46', 'a-a/a-a/ez/ez-a/htc-touch-diamond.html', 'catalog/product/view/id/166/category/46', 1, '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `core_variable`
--

CREATE TABLE IF NOT EXISTS `core_variable` (
  `variable_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `IDX_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `core_variable`
--


-- --------------------------------------------------------

--
-- 表的结构 `core_variable_value`
--

CREATE TABLE IF NOT EXISTS `core_variable_value` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `variable_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plain_value` text NOT NULL,
  `html_value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_VARIABLE_STORE` (`variable_id`,`store_id`),
  KEY `IDX_VARIABLE_ID` (`variable_id`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `core_variable_value`
--


-- --------------------------------------------------------

--
-- 表的结构 `core_website`
--

CREATE TABLE IF NOT EXISTS `core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `code` (`code`),
  KEY `sort_order` (`sort_order`),
  KEY `default_group_id` (`default_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Websites' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `core_website`
--

INSERT INTO `core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `coupon_aggregated`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `coupon_code` varchar(50) NOT NULL DEFAULT '',
  `coupon_uses` int(11) NOT NULL DEFAULT '0',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGREGATED_PSOC` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `coupon_aggregated`
--


-- --------------------------------------------------------

--
-- 表的结构 `coupon_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `coupon_code` varchar(50) NOT NULL DEFAULT '',
  `coupon_uses` int(11) NOT NULL DEFAULT '0',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGREGATED_ORDER_PSOC` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `coupon_aggregated_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `cron_schedule`
--

CREATE TABLE IF NOT EXISTS `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_code` varchar(255) NOT NULL DEFAULT '0',
  `status` enum('pending','running','success','missed','error') NOT NULL DEFAULT 'pending',
  `messages` text,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `executed_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `finished_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`schedule_id`),
  KEY `task_name` (`job_code`),
  KEY `scheduled_at` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `cron_schedule`
--


-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `increment_id` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_id`),
  KEY `FK_CUSTOMER_ADDRESS_CUSTOMER_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Customer Address Entityies' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `customer_address_entity`
--


-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_DATETIME_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_ADDRESS_DATETIME_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_DATETIME_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `customer_address_entity_datetime`
--


-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_DECIMAL_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_ADDRESS_DECIMAL_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_DECIMAL_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `customer_address_entity_decimal`
--


-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_INT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_ADDRESS_INT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_INT_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `customer_address_entity_int`
--


-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_TEXT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_ADDRESS_TEXT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_TEXT_ENTITY` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `customer_address_entity_text`
--


-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_VARCHAR_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_ADDRESS_VARCHAR_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_VARCHAR_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `customer_address_entity_varchar`
--


-- --------------------------------------------------------

--
-- 表的结构 `customer_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_visible_on_front` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `input_filter` varchar(255) NOT NULL,
  `lines_to_divide_multiline` smallint(5) unsigned NOT NULL DEFAULT '0',
  `min_text_length` int(11) unsigned NOT NULL DEFAULT '0',
  `max_text_length` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=835 ;

--
-- 转存表中的数据 `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `is_visible_on_front`, `input_filter`, `lines_to_divide_multiline`, `min_text_length`, `max_text_length`) VALUES
(1, 1, 0, '', 0, 0, 0),
(2, 1, 0, '', 0, 0, 0),
(3, 1, 0, '', 0, 0, 0),
(4, 1, 0, '', 0, 0, 0),
(7, 0, 0, '', 0, 0, 0),
(8, 0, 0, '', 0, 0, 0),
(9, 1, 0, '', 0, 0, 0),
(10, 1, 0, '', 0, 0, 0),
(11, 1, 0, '', 0, 0, 0),
(12, 1, 0, '', 0, 0, 0),
(13, 1, 0, '', 0, 0, 0),
(14, 1, 0, '', 0, 0, 0),
(15, 1, 0, '', 0, 0, 0),
(16, 1, 0, '', 0, 0, 0),
(17, 1, 0, '', 0, 0, 0),
(18, 1, 0, '', 0, 0, 0),
(95, 1, 0, '', 0, 0, 0),
(477, 1, 0, '', 0, 0, 0),
(478, 0, 0, '', 0, 0, 0),
(532, 1, 0, '', 0, 0, 0),
(700, 1, 0, '', 0, 0, 0),
(826, 1, 0, '', 0, 0, 0),
(827, 1, 0, '', 0, 0, 0),
(828, 1, 0, '', 0, 0, 0),
(829, 1, 0, '', 0, 0, 0),
(830, 1, 0, '', 0, 0, 0),
(831, 0, 0, '', 0, 0, 0),
(832, 1, 0, '', 0, 0, 0),
(833, 1, 0, '', 0, 0, 0),
(834, 1, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `customer_entity`
--

CREATE TABLE IF NOT EXISTS `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `group_id` smallint(3) unsigned NOT NULL,
  `increment_id` varchar(50) NOT NULL DEFAULT '',
  `store_id` smallint(5) unsigned DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_id`),
  KEY `FK_CUSTOMER_ENTITY_STORE` (`store_id`),
  KEY `IDX_ENTITY_TYPE` (`entity_type_id`),
  KEY `IDX_AUTH` (`email`,`website_id`),
  KEY `FK_CUSTOMER_WEBSITE` (`website_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Customer Entityies' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `customer_entity`
--

INSERT INTO `customer_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 1, 0, 1, 'john.doe@example.com', 1, '000000001', 1, '2007-08-30 23:23:13', '2008-08-08 12:28:24', 1);

-- --------------------------------------------------------

--
-- 表的结构 `customer_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_DATETIME_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_DATETIME_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_DATETIME_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `customer_entity_datetime`
--


-- --------------------------------------------------------

--
-- 表的结构 `customer_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_DECIMAL_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_DECIMAL_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_DECIMAL_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `customer_entity_decimal`
--


-- --------------------------------------------------------

--
-- 表的结构 `customer_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_INT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_INT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_INT_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `customer_entity_int`
--

INSERT INTO `customer_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 7, 1, 274),
(2, 1, 8, 1, 274),
(3, 1, 532, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `customer_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_TEXT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_TEXT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_TEXT_ENTITY` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `customer_entity_text`
--


-- --------------------------------------------------------

--
-- 表的结构 `customer_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_VARCHAR_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_VARCHAR_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_VARCHAR_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `customer_entity_varchar`
--

INSERT INTO `customer_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 1, 1, 'John'),
(2, 1, 2, 1, 'Doe'),
(3, 1, 4, 1, '2049484a4020ed15d0e4238db22977d5:eg'),
(4, 1, 826, 1, ''),
(5, 1, 827, 1, ''),
(6, 1, 828, 1, ''),
(7, 1, 830, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `customer_group`
--

CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_code` varchar(32) NOT NULL DEFAULT '',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer groups' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3),
(4, 'QAAAA', 3);

-- --------------------------------------------------------

--
-- 表的结构 `cybermut_api_debug`
--

CREATE TABLE IF NOT EXISTS `cybermut_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `cybermut_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `cybersource_api_debug`
--

CREATE TABLE IF NOT EXISTS `cybersource_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` varchar(255) DEFAULT NULL,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `cybersource_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `dataflow_batch`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adapter` varchar(128) DEFAULT NULL,
  `params` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `FK_DATAFLOW_BATCH_PROFILE` (`profile_id`),
  KEY `FK_DATAFLOW_BATCH_STORE` (`store_id`),
  KEY `IDX_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dataflow_batch`
--


-- --------------------------------------------------------

--
-- 表的结构 `dataflow_batch_export`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0',
  `batch_data` longtext,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`batch_export_id`),
  KEY `FK_DATAFLOW_BATCH_EXPORT_BATCH` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dataflow_batch_export`
--


-- --------------------------------------------------------

--
-- 表的结构 `dataflow_batch_import`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0',
  `batch_data` longtext,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`batch_import_id`),
  KEY `FK_DATAFLOW_BATCH_IMPORT_BATCH` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dataflow_batch_import`
--


-- --------------------------------------------------------

--
-- 表的结构 `dataflow_import_data`
--

CREATE TABLE IF NOT EXISTS `dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`import_id`),
  KEY `FK_dataflow_import_data` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dataflow_import_data`
--


-- --------------------------------------------------------

--
-- 表的结构 `dataflow_profile`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actions_xml` text,
  `gui_data` text,
  `direction` enum('import','export') DEFAULT NULL,
  `entity_type` varchar(64) NOT NULL DEFAULT '',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `data_transfer` enum('file','interactive') DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `dataflow_profile`
--

INSERT INTO `dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2008-03-31 01:32:54', '2008-03-31 01:32:54', '<action type="catalog/convert_adapter_product" method="load">\r\n    <var name="store"><![CDATA[0]]></var>\r\n</action>\r\n\r\n<action type="catalog/convert_parser_product" method="unparse">\r\n    <var name="store"><![CDATA[0]]></var>\r\n</action>\r\n\r\n<action type="dataflow/convert_mapper_column" method="map">\r\n</action>\r\n\r\n<action type="dataflow/convert_parser_csv" method="unparse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n</action>\r\n\r\n<action type="dataflow/convert_adapter_io" method="save">\r\n    <var name="type">file</var>\r\n    <var name="path">var/export</var>\r\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\r\n</action>\r\n\r\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2008-03-31 01:32:54', '2008-03-31 01:32:54', '<action type="catalog/convert_adapter_product" method="load">\r\n    <var name="store"><![CDATA[0]]></var>\r\n</action>\r\n\r\n<action type="catalog/convert_parser_product" method="unparse">\r\n    <var name="store"><![CDATA[0]]></var>\r\n</action>\r\n\r\n<action type="dataflow/convert_mapper_column" method="map">\r\n    <var name="map">\r\n        <map name="store"><![CDATA[store]]></map>\r\n        <map name="sku"><![CDATA[sku]]></map>\r\n        <map name="qty"><![CDATA[qty]]></map>\r\n        <map name="is_in_stock"><![CDATA[is_in_stock]]></map>\r\n    </var>\r\n    <var name="_only_specified">true</var>\r\n</action>\r\n\r\n<action type="dataflow/convert_parser_csv" method="unparse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n</action>\r\n\r\n<action type="dataflow/convert_adapter_io" method="save">\r\n    <var name="type">file</var>\r\n    <var name="path">var/export</var>\r\n    <var name="filename"><![CDATA[export_product_stocks.csv]]></var>\r\n</action>\r\n\r\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2008-03-31 01:32:54', '2008-03-31 01:32:54', '<action type="dataflow/convert_parser_csv" method="parse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n    <var name="store"><![CDATA[0]]></var>\r\n    <var name="adapter">catalog/convert_adapter_product</var>\r\n    <var name="method">parse</var>\r\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2008-03-31 01:32:54', '2008-03-31 01:32:54', '<action type="dataflow/convert_parser_csv" method="parse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n    <var name="store"><![CDATA[0]]></var>\r\n    <var name="adapter">catalog/convert_adapter_product</var>\r\n    <var name="method">parse</var>\r\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2008-03-31 01:32:54', '2008-03-31 01:32:54', '<action type="customer/convert_adapter_customer" method="load">\r\n    <var name="store"><![CDATA[0]]></var>\r\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\r\n</action>\r\n\r\n<action type="customer/convert_parser_customer" method="unparse">\r\n    <var name="store"><![CDATA[0]]></var>\r\n</action>\r\n\r\n<action type="dataflow/convert_mapper_column" method="map">\r\n</action>\r\n\r\n<action type="dataflow/convert_parser_csv" method="unparse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n</action>\r\n\r\n<action type="dataflow/convert_adapter_io" method="save">\r\n    <var name="type">file</var>\r\n    <var name="path">var/export</var>\r\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\r\n</action>\r\n\r\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2008-03-31 01:32:54', '2008-03-31 01:32:54', '<action type="dataflow/convert_parser_csv" method="parse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n    <var name="store"><![CDATA[0]]></var>\r\n    <var name="adapter">customer/convert_adapter_customer</var>\r\n    <var name="method">parse</var>\r\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- 表的结构 `dataflow_profile_history`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(64) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `performed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `FK_dataflow_profile_history` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dataflow_profile_history`
--


-- --------------------------------------------------------

--
-- 表的结构 `dataflow_session`
--

CREATE TABLE IF NOT EXISTS `dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `direction` varchar(32) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dataflow_session`
--


-- --------------------------------------------------------

--
-- 表的结构 `design_change`
--

CREATE TABLE IF NOT EXISTS `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL,
  `design` varchar(255) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  PRIMARY KEY (`design_change_id`),
  KEY `FK_DESIGN_CHANGE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `design_change`
--


-- --------------------------------------------------------

--
-- 表的结构 `directory_country`
--

CREATE TABLE IF NOT EXISTS `directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '',
  `iso2_code` varchar(2) NOT NULL DEFAULT '',
  `iso3_code` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Countries';

--
-- 转存表中的数据 `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- 表的结构 `directory_country_format`
--

CREATE TABLE IF NOT EXISTS `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` char(2) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `format` text NOT NULL,
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `country_type` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Countries format' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `directory_country_format`
--


-- --------------------------------------------------------

--
-- 表的结构 `directory_country_region`
--

CREATE TABLE IF NOT EXISTS `directory_country_region` (
  `region_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` varchar(4) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL DEFAULT '',
  `default_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`region_id`),
  KEY `FK_REGION_COUNTRY` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Country regions' AUTO_INCREMENT=320 ;

--
-- 转存表中的数据 `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Voralberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '01', 'Ain'),
(183, 'FR', '02', 'Aisne'),
(184, 'FR', '03', 'Allier'),
(185, 'FR', '04', 'Alpes-de-Haute-Provence'),
(186, 'FR', '05', 'Hautes-Alpes'),
(187, 'FR', '06', 'Alpes-Maritimes'),
(188, 'FR', '07', 'Ardèche'),
(189, 'FR', '08', 'Ardennes'),
(190, 'FR', '09', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d''Or'),
(204, 'FR', '22', 'Côtes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea');

-- --------------------------------------------------------

--
-- 表的结构 `directory_country_region_name`
--

CREATE TABLE IF NOT EXISTS `directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '',
  `region_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `FK_DIRECTORY_REGION_NAME_REGION` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Regions names';

--
-- 转存表中的数据 `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Voralberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d''Or'),
('en_US', 204, 'Côtes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea');

-- --------------------------------------------------------

--
-- 表的结构 `directory_currency_rate`
--

CREATE TABLE IF NOT EXISTS `directory_currency_rate` (
  `currency_from` char(3) NOT NULL DEFAULT '',
  `currency_to` char(3) NOT NULL DEFAULT '',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `FK_CURRENCY_RATE_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `directory_currency_rate`
--


-- --------------------------------------------------------

--
-- 表的结构 `downloadable_link`
--

CREATE TABLE IF NOT EXISTS `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `number_of_downloads` int(10) unsigned DEFAULT NULL,
  `is_shareable` smallint(1) unsigned NOT NULL DEFAULT '0',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_file` varchar(255) NOT NULL DEFAULT '',
  `link_type` varchar(20) NOT NULL DEFAULT '',
  `sample_url` varchar(255) NOT NULL DEFAULT '',
  `sample_file` varchar(255) NOT NULL DEFAULT '',
  `sample_type` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `DOWNLODABLE_LINK_PRODUCT` (`product_id`),
  KEY `DOWNLODABLE_LINK_PRODUCT_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `downloadable_link`
--


-- --------------------------------------------------------

--
-- 表的结构 `downloadable_link_price`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`price_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_LINK` (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `downloadable_link_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `downloadable_link_purchased`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_increment_id` varchar(50) NOT NULL DEFAULT '',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_sku` varchar(255) NOT NULL DEFAULT '',
  `link_section_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`purchased_id`),
  KEY `DOWNLOADABLE_ORDER_ID` (`order_id`),
  KEY `DOWNLOADABLE_CUSTOMER_ID` (`customer_id`),
  KEY `KEY_DOWNLOADABLE_ORDER_ITEM_ID` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `downloadable_link_purchased`
--


-- --------------------------------------------------------

--
-- 表的结构 `downloadable_link_purchased_item`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned DEFAULT '0',
  `link_hash` varchar(255) NOT NULL DEFAULT '',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0',
  `link_id` int(20) unsigned NOT NULL DEFAULT '0',
  `link_title` varchar(255) NOT NULL DEFAULT '',
  `is_shareable` smallint(1) unsigned NOT NULL DEFAULT '0',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_file` varchar(255) NOT NULL DEFAULT '',
  `link_type` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ID` (`purchased_id`),
  KEY `DOWNLOADABLE_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADALBE_LINK_HASH` (`link_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `downloadable_link_purchased_item`
--


-- --------------------------------------------------------

--
-- 表的结构 `downloadable_link_title`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_LINK_TITLE_STORE` (`link_id`,`store_id`),
  KEY `DOWNLOADABLE_LINK_TITLE_LINK` (`link_id`),
  KEY `DOWNLOADABLE_LINK_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `downloadable_link_title`
--


-- --------------------------------------------------------

--
-- 表的结构 `downloadable_sample`
--

CREATE TABLE IF NOT EXISTS `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sample_url` varchar(255) NOT NULL DEFAULT '',
  `sample_file` varchar(255) NOT NULL DEFAULT '',
  `sample_type` varchar(20) NOT NULL DEFAULT '',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sample_id`),
  KEY `DOWNLODABLE_SAMPLE_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `downloadable_sample`
--


-- --------------------------------------------------------

--
-- 表的结构 `downloadable_sample_title`
--

CREATE TABLE IF NOT EXISTS `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_SAMPLE_TITLE_STORE` (`sample_id`,`store_id`),
  KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE` (`sample_id`),
  KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `downloadable_sample_title`
--


-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_code` varchar(255) NOT NULL DEFAULT '',
  `attribute_model` varchar(255) DEFAULT NULL,
  `backend_model` varchar(255) DEFAULT NULL,
  `backend_type` enum('static','datetime','decimal','int','text','varchar') NOT NULL DEFAULT 'static',
  `backend_table` varchar(255) DEFAULT NULL,
  `frontend_model` varchar(255) DEFAULT NULL,
  `frontend_input` varchar(50) DEFAULT NULL,
  `frontend_label` varchar(255) DEFAULT NULL,
  `frontend_class` varchar(255) DEFAULT NULL,
  `source_model` varchar(255) DEFAULT NULL,
  `is_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default_value` text,
  `is_unique` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `entity_type_id` (`entity_type_id`,`attribute_code`),
  KEY `IDX_USED_FOR_SORT_BY` (`entity_type_id`),
  KEY `IDX_USED_IN_PRODUCT_LISTING` (`entity_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=964 ;

--
-- 转存表中的数据 `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'firstname', NULL, '', 'varchar', '', '', 'text', 'First Name', '', '', 1, 0, '', 0, ''),
(2, 1, 'lastname', NULL, '', 'varchar', '', '', 'text', 'Last Name', '', '', 1, 0, '', 0, ''),
(3, 1, 'email', NULL, '', 'static', '', '', 'text', 'Email', 'validate-email', '', 1, 0, '', 0, ''),
(4, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', '', '', 'hidden', '', '', '', 0, 0, '', 0, ''),
(7, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', '', '', 'text', 'Default Billing Address', '', '', 0, 0, '', 0, ''),
(8, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', '', '', 'text', 'Default Shipping Address', '', '', 0, 0, '', 0, ''),
(9, 2, 'firstname', NULL, '', 'varchar', '', '', 'text', 'First Name', '', '', 1, 0, '', 0, ''),
(10, 2, 'lastname', NULL, '', 'varchar', '', '', 'text', 'Last Name', '', '', 1, 0, '', 0, ''),
(11, 2, 'country_id', NULL, '', 'varchar', '', '', 'select', 'Country', 'countries input-text', 'customer_entity/address_attribute_source_country', 1, 0, '', 0, ''),
(12, 2, 'region', NULL, 'customer_entity/address_attribute_backend_region', 'varchar', '', '', 'text', 'State/Province', 'regions', '', 1, 0, '', 0, ''),
(13, 2, 'region_id', NULL, '', 'int', '', '', 'hidden', 'State/Province', '', 'customer_entity/address_attribute_source_region', 0, 0, '', 0, ''),
(14, 2, 'postcode', NULL, '', 'varchar', '', '', 'text', 'Zip/Postal Code', '', '', 1, 0, '', 0, ''),
(15, 2, 'city', NULL, '', 'varchar', '', '', 'text', 'City', '', '', 1, 0, '', 0, ''),
(16, 2, 'street', NULL, 'customer_entity/address_attribute_backend_street', 'text', '', '', 'multiline', 'Street Address', '', '', 1, 0, '', 0, ''),
(17, 2, 'telephone', NULL, '', 'varchar', '', '', 'text', 'Telephone', '', '', 1, 0, '', 0, ''),
(18, 2, 'fax', NULL, '', 'varchar', '', '', 'text', 'Fax', '', '', 0, 0, '', 0, ''),
(19, 3, 'method_type', NULL, '', 'int', '', '', 'select', 'Payment Method', '', '', 1, 0, '', 0, ''),
(95, 2, 'company', NULL, '', 'varchar', '', '', 'text', 'Company', NULL, '', 0, 0, '', 0, ''),
(96, 10, 'name', NULL, '', 'varchar', '', '', 'text', 'Name', NULL, '', 1, 0, '', 0, ''),
(97, 10, 'description', NULL, '', 'text', '', '', 'textarea', 'Description', '', '', 1, 0, '', 0, ''),
(98, 10, 'sku', NULL, '', 'static', '', '', 'text', 'SKU', NULL, '', 1, 0, '', 1, ''),
(99, 10, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', '', '', 'price', 'Price', '', '', 1, 0, '', 0, ''),
(100, 10, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', '', '', 'price', 'Cost', NULL, '', 0, 1, '', 0, ''),
(101, 10, 'weight', NULL, '', 'decimal', '', '', 'text', 'Weight', '', '', 1, 0, '', 0, ''),
(102, 10, 'manufacturer', NULL, '', 'int', '', '', 'select', 'Manufacturer', '', '', 0, 1, '', 0, ''),
(103, 10, 'meta_title', NULL, '', 'varchar', '', '', 'text', 'Meta Title', NULL, '', 0, 0, '', 0, ''),
(104, 10, 'meta_keyword', NULL, '', 'text', '', '', 'textarea', 'Meta Keywords', '', '', 0, 0, '', 0, ''),
(105, 10, 'meta_description', NULL, '', 'varchar', '', '', 'textarea', 'Meta Description', NULL, '', 0, 0, '', 0, 'Maximum 255 chars'),
(106, 10, 'image', NULL, '', 'varchar', '', 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', '', '', 0, 0, '', 0, ''),
(107, 10, 'shoe_type', NULL, NULL, 'int', NULL, NULL, 'select', 'Shoe Type', '', 'eav/entity_attribute_source_table', 0, 1, NULL, 0, ''),
(109, 10, 'small_image', NULL, '', 'varchar', '', 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', '', '', 0, 0, '', 0, ''),
(110, 10, 'old_id', NULL, '', 'int', '', '', '', '', NULL, '', 0, 0, '', 0, ''),
(111, 9, 'name', NULL, '', 'varchar', '', '', 'text', 'Name', NULL, '', 1, 0, '', 0, ''),
(112, 9, 'description', NULL, '', 'text', '', '', 'textarea', 'Description', NULL, '', 0, 0, '', 0, ''),
(113, 9, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', '', '', 'image', 'Image', NULL, '', 0, 0, '', 0, ''),
(114, 9, 'meta_title', NULL, '', 'varchar', '', '', 'text', 'Page Title', NULL, '', 0, 0, '', 0, ''),
(115, 9, 'meta_keywords', NULL, '', 'text', '', '', 'textarea', 'Meta Keywords', NULL, '', 0, 0, '', 0, ''),
(116, 9, 'meta_description', NULL, '', 'text', '', '', 'textarea', 'Meta Description', NULL, '', 0, 0, '', 0, ''),
(117, 9, 'landing_page', NULL, '', 'int', '', '', 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, '', 0, ''),
(118, 9, 'display_mode', NULL, '', 'varchar', '', '', 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, '', 0, ''),
(119, 9, 'is_active', NULL, '', 'int', '', '', 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '', 0, ''),
(120, 9, 'is_anchor', NULL, '', 'int', '', '', 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, '', 0, ''),
(121, 9, 'all_children', NULL, '', 'text', '', '', '', '', NULL, '', 0, 0, '', 0, ''),
(122, 9, 'path_in_store', NULL, '', 'text', '', '', '', '', NULL, '', 0, 0, '', 0, ''),
(123, 9, 'children', NULL, '', 'text', '', '', '', '', NULL, '', 0, 0, '', 0, ''),
(194, 4, 'grand_total', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(195, 4, 'currency_rate', NULL, NULL, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(196, 4, 'weight', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(197, 4, 'tax_percent', NULL, NULL, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(198, 4, 'subtotal', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(199, 4, 'discount_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(200, 4, 'tax_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(201, 4, 'shipping_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(203, 4, 'custbalance_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(204, 4, 'quote_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(205, 4, 'customer_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(207, 4, 'currency_base_id', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(208, 4, 'shipping_description', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(209, 4, 'real_order_id', NULL, NULL, 'varchar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(210, 4, 'remote_ip', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(211, 4, 'currency_code', NULL, NULL, 'varchar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(212, 4, 'coupon_code', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(214, 4, 'shipping_method', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(215, 4, 'status', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(216, 4, 'shipping_address_id', NULL, 'sales_entity/order_attribute_backend_shipping', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(217, 4, 'billing_address_id', NULL, 'sales_entity/order_attribute_backend_billing', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(218, 6, 'region_id', NULL, '', 'int', '', '', 'text', 'State/Province', NULL, '', 1, 0, '', 0, ''),
(219, 6, 'country_id', NULL, '', 'varchar', '', '', 'text', 'Country', NULL, '', 1, 0, '', 0, ''),
(220, 6, 'address_id', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(221, 6, 'customer_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(222, 6, 'street', NULL, '', 'varchar', '', '', 'text', 'Street Address', NULL, '', 1, 0, '', 0, ''),
(223, 6, 'email', NULL, '', 'varchar', '', '', 'text', 'Email', NULL, '', 1, 0, '', 0, ''),
(224, 6, 'firstname', NULL, '', 'varchar', '', '', 'text', 'First Name', NULL, '', 1, 0, '', 0, ''),
(225, 6, 'lastname', NULL, '', 'varchar', '', '', 'text', 'Last Name', NULL, '', 1, 0, '', 0, ''),
(226, 6, 'company', NULL, '', 'varchar', '', '', 'text', 'Company', NULL, '', 1, 0, '', 0, ''),
(227, 6, 'city', NULL, '', 'varchar', '', '', 'text', 'City', NULL, '', 1, 0, '', 0, ''),
(228, 6, 'region', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(229, 6, 'postcode', NULL, '', 'varchar', '', '', 'text', 'Zip/Postal Code', NULL, '', 1, 0, '', 0, ''),
(230, 6, 'telephone', NULL, '', 'varchar', '', '', 'text', 'Telephone', NULL, '', 1, 0, '', 0, ''),
(231, 6, 'fax', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(232, 6, 'tax_id', NULL, NULL, 'varchar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(233, 6, 'address_type', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(234, 7, 'weight', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(235, 7, 'qty', NULL, NULL, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(236, 7, 'qty_backordered', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(237, 7, 'qty_canceled', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(238, 7, 'qty_shipped', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(239, 7, 'qty_returned', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(240, 7, 'price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(241, 7, 'tier_price', NULL, NULL, 'decimal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(242, 7, 'base_cost', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(243, 7, 'discount_percent', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(244, 7, 'discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(245, 7, 'tax_percent', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(246, 7, 'tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(247, 7, 'row_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(248, 7, 'row_weight', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(249, 7, 'product_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(250, 7, 'image', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(251, 7, 'name', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(252, 7, 'model', NULL, NULL, 'varchar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(253, 8, 'cc_exp_month', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(254, 8, 'cc_exp_year', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(255, 8, 'cc_raw_request', NULL, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(256, 8, 'cc_raw_response', NULL, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(257, 8, 'method', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(258, 8, 'po_number', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(259, 8, 'cc_type', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(260, 8, 'cc_number_enc', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(261, 8, 'cc_last4', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(262, 8, 'cc_owner', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(263, 8, 'cc_trans_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(264, 8, 'cc_approval', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(265, 8, 'cc_avs_status', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(266, 8, 'cc_cid_status', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(267, 5, 'status', NULL, NULL, 'varchar', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, ''),
(268, 5, 'comments', NULL, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, ''),
(270, 10, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', '', '', 'text', 'Tier Price', '', '', 0, 0, '', 0, ''),
(271, 10, 'gallery', NULL, '', 'varchar', '', '', 'gallery', 'Image Gallery', NULL, '', 0, 0, '', 0, ''),
(272, 10, 'color', NULL, '', 'int', '', '', 'select', 'Color', '', '', 0, 1, '', 0, ''),
(273, 10, 'status', NULL, '', 'int', '', '', 'select', 'Status', '', 'catalog/product_status', 1, 0, '', 0, ''),
(274, 10, 'tax_class_id', NULL, '', 'int', '', '', 'select', 'Tax Class', '', 'tax/class_source_product', 1, 0, '', 0, ''),
(275, 11, 'entity_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(276, 11, 'is_active', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(277, 11, 'customer_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(278, 11, 'remote_ip', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(279, 11, 'checkout_method', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(280, 11, 'password_hash', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(281, 11, 'quote_status_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(282, 11, 'billing_address_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(283, 11, 'converted_at', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(284, 11, 'coupon_code', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(285, 11, 'giftcert_code', NULL, '', 'varchar', '', '', 'text', 'Gift certificate', NULL, '', 1, 0, '', 0, ''),
(286, 11, 'custbalance_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(287, 11, 'base_currency_code', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(288, 11, 'store_currency_code', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(289, 11, 'quote_currency_code', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(290, 11, 'store_to_base_rate', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(291, 11, 'store_to_quote_rate', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(292, 11, 'grand_total', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(293, 11, 'orig_order_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(294, 11, 'applied_rule_ids', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(295, 11, 'is_virtual', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(296, 11, 'is_multi_shipping', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(297, 11, 'is_multi_payment', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(298, 12, 'entity_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(299, 12, 'parent_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(300, 12, 'address_type', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(301, 12, 'customer_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(302, 12, 'customer_address_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(303, 12, 'email', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(304, 12, 'firstname', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(305, 12, 'lastname', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(306, 12, 'company', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(307, 12, 'street', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(308, 12, 'city', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(309, 12, 'region', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(310, 12, 'region_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(311, 12, 'postcode', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(312, 12, 'country_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(313, 12, 'telephone', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(314, 12, 'fax', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(315, 12, 'same_as_billing', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(316, 12, 'weight', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(317, 12, 'shipping_method', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(318, 12, 'shipping_description', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(319, 12, 'subtotal', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(320, 12, 'tax_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(321, 12, 'shipping_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(322, 12, 'discount_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(323, 12, 'custbalance_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(324, 12, 'grand_total', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(325, 12, 'customer_notes', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(326, 13, 'parent_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(327, 13, 'code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(328, 13, 'carrier', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(329, 13, 'carrier_title', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(330, 13, 'method', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(331, 13, 'method_description', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(332, 13, 'price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(333, 13, 'error_message', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(334, 14, 'parent_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(335, 14, 'quote_item_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(336, 14, 'qty', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(337, 14, 'discount_percent', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(338, 14, 'discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(339, 14, 'tax_percent', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(340, 14, 'tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(341, 14, 'row_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(342, 14, 'row_weight', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(343, 15, 'parent_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(344, 15, 'product_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(345, 15, 'parent_product_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(346, 15, 'sku', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(347, 15, 'image', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(348, 15, 'name', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(349, 15, 'description', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(350, 15, 'weight', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(351, 15, 'qty', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(352, 15, 'price', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(353, 15, 'discount_percent', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(354, 15, 'discount_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(355, 15, 'tax_percent', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(356, 15, 'tax_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(357, 15, 'row_total', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(358, 15, 'row_weight', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(359, 16, 'parent_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(360, 16, 'customer_payment_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(361, 16, 'method', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(362, 16, 'po_number', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(363, 16, 'cc_type', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(364, 16, 'cc_number_enc', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(365, 16, 'cc_last4', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(366, 16, 'cc_owner', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(367, 16, 'cc_exp_month', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(368, 16, 'cc_exp_year', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(369, 16, 'cc_cid_enc', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(370, 4, 'entity_id', NULL, 'sales_entity/order_attribute_backend_parent', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(372, 4, 'quote_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(373, 4, 'base_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(374, 4, 'store_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(375, 4, 'order_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(376, 4, 'store_to_base_rate', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(377, 4, 'store_to_order_rate', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(378, 4, 'is_virtual', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(379, 4, 'is_multi_payment', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(380, 4, 'total_paid', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(381, 4, 'total_due', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(383, 4, 'total_qty_ordered', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(384, 6, 'parent_id', NULL, 'sales_entity/order_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(385, 6, 'quote_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(386, 6, 'customer_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(387, 7, 'parent_id', NULL, 'sales_entity/order_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(388, 7, 'quote_item_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(389, 7, 'sku', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(390, 7, 'description', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(391, 7, 'qty_ordered', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(392, 8, 'parent_id', NULL, 'sales_entity/order_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(393, 8, 'quote_payment_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(394, 8, 'customer_payment_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(395, 8, 'amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(396, 8, 'cc_status', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(397, 8, 'cc_status_description', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(398, 8, 'cc_debug_request_body', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(399, 8, 'cc_debug_response_body', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(400, 8, 'cc_debug_response_serialized', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(401, 8, 'anet_trans_method', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(402, 8, 'echeck_routing_number', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(403, 8, 'echeck_bank_name', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(404, 8, 'echeck_account_type', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(405, 8, 'echeck_account_name', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(406, 8, 'echeck_type', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(407, 17, 'parent_id', NULL, 'sales_entity/order_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(410, 17, 'is_customer_notified', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(411, 18, 'entity_id', NULL, 'sales_entity/order_invoice_attribute_backend_parent', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(412, 18, 'invoice_type', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(413, 18, 'customer_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(414, 18, 'order_id', NULL, 'sales_entity/order_invoice_attribute_backend_order', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(415, 18, 'real_order_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(416, 18, 'invoice_status_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(417, 18, 'billing_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(418, 18, 'shipping_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(419, 18, 'base_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(420, 18, 'store_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(421, 18, 'order_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(422, 18, 'store_to_base_rate', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(423, 18, 'store_to_order_rate', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(424, 18, 'is_virtual', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(425, 18, 'subtotal', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(426, 18, 'tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(427, 18, 'shipping_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(428, 18, 'grand_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(429, 18, 'total_paid', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(430, 18, 'total_due', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(431, 18, 'total_qty', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(432, 19, 'parent_id', NULL, 'sales_entity/invoice_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(433, 19, 'order_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(434, 19, 'address_type', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(435, 19, 'customer_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(436, 19, 'customer_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(437, 19, 'email', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(438, 19, 'firstname', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(439, 19, 'lastname', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(440, 19, 'company', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(441, 19, 'street', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(442, 19, 'city', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(443, 19, 'region', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(444, 19, 'region_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(445, 19, 'postcode', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(446, 19, 'country_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(447, 19, 'telephone', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(448, 19, 'fax', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(449, 20, 'parent_id', NULL, 'sales_entity/order_invoice_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(450, 20, 'order_item_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(451, 20, 'product_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(452, 20, 'name', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(453, 20, 'description', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(454, 20, 'sku', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(455, 20, 'qty', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(456, 20, 'price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(457, 20, 'base_cost', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(458, 20, 'row_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(459, 20, 'shipment_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(460, 21, 'parent_id', NULL, 'sales_entity/invoice_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(461, 21, 'order_payment_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(462, 21, 'amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(463, 21, 'method', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(464, 21, 'cc_trans_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(465, 21, 'cc_approval', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(466, 21, 'cc_debug_request', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(467, 21, 'cc_debug_response', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(468, 22, 'parent_id', NULL, 'sales_entity/invoice_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(469, 22, 'order_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(470, 22, 'shipping_method', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(471, 22, 'tracking_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(472, 22, 'shipment_status_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(473, 11, 'customer_tax_class_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(474, 15, 'tax_class_id', NULL, '', 'int', '', '', 'select', 'Tax Class', NULL, 'tax/class_source_product', 0, 0, '', 0, ''),
(475, 14, 'tax_class_id', NULL, '', 'int', '', '', 'select', 'Tax Class', NULL, 'tax/class_source_product', 0, 0, '', 0, ''),
(476, 10, 'shape', NULL, NULL, 'text', NULL, NULL, 'text', 'shape', '', NULL, 0, 1, '', 0, ''),
(477, 1, 'created_in', NULL, '', 'varchar', '', '', 'text', 'Created From', NULL, '', 1, 0, '', 0, ''),
(478, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', '', '', 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, '', 0, ''),
(479, 9, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', '', '', 'text', 'URL key', NULL, '', 0, 0, '', 0, ''),
(481, 10, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', '', '', 'text', 'URL key', NULL, '', 0, 0, '', 0, ''),
(482, 15, 'applied_rule_ids', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(483, 7, 'applied_rule_ids', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(488, 12, 'free_shipping', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(489, 14, 'free_shipping', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(490, 15, 'free_shipping', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(491, 4, 'applied_rule_ids', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(492, 10, 'in_depth', NULL, NULL, 'text', NULL, NULL, 'textarea', 'In Depth', '', '', 1, 1, NULL, 0, ''),
(493, 10, 'thumbnail', NULL, '', 'varchar', '', 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', '', '', 0, 0, '', 0, ''),
(494, 10, 'dimension', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Dimensions', '', '', 0, 1, NULL, 0, ''),
(495, 10, 'model', NULL, NULL, 'text', NULL, NULL, 'text', 'Model', '', '', 1, 1, NULL, 0, ''),
(496, 10, 'activation_information', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Activation Information', '', NULL, 0, 1, NULL, 0, ''),
(497, 10, 'processor', NULL, NULL, 'text', NULL, NULL, 'text', 'Processor', '', NULL, 0, 1, NULL, 0, ''),
(498, 10, 'memory', NULL, NULL, 'text', NULL, NULL, 'text', 'Memory', '', '', 0, 1, NULL, 0, ''),
(499, 10, 'hardrive', NULL, NULL, 'text', NULL, NULL, 'text', 'Hardrive', '', NULL, 0, 1, NULL, 0, ''),
(500, 10, 'screensize', NULL, NULL, 'text', NULL, NULL, 'text', 'Screensize', '', NULL, 0, 1, NULL, 0, ''),
(501, 10, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', '', 'eav/entity_attribute_source_table', 1, 1, NULL, 0, ''),
(502, 10, 'shoe_size', NULL, NULL, 'int', NULL, NULL, 'select', 'Shoe Size', '', 'eav/entity_attribute_source_table', 1, 1, NULL, 0, ''),
(503, 10, 'minimal_price', NULL, '', 'decimal', '', '', 'price', 'Minimal Price', NULL, '', 0, 0, '', 0, ''),
(504, 12, 'collect_shipping_rates', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(505, 15, 'super_product_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(506, 10, 'short_description', NULL, '', 'text', '', '', 'textarea', 'Short Description', '', '', 1, 0, '', 0, ''),
(507, 10, 'country_orgin', NULL, NULL, 'text', NULL, NULL, 'text', 'Country of Origin', '', NULL, 0, 1, NULL, 0, ''),
(508, 10, 'room', NULL, NULL, 'int', NULL, NULL, 'select', 'Room', '', 'eav/entity_attribute_source_table', 0, 1, NULL, 0, ''),
(509, 10, 'finish', NULL, NULL, 'text', NULL, NULL, 'text', 'Finish', '', '', 0, 1, NULL, 0, ''),
(510, 10, 'computer_manufacturers', NULL, NULL, 'int', NULL, NULL, 'select', 'Brand', '', 'eav/entity_attribute_source_table', 0, 1, '', 0, ''),
(513, 10, 'megapixels', NULL, NULL, 'int', NULL, NULL, 'select', 'Megapixels', '', '', 0, 1, NULL, 0, ''),
(514, 9, 'page_layout', NULL, '', 'varchar', '', '', 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, '', 0, ''),
(515, 14, 'product_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(516, 14, 'super_product_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(517, 14, 'parent_product_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(518, 14, 'sku', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(519, 14, 'image', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(520, 14, 'name', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(521, 14, 'description', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(522, 14, 'weight', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(523, 14, 'price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(524, 14, 'applied_rule_ids', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(525, 10, 'shirt_size', NULL, NULL, 'int', NULL, NULL, 'select', 'Shirt Size', '', 'eav/entity_attribute_source_table', 1, 1, NULL, 0, ''),
(526, 10, 'visibility', NULL, '', 'int', '', '', 'select', 'Visibility', '', 'catalog/product_visibility', 1, 0, '4', 0, ''),
(527, 16, 'paypal_payer_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(528, 16, 'paypal_payer_status', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(529, 16, 'paypal_correlation_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(530, 9, 'custom_layout_update', NULL, '', 'text', '', '', 'textarea', 'Custom Layout Update', NULL, '', 0, 0, '', 0, ''),
(531, 10, 'custom_layout_update', NULL, '', 'text', '', '', 'textarea', 'Custom Layout Update', NULL, '', 0, 0, '', 0, ''),
(532, 1, 'group_id', NULL, '', 'static', '', '', 'select', 'Customer Group', NULL, 'customer/customer_attribute_source_group', 1, 0, '', 0, ''),
(533, 9, 'url_path', NULL, '', 'varchar', '', '', '', '', NULL, '', 0, 0, '', 0, ''),
(534, 11, 'gift_message_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(535, 12, 'gift_message_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(536, 15, 'gift_message_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(537, 4, 'gift_message_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(538, 6, 'gift_message_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(539, 7, 'gift_message_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(541, 14, 'gift_message_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(542, 7, 'gift_message_aviable', NULL, '', 'int', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(543, 11, 'customer_group_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(544, 11, 'customer_email', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(545, 11, 'customer_note', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(546, 11, 'customer_note_notify', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(547, 4, 'customer_group_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(548, 4, 'customer_email', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(549, 4, 'customer_note', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(550, 4, 'customer_note_notify', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(551, 15, 'custom_price', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(552, 14, 'custom_price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(553, 4, 'state', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(554, 4, 'relation_parent_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(555, 4, 'relation_parent_real_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(556, 4, 'relation_child_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(557, 4, 'relation_child_real_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(558, 4, 'tracking_numbers', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(559, 17, 'status', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(560, 17, 'comment', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(561, 7, 'gift_message_available', NULL, '', 'int', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(562, 10, 'gift_message_available', NULL, 'giftmessage/entity_attribute_backend_boolean_config', 'varchar', '', '', 'select', 'Allow Gift Message', NULL, 'giftmessage/entity_attribute_source_boolean_config', 0, 0, '2', 0, ''),
(563, 9, 'custom_design', NULL, '', 'varchar', '', '', 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, '', 0, ''),
(564, 9, 'custom_design_apply', NULL, '', 'int', '', '', 'select', 'Apply To', NULL, 'core/design_source_apply', 0, 0, '', 0, ''),
(565, 9, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Active From', NULL, '', 0, 0, '', 0, ''),
(566, 9, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Active To', NULL, '', 0, 0, '', 0, ''),
(567, 10, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', '', '', 'price', 'Special Price', '', '', 0, 0, '', 0, ''),
(568, 10, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', '', '', 'date', 'Special Price From Date', NULL, '', 0, 0, '', 0, ''),
(569, 10, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Special Price To Date', NULL, '', 0, 0, '', 0, ''),
(570, 10, 'url_path', NULL, '', 'varchar', '', '', '', '', NULL, '', 0, 0, '', 0, ''),
(571, 10, 'custom_design', NULL, '', 'varchar', '', '', 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, '', 0, ''),
(572, 10, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Active From', NULL, '', 0, 0, '', 0, ''),
(573, 10, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Active To', NULL, '', 0, 0, '', 0, ''),
(574, 11, 'customer_firstname', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(575, 11, 'customer_lastname', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(576, 12, 'subtotal_with_discount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(577, 14, 'no_discount', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(578, 14, 'row_total_with_discount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(579, 15, 'no_discount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(580, 15, 'row_total_with_discount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(581, 16, 'additional_data', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(582, 4, 'is_hold', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(583, 4, 'total_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(584, 4, 'customer_firstname', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(585, 4, 'customer_lastname', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(586, 7, 'super_product_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(587, 7, 'parent_product_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(588, 7, 'qty_invoiced', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(589, 7, 'qty_refunded', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(590, 7, 'original_price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(591, 7, 'discount_invoiced', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(592, 7, 'tax_invoiced', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(593, 7, 'row_invoiced', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(594, 7, 'invoiced_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(595, 7, 'amount_refunded', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(596, 8, 'additional_data', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(597, 8, 'amount_ordered', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(598, 8, 'amount_authorized', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(599, 8, 'amount_paid', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(600, 8, 'amount_canceled', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(601, 8, 'amount_refunded', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(602, 8, 'shipping_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(603, 8, 'shipping_captured', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(604, 8, 'shipping_refunded', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(605, 18, 'state', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(606, 18, 'transaction_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(607, 18, 'discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(608, 18, 'can_void_flag', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(609, 20, 'discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(610, 20, 'tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(611, 23, 'parent_id', NULL, 'sales_entity/order_invoice_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(612, 23, 'comment', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(613, 23, 'is_customer_notified', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(614, 24, 'entity_id', NULL, 'sales_entity/order_shipment_attribute_backend_parent', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(615, 24, 'customer_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(616, 24, 'order_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(617, 24, 'shipment_status', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(618, 24, 'billing_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(619, 24, 'shipping_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(620, 24, 'total_qty', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(621, 24, 'total_weight', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(622, 25, 'parent_id', NULL, 'sales_entity/order_shipment_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(623, 25, 'order_item_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(624, 25, 'product_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(625, 25, 'name', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(626, 25, 'description', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(627, 25, 'sku', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(628, 25, 'qty', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(629, 25, 'price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(630, 25, 'weight', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(631, 25, 'row_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(632, 26, 'parent_id', NULL, 'sales_entity/order_shipment_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(633, 26, 'comment', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(634, 26, 'is_customer_notified', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(635, 27, 'parent_id', NULL, 'sales_entity/order_shipment_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(636, 27, 'order_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(637, 27, 'number', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(638, 27, 'carrier_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(639, 27, 'title', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(640, 27, 'description', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(641, 27, 'qty', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(642, 27, 'weight', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(643, 28, 'entity_id', NULL, 'sales_entity/order_creditmemo_attribute_backend_parent', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(644, 28, 'state', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(645, 28, 'transaction_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(646, 28, 'order_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(647, 28, 'creditmemo_status', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(648, 28, 'billing_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(649, 28, 'shipping_address_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(650, 28, 'base_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(651, 28, 'store_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(652, 28, 'order_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(653, 28, 'store_to_base_rate', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(654, 28, 'store_to_order_rate', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(655, 28, 'subtotal', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(656, 28, 'discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(657, 28, 'tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(658, 28, 'shipping_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(659, 28, 'adjustment', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(660, 28, 'adjustment_positive', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(661, 28, 'adjustment_negative', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(662, 28, 'grand_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(663, 29, 'parent_id', NULL, 'sales_entity/order_creditmemo_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(664, 29, 'order_item_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(665, 29, 'product_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, '');
INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(666, 29, 'name', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(667, 29, 'description', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(668, 29, 'sku', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(669, 29, 'qty', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(670, 29, 'price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(671, 29, 'base_cost', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(672, 29, 'discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(673, 29, 'tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(674, 29, 'row_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(675, 30, 'parent_id', NULL, 'sales_entity/order_creditmemo_attribute_backend_child', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(676, 30, 'comment', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(677, 30, 'is_customer_notified', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(678, 11, 'store_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(679, 11, 'customer_is_guest', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(680, 14, 'is_qty_decimal', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(681, 15, 'is_qty_decimal', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(682, 16, 'cc_ss_issue', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(683, 16, 'cc_ss_start_month', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(684, 16, 'cc_ss_start_year', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(685, 4, 'store_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(686, 4, 'hold_before_status', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(687, 4, 'hold_before_state', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(688, 4, 'ext_order_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(689, 4, 'ext_customer_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(690, 4, 'total_canceled', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(691, 4, 'adjustment_positive', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(692, 4, 'adjustment_negative', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(693, 4, 'customer_is_guest', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(694, 7, 'is_qty_decimal', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(695, 8, 'cc_ss_issue', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(696, 8, 'cc_ss_start_month', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(697, 8, 'cc_ss_start_year', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(698, 18, 'is_used_for_refund', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(699, 28, 'invoice_id', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(700, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', '', '', 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, '', 0, ''),
(701, 9, 'path', NULL, '', 'static', '', '', '', 'Path', NULL, '', 0, 0, '', 0, ''),
(702, 9, 'position', NULL, '', 'static', '', '', '', 'Position', NULL, '', 0, 0, '', 0, ''),
(703, 10, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', '', '', 'gallery', 'Media Gallery', NULL, '', 1, 0, '', 0, ''),
(704, 10, 'news_from_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Set Product as New from Date', NULL, '', 0, 0, '', 0, ''),
(705, 10, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Set Product as New to Date', NULL, '', 0, 0, '', 0, ''),
(706, 10, 'category_ids', NULL, '', 'static', '', '', '', '', NULL, '', 0, 0, '', 0, ''),
(707, 11, 'base_grand_total', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(708, 12, 'base_subtotal', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(709, 12, 'base_subtotal_with_discount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(710, 12, 'base_tax_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(711, 12, 'base_shipping_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(712, 12, 'base_discount_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(713, 12, 'base_custbalance_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(714, 12, 'base_grand_total', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(715, 14, 'base_price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(716, 14, 'base_discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(717, 14, 'base_tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(718, 14, 'base_row_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(719, 14, 'additional_data', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(720, 15, 'base_price', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(721, 15, 'base_discount_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(722, 15, 'base_tax_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(723, 15, 'base_row_total', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(724, 15, 'additional_data', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(725, 4, 'store_name', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(726, 4, 'total_invoiced', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(727, 4, 'total_online_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(728, 4, 'total_offline_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(729, 4, 'base_tax_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(730, 4, 'base_shipping_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(731, 4, 'base_discount_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(733, 4, 'base_custbalance_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(734, 4, 'base_subtotal', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(735, 4, 'base_grand_total', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(736, 4, 'base_total_paid', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(737, 4, 'base_total_due', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(738, 4, 'base_total_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(739, 4, 'base_total_qty_ordered', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(740, 4, 'base_total_canceled', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(741, 4, 'base_total_invoiced', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(742, 4, 'base_total_online_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(743, 4, 'base_total_offline_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(744, 4, 'base_adjustment_positive', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(745, 4, 'base_adjustment_negative', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(746, 4, 'email_sent', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(747, 7, 'base_price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(748, 7, 'base_original_price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(749, 7, 'base_discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(750, 7, 'base_discount_invoiced', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(751, 7, 'base_tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(752, 7, 'base_tax_invoiced', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(753, 7, 'base_row_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(754, 7, 'base_row_invoiced', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(755, 7, 'base_invoiced_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(756, 7, 'base_amount_refunded', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(757, 7, 'additional_data', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(758, 8, 'base_amount_ordered', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(759, 8, 'base_amount_authorized', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(760, 8, 'base_amount_paid', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(761, 8, 'base_amount_canceled', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(762, 8, 'base_amount_refunded', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(763, 8, 'base_shipping_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(764, 8, 'base_shipping_captured', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(765, 8, 'base_shipping_refunded', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(766, 18, 'base_subtotal', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(767, 18, 'base_discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(768, 18, 'base_tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(769, 18, 'base_shipping_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(770, 18, 'base_grand_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(771, 18, 'email_sent', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(772, 20, 'base_price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(773, 20, 'base_discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(774, 20, 'base_tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(775, 20, 'base_row_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(776, 20, 'additional_data', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(777, 24, 'email_sent', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(778, 25, 'additional_data', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(779, 28, 'base_subtotal', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(780, 28, 'base_discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(781, 28, 'base_tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(782, 28, 'base_shipping_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(783, 28, 'base_adjustment', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(784, 28, 'base_adjustment_positive', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(785, 28, 'base_adjustment_negative', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(786, 28, 'base_grand_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(787, 28, 'email_sent', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(788, 29, 'base_price', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(789, 29, 'base_discount_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(790, 29, 'base_tax_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(791, 29, 'base_row_total', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(792, 29, 'additional_data', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(793, 11, 'items_count', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(794, 11, 'items_qty', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(795, 4, 'edit_increment', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(796, 4, 'original_increment_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(797, 4, 'subtotal_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(798, 4, 'subtotal_canceled', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(799, 4, 'tax_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(800, 4, 'tax_canceled', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(801, 4, 'shipping_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(802, 4, 'shipping_canceled', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(803, 4, 'base_subtotal_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(804, 4, 'base_subtotal_canceled', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(805, 4, 'base_tax_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(806, 4, 'base_tax_canceled', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(807, 4, 'base_shipping_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(808, 4, 'base_shipping_canceled', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(809, 4, 'subtotal_invoiced', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(810, 4, 'tax_invoiced', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(811, 4, 'shipping_invoiced', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(812, 4, 'base_subtotal_invoiced', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(813, 4, 'base_tax_invoiced', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(814, 4, 'base_shipping_invoiced', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(815, 12, 'save_in_address_book', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(816, 11, 'reserved_order_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(817, 8, 'last_trans_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(818, 12, 'shipping_tax_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(819, 12, 'base_shipping_tax_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(820, 4, 'shipping_tax_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(821, 4, 'base_shipping_tax_amount', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(822, 18, 'shipping_tax_amount', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(823, 18, 'base_shipping_tax_amount', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(824, 28, 'shipping_tax_amount', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(825, 28, 'base_shipping_tax_amount', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(826, 1, 'prefix', NULL, '', 'varchar', '', '', 'text', 'Prefix', NULL, '', 0, 0, '', 0, ''),
(827, 1, 'middlename', NULL, '', 'varchar', '', '', 'text', 'Middle Name/Initial', NULL, '', 0, 0, '', 0, ''),
(828, 1, 'suffix', NULL, '', 'varchar', '', '', 'text', 'Suffix', NULL, '', 0, 0, '', 0, ''),
(829, 1, 'dob', NULL, '', 'datetime', '', '', 'date', 'Date Of Birth', NULL, '', 0, 0, '', 0, ''),
(830, 1, 'taxvat', NULL, '', 'varchar', '', '', 'text', 'Tax/VAT number', NULL, '', 0, 0, '', 0, ''),
(831, 1, 'confirmation', NULL, '', 'varchar', '', '', 'text', 'Is confirmed', NULL, '', 0, 0, '', 0, ''),
(832, 2, 'prefix', NULL, '', 'varchar', '', '', 'text', 'Prefix', NULL, '', 0, 0, '', 0, ''),
(833, 2, 'middlename', NULL, '', 'varchar', '', '', 'text', 'Middle Name/Initial', NULL, '', 0, 0, '', 0, ''),
(834, 2, 'suffix', NULL, '', 'varchar', '', '', 'text', 'Suffix', NULL, '', 0, 0, '', 0, ''),
(835, 9, 'level', NULL, '', 'static', '', '', '', 'Level', NULL, '', 0, 0, '', 0, ''),
(836, 10, 'options_container', NULL, '', 'varchar', '', '', 'select', 'Display product options in', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container2', 0, ''),
(837, 10, 'required_options', NULL, '', 'static', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(838, 10, 'has_options', NULL, '', 'static', '', '', 'text', '', NULL, '', 0, 0, '', 0, ''),
(839, 4, 'customer_prefix', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(840, 4, 'customer_middlename', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(841, 4, 'customer_suffix', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(842, 6, 'prefix', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(843, 6, 'middlename', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(844, 6, 'suffix', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(845, 11, 'customer_prefix', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(846, 11, 'customer_middlename', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(847, 11, 'customer_suffix', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(848, 12, 'prefix', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(849, 12, 'middlename', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(850, 12, 'suffix', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(851, 11, 'customer_dob', NULL, 'eav/entity_attribute_backend_datetime', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(852, 4, 'customer_dob', NULL, '', 'datetime', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(853, 7, 'is_virtual', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(854, 7, 'product_type', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(855, 18, 'store_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(856, 28, 'store_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(857, 24, 'store_id', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(858, 4, 'customer_taxvat', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(859, 10, 'price_type', NULL, '', 'int', '', '', '', '', NULL, '', 1, 0, '', 0, ''),
(860, 10, 'sku_type', NULL, '', 'int', '', '', '', '', NULL, '', 1, 0, '', 0, ''),
(861, 10, 'weight_type', NULL, '', 'int', '', '', '', '', NULL, '', 1, 0, '', 0, ''),
(862, 10, 'price_view', NULL, '', 'int', '', '', 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, '', 0, ''),
(863, 10, 'shipment_type', NULL, '', 'int', '', '', '', 'Shipment', NULL, '', 1, 0, '', 0, ''),
(864, 8, 'cybersource_token', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(865, 18, 'cybersource_token', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(866, 28, 'cybersource_token', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(867, 8, 'flo2cash_account_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(868, 8, 'ideal_issuer_id', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(869, 8, 'ideal_issuer_title', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(870, 8, 'ideal_transaction_checked', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(871, 8, 'paybox_request_number', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(872, 8, 'paybox_question_number', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(873, 10, 'max_resolution', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Max Resolution', '', NULL, 0, 1, '', 0, ''),
(874, 10, 'ram_size', NULL, NULL, 'varchar', NULL, NULL, 'text', 'RAM SIze', '', NULL, 0, 1, '', 0, ''),
(875, 10, 'contrast_ratio', NULL, NULL, 'int', NULL, NULL, 'select', 'Contrast Ratio', '', 'eav/entity_attribute_source_table', 0, 1, '', 0, ''),
(876, 10, 'response_time', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Response Time', '', NULL, 0, 1, '', 0, ''),
(877, 10, 'cpu_speed', NULL, NULL, 'int', NULL, NULL, 'select', 'CPU Speed', '', 'eav/entity_attribute_source_table', 0, 1, '', 0, ''),
(878, 10, 'harddrive_speed', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Disk Speed', '', NULL, 0, 1, '', 0, ''),
(879, 10, 'image_label', NULL, '', 'varchar', '', '', 'text', 'Image Label', NULL, '', 0, 0, '', 0, ''),
(880, 10, 'small_image_label', NULL, '', 'varchar', '', '', 'text', 'Small Image Label', NULL, '', 0, 0, '', 0, ''),
(881, 10, 'thumbnail_label', NULL, '', 'varchar', '', '', 'text', 'Thumbnail Label', NULL, '', 0, 0, '', 0, ''),
(882, 4, 'can_ship_partially', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(883, 4, 'can_ship_partially_item', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(884, 4, 'payment_authorization_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(885, 4, 'payment_authorization_expiration', NULL, '', 'int', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(886, 4, 'shipping_tax_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(887, 4, 'base_shipping_tax_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(888, 4, 'global_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(889, 4, 'base_to_global_rate', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(890, 4, 'base_to_order_rate', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(891, 18, 'global_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(892, 18, 'base_to_global_rate', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(893, 18, 'base_to_order_rate', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(894, 28, 'global_currency_code', NULL, '', 'varchar', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(895, 28, 'base_to_global_rate', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(896, 28, 'base_to_order_rate', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(897, 4, 'discount_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(898, 4, 'discount_canceled', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(899, 4, 'discount_invoiced', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(900, 4, 'base_discount_refunded', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(901, 4, 'base_discount_canceled', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(902, 4, 'base_discount_invoiced', NULL, '', 'static', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(903, 10, 'enable_googlecheckout', NULL, '', 'int', '', '', 'select', 'Is product available for purchase with Google Checkout', NULL, 'eav/entity_attribute_source_boolean', 0, 0, '1', 0, ''),
(904, 10, 'links_purchased_separately', NULL, '', 'int', '', '', '', 'Links can be purchased separately', NULL, '', 1, 0, '', 0, ''),
(905, 10, 'samples_title', NULL, '', 'varchar', '', '', '', 'Samples title', NULL, '', 1, 0, '', 0, ''),
(906, 10, 'links_title', NULL, '', 'varchar', '', '', '', 'Links title', NULL, '', 1, 0, '', 0, ''),
(907, 29, 'base_weee_tax_applied_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(908, 29, 'base_weee_tax_applied_row_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(909, 29, 'weee_tax_applied_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(910, 29, 'weee_tax_applied_row_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(911, 20, 'base_weee_tax_applied_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(912, 20, 'base_weee_tax_applied_row_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(913, 20, 'weee_tax_applied_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(914, 20, 'weee_tax_applied_row_amount', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(915, 20, 'weee_tax_applied', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(916, 29, 'weee_tax_applied', NULL, '', 'text', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(917, 29, 'weee_tax_disposition', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(918, 29, 'weee_tax_row_disposition', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(919, 29, 'base_weee_tax_disposition', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(920, 29, 'base_weee_tax_row_disposition', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(921, 20, 'weee_tax_disposition', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(922, 20, 'weee_tax_row_disposition', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(923, 20, 'base_weee_tax_disposition', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(924, 20, 'base_weee_tax_row_disposition', NULL, '', 'decimal', '', '', 'text', '', NULL, '', 1, 0, '', 0, ''),
(925, 1, 'gender', NULL, '', 'int', '', '', 'select', 'Gender', '', 'eav/entity_attribute_source_table', 0, 0, '', 0, ''),
(926, 1, 'created_at', NULL, '', 'static', '', '', 'date', 'Created At', '', '', 0, 0, '', 0, ''),
(927, 9, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', '', '', 'multiselect', 'Available Product Listing Sort by', '', 'catalog/category_attribute_source_sortby', 1, 0, '', 0, ''),
(928, 9, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', '', '', 'select', 'Default Product Listing Sort by', '', 'catalog/category_attribute_source_sortby', 1, 0, '', 0, ''),
(929, 10, 'page_layout', NULL, '', 'varchar', '', '', 'select', 'Page Layout', '', 'catalog/product_attribute_source_layout', 0, 0, '', 0, ''),
(930, 10, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(931, 10, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(933, 4, 'forced_do_shipment_with_invoice', NULL, '', 'int', '', '', 'text', '', '', '', 1, 0, '0', 0, ''),
(934, 4, 'base_total_invoiced_cost', NULL, '', 'static', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(935, 4, 'x_forwarded_for', NULL, '', 'varchar', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(936, 4, 'protect_code', NULL, '', 'static', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(937, 8, 'additional_information', NULL, '', 'text', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(938, 4, 'customer_gender', NULL, '', 'int', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(939, 8, 'base_amount_paid_online', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(940, 8, 'base_amount_refunded_online', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(941, 4, 'discount_description', NULL, '', 'varchar', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(942, 4, 'shipping_discount_amount', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(943, 4, 'base_shipping_discount_amount', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(944, 4, 'paypal_ipn_customer_notified', NULL, '', 'int', '', '', 'text', '', '', '', 1, 0, '0', 0, ''),
(945, 8, 'cc_secure_verify', NULL, '', 'varchar', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(946, 4, 'subtotal_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(947, 4, 'base_subtotal_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(948, 20, 'price_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(949, 20, 'base_price_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(950, 20, 'row_total_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(951, 20, 'base_row_total_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(952, 18, 'subtotal_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(953, 18, 'base_subtotal_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(954, 29, 'price_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(955, 29, 'base_price_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(956, 29, 'row_total_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(957, 29, 'base_row_total_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(958, 28, 'subtotal_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(959, 28, 'base_subtotal_incl_tax', NULL, '', 'decimal', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(960, 10, 'links_exist', NULL, '', 'int', '', '', '', '', '', '', 0, 0, '0', 0, ''),
(961, 9, 'include_in_menu', NULL, '', 'int', '', '', 'select', 'Include in Navigation Menu', '', 'eav/entity_attribute_source_boolean', 0, 0, '1', 0, ''),
(962, 10, 'is_recurring', NULL, '', 'int', '', '', 'select', 'Enable Recurring Profile', '', 'eav/entity_attribute_source_boolean', 0, 0, '', 0, 'Products with recurring profile participate in catalog as nominal items.'),
(963, 10, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', '', '', 'text', 'Recurring Payment Profile', '', '', 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute_group`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_group_name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` smallint(6) NOT NULL DEFAULT '0',
  `default_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `attribute_set_id` (`attribute_set_id`,`attribute_group_name`),
  KEY `attribute_set_id_2` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=182 ;

--
-- 转存表中的数据 `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 4, 1),
(2, 2, 'General', 4, 1),
(3, 3, 'General', 4, 1),
(4, 9, 'General', 1, 1),
(7, 12, 'General Information', 10, 1),
(9, 9, 'Prices', 2, 0),
(12, 9, 'Meta Information', 3, 0),
(15, 9, 'Images', 4, 0),
(17, 23, 'General', 3, 1),
(18, 24, 'General', 3, 1),
(19, 25, 'General', 3, 1),
(20, 26, 'General', 3, 1),
(21, 27, 'General', 3, 1),
(22, 28, 'General', 3, 1),
(23, 18, 'General', 2, 1),
(24, 20, 'General', 2, 1),
(25, 21, 'General', 2, 1),
(26, 22, 'General', 2, 1),
(27, 29, 'General', 3, 1),
(28, 30, 'General', 3, 1),
(29, 31, 'General', 3, 1),
(30, 32, 'General', 3, 1),
(31, 33, 'General', 3, 1),
(32, 34, 'General', 3, 1),
(47, 38, 'General', 1, 1),
(48, 38, 'Meta Information', 3, 0),
(49, 38, 'Prices', 2, 0),
(50, 38, 'Images', 5, 0),
(51, 39, 'General', 43, 1),
(52, 39, 'Meta Information', 45, 0),
(53, 39, 'Prices', 44, 0),
(54, 39, 'Images', 46, 0),
(55, 40, 'General', 43, 1),
(56, 40, 'Meta Information', 45, 0),
(57, 40, 'Prices', 44, 0),
(58, 40, 'Images', 46, 0),
(59, 41, 'General', 1, 1),
(60, 41, 'Meta Information', 3, 0),
(61, 41, 'Prices', 2, 0),
(62, 41, 'Images', 4, 0),
(63, 42, 'General', 43, 1),
(64, 42, 'Meta Information', 45, 0),
(65, 42, 'Images', 46, 0),
(66, 42, 'Prices', 44, 0),
(72, 44, 'General', 7, 1),
(73, 44, 'Meta Information', 2, 0),
(74, 44, 'Images', 4, 0),
(75, 44, 'Prices', 5, 0),
(76, 39, 'Computer Attributes', 48, 0),
(77, 39, 'Descriptions', 47, 0),
(78, 44, 'Descriptions', 3, 0),
(79, 44, 'Camera Attributes', 6, 0),
(80, 45, 'General', 1, 1),
(81, 45, 'Meta Information', 3, 0),
(82, 45, 'Images', 4, 0),
(83, 45, 'Prices', 2, 0),
(84, 38, 'Descriptions', 4, 0),
(85, 38, 'Cell Phone Attributes', 6, 0),
(87, 40, 'Descriptions', 47, 0),
(88, 40, 'Shoe Attributes', 48, 0),
(89, 41, 'Descriptions', 5, 0),
(90, 42, 'Descriptions', 47, 0),
(91, 42, 'Furniture Attributes', 48, 0),
(92, 45, 'Description', 5, 0),
(93, 45, 'Shirt Attributes', 6, 0),
(94, 41, 'T-shirts Attributes', 6, 0),
(95, 9, 'Description', 5, 0),
(96, 46, 'General', 1, 1),
(97, 46, 'Prices', 2, 0),
(98, 46, 'Meta Information', 3, 0),
(99, 46, 'Images', 4, 0),
(100, 46, 'Description', 5, 0),
(118, 9, 'Design', 6, 0),
(119, 44, 'Design', 8, 0),
(120, 38, 'Design', 7, 0),
(121, 39, 'Design', 49, 0),
(122, 42, 'Design', 49, 0),
(123, 45, 'Design', 7, 0),
(124, 46, 'Design', 6, 0),
(125, 40, 'Design', 49, 0),
(126, 41, 'Design', 7, 0),
(128, 50, 'General', 1, 1),
(129, 51, 'General', 1, 1),
(130, 52, 'General', 1, 1),
(131, 53, 'General', 1, 1),
(132, 54, 'General', 1, 1),
(133, 55, 'General', 1, 1),
(134, 56, 'General', 1, 1),
(135, 57, 'General', 1, 1),
(136, 58, 'General', 1, 1),
(137, 58, 'Prices', 2, 0),
(138, 58, 'Meta Information', 3, 0),
(139, 58, 'Images', 4, 0),
(140, 58, 'Description', 5, 0),
(141, 58, 'Design', 6, 0),
(142, 59, 'General', 1, 1),
(143, 59, 'Prices', 2, 0),
(144, 59, 'Meta Information', 3, 0),
(145, 59, 'Images', 4, 0),
(146, 59, 'Description', 5, 0),
(147, 59, 'Design', 6, 0),
(148, 60, 'General', 1, 1),
(149, 60, 'Prices', 2, 0),
(150, 60, 'Meta Information', 3, 0),
(151, 60, 'Images', 4, 0),
(152, 60, 'Description', 5, 0),
(153, 60, 'Design', 6, 0),
(154, 61, 'General', 43, 1),
(155, 61, 'Prices', 44, 0),
(156, 61, 'Meta Information', 45, 0),
(157, 61, 'Images', 46, 0),
(158, 61, 'Description', 47, 0),
(159, 61, 'Design', 48, 0),
(160, 62, 'General', 1, 1),
(161, 62, 'Prices', 2, 0),
(162, 62, 'Meta Information', 3, 0),
(163, 62, 'Images', 4, 0),
(164, 62, 'Description', 5, 0),
(165, 62, 'Design', 6, 0),
(166, 12, 'Display Settings', 20, 0),
(167, 12, 'Custom Design', 30, 0),
(168, 44, 'Recurring Profile', 9, 0),
(169, 38, 'Recurring Profile', 8, 0),
(170, 39, 'Recurring Profile', 50, 0),
(171, 60, 'Recurring Profile', 7, 0),
(172, 9, 'Recurring Profile', 7, 0),
(173, 42, 'Recurring Profile', 50, 0),
(174, 62, 'Recurring Profile', 7, 0),
(175, 61, 'Recurring Profile', 49, 0),
(176, 58, 'Recurring Profile', 7, 0),
(177, 46, 'Recurring Profile', 7, 0),
(178, 45, 'Recurring Profile', 8, 0),
(179, 41, 'Recurring Profile', 8, 0),
(180, 40, 'Recurring Profile', 50, 0),
(181, 59, 'Recurring Profile', 7, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute_label`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_label` (
  `attribute_label_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_ATTRIBUTE_LABEL_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_ATTRIBUTE_LABEL_STORE` (`store_id`),
  KEY `IDX_ATTRIBUTE_LABEL_ATTRIBUTE_STORE` (`attribute_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `eav_attribute_label`
--


-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute_option`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`),
  KEY `FK_ATTRIBUTE_OPTION_ATTRIBUTE` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Attributes option (for source model)' AUTO_INCREMENT=125 ;

--
-- 转存表中的数据 `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 102, 1),
(2, 102, 2),
(3, 102, 3),
(4, 102, 4),
(5, 102, 5),
(6, 102, 6),
(7, 102, 7),
(8, 102, 8),
(9, 102, 9),
(10, 102, 10),
(11, 465, 1),
(12, 465, 2),
(13, 465, 3),
(20, 102, 12),
(21, 102, 11),
(22, 272, 0),
(23, 272, 0),
(24, 272, 0),
(25, 272, 0),
(26, 272, 0),
(27, 102, 0),
(28, 102, 0),
(29, 102, 0),
(30, 102, 0),
(31, 102, 0),
(32, 102, 0),
(33, 102, 0),
(34, 102, 0),
(35, 501, 0),
(36, 501, 0),
(37, 502, 12),
(38, 502, 11),
(39, 502, 10),
(40, 502, 9),
(41, 502, 8),
(42, 502, 7),
(43, 502, 6),
(44, 502, 5),
(45, 502, 4),
(46, 502, 3),
(47, 107, 0),
(48, 107, 0),
(49, 107, 0),
(51, 107, 0),
(52, 107, 0),
(53, 107, 0),
(54, 97, 0),
(55, 97, 0),
(56, 107, 0),
(57, 272, 0),
(58, 272, 0),
(59, 272, 0),
(60, 272, 0),
(61, 272, 0),
(62, 102, 0),
(63, 102, 0),
(64, 102, 0),
(65, 501, 0),
(66, 501, 0),
(67, 508, 0),
(68, 508, 0),
(69, 508, 0),
(70, 508, 0),
(71, 508, 0),
(72, 508, 0),
(73, 510, 0),
(74, 510, 0),
(75, 510, 0),
(76, 510, 0),
(77, 510, 0),
(78, 510, 0),
(79, 510, 0),
(83, 102, 0),
(88, 513, 9),
(89, 513, 8),
(90, 513, 7),
(91, 513, 6),
(92, 513, 5),
(93, 513, 4),
(94, 513, 3),
(95, 513, 2),
(96, 513, 1),
(97, 107, 0),
(98, 525, 3),
(99, 525, 2),
(100, 525, 1),
(101, 102, 0),
(102, 102, 0),
(103, 102, 0),
(104, 102, 0),
(105, 102, 0),
(106, 875, 0),
(107, 875, 0),
(108, 875, 0),
(109, 875, 0),
(110, 875, 0),
(111, 102, 0),
(112, 877, 0),
(113, 877, 0),
(114, 877, 0),
(115, 877, 0),
(116, 102, 0),
(117, 102, 0),
(118, 102, 0),
(119, 102, 0),
(120, 102, 0),
(121, 102, 0),
(122, 102, 0),
(123, 925, 0),
(124, 925, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute_option_value`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_OPTION_VALUE_OPTION` (`option_id`),
  KEY `FK_ATTRIBUTE_OPTION_VALUE_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Attribute option values per store' AUTO_INCREMENT=1462 ;

--
-- 转存表中的数据 `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(51, 11, 1, 'Red'),
(52, 12, 1, 'Blue'),
(53, 13, 1, 'Yellow'),
(54, 11, 0, 'Red'),
(55, 12, 0, 'Blue'),
(56, 13, 0, 'Yellow'),
(476, 65, 0, 'Boys'),
(477, 66, 0, 'Girls'),
(478, 36, 0, 'Mens'),
(479, 35, 0, 'Womens'),
(919, 55, 0, 'Mens'),
(920, 54, 0, 'Womens'),
(1110, 61, 0, 'Gray'),
(1111, 23, 0, 'Silver'),
(1112, 23, 1, 'Silver'),
(1113, 24, 0, 'Black'),
(1114, 24, 1, 'Black'),
(1115, 25, 0, 'Blue'),
(1116, 25, 1, 'Blue'),
(1117, 26, 0, 'Red'),
(1118, 26, 1, 'Red'),
(1119, 57, 0, 'Pink'),
(1120, 58, 0, 'Magneta'),
(1121, 59, 0, 'Brown'),
(1122, 60, 0, 'White'),
(1123, 22, 0, 'Green'),
(1124, 22, 1, 'Green'),
(1138, 97, 0, 'Sandal'),
(1139, 56, 0, 'Misc'),
(1140, 53, 0, 'Tennis'),
(1141, 52, 0, 'Dress'),
(1142, 51, 0, 'High Heels'),
(1143, 49, 0, 'Running'),
(1144, 48, 0, 'Biking'),
(1145, 47, 0, 'Golf Shoes'),
(1146, 46, 0, '3'),
(1147, 45, 0, '4'),
(1148, 44, 0, '5'),
(1149, 43, 0, '6'),
(1150, 42, 0, '7'),
(1151, 41, 0, '8'),
(1152, 40, 0, '9'),
(1153, 39, 0, '10'),
(1154, 38, 0, '11'),
(1155, 37, 0, '12'),
(1156, 72, 0, 'Living Room'),
(1157, 71, 0, 'Bedroom'),
(1158, 70, 0, 'Dining Room'),
(1159, 69, 0, 'Kitchen'),
(1160, 68, 0, 'Kids Room'),
(1161, 67, 0, 'Bathroom'),
(1162, 96, 0, '2'),
(1163, 95, 0, '3'),
(1164, 94, 0, '4'),
(1165, 93, 0, '5'),
(1166, 92, 0, '6'),
(1167, 91, 0, '7'),
(1168, 90, 0, '8'),
(1169, 89, 0, '9'),
(1170, 88, 0, '10'),
(1171, 100, 0, 'Small'),
(1172, 99, 0, 'Medium'),
(1173, 98, 0, 'Large'),
(1215, 106, 0, '10000:1'),
(1216, 107, 0, '1500:1'),
(1217, 108, 0, '1000:1'),
(1218, 109, 0, '2000:1'),
(1219, 110, 0, '3000:1'),
(1262, 112, 0, '3.0 GHz'),
(1263, 113, 0, '2.5 GHz'),
(1264, 114, 0, '3.2 GHz'),
(1265, 115, 0, '2.0 GHz'),
(1404, 122, 0, 'HTC'),
(1405, 121, 0, 'Logitech'),
(1406, 63, 0, 'CN CLogs'),
(1407, 62, 0, 'Steve Madden'),
(1408, 34, 0, 'Canon'),
(1409, 33, 0, 'Olympus'),
(1410, 32, 0, 'Argus'),
(1411, 31, 0, 'Kodak'),
(1412, 30, 0, 'Dell'),
(1413, 29, 0, 'Apple'),
(1414, 28, 0, 'Acer'),
(1415, 27, 0, 'Gateway'),
(1416, 64, 0, 'Asics'),
(1417, 83, 0, 'Toshiba'),
(1418, 101, 0, 'At&t'),
(1419, 119, 0, 'Seagate'),
(1420, 118, 0, 'Western Digital'),
(1421, 117, 0, 'AMD'),
(1422, 116, 0, 'Intel'),
(1423, 111, 0, 'Crucial'),
(1424, 105, 0, 'Nine West'),
(1425, 104, 0, 'Ecco'),
(1426, 103, 0, 'Kenneth Cole'),
(1427, 102, 0, 'Anashria'),
(1428, 120, 0, 'Microsoft'),
(1429, 1, 1, 'LG'),
(1430, 1, 0, 'LG'),
(1431, 2, 1, 'Sony'),
(1432, 2, 0, 'Sony'),
(1433, 3, 1, 'Samsung'),
(1434, 3, 0, 'Samsung'),
(1435, 4, 1, 'HP'),
(1436, 4, 0, 'HP'),
(1437, 5, 1, 'JVC'),
(1438, 5, 0, 'JVC'),
(1439, 6, 1, 'Panasonic'),
(1440, 6, 0, 'Panasonic'),
(1441, 7, 1, 'Yamaha'),
(1442, 7, 0, 'Yamaha'),
(1443, 8, 1, 'Philips'),
(1444, 8, 0, 'Philips'),
(1445, 9, 1, 'Acco'),
(1446, 9, 0, 'Acco'),
(1447, 10, 1, 'Aiwa'),
(1448, 10, 0, 'Aiwa'),
(1449, 21, 1, 'BlackBerry'),
(1450, 21, 0, 'BlackBerry'),
(1451, 20, 1, 'Nokia'),
(1452, 20, 0, 'Nokia'),
(1453, 79, 0, 'Acer'),
(1454, 78, 0, 'IBM'),
(1455, 77, 0, 'Apple'),
(1456, 76, 0, 'Sony'),
(1457, 75, 0, 'Gateway'),
(1458, 74, 0, 'Toshiba'),
(1459, 73, 0, 'Dell'),
(1460, 123, 0, 'Male'),
(1461, 124, 0, 'Female');

-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute_set`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_set_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `sort_order` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `entity_type_id` (`entity_type_id`,`attribute_set_name`),
  KEY `entity_type_id_2` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- 转存表中的数据 `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 8),
(2, 2, 'Default', 8),
(3, 3, 'Default', 5),
(9, 10, 'Default', 16),
(12, 9, 'Default', 14),
(18, 4, 'Default', 33),
(19, 5, 'Default', 1),
(20, 6, 'Default', 34),
(21, 7, 'Default', 34),
(22, 8, 'Default', 34),
(23, 11, 'Default', 32),
(24, 12, 'Default', 33),
(25, 13, 'Default', 33),
(26, 14, 'Default', 33),
(27, 15, 'Default', 33),
(28, 16, 'Default', 34),
(29, 17, 'Default', 32),
(30, 18, 'Default', 32),
(31, 19, 'Default', 3),
(32, 20, 'Default', 32),
(33, 21, 'Default', 4),
(34, 22, 'Default', 3),
(38, 10, 'Cell Phones', 0),
(39, 10, 'Computer', 0),
(40, 10, 'Shoes', 0),
(41, 10, 'Shirts T', 0),
(42, 10, 'Furniture', 0),
(44, 10, 'Cameras', 0),
(45, 10, 'Shirts Other', 0),
(46, 10, 'Shirts (General)', 0),
(50, 23, 'Default', 29),
(51, 24, 'Default', 29),
(52, 25, 'Default', 29),
(53, 26, 'Default', 29),
(54, 27, 'Default', 29),
(55, 28, 'Default', 29),
(56, 29, 'Default', 29),
(57, 30, 'Default', 29),
(58, 10, 'RAM', 0),
(59, 10, 'Warranties', 0),
(60, 10, 'CPU', 0),
(61, 10, 'Monitors', 0),
(62, 10, 'Hard Drive', 0);

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity`
--

CREATE TABLE IF NOT EXISTS `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `increment_id` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_id`),
  KEY `FK_ENTITY_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ENTITY_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Entityies' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `eav_entity`
--

INSERT INTO `eav_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `increment_id`, `parent_id`, `store_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 1, 0, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `attribute_set_id_2` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `attribute_group_id` (`attribute_group_id`,`attribute_id`),
  KEY `attribute_set_id_3` (`attribute_set_id`,`sort_order`),
  KEY `FK_EAV_ENTITY_ATTRIVUTE_ATTRIBUTE` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4672 ;

--
-- 转存表中的数据 `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 40),
(2, 1, 1, 1, 2, 50),
(3, 1, 1, 1, 3, 60),
(4, 1, 1, 1, 4, 4),
(7, 1, 1, 1, 7, 7),
(8, 1, 1, 1, 8, 8),
(9, 2, 2, 2, 9, 10),
(10, 2, 2, 2, 10, 20),
(11, 2, 2, 2, 11, 60),
(12, 2, 2, 2, 12, 70),
(13, 2, 2, 2, 13, 80),
(14, 2, 2, 2, 14, 90),
(15, 2, 2, 2, 15, 50),
(16, 2, 2, 2, 16, 40),
(17, 2, 2, 2, 17, 100),
(18, 2, 2, 2, 18, 110),
(19, 3, 3, 3, 19, 1),
(95, 2, 2, 2, 95, 30),
(112, 10, 9, 4, 110, 15),
(194, 8, 1, 1, 256, 0),
(195, 8, 1, 1, 255, 0),
(196, 8, 1, 1, 254, 0),
(197, 8, 1, 1, 253, 0),
(198, 7, 1, 1, 252, 0),
(199, 7, 1, 1, 251, 0),
(200, 7, 1, 1, 250, 0),
(201, 7, 1, 1, 249, 0),
(202, 7, 1, 1, 248, 0),
(203, 7, 1, 1, 247, 0),
(204, 7, 1, 1, 246, 0),
(205, 7, 1, 1, 245, 0),
(206, 7, 1, 1, 244, 0),
(207, 7, 1, 1, 243, 0),
(208, 7, 1, 1, 242, 0),
(209, 7, 1, 1, 241, 0),
(210, 7, 1, 1, 240, 0),
(211, 7, 1, 1, 239, 0),
(212, 7, 1, 1, 238, 0),
(213, 7, 1, 1, 237, 0),
(214, 7, 1, 1, 236, 0),
(215, 7, 1, 1, 235, 0),
(216, 7, 1, 1, 234, 0),
(217, 6, 1, 1, 233, 0),
(218, 6, 1, 1, 232, 0),
(219, 6, 1, 1, 231, 0),
(220, 6, 1, 1, 230, 0),
(221, 6, 1, 1, 229, 0),
(222, 6, 1, 1, 228, 0),
(223, 6, 1, 1, 227, 0),
(224, 6, 1, 1, 226, 0),
(225, 6, 1, 1, 225, 0),
(226, 6, 1, 1, 223, 0),
(227, 6, 1, 1, 224, 0),
(228, 6, 1, 1, 222, 0),
(229, 6, 1, 1, 221, 0),
(230, 6, 1, 1, 220, 0),
(231, 6, 1, 1, 219, 0),
(232, 6, 1, 1, 218, 0),
(233, 4, 1, 1, 217, 0),
(234, 4, 1, 1, 216, 0),
(235, 4, 1, 1, 215, 0),
(236, 4, 1, 1, 214, 0),
(237, 4, 1, 1, 213, 0),
(238, 4, 1, 1, 212, 0),
(239, 4, 1, 1, 211, 0),
(240, 4, 1, 1, 210, 0),
(241, 4, 1, 1, 209, 0),
(242, 4, 1, 1, 208, 0),
(243, 4, 1, 1, 207, 0),
(245, 4, 1, 1, 205, 0),
(246, 4, 1, 1, 204, 0),
(247, 4, 1, 1, 203, 0),
(248, 4, 1, 1, 202, 0),
(249, 4, 1, 1, 201, 0),
(250, 4, 1, 1, 200, 0),
(251, 4, 1, 1, 199, 0),
(252, 4, 1, 1, 198, 0),
(253, 4, 1, 1, 197, 0),
(254, 4, 1, 1, 196, 0),
(255, 4, 1, 1, 195, 0),
(256, 4, 1, 1, 194, 0),
(257, 8, 1, 1, 257, 0),
(258, 8, 1, 1, 258, 0),
(259, 8, 1, 1, 259, 0),
(260, 8, 1, 1, 260, 0),
(261, 8, 1, 1, 261, 0),
(262, 8, 1, 1, 262, 0),
(263, 8, 1, 1, 263, 0),
(264, 8, 1, 1, 264, 0),
(265, 8, 1, 1, 265, 0),
(266, 8, 1, 1, 266, 0),
(267, 5, 1, 1, 267, 0),
(268, 5, 1, 1, 268, 0),
(271, 9, 12, 7, 111, 1),
(272, 9, 12, 7, 112, 2),
(273, 9, 12, 7, 113, 3),
(274, 9, 12, 7, 114, 4),
(275, 9, 12, 7, 115, 5),
(276, 9, 12, 7, 116, 6),
(277, 9, 12, 166, 117, 20),
(278, 9, 12, 166, 118, 10),
(279, 9, 12, 7, 119, 9),
(280, 9, 12, 166, 120, 30),
(281, 9, 12, 7, 121, 11),
(282, 9, 12, 7, 122, 12),
(283, 9, 12, 7, 123, 13),
(326, 11, 23, 17, 275, 1),
(327, 11, 23, 17, 276, 2),
(328, 11, 23, 17, 277, 3),
(329, 11, 23, 17, 278, 4),
(330, 11, 23, 17, 279, 5),
(331, 11, 23, 17, 280, 6),
(332, 11, 23, 17, 281, 7),
(333, 11, 23, 17, 282, 8),
(334, 11, 23, 17, 283, 9),
(335, 11, 23, 17, 284, 10),
(336, 11, 23, 17, 285, 11),
(337, 11, 23, 17, 286, 12),
(338, 11, 23, 17, 287, 13),
(339, 11, 23, 17, 288, 14),
(340, 11, 23, 17, 289, 15),
(341, 11, 23, 17, 290, 16),
(342, 11, 23, 17, 291, 17),
(343, 11, 23, 17, 292, 18),
(344, 11, 23, 17, 293, 19),
(345, 11, 23, 17, 294, 20),
(346, 11, 23, 17, 295, 21),
(347, 11, 23, 17, 296, 22),
(348, 11, 23, 17, 297, 23),
(349, 12, 24, 18, 298, 1),
(350, 12, 24, 18, 299, 2),
(351, 12, 24, 18, 300, 3),
(352, 12, 24, 18, 301, 4),
(353, 12, 24, 18, 302, 5),
(354, 12, 24, 18, 303, 6),
(355, 12, 24, 18, 304, 7),
(356, 12, 24, 18, 305, 8),
(357, 12, 24, 18, 306, 9),
(358, 12, 24, 18, 307, 10),
(359, 12, 24, 18, 308, 11),
(360, 12, 24, 18, 309, 12),
(361, 12, 24, 18, 310, 13),
(362, 12, 24, 18, 311, 14),
(363, 12, 24, 18, 312, 15),
(364, 12, 24, 18, 313, 16),
(365, 12, 24, 18, 314, 17),
(366, 12, 24, 18, 315, 18),
(367, 12, 24, 18, 316, 19),
(368, 12, 24, 18, 317, 20),
(369, 12, 24, 18, 318, 21),
(370, 12, 24, 18, 319, 22),
(371, 12, 24, 18, 320, 23),
(372, 12, 24, 18, 321, 24),
(373, 12, 24, 18, 322, 25),
(374, 12, 24, 18, 323, 26),
(375, 12, 24, 18, 324, 27),
(376, 12, 24, 18, 325, 28),
(377, 13, 25, 19, 326, 1),
(378, 13, 25, 19, 327, 2),
(379, 13, 25, 19, 328, 3),
(380, 13, 25, 19, 329, 4),
(381, 13, 25, 19, 330, 5),
(382, 13, 25, 19, 331, 6),
(383, 13, 25, 19, 332, 7),
(384, 13, 25, 19, 333, 8),
(385, 14, 26, 20, 334, 1),
(386, 14, 26, 20, 335, 2),
(387, 14, 26, 20, 336, 3),
(388, 14, 26, 20, 337, 4),
(389, 14, 26, 20, 338, 5),
(390, 14, 26, 20, 339, 6),
(391, 14, 26, 20, 340, 7),
(392, 14, 26, 20, 341, 8),
(393, 14, 26, 20, 342, 9),
(394, 15, 27, 21, 343, 1),
(395, 15, 27, 21, 344, 2),
(396, 15, 27, 21, 345, 3),
(397, 15, 27, 21, 346, 4),
(398, 15, 27, 21, 347, 5),
(399, 15, 27, 21, 348, 6),
(400, 15, 27, 21, 349, 7),
(401, 15, 27, 21, 350, 8),
(402, 15, 27, 21, 351, 9),
(403, 15, 27, 21, 352, 10),
(404, 15, 27, 21, 353, 11),
(405, 15, 27, 21, 354, 12),
(406, 15, 27, 21, 355, 13),
(407, 15, 27, 21, 356, 14),
(408, 15, 27, 21, 357, 15),
(409, 15, 27, 21, 358, 16),
(410, 16, 28, 22, 359, 1),
(411, 16, 28, 22, 360, 2),
(412, 16, 28, 22, 361, 3),
(413, 16, 28, 22, 362, 4),
(414, 16, 28, 22, 363, 5),
(415, 16, 28, 22, 364, 6),
(416, 16, 28, 22, 365, 7),
(417, 16, 28, 22, 366, 8),
(418, 16, 28, 22, 367, 9),
(419, 16, 28, 22, 368, 10),
(420, 16, 28, 22, 369, 11),
(421, 4, 18, 23, 370, 1),
(422, 4, 18, 23, 205, 2),
(423, 4, 18, 23, 210, 3),
(425, 4, 18, 23, 204, 5),
(426, 4, 18, 23, 372, 6),
(427, 4, 18, 23, 217, 7),
(428, 4, 18, 23, 216, 8),
(429, 4, 18, 23, 212, 9),
(430, 4, 18, 23, 213, 10),
(431, 4, 18, 23, 373, 11),
(432, 4, 18, 23, 374, 12),
(433, 4, 18, 23, 375, 13),
(434, 4, 18, 23, 376, 14),
(435, 4, 18, 23, 377, 15),
(436, 4, 18, 23, 378, 16),
(437, 4, 18, 23, 379, 17),
(438, 4, 18, 23, 196, 18),
(439, 4, 18, 23, 214, 19),
(440, 4, 18, 23, 208, 20),
(441, 4, 18, 23, 198, 21),
(442, 4, 18, 23, 200, 22),
(443, 4, 18, 23, 201, 23),
(444, 4, 18, 23, 199, 24),
(445, 4, 18, 23, 202, 25),
(446, 4, 18, 23, 203, 26),
(447, 4, 18, 23, 194, 27),
(448, 4, 18, 23, 380, 28),
(449, 4, 18, 23, 381, 29),
(451, 4, 18, 23, 383, 31),
(452, 6, 20, 24, 384, 1),
(453, 6, 20, 24, 385, 2),
(454, 6, 20, 24, 233, 3),
(455, 6, 20, 24, 221, 4),
(456, 6, 20, 24, 386, 5),
(457, 6, 20, 24, 223, 6),
(458, 6, 20, 24, 224, 7),
(459, 6, 20, 24, 225, 8),
(460, 6, 20, 24, 226, 9),
(461, 6, 20, 24, 222, 10),
(462, 6, 20, 24, 227, 11),
(463, 6, 20, 24, 228, 12),
(464, 6, 20, 24, 218, 13),
(465, 6, 20, 24, 229, 14),
(466, 6, 20, 24, 219, 15),
(467, 6, 20, 24, 230, 16),
(468, 6, 20, 24, 231, 17),
(469, 7, 21, 25, 387, 1),
(470, 7, 21, 25, 388, 2),
(471, 7, 21, 25, 249, 3),
(472, 7, 21, 25, 389, 4),
(473, 7, 21, 25, 250, 5),
(474, 7, 21, 25, 251, 6),
(475, 7, 21, 25, 390, 7),
(476, 7, 21, 25, 391, 8),
(477, 7, 21, 25, 236, 9),
(478, 7, 21, 25, 237, 10),
(479, 7, 21, 25, 238, 11),
(480, 7, 21, 25, 239, 12),
(481, 7, 21, 25, 240, 13),
(482, 7, 21, 25, 242, 14),
(483, 7, 21, 25, 243, 15),
(484, 7, 21, 25, 244, 16),
(485, 7, 21, 25, 245, 17),
(486, 7, 21, 25, 246, 18),
(487, 7, 21, 25, 247, 19),
(488, 7, 21, 25, 248, 20),
(489, 8, 22, 26, 392, 1),
(490, 8, 22, 26, 393, 2),
(491, 8, 22, 26, 394, 3),
(492, 8, 22, 26, 395, 4),
(493, 8, 22, 26, 257, 5),
(494, 8, 22, 26, 258, 6),
(495, 8, 22, 26, 259, 7),
(496, 8, 22, 26, 260, 8),
(497, 8, 22, 26, 261, 9),
(498, 8, 22, 26, 262, 10),
(499, 8, 22, 26, 253, 11),
(500, 8, 22, 26, 254, 12),
(501, 8, 22, 26, 396, 13),
(502, 8, 22, 26, 397, 14),
(503, 8, 22, 26, 263, 15),
(504, 8, 22, 26, 264, 16),
(505, 8, 22, 26, 265, 17),
(506, 8, 22, 26, 266, 18),
(507, 8, 22, 26, 398, 19),
(508, 8, 22, 26, 399, 20),
(509, 8, 22, 26, 400, 21),
(510, 8, 22, 26, 401, 22),
(511, 8, 22, 26, 402, 23),
(512, 8, 22, 26, 403, 24),
(513, 8, 22, 26, 404, 25),
(514, 8, 22, 26, 405, 26),
(515, 8, 22, 26, 406, 27),
(516, 17, 29, 27, 407, 1),
(519, 17, 29, 27, 410, 4),
(520, 18, 30, 28, 411, 1),
(521, 18, 30, 28, 412, 2),
(522, 18, 30, 28, 413, 3),
(523, 18, 30, 28, 414, 4),
(524, 18, 30, 28, 415, 5),
(525, 18, 30, 28, 416, 6),
(526, 18, 30, 28, 417, 7),
(527, 18, 30, 28, 418, 8),
(528, 18, 30, 28, 419, 9),
(529, 18, 30, 28, 420, 10),
(530, 18, 30, 28, 421, 11),
(531, 18, 30, 28, 422, 12),
(532, 18, 30, 28, 423, 13),
(533, 18, 30, 28, 424, 14),
(534, 18, 30, 28, 425, 15),
(535, 18, 30, 28, 426, 16),
(536, 18, 30, 28, 427, 17),
(537, 18, 30, 28, 428, 18),
(538, 18, 30, 28, 429, 19),
(539, 18, 30, 28, 430, 20),
(540, 18, 30, 28, 431, 21),
(541, 19, 31, 29, 432, 1),
(542, 19, 31, 29, 433, 2),
(543, 19, 31, 29, 434, 3),
(544, 19, 31, 29, 435, 4),
(545, 19, 31, 29, 436, 5),
(546, 19, 31, 29, 437, 6),
(547, 19, 31, 29, 438, 7),
(548, 19, 31, 29, 439, 8),
(549, 19, 31, 29, 440, 9),
(550, 19, 31, 29, 441, 10),
(551, 19, 31, 29, 442, 11),
(552, 19, 31, 29, 443, 12),
(553, 19, 31, 29, 444, 13),
(554, 19, 31, 29, 445, 14),
(555, 19, 31, 29, 446, 15),
(556, 19, 31, 29, 447, 16),
(557, 19, 31, 29, 448, 17),
(558, 20, 32, 30, 449, 1),
(559, 20, 32, 30, 450, 2),
(560, 20, 32, 30, 451, 3),
(561, 20, 32, 30, 452, 4),
(562, 20, 32, 30, 453, 5),
(563, 20, 32, 30, 454, 6),
(564, 20, 32, 30, 455, 7),
(565, 20, 32, 30, 456, 8),
(566, 20, 32, 30, 457, 9),
(567, 20, 32, 30, 458, 10),
(568, 20, 32, 30, 459, 11),
(569, 21, 33, 31, 460, 1),
(570, 21, 33, 31, 461, 2),
(571, 21, 33, 31, 462, 3),
(572, 21, 33, 31, 463, 4),
(573, 21, 33, 31, 464, 5),
(574, 21, 33, 31, 465, 6),
(575, 21, 33, 31, 466, 7),
(576, 21, 33, 31, 467, 8),
(577, 22, 34, 32, 468, 1),
(578, 22, 34, 32, 469, 2),
(579, 22, 34, 32, 470, 3),
(580, 22, 34, 32, 471, 4),
(581, 22, 34, 32, 472, 5),
(582, 11, 23, 17, 473, 24),
(583, 15, 27, 21, 474, 17),
(584, 14, 26, 20, 475, 10),
(624, 1, 1, 1, 477, 30),
(625, 1, 1, 1, 478, 20),
(626, 9, 12, 7, 479, 14),
(633, 15, 27, 21, 482, 18),
(634, 7, 21, 25, 483, 21),
(825, 10, 38, 47, 110, 6),
(904, 12, 24, 18, 488, 29),
(905, 14, 26, 20, 489, 11),
(906, 15, 27, 21, 490, 19),
(907, 4, 18, 23, 491, 32),
(990, 10, 39, 51, 110, 6),
(1044, 10, 40, 55, 110, 6),
(1122, 10, 41, 59, 110, 6),
(1166, 10, 39, 53, 503, 4),
(1168, 10, 9, 9, 503, 1),
(1169, 10, 38, 49, 503, 4),
(1172, 10, 40, 57, 503, 4),
(1173, 10, 41, 61, 503, 4),
(1175, 12, 24, 18, 504, 30),
(1176, 15, 27, 21, 505, 20),
(1314, 10, 42, 63, 110, 6),
(1336, 10, 42, 66, 503, 4),
(1571, 10, 44, 72, 110, 6),
(1593, 10, 44, 75, 503, 4),
(1674, 9, 12, 167, 514, 50),
(1675, 14, 26, 20, 515, 12),
(1676, 14, 26, 20, 516, 13),
(1677, 14, 26, 20, 517, 14),
(1678, 14, 26, 20, 518, 15),
(1679, 14, 26, 20, 519, 16),
(1680, 14, 26, 20, 520, 17),
(1681, 14, 26, 20, 521, 18),
(1682, 14, 26, 20, 522, 19),
(1683, 14, 26, 20, 523, 20),
(1684, 14, 26, 20, 524, 21),
(1714, 10, 44, 72, 96, 1),
(1715, 10, 44, 72, 98, 3),
(1716, 10, 44, 72, 101, 4),
(1717, 10, 44, 72, 102, 6),
(1719, 10, 44, 72, 272, 5),
(1720, 10, 44, 72, 273, 8),
(1721, 10, 44, 72, 274, 9),
(1723, 10, 44, 72, 481, 11),
(1724, 10, 44, 72, 495, 2),
(1725, 10, 44, 73, 103, 1),
(1726, 10, 44, 73, 104, 2),
(1727, 10, 44, 73, 105, 3),
(1728, 10, 44, 78, 97, 2),
(1729, 10, 44, 78, 492, 3),
(1730, 10, 44, 78, 506, 1),
(1731, 10, 44, 74, 106, 3),
(1732, 10, 44, 74, 109, 2),
(1733, 10, 44, 74, 271, 4),
(1734, 10, 44, 74, 493, 1),
(1735, 10, 44, 75, 99, 1),
(1736, 10, 44, 75, 100, 2),
(1737, 10, 44, 75, 270, 3),
(1738, 10, 44, 79, 494, 2),
(1739, 10, 44, 79, 513, 1),
(1771, 10, 45, 80, 110, 6),
(1789, 10, 45, 83, 503, 4),
(1820, 10, 44, 72, 526, 12),
(2078, 10, 39, 51, 96, 43),
(2079, 10, 39, 51, 98, 46),
(2080, 10, 39, 51, 101, 47),
(2082, 10, 39, 51, 272, 48),
(2083, 10, 39, 51, 273, 50),
(2084, 10, 39, 51, 274, 51),
(2086, 10, 39, 51, 481, 53),
(2087, 10, 39, 51, 495, 44),
(2088, 10, 39, 51, 510, 45),
(2089, 10, 39, 51, 526, 54),
(2090, 10, 39, 53, 99, 43),
(2091, 10, 39, 53, 100, 44),
(2092, 10, 39, 53, 270, 45),
(2093, 10, 39, 52, 103, 43),
(2094, 10, 39, 52, 104, 44),
(2095, 10, 39, 52, 105, 45),
(2096, 10, 39, 54, 106, 45),
(2097, 10, 39, 54, 109, 44),
(2098, 10, 39, 54, 271, 46),
(2099, 10, 39, 54, 493, 43),
(2100, 10, 39, 77, 97, 44),
(2101, 10, 39, 77, 492, 45),
(2102, 10, 39, 77, 506, 43),
(2103, 10, 39, 76, 494, 43),
(2104, 10, 39, 76, 497, 46),
(2105, 10, 39, 76, 498, 47),
(2106, 10, 39, 76, 499, 45),
(2107, 10, 39, 76, 500, 44),
(2133, 10, 40, 55, 96, 43),
(2134, 10, 40, 55, 98, 45),
(2135, 10, 40, 55, 101, 46),
(2136, 10, 40, 55, 102, 47),
(2138, 10, 40, 55, 273, 49),
(2139, 10, 40, 55, 274, 50),
(2141, 10, 40, 55, 481, 52),
(2142, 10, 40, 55, 495, 44),
(2143, 10, 40, 55, 526, 53),
(2144, 10, 40, 57, 99, 43),
(2145, 10, 40, 57, 100, 44),
(2146, 10, 40, 57, 270, 45),
(2147, 10, 40, 56, 103, 43),
(2148, 10, 40, 56, 104, 44),
(2149, 10, 40, 56, 105, 45),
(2150, 10, 40, 58, 106, 45),
(2151, 10, 40, 58, 109, 44),
(2152, 10, 40, 58, 271, 46),
(2153, 10, 40, 58, 493, 43),
(2154, 10, 40, 87, 97, 44),
(2155, 10, 40, 87, 492, 45),
(2156, 10, 40, 87, 506, 43),
(2157, 10, 40, 88, 107, 44),
(2158, 10, 40, 88, 272, 45),
(2159, 10, 40, 88, 501, 46),
(2160, 10, 40, 88, 502, 43),
(2185, 10, 42, 63, 96, 43),
(2186, 10, 42, 63, 98, 45),
(2187, 10, 42, 63, 101, 46),
(2189, 10, 42, 63, 273, 49),
(2190, 10, 42, 63, 274, 50),
(2192, 10, 42, 63, 481, 52),
(2193, 10, 42, 63, 494, 47),
(2194, 10, 42, 63, 495, 44),
(2195, 10, 42, 63, 526, 53),
(2196, 10, 42, 66, 99, 43),
(2197, 10, 42, 66, 100, 44),
(2198, 10, 42, 66, 270, 45),
(2199, 10, 42, 64, 103, 43),
(2200, 10, 42, 64, 104, 44),
(2201, 10, 42, 64, 105, 45),
(2202, 10, 42, 65, 106, 45),
(2203, 10, 42, 65, 109, 44),
(2204, 10, 42, 65, 271, 46),
(2205, 10, 42, 65, 493, 43),
(2206, 10, 42, 90, 97, 44),
(2207, 10, 42, 90, 506, 43),
(2208, 10, 42, 91, 272, 46),
(2209, 10, 42, 91, 507, 45),
(2210, 10, 42, 91, 508, 43),
(2211, 10, 42, 91, 509, 44),
(2307, 10, 9, 4, 96, 1),
(2308, 10, 9, 4, 98, 2),
(2309, 10, 9, 4, 101, 3),
(2312, 10, 9, 4, 273, 6),
(2313, 10, 9, 4, 274, 7),
(2315, 10, 9, 4, 481, 9),
(2316, 10, 9, 4, 526, 10),
(2317, 10, 9, 9, 99, 1),
(2318, 10, 9, 9, 100, 2),
(2319, 10, 9, 9, 270, 3),
(2320, 10, 9, 12, 103, 1),
(2321, 10, 9, 12, 104, 2),
(2322, 10, 9, 12, 105, 3),
(2323, 10, 9, 15, 106, 4),
(2324, 10, 9, 15, 109, 2),
(2325, 10, 9, 15, 271, 3),
(2326, 10, 9, 15, 493, 1),
(2327, 10, 9, 95, 97, 1),
(2328, 10, 9, 95, 506, 2),
(2437, 10, 46, 96, 110, 15),
(2439, 10, 46, 97, 503, 1),
(2579, 16, 28, 22, 527, 12),
(2580, 16, 28, 22, 528, 13),
(2581, 16, 28, 22, 529, 14),
(2629, 9, 12, 167, 530, 60),
(2630, 10, 44, 119, 531, 13),
(2632, 10, 39, 121, 531, 55),
(2633, 10, 9, 118, 531, 16),
(2634, 10, 42, 122, 531, 54),
(2637, 10, 40, 125, 531, 54),
(2640, 1, 1, 1, 532, 70),
(2641, 9, 12, 7, 533, 17),
(2642, 11, 23, 17, 534, 25),
(2643, 12, 24, 18, 535, 31),
(2644, 15, 27, 21, 536, 21),
(2645, 4, 18, 23, 537, 33),
(2646, 6, 20, 24, 538, 18),
(2647, 7, 21, 25, 539, 22),
(2658, 14, 26, 20, 541, 22),
(2659, 7, 21, 25, 542, 23),
(2660, 11, 23, 17, 543, 26),
(2661, 11, 23, 17, 544, 27),
(2662, 11, 23, 17, 545, 28),
(2663, 11, 23, 17, 546, 29),
(2664, 4, 18, 23, 547, 34),
(2665, 4, 18, 23, 548, 35),
(2666, 4, 18, 23, 549, 36),
(2667, 4, 18, 23, 550, 37),
(2668, 15, 27, 21, 551, 22),
(2669, 14, 26, 20, 552, 23),
(2670, 4, 18, 23, 215, 38),
(2671, 4, 18, 23, 553, 39),
(2672, 4, 18, 23, 554, 40),
(2673, 4, 18, 23, 555, 41),
(2674, 4, 18, 23, 556, 42),
(2675, 4, 18, 23, 557, 43),
(2676, 4, 18, 23, 558, 44),
(2677, 17, 29, 27, 559, 5),
(2678, 17, 29, 27, 560, 6),
(2679, 7, 21, 25, 561, 24),
(2680, 10, 44, 72, 562, 15),
(2682, 10, 39, 51, 562, 57),
(2683, 10, 9, 4, 562, 18),
(2684, 10, 42, 63, 562, 56),
(2687, 10, 40, 55, 562, 56),
(2690, 9, 12, 167, 563, 10),
(2691, 9, 12, 167, 564, 20),
(2692, 9, 12, 167, 565, 30),
(2693, 9, 12, 167, 566, 40),
(2694, 10, 44, 75, 567, 5),
(2696, 10, 39, 53, 567, 46),
(2697, 10, 9, 9, 567, 4),
(2698, 10, 42, 66, 567, 46),
(2701, 10, 40, 57, 567, 46),
(2704, 10, 44, 75, 568, 6),
(2706, 10, 39, 53, 568, 47),
(2707, 10, 9, 9, 568, 5),
(2708, 10, 42, 66, 568, 47),
(2711, 10, 40, 57, 568, 47),
(2714, 10, 44, 75, 569, 7),
(2716, 10, 39, 53, 569, 48),
(2717, 10, 9, 9, 569, 6),
(2718, 10, 42, 66, 569, 48),
(2721, 10, 40, 57, 569, 48),
(2724, 10, 39, 51, 102, 58),
(2725, 10, 9, 4, 102, 19),
(2726, 10, 42, 63, 102, 57),
(2731, 10, 9, 4, 272, 20),
(2734, 10, 44, 72, 570, 16),
(2735, 10, 38, 47, 570, 57),
(2736, 10, 39, 51, 570, 59),
(2737, 10, 9, 4, 570, 21),
(2738, 10, 42, 63, 570, 58),
(2739, 10, 45, 80, 570, 14),
(2740, 10, 46, 96, 570, 21),
(2741, 10, 40, 55, 570, 57),
(2742, 10, 41, 59, 570, 15),
(2744, 10, 44, 119, 571, 1),
(2746, 10, 39, 121, 571, 1),
(2747, 10, 9, 118, 571, 1),
(2748, 10, 42, 122, 571, 1),
(2751, 10, 40, 125, 571, 1),
(2754, 10, 44, 119, 572, 2),
(2756, 10, 39, 121, 572, 2),
(2757, 10, 9, 118, 572, 2),
(2758, 10, 42, 122, 572, 2),
(2761, 10, 40, 125, 572, 2),
(2764, 10, 44, 119, 573, 3),
(2766, 10, 39, 121, 573, 3),
(2767, 10, 9, 118, 573, 3),
(2768, 10, 42, 122, 573, 3),
(2771, 10, 40, 125, 573, 3),
(2774, 11, 23, 17, 574, 30),
(2775, 11, 23, 17, 575, 31),
(2776, 12, 24, 18, 576, 32),
(2777, 14, 26, 20, 577, 24),
(2778, 14, 26, 20, 578, 25),
(2779, 15, 27, 21, 579, 23),
(2780, 15, 27, 21, 580, 24),
(2781, 16, 28, 22, 581, 15),
(2782, 4, 18, 23, 582, 45),
(2783, 4, 18, 23, 583, 46),
(2784, 4, 18, 23, 584, 47),
(2785, 4, 18, 23, 585, 48),
(2786, 7, 21, 25, 586, 25),
(2787, 7, 21, 25, 587, 26),
(2788, 7, 21, 25, 234, 27),
(2789, 7, 21, 25, 588, 28),
(2790, 7, 21, 25, 589, 29),
(2791, 7, 21, 25, 590, 30),
(2792, 7, 21, 25, 591, 31),
(2793, 7, 21, 25, 592, 32),
(2794, 7, 21, 25, 593, 33),
(2795, 7, 21, 25, 594, 34),
(2796, 7, 21, 25, 595, 35),
(2797, 8, 22, 26, 596, 28),
(2798, 8, 22, 26, 597, 29),
(2799, 8, 22, 26, 598, 30),
(2800, 8, 22, 26, 599, 31),
(2801, 8, 22, 26, 600, 32),
(2802, 8, 22, 26, 601, 33),
(2803, 8, 22, 26, 602, 34),
(2804, 8, 22, 26, 603, 35),
(2805, 8, 22, 26, 604, 36),
(2806, 18, 30, 28, 605, 22),
(2807, 18, 30, 28, 606, 23),
(2808, 18, 30, 28, 607, 24),
(2809, 18, 30, 28, 608, 25),
(2810, 20, 32, 30, 609, 12),
(2811, 20, 32, 30, 610, 13),
(2812, 23, 50, 128, 611, 1),
(2813, 23, 50, 128, 612, 2),
(2814, 23, 50, 128, 613, 3),
(2815, 24, 51, 129, 614, 1),
(2816, 24, 51, 129, 615, 2),
(2817, 24, 51, 129, 616, 3),
(2818, 24, 51, 129, 617, 4),
(2819, 24, 51, 129, 618, 5),
(2820, 24, 51, 129, 619, 6),
(2821, 24, 51, 129, 620, 7),
(2822, 24, 51, 129, 621, 8),
(2823, 25, 52, 130, 622, 1),
(2824, 25, 52, 130, 623, 2),
(2825, 25, 52, 130, 624, 3),
(2826, 25, 52, 130, 625, 4),
(2827, 25, 52, 130, 626, 5),
(2828, 25, 52, 130, 627, 6),
(2829, 25, 52, 130, 628, 7),
(2830, 25, 52, 130, 629, 8),
(2831, 25, 52, 130, 630, 9),
(2832, 25, 52, 130, 631, 10),
(2833, 26, 53, 131, 632, 1),
(2834, 26, 53, 131, 633, 2),
(2835, 26, 53, 131, 634, 3),
(2836, 27, 54, 132, 635, 1),
(2837, 27, 54, 132, 636, 2),
(2838, 27, 54, 132, 637, 3),
(2839, 27, 54, 132, 638, 4),
(2840, 27, 54, 132, 639, 5),
(2841, 27, 54, 132, 640, 6),
(2842, 27, 54, 132, 641, 7),
(2843, 27, 54, 132, 642, 8),
(2844, 28, 55, 133, 643, 1),
(2845, 28, 55, 133, 644, 2),
(2846, 28, 55, 133, 645, 3),
(2847, 28, 55, 133, 646, 4),
(2848, 28, 55, 133, 647, 5),
(2849, 28, 55, 133, 648, 6),
(2850, 28, 55, 133, 649, 7),
(2851, 28, 55, 133, 650, 8),
(2852, 28, 55, 133, 651, 9),
(2853, 28, 55, 133, 652, 10),
(2854, 28, 55, 133, 653, 11),
(2855, 28, 55, 133, 654, 12),
(2856, 28, 55, 133, 655, 13),
(2857, 28, 55, 133, 656, 14),
(2858, 28, 55, 133, 657, 15),
(2859, 28, 55, 133, 658, 16),
(2860, 28, 55, 133, 659, 17),
(2861, 28, 55, 133, 660, 18),
(2862, 28, 55, 133, 661, 19),
(2863, 28, 55, 133, 662, 20),
(2864, 29, 56, 134, 663, 1),
(2865, 29, 56, 134, 664, 2),
(2866, 29, 56, 134, 665, 3),
(2867, 29, 56, 134, 666, 4),
(2868, 29, 56, 134, 667, 5),
(2869, 29, 56, 134, 668, 6),
(2870, 29, 56, 134, 669, 7),
(2871, 29, 56, 134, 670, 8),
(2872, 29, 56, 134, 671, 9),
(2873, 29, 56, 134, 672, 10),
(2874, 29, 56, 134, 673, 11),
(2875, 29, 56, 134, 674, 12),
(2876, 30, 57, 135, 675, 1),
(2877, 30, 57, 135, 676, 2),
(2878, 30, 57, 135, 677, 3),
(2879, 11, 23, 17, 678, 32),
(2880, 11, 23, 17, 679, 33),
(2881, 14, 26, 20, 680, 26),
(2882, 15, 27, 21, 681, 25),
(2883, 16, 28, 22, 682, 16),
(2884, 16, 28, 22, 683, 17),
(2885, 16, 28, 22, 684, 18),
(2886, 4, 18, 23, 685, 49),
(2887, 4, 18, 23, 686, 50),
(2888, 4, 18, 23, 687, 51),
(2889, 4, 18, 23, 688, 52),
(2890, 4, 18, 23, 689, 53),
(2891, 4, 18, 23, 690, 54),
(2892, 4, 18, 23, 691, 55),
(2893, 4, 18, 23, 692, 56),
(2894, 4, 18, 23, 693, 57),
(2895, 7, 21, 25, 694, 36),
(2896, 8, 22, 26, 695, 37),
(2897, 8, 22, 26, 696, 38),
(2898, 8, 22, 26, 697, 39),
(2899, 18, 30, 28, 698, 26),
(2900, 28, 55, 133, 699, 21),
(2901, 1, 1, 1, 700, 10),
(2902, 9, 12, 7, 701, 22),
(2903, 9, 12, 7, 702, 23),
(2904, 10, 44, 74, 703, 5),
(2906, 10, 39, 54, 703, 47),
(2907, 10, 9, 15, 703, 5),
(2908, 10, 42, 65, 703, 47),
(2911, 10, 40, 58, 703, 47),
(2914, 10, 44, 72, 704, 17),
(2916, 10, 39, 51, 704, 60),
(2917, 10, 9, 4, 704, 22),
(2918, 10, 42, 63, 704, 59),
(2921, 10, 40, 55, 704, 58),
(2924, 10, 44, 72, 705, 18),
(2926, 10, 39, 51, 705, 61),
(2927, 10, 9, 4, 705, 23),
(2928, 10, 42, 63, 705, 60),
(2931, 10, 40, 55, 705, 59),
(2934, 10, 44, 72, 706, 19),
(2935, 10, 38, 47, 706, 60),
(2936, 10, 39, 51, 706, 62),
(2937, 10, 9, 4, 706, 24),
(2938, 10, 42, 63, 706, 61),
(2939, 10, 45, 80, 706, 17),
(2940, 10, 46, 96, 706, 24),
(2941, 10, 40, 55, 706, 60),
(2942, 10, 41, 59, 706, 18),
(2944, 11, 23, 17, 707, 34),
(2945, 12, 24, 18, 708, 33),
(2946, 12, 24, 18, 709, 34),
(2947, 12, 24, 18, 710, 35),
(2948, 12, 24, 18, 711, 36),
(2949, 12, 24, 18, 712, 37),
(2950, 12, 24, 18, 713, 38),
(2951, 12, 24, 18, 714, 39),
(2952, 14, 26, 20, 715, 27),
(2953, 14, 26, 20, 716, 28),
(2954, 14, 26, 20, 717, 29),
(2955, 14, 26, 20, 718, 30),
(2956, 14, 26, 20, 719, 31),
(2957, 15, 27, 21, 720, 26),
(2958, 15, 27, 21, 721, 27),
(2959, 15, 27, 21, 722, 28),
(2960, 15, 27, 21, 723, 29),
(2961, 15, 27, 21, 724, 30),
(2962, 4, 18, 23, 725, 58),
(2963, 4, 18, 23, 726, 59),
(2964, 4, 18, 23, 727, 60),
(2965, 4, 18, 23, 728, 61),
(2966, 4, 18, 23, 729, 62),
(2967, 4, 18, 23, 730, 63),
(2968, 4, 18, 23, 731, 64),
(2969, 4, 18, 23, 732, 65),
(2970, 4, 18, 23, 733, 66),
(2971, 4, 18, 23, 734, 67),
(2972, 4, 18, 23, 735, 68),
(2973, 4, 18, 23, 736, 69),
(2974, 4, 18, 23, 737, 70),
(2975, 4, 18, 23, 738, 71),
(2976, 4, 18, 23, 739, 72),
(2977, 4, 18, 23, 740, 73),
(2978, 4, 18, 23, 741, 74),
(2979, 4, 18, 23, 742, 75),
(2980, 4, 18, 23, 743, 76),
(2981, 4, 18, 23, 744, 77),
(2982, 4, 18, 23, 745, 78),
(2983, 4, 18, 23, 746, 79),
(2984, 7, 21, 25, 747, 37),
(2985, 7, 21, 25, 748, 38),
(2986, 7, 21, 25, 749, 39),
(2987, 7, 21, 25, 750, 40),
(2988, 7, 21, 25, 751, 41),
(2989, 7, 21, 25, 752, 42),
(2990, 7, 21, 25, 753, 43),
(2991, 7, 21, 25, 754, 44),
(2992, 7, 21, 25, 755, 45),
(2993, 7, 21, 25, 756, 46),
(2994, 7, 21, 25, 757, 47),
(2995, 8, 22, 26, 758, 40),
(2996, 8, 22, 26, 759, 41),
(2997, 8, 22, 26, 760, 42),
(2998, 8, 22, 26, 761, 43),
(2999, 8, 22, 26, 762, 44),
(3000, 8, 22, 26, 763, 45),
(3001, 8, 22, 26, 764, 46),
(3002, 8, 22, 26, 765, 47),
(3003, 18, 30, 28, 766, 27),
(3004, 18, 30, 28, 767, 28),
(3005, 18, 30, 28, 768, 29),
(3006, 18, 30, 28, 769, 30),
(3007, 18, 30, 28, 770, 31),
(3008, 18, 30, 28, 771, 32),
(3009, 20, 32, 30, 772, 14),
(3010, 20, 32, 30, 773, 15),
(3011, 20, 32, 30, 774, 16),
(3012, 20, 32, 30, 775, 17),
(3013, 20, 32, 30, 776, 18),
(3014, 24, 51, 129, 777, 9),
(3015, 25, 52, 130, 778, 11),
(3016, 28, 55, 133, 779, 22),
(3017, 28, 55, 133, 780, 23),
(3018, 28, 55, 133, 781, 24),
(3019, 28, 55, 133, 782, 25),
(3020, 28, 55, 133, 783, 26),
(3021, 28, 55, 133, 784, 27),
(3022, 28, 55, 133, 785, 28),
(3023, 28, 55, 133, 786, 29),
(3024, 28, 55, 133, 787, 30),
(3025, 29, 56, 134, 788, 13),
(3026, 29, 56, 134, 789, 14),
(3027, 29, 56, 134, 790, 15),
(3028, 29, 56, 134, 791, 16),
(3029, 29, 56, 134, 792, 17),
(3030, 11, 23, 17, 793, 35),
(3031, 11, 23, 17, 794, 36),
(3032, 4, 18, 23, 795, 80),
(3033, 4, 18, 23, 796, 81),
(3034, 4, 18, 23, 797, 82),
(3035, 4, 18, 23, 798, 83),
(3036, 4, 18, 23, 799, 84),
(3037, 4, 18, 23, 800, 85),
(3038, 4, 18, 23, 801, 86),
(3039, 4, 18, 23, 802, 87),
(3040, 4, 18, 23, 803, 88),
(3041, 4, 18, 23, 804, 89),
(3042, 4, 18, 23, 805, 90),
(3043, 4, 18, 23, 806, 91),
(3044, 4, 18, 23, 807, 92),
(3045, 4, 18, 23, 808, 93),
(3046, 4, 18, 23, 809, 94),
(3047, 4, 18, 23, 810, 95),
(3048, 4, 18, 23, 811, 96),
(3049, 4, 18, 23, 812, 97),
(3050, 4, 18, 23, 813, 98),
(3051, 4, 18, 23, 814, 99),
(3052, 12, 24, 18, 815, 40),
(3053, 11, 23, 17, 816, 37),
(3054, 8, 22, 26, 817, 48),
(3055, 12, 24, 18, 818, 41),
(3056, 12, 24, 18, 819, 42),
(3057, 4, 18, 23, 820, 100),
(3058, 4, 18, 23, 821, 101),
(3059, 18, 30, 28, 822, 33),
(3060, 18, 30, 28, 823, 34),
(3061, 28, 55, 133, 824, 31),
(3062, 28, 55, 133, 825, 32),
(3063, 1, 1, 1, 826, 37),
(3064, 1, 1, 1, 827, 43),
(3065, 1, 1, 1, 828, 53),
(3066, 1, 1, 1, 829, 80),
(3067, 1, 1, 1, 830, 81),
(3068, 1, 1, 1, 831, 82),
(3069, 2, 2, 2, 832, 7),
(3070, 2, 2, 2, 833, 13),
(3071, 2, 2, 2, 834, 23),
(3072, 9, 12, 7, 835, 24),
(3073, 10, 44, 119, 836, 14),
(3075, 10, 39, 121, 836, 56),
(3076, 10, 9, 118, 836, 17),
(3077, 10, 42, 122, 836, 55),
(3080, 10, 40, 125, 836, 55),
(3083, 10, 44, 72, 837, 20),
(3084, 10, 38, 47, 837, 61),
(3085, 10, 39, 51, 837, 63),
(3086, 10, 9, 4, 837, 25),
(3087, 10, 42, 63, 837, 62),
(3088, 10, 45, 80, 837, 18),
(3089, 10, 46, 96, 837, 25),
(3090, 10, 40, 55, 837, 61),
(3091, 10, 41, 59, 837, 19),
(3093, 10, 44, 72, 838, 21),
(3094, 10, 38, 47, 838, 62),
(3095, 10, 39, 51, 838, 64),
(3096, 10, 9, 4, 838, 26),
(3097, 10, 42, 63, 838, 63),
(3098, 10, 45, 80, 838, 19),
(3099, 10, 46, 96, 838, 26),
(3100, 10, 40, 55, 838, 62),
(3101, 10, 41, 59, 838, 20),
(3103, 4, 18, 23, 839, 102),
(3104, 4, 18, 23, 840, 103),
(3105, 4, 18, 23, 841, 104),
(3106, 6, 20, 24, 842, 19),
(3107, 6, 20, 24, 843, 20),
(3108, 6, 20, 24, 844, 21),
(3109, 11, 23, 17, 845, 38),
(3110, 11, 23, 17, 846, 39),
(3111, 11, 23, 17, 847, 40),
(3112, 12, 24, 18, 848, 43),
(3113, 12, 24, 18, 849, 44),
(3114, 12, 24, 18, 850, 45),
(3115, 11, 23, 17, 851, 41),
(3116, 4, 18, 23, 852, 105),
(3117, 7, 21, 25, 853, 48),
(3118, 7, 21, 25, 854, 49),
(3119, 18, 30, 28, 855, 35),
(3120, 28, 55, 133, 856, 33),
(3121, 24, 51, 129, 857, 10),
(3122, 4, 18, 23, 858, 106),
(3123, 10, 44, 72, 859, 22),
(3124, 10, 38, 47, 859, 63),
(3125, 10, 39, 51, 859, 65),
(3126, 10, 9, 4, 859, 27),
(3127, 10, 42, 63, 859, 64),
(3128, 10, 45, 80, 859, 20),
(3129, 10, 46, 96, 859, 27),
(3130, 10, 40, 55, 859, 63),
(3131, 10, 41, 59, 859, 21),
(3133, 10, 44, 72, 860, 23),
(3134, 10, 38, 47, 860, 64),
(3135, 10, 39, 51, 860, 66),
(3136, 10, 9, 4, 860, 28),
(3137, 10, 42, 63, 860, 65),
(3138, 10, 45, 80, 860, 21),
(3139, 10, 46, 96, 860, 28),
(3140, 10, 40, 55, 860, 64),
(3141, 10, 41, 59, 860, 22),
(3143, 10, 44, 72, 861, 24),
(3144, 10, 38, 47, 861, 65),
(3145, 10, 39, 51, 861, 67),
(3146, 10, 9, 4, 861, 29),
(3147, 10, 42, 63, 861, 66),
(3148, 10, 45, 80, 861, 22),
(3149, 10, 46, 96, 861, 29),
(3150, 10, 40, 55, 861, 65),
(3151, 10, 41, 59, 861, 23),
(3153, 10, 44, 75, 862, 8),
(3155, 10, 39, 53, 862, 49),
(3156, 10, 9, 9, 862, 7),
(3157, 10, 42, 66, 862, 49),
(3160, 10, 40, 57, 862, 49),
(3163, 10, 44, 72, 863, 25),
(3164, 10, 38, 47, 863, 66),
(3165, 10, 39, 51, 863, 68),
(3166, 10, 9, 4, 863, 30),
(3167, 10, 42, 63, 863, 67),
(3168, 10, 45, 80, 863, 23),
(3169, 10, 46, 96, 863, 30),
(3170, 10, 40, 55, 863, 66),
(3171, 10, 41, 59, 863, 24),
(3173, 8, 22, 26, 864, 49),
(3174, 18, 30, 28, 865, 36),
(3175, 28, 55, 133, 866, 34),
(3176, 8, 22, 26, 867, 50),
(3177, 8, 22, 26, 868, 51),
(3178, 8, 22, 26, 869, 52),
(3179, 8, 22, 26, 870, 53),
(3180, 8, 22, 26, 871, 54),
(3181, 8, 22, 26, 872, 55),
(3199, 10, 58, 136, 110, 15),
(3207, 10, 58, 136, 570, 21),
(3213, 10, 58, 136, 706, 24),
(3215, 10, 58, 136, 837, 25),
(3217, 10, 58, 136, 838, 26),
(3219, 10, 58, 136, 859, 27),
(3221, 10, 58, 136, 860, 28),
(3223, 10, 58, 136, 861, 29),
(3225, 10, 58, 136, 863, 30),
(3229, 10, 58, 137, 503, 1),
(3273, 10, 58, 136, 96, 1),
(3275, 10, 58, 136, 98, 2),
(3277, 10, 58, 136, 101, 3),
(3279, 10, 58, 136, 102, 10),
(3283, 10, 58, 136, 273, 5),
(3285, 10, 58, 136, 274, 6),
(3287, 10, 58, 136, 481, 7),
(3289, 10, 58, 136, 526, 8),
(3291, 10, 58, 136, 562, 9),
(3293, 10, 58, 136, 704, 12),
(3295, 10, 58, 136, 705, 13),
(3297, 10, 58, 136, 874, 11),
(3299, 10, 58, 137, 99, 1),
(3301, 10, 58, 137, 100, 2),
(3303, 10, 58, 137, 270, 3),
(3305, 10, 58, 137, 567, 4),
(3307, 10, 58, 137, 568, 5),
(3309, 10, 58, 137, 569, 6),
(3311, 10, 58, 137, 862, 7),
(3313, 10, 58, 138, 103, 1),
(3315, 10, 58, 138, 104, 2),
(3317, 10, 58, 138, 105, 3),
(3319, 10, 58, 139, 106, 4),
(3321, 10, 58, 139, 109, 2),
(3323, 10, 58, 139, 271, 3),
(3325, 10, 58, 139, 493, 1),
(3327, 10, 58, 139, 703, 5),
(3329, 10, 58, 140, 97, 1),
(3331, 10, 58, 140, 506, 2),
(3333, 10, 58, 141, 531, 4),
(3335, 10, 58, 141, 571, 1),
(3337, 10, 58, 141, 572, 2),
(3339, 10, 58, 141, 573, 3),
(3341, 10, 58, 141, 836, 5),
(3359, 10, 59, 142, 110, 15),
(3367, 10, 59, 142, 570, 21),
(3373, 10, 59, 142, 706, 24),
(3375, 10, 59, 142, 837, 25),
(3377, 10, 59, 142, 838, 26),
(3379, 10, 59, 142, 859, 27),
(3381, 10, 59, 142, 860, 28),
(3383, 10, 59, 142, 861, 29),
(3385, 10, 59, 142, 863, 30),
(3389, 10, 59, 143, 503, 1),
(3449, 10, 60, 148, 110, 15),
(3457, 10, 60, 148, 570, 21),
(3463, 10, 60, 148, 706, 24),
(3465, 10, 60, 148, 837, 25),
(3467, 10, 60, 148, 838, 26),
(3469, 10, 60, 148, 859, 27),
(3471, 10, 60, 148, 860, 28),
(3473, 10, 60, 148, 861, 29),
(3475, 10, 60, 148, 863, 30),
(3479, 10, 60, 149, 503, 1),
(3539, 10, 61, 154, 110, 15),
(3547, 10, 61, 154, 570, 21),
(3553, 10, 61, 154, 706, 24),
(3555, 10, 61, 154, 837, 25),
(3557, 10, 61, 154, 838, 26),
(3559, 10, 61, 154, 859, 27),
(3561, 10, 61, 154, 860, 28),
(3563, 10, 61, 154, 861, 29),
(3565, 10, 61, 154, 863, 30),
(3569, 10, 61, 155, 503, 1),
(3613, 10, 59, 142, 96, 1),
(3615, 10, 59, 142, 98, 2),
(3617, 10, 59, 142, 101, 3),
(3621, 10, 59, 142, 273, 5),
(3623, 10, 59, 142, 274, 6),
(3625, 10, 59, 142, 481, 7),
(3627, 10, 59, 142, 526, 8),
(3629, 10, 59, 142, 562, 9),
(3631, 10, 59, 142, 704, 10),
(3633, 10, 59, 142, 705, 11),
(3635, 10, 59, 143, 99, 1),
(3637, 10, 59, 143, 100, 2),
(3639, 10, 59, 143, 270, 3),
(3641, 10, 59, 143, 567, 4),
(3643, 10, 59, 143, 568, 5),
(3645, 10, 59, 143, 569, 6),
(3647, 10, 59, 143, 862, 7),
(3649, 10, 59, 144, 103, 1),
(3651, 10, 59, 144, 104, 2),
(3653, 10, 59, 144, 105, 3),
(3655, 10, 59, 145, 106, 4),
(3657, 10, 59, 145, 109, 2),
(3659, 10, 59, 145, 271, 3),
(3661, 10, 59, 145, 493, 1),
(3663, 10, 59, 145, 703, 5),
(3665, 10, 59, 146, 97, 1),
(3667, 10, 59, 146, 506, 2),
(3669, 10, 59, 147, 531, 4),
(3671, 10, 59, 147, 571, 1),
(3673, 10, 59, 147, 572, 2),
(3675, 10, 59, 147, 573, 3),
(3677, 10, 59, 147, 836, 5),
(3747, 10, 61, 154, 96, 43),
(3749, 10, 61, 154, 98, 44),
(3751, 10, 61, 154, 101, 45),
(3753, 10, 61, 154, 102, 52),
(3757, 10, 61, 154, 273, 47),
(3759, 10, 61, 154, 274, 48),
(3761, 10, 61, 154, 481, 49),
(3763, 10, 61, 154, 500, 58),
(3765, 10, 61, 154, 526, 50),
(3767, 10, 61, 154, 562, 51),
(3769, 10, 61, 154, 704, 53),
(3771, 10, 61, 154, 705, 54),
(3773, 10, 61, 154, 873, 55),
(3775, 10, 61, 154, 875, 56),
(3777, 10, 61, 154, 876, 57),
(3779, 10, 61, 155, 99, 43),
(3781, 10, 61, 155, 100, 44),
(3783, 10, 61, 155, 270, 45),
(3785, 10, 61, 155, 567, 46),
(3787, 10, 61, 155, 568, 47),
(3789, 10, 61, 155, 569, 48),
(3791, 10, 61, 155, 862, 49),
(3793, 10, 61, 156, 103, 43),
(3795, 10, 61, 156, 104, 44),
(3797, 10, 61, 156, 105, 45),
(3799, 10, 61, 157, 106, 46),
(3801, 10, 61, 157, 109, 44),
(3803, 10, 61, 157, 271, 45),
(3805, 10, 61, 157, 493, 43),
(3807, 10, 61, 157, 703, 47),
(3809, 10, 61, 158, 97, 43),
(3811, 10, 61, 158, 506, 44),
(3813, 10, 61, 159, 531, 46),
(3815, 10, 61, 159, 571, 43),
(3817, 10, 61, 159, 572, 44),
(3819, 10, 61, 159, 573, 45),
(3821, 10, 61, 159, 836, 47),
(3823, 10, 60, 148, 96, 1),
(3825, 10, 60, 148, 98, 2),
(3827, 10, 60, 148, 101, 3),
(3829, 10, 60, 148, 102, 10),
(3833, 10, 60, 148, 273, 5),
(3835, 10, 60, 148, 274, 6),
(3837, 10, 60, 148, 481, 7),
(3839, 10, 60, 148, 526, 8),
(3841, 10, 60, 148, 562, 9),
(3843, 10, 60, 148, 704, 12),
(3845, 10, 60, 148, 705, 13),
(3847, 10, 60, 148, 877, 11),
(3849, 10, 60, 149, 99, 1),
(3851, 10, 60, 149, 100, 2),
(3853, 10, 60, 149, 270, 3),
(3855, 10, 60, 149, 567, 4),
(3857, 10, 60, 149, 568, 5),
(3859, 10, 60, 149, 569, 6),
(3861, 10, 60, 149, 862, 7),
(3863, 10, 60, 150, 103, 1),
(3865, 10, 60, 150, 104, 2),
(3867, 10, 60, 150, 105, 3),
(3869, 10, 60, 151, 106, 4),
(3871, 10, 60, 151, 109, 2),
(3873, 10, 60, 151, 271, 3),
(3875, 10, 60, 151, 493, 1),
(3877, 10, 60, 151, 703, 5),
(3879, 10, 60, 152, 97, 1),
(3881, 10, 60, 152, 506, 2),
(3883, 10, 60, 153, 531, 4),
(3885, 10, 60, 153, 571, 1),
(3887, 10, 60, 153, 572, 2),
(3889, 10, 60, 153, 573, 3),
(3891, 10, 60, 153, 836, 5),
(3909, 10, 62, 160, 110, 15),
(3917, 10, 62, 160, 570, 21),
(3923, 10, 62, 160, 706, 24),
(3925, 10, 62, 160, 837, 25),
(3927, 10, 62, 160, 838, 26),
(3929, 10, 62, 160, 859, 27),
(3931, 10, 62, 160, 860, 28),
(3933, 10, 62, 160, 861, 29),
(3935, 10, 62, 160, 863, 30),
(3939, 10, 62, 161, 503, 1),
(3983, 10, 62, 160, 96, 1),
(3985, 10, 62, 160, 98, 2),
(3987, 10, 62, 160, 101, 3),
(3989, 10, 62, 160, 102, 12),
(3993, 10, 62, 160, 273, 5),
(3995, 10, 62, 160, 274, 6),
(3997, 10, 62, 160, 481, 7),
(3999, 10, 62, 160, 499, 10),
(4001, 10, 62, 160, 526, 8),
(4003, 10, 62, 160, 562, 9),
(4005, 10, 62, 160, 704, 13),
(4007, 10, 62, 160, 705, 14),
(4009, 10, 62, 160, 878, 11),
(4011, 10, 62, 161, 99, 1),
(4013, 10, 62, 161, 100, 2),
(4015, 10, 62, 161, 270, 3),
(4017, 10, 62, 161, 567, 4),
(4019, 10, 62, 161, 568, 5),
(4021, 10, 62, 161, 569, 6),
(4023, 10, 62, 161, 862, 7),
(4025, 10, 62, 162, 103, 1),
(4027, 10, 62, 162, 104, 2),
(4029, 10, 62, 162, 105, 3),
(4031, 10, 62, 163, 106, 4),
(4033, 10, 62, 163, 109, 2),
(4035, 10, 62, 163, 271, 3),
(4037, 10, 62, 163, 493, 1),
(4039, 10, 62, 163, 703, 5),
(4041, 10, 62, 164, 97, 1),
(4043, 10, 62, 164, 506, 2),
(4045, 10, 62, 165, 531, 4),
(4047, 10, 62, 165, 571, 1),
(4049, 10, 62, 165, 572, 2),
(4051, 10, 62, 165, 573, 3),
(4053, 10, 62, 165, 836, 5),
(4055, 10, 38, 47, 96, 1),
(4057, 10, 38, 47, 98, 3),
(4059, 10, 38, 47, 101, 4),
(4061, 10, 38, 47, 102, 5),
(4063, 10, 38, 47, 273, 6),
(4065, 10, 38, 47, 274, 7),
(4067, 10, 38, 47, 481, 8),
(4069, 10, 38, 47, 495, 2),
(4071, 10, 38, 47, 526, 9),
(4073, 10, 38, 47, 562, 10),
(4075, 10, 38, 47, 704, 11),
(4077, 10, 38, 47, 705, 12),
(4079, 10, 38, 49, 99, 1),
(4081, 10, 38, 49, 100, 2),
(4083, 10, 38, 49, 270, 3),
(4085, 10, 38, 49, 567, 4),
(4087, 10, 38, 49, 568, 5),
(4089, 10, 38, 49, 569, 6),
(4091, 10, 38, 49, 862, 7),
(4093, 10, 38, 48, 103, 1),
(4095, 10, 38, 48, 104, 2),
(4097, 10, 38, 48, 105, 3),
(4099, 10, 38, 84, 97, 2),
(4101, 10, 38, 84, 492, 3),
(4103, 10, 38, 84, 506, 1),
(4105, 10, 38, 50, 106, 3),
(4107, 10, 38, 50, 109, 2),
(4109, 10, 38, 50, 271, 4),
(4111, 10, 38, 50, 493, 1),
(4113, 10, 38, 50, 703, 5),
(4115, 10, 38, 85, 272, 3),
(4117, 10, 38, 85, 494, 1),
(4119, 10, 38, 85, 496, 2),
(4121, 10, 38, 120, 531, 4),
(4123, 10, 38, 120, 571, 1),
(4125, 10, 38, 120, 572, 2),
(4127, 10, 38, 120, 573, 3),
(4129, 10, 38, 120, 836, 5),
(4131, 10, 46, 96, 96, 1),
(4133, 10, 46, 96, 98, 2),
(4135, 10, 46, 96, 101, 3),
(4137, 10, 46, 96, 102, 10),
(4141, 10, 46, 96, 272, 11),
(4143, 10, 46, 96, 273, 5),
(4145, 10, 46, 96, 274, 6),
(4147, 10, 46, 96, 481, 7),
(4149, 10, 46, 96, 526, 8),
(4151, 10, 46, 96, 562, 9),
(4153, 10, 46, 96, 704, 12),
(4155, 10, 46, 96, 705, 13),
(4157, 10, 46, 97, 99, 1),
(4159, 10, 46, 97, 100, 2),
(4161, 10, 46, 97, 270, 3),
(4163, 10, 46, 97, 567, 4),
(4165, 10, 46, 97, 568, 5),
(4167, 10, 46, 97, 569, 6),
(4169, 10, 46, 97, 862, 7),
(4171, 10, 46, 98, 103, 1),
(4173, 10, 46, 98, 104, 2),
(4175, 10, 46, 98, 105, 3),
(4177, 10, 46, 99, 106, 4),
(4179, 10, 46, 99, 109, 2),
(4181, 10, 46, 99, 271, 3),
(4183, 10, 46, 99, 493, 1),
(4185, 10, 46, 99, 703, 5),
(4187, 10, 46, 100, 97, 1),
(4189, 10, 46, 100, 506, 2),
(4191, 10, 46, 124, 531, 4),
(4193, 10, 46, 124, 571, 1),
(4195, 10, 46, 124, 572, 2),
(4197, 10, 46, 124, 573, 3),
(4199, 10, 46, 124, 836, 5),
(4273, 10, 41, 59, 96, 1),
(4275, 10, 41, 59, 98, 3),
(4277, 10, 41, 59, 101, 4),
(4279, 10, 41, 59, 102, 10),
(4281, 10, 41, 59, 273, 5),
(4283, 10, 41, 59, 274, 6),
(4285, 10, 41, 59, 481, 7),
(4287, 10, 41, 59, 495, 2),
(4289, 10, 41, 59, 526, 8),
(4291, 10, 41, 59, 562, 9),
(4293, 10, 41, 59, 704, 11),
(4295, 10, 41, 59, 705, 12),
(4297, 10, 41, 61, 99, 1),
(4299, 10, 41, 61, 100, 2),
(4301, 10, 41, 61, 270, 3),
(4303, 10, 41, 61, 567, 4),
(4305, 10, 41, 61, 568, 5),
(4307, 10, 41, 61, 569, 6),
(4309, 10, 41, 61, 862, 7),
(4311, 10, 41, 60, 103, 1),
(4313, 10, 41, 60, 104, 2),
(4315, 10, 41, 60, 105, 3),
(4317, 10, 41, 62, 106, 3),
(4319, 10, 41, 62, 109, 2),
(4321, 10, 41, 62, 271, 4),
(4323, 10, 41, 62, 493, 1),
(4325, 10, 41, 62, 703, 5),
(4327, 10, 41, 89, 97, 2),
(4329, 10, 41, 89, 506, 1),
(4331, 10, 41, 94, 272, 3),
(4333, 10, 41, 94, 501, 1),
(4335, 10, 41, 94, 525, 2),
(4337, 10, 41, 126, 531, 4),
(4339, 10, 41, 126, 571, 1),
(4341, 10, 41, 126, 572, 2),
(4343, 10, 41, 126, 573, 3),
(4345, 10, 41, 126, 836, 5),
(4347, 10, 45, 80, 96, 1),
(4349, 10, 45, 80, 98, 2),
(4351, 10, 45, 80, 101, 3),
(4353, 10, 45, 80, 102, 9),
(4355, 10, 45, 80, 273, 4),
(4357, 10, 45, 80, 274, 5),
(4359, 10, 45, 80, 481, 6),
(4361, 10, 45, 80, 526, 7),
(4363, 10, 45, 80, 562, 8),
(4365, 10, 45, 80, 704, 10),
(4367, 10, 45, 80, 705, 11),
(4369, 10, 45, 83, 99, 1),
(4371, 10, 45, 83, 100, 2),
(4373, 10, 45, 83, 270, 3),
(4375, 10, 45, 83, 567, 4),
(4377, 10, 45, 83, 568, 5),
(4379, 10, 45, 83, 569, 6),
(4381, 10, 45, 83, 862, 7),
(4383, 10, 45, 81, 103, 1),
(4385, 10, 45, 81, 104, 2),
(4387, 10, 45, 81, 105, 3),
(4389, 10, 45, 82, 106, 1),
(4391, 10, 45, 82, 109, 2),
(4393, 10, 45, 82, 271, 4),
(4395, 10, 45, 82, 493, 3),
(4397, 10, 45, 82, 703, 5),
(4399, 10, 45, 92, 97, 1),
(4401, 10, 45, 92, 506, 2),
(4403, 10, 45, 93, 272, 3),
(4405, 10, 45, 93, 501, 2),
(4407, 10, 45, 93, 525, 1),
(4409, 10, 45, 123, 531, 4),
(4411, 10, 45, 123, 571, 1),
(4413, 10, 45, 123, 572, 2),
(4415, 10, 45, 123, 573, 3),
(4417, 10, 45, 123, 836, 5),
(4418, 10, 44, 72, 879, 26),
(4419, 10, 38, 47, 879, 67),
(4420, 10, 39, 51, 879, 69),
(4421, 10, 60, 148, 879, 31),
(4422, 10, 9, 4, 879, 31),
(4423, 10, 42, 63, 879, 68),
(4424, 10, 62, 160, 879, 31),
(4425, 10, 61, 154, 879, 59),
(4426, 10, 58, 136, 879, 31),
(4427, 10, 46, 96, 879, 31),
(4428, 10, 45, 80, 879, 24),
(4429, 10, 41, 59, 879, 25),
(4430, 10, 40, 55, 879, 67),
(4431, 10, 59, 142, 879, 31),
(4432, 10, 44, 72, 880, 27),
(4433, 10, 38, 47, 880, 68),
(4434, 10, 39, 51, 880, 70),
(4435, 10, 60, 148, 880, 32),
(4436, 10, 9, 4, 880, 32),
(4437, 10, 42, 63, 880, 69),
(4438, 10, 62, 160, 880, 32),
(4439, 10, 61, 154, 880, 60),
(4440, 10, 58, 136, 880, 32),
(4441, 10, 46, 96, 880, 32),
(4442, 10, 45, 80, 880, 25),
(4443, 10, 41, 59, 880, 26),
(4444, 10, 40, 55, 880, 68),
(4445, 10, 59, 142, 880, 32),
(4446, 10, 44, 72, 881, 28),
(4447, 10, 38, 47, 881, 69),
(4448, 10, 39, 51, 881, 71),
(4449, 10, 60, 148, 881, 33),
(4450, 10, 9, 4, 881, 33),
(4451, 10, 42, 63, 881, 70),
(4452, 10, 62, 160, 881, 33),
(4453, 10, 61, 154, 881, 61),
(4454, 10, 58, 136, 881, 33),
(4455, 10, 46, 96, 881, 33),
(4456, 10, 45, 80, 881, 26),
(4457, 10, 41, 59, 881, 27),
(4458, 10, 40, 55, 881, 69),
(4459, 10, 59, 142, 881, 33),
(4460, 4, 18, 23, 882, 107),
(4461, 4, 18, 23, 883, 108),
(4462, 4, 18, 23, 884, 109),
(4463, 4, 18, 23, 885, 110),
(4464, 4, 18, 23, 886, 111),
(4465, 4, 18, 23, 887, 112),
(4466, 4, 18, 23, 888, 113),
(4467, 4, 18, 23, 889, 114),
(4468, 4, 18, 23, 890, 115),
(4469, 18, 30, 28, 891, 37),
(4470, 18, 30, 28, 892, 38),
(4471, 18, 30, 28, 893, 39),
(4472, 28, 55, 133, 894, 35),
(4473, 28, 55, 133, 895, 36),
(4474, 28, 55, 133, 896, 37),
(4475, 4, 18, 23, 897, 116),
(4476, 4, 18, 23, 898, 117),
(4477, 4, 18, 23, 899, 118),
(4478, 4, 18, 23, 900, 119),
(4479, 4, 18, 23, 901, 120),
(4480, 4, 18, 23, 902, 121),
(4481, 10, 44, 75, 903, 29),
(4482, 10, 38, 49, 903, 70),
(4483, 10, 39, 53, 903, 72),
(4484, 10, 60, 149, 903, 34),
(4485, 10, 9, 9, 903, 34),
(4486, 10, 42, 66, 903, 71),
(4487, 10, 62, 161, 903, 34),
(4488, 10, 61, 155, 903, 62),
(4489, 10, 58, 137, 903, 34),
(4490, 10, 46, 97, 903, 34),
(4491, 10, 45, 83, 903, 27),
(4492, 10, 41, 61, 903, 28),
(4493, 10, 40, 57, 903, 70),
(4494, 10, 59, 143, 903, 34),
(4495, 10, 44, 72, 904, 29),
(4496, 10, 38, 47, 904, 70),
(4497, 10, 39, 51, 904, 72),
(4498, 10, 60, 148, 904, 34),
(4499, 10, 9, 4, 904, 34),
(4500, 10, 42, 63, 904, 71),
(4501, 10, 62, 160, 904, 34),
(4502, 10, 61, 154, 904, 62),
(4503, 10, 58, 136, 904, 34),
(4504, 10, 46, 96, 904, 34),
(4505, 10, 45, 80, 904, 27),
(4506, 10, 41, 59, 904, 28),
(4507, 10, 40, 55, 904, 70),
(4508, 10, 59, 142, 904, 34),
(4509, 10, 44, 72, 905, 30),
(4510, 10, 38, 47, 905, 71),
(4511, 10, 39, 51, 905, 73),
(4512, 10, 60, 148, 905, 35),
(4513, 10, 9, 4, 905, 35),
(4514, 10, 42, 63, 905, 72),
(4515, 10, 62, 160, 905, 35),
(4516, 10, 61, 154, 905, 63),
(4517, 10, 58, 136, 905, 35),
(4518, 10, 46, 96, 905, 35),
(4519, 10, 45, 80, 905, 28),
(4520, 10, 41, 59, 905, 29),
(4521, 10, 40, 55, 905, 71),
(4522, 10, 59, 142, 905, 35),
(4523, 10, 44, 72, 906, 31),
(4524, 10, 38, 47, 906, 72),
(4525, 10, 39, 51, 906, 74),
(4526, 10, 60, 148, 906, 36),
(4527, 10, 9, 4, 906, 36),
(4528, 10, 42, 63, 906, 73),
(4529, 10, 62, 160, 906, 36),
(4530, 10, 61, 154, 906, 64),
(4531, 10, 58, 136, 906, 36),
(4532, 10, 46, 96, 906, 36),
(4533, 10, 45, 80, 906, 29),
(4534, 10, 41, 59, 906, 30),
(4535, 10, 40, 55, 906, 72),
(4536, 10, 59, 142, 906, 36),
(4537, 29, 56, 134, 907, 18),
(4538, 29, 56, 134, 908, 19),
(4539, 29, 56, 134, 909, 20),
(4540, 29, 56, 134, 910, 21),
(4541, 20, 32, 30, 911, 19),
(4542, 20, 32, 30, 912, 20),
(4543, 20, 32, 30, 913, 21),
(4544, 20, 32, 30, 914, 22),
(4545, 20, 32, 30, 915, 23),
(4546, 29, 56, 134, 916, 22),
(4547, 29, 56, 134, 917, 23),
(4548, 29, 56, 134, 918, 24),
(4549, 29, 56, 134, 919, 25),
(4550, 29, 56, 134, 920, 26),
(4551, 20, 32, 30, 921, 24),
(4552, 20, 32, 30, 922, 25),
(4553, 20, 32, 30, 923, 26),
(4554, 20, 32, 30, 924, 27),
(4555, 1, 1, 1, 925, 83),
(4556, 1, 1, 1, 926, 84),
(4557, 9, 12, 166, 927, 40),
(4558, 9, 12, 166, 928, 50),
(4559, 10, 44, 119, 929, 15),
(4560, 10, 38, 120, 929, 6),
(4561, 10, 39, 121, 929, 57),
(4562, 10, 60, 153, 929, 6),
(4563, 10, 9, 118, 929, 18),
(4564, 10, 42, 122, 929, 56),
(4565, 10, 62, 165, 929, 6),
(4566, 10, 61, 159, 929, 48),
(4567, 10, 58, 141, 929, 6),
(4568, 10, 46, 124, 929, 6),
(4569, 10, 45, 123, 929, 6),
(4570, 10, 41, 126, 929, 6),
(4571, 10, 40, 125, 929, 56),
(4572, 10, 59, 147, 929, 6),
(4573, 10, 44, 72, 930, 32),
(4574, 10, 38, 47, 930, 73),
(4575, 10, 39, 51, 930, 75),
(4576, 10, 60, 148, 930, 37),
(4577, 10, 9, 4, 930, 37),
(4578, 10, 42, 63, 930, 74),
(4579, 10, 62, 160, 930, 37),
(4580, 10, 61, 154, 930, 65),
(4581, 10, 58, 136, 930, 37),
(4582, 10, 46, 96, 930, 37),
(4583, 10, 45, 80, 930, 30),
(4584, 10, 41, 59, 930, 31),
(4585, 10, 40, 55, 930, 73),
(4586, 10, 59, 142, 930, 37),
(4587, 10, 44, 72, 931, 33),
(4588, 10, 38, 47, 931, 74),
(4589, 10, 39, 51, 931, 76),
(4590, 10, 60, 148, 931, 38),
(4591, 10, 9, 4, 931, 38),
(4592, 10, 42, 63, 931, 75),
(4593, 10, 62, 160, 931, 38),
(4594, 10, 61, 154, 931, 66),
(4595, 10, 58, 136, 931, 38),
(4596, 10, 46, 96, 931, 38),
(4597, 10, 45, 80, 931, 31),
(4598, 10, 41, 59, 931, 32),
(4599, 10, 40, 55, 931, 74),
(4600, 10, 59, 142, 931, 38),
(4601, 4, 18, 23, 932, 122),
(4602, 4, 18, 23, 933, 123),
(4603, 4, 18, 23, 934, 124),
(4604, 4, 18, 23, 935, 125),
(4605, 4, 18, 23, 936, 126),
(4606, 8, 22, 26, 937, 56),
(4607, 4, 18, 23, 938, 127),
(4608, 8, 22, 26, 939, 57),
(4609, 8, 22, 26, 940, 58),
(4610, 4, 18, 23, 941, 128),
(4611, 4, 18, 23, 942, 129),
(4612, 4, 18, 23, 943, 130),
(4613, 4, 18, 23, 944, 131),
(4614, 8, 22, 26, 945, 59),
(4615, 4, 18, 23, 946, 132),
(4616, 4, 18, 23, 947, 133),
(4617, 20, 32, 30, 948, 28),
(4618, 20, 32, 30, 949, 29),
(4619, 20, 32, 30, 950, 30),
(4620, 20, 32, 30, 951, 31),
(4621, 18, 30, 28, 952, 40),
(4622, 18, 30, 28, 953, 41),
(4623, 29, 56, 134, 954, 27),
(4624, 29, 56, 134, 955, 28),
(4625, 29, 56, 134, 956, 29),
(4626, 29, 56, 134, 957, 30),
(4627, 28, 55, 133, 958, 38),
(4628, 28, 55, 133, 959, 39),
(4629, 10, 44, 72, 960, 34),
(4630, 10, 38, 47, 960, 75),
(4631, 10, 39, 51, 960, 77),
(4632, 10, 60, 148, 960, 39),
(4633, 10, 9, 4, 960, 39),
(4634, 10, 42, 63, 960, 76),
(4635, 10, 62, 160, 960, 39),
(4636, 10, 61, 154, 960, 67),
(4637, 10, 58, 136, 960, 39),
(4638, 10, 46, 96, 960, 39),
(4639, 10, 45, 80, 960, 32),
(4640, 10, 41, 59, 960, 33),
(4641, 10, 40, 55, 960, 75),
(4642, 10, 59, 142, 960, 39),
(4643, 9, 12, 7, 961, 10),
(4644, 10, 44, 168, 962, 1),
(4645, 10, 38, 169, 962, 1),
(4646, 10, 39, 170, 962, 1),
(4647, 10, 60, 171, 962, 1),
(4648, 10, 9, 172, 962, 1),
(4649, 10, 42, 173, 962, 1),
(4650, 10, 62, 174, 962, 1),
(4651, 10, 61, 175, 962, 1),
(4652, 10, 58, 176, 962, 1),
(4653, 10, 46, 177, 962, 1),
(4654, 10, 45, 178, 962, 1),
(4655, 10, 41, 179, 962, 1),
(4656, 10, 40, 180, 962, 1),
(4657, 10, 59, 181, 962, 1),
(4658, 10, 44, 168, 963, 2),
(4659, 10, 38, 169, 963, 2),
(4660, 10, 39, 170, 963, 2),
(4661, 10, 60, 171, 963, 2),
(4662, 10, 9, 172, 963, 2),
(4663, 10, 42, 173, 963, 2),
(4664, 10, 62, 174, 963, 2),
(4665, 10, 61, 175, 963, 2),
(4666, 10, 58, 176, 963, 2),
(4667, 10, 46, 177, 963, 2),
(4668, 10, 45, 178, 963, 2),
(4669, 10, 41, 179, 963, 2),
(4670, 10, 40, 180, 963, 2),
(4671, 10, 59, 181, 963, 2);

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_DATETIME_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ATTRIBUTE_DATETIME_ATTRIBUTE` (`attribute_id`),
  KEY `FK_ATTRIBUTE_DATETIME_STORE` (`store_id`),
  KEY `FK_ATTRIBUTE_DATETIME_ENTITY` (`entity_id`),
  KEY `value_by_attribute` (`attribute_id`,`value`),
  KEY `value_by_entity_type` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Datetime values of attributes' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `eav_entity_datetime`
--


-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_DECIMAL_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ATTRIBUTE_DECIMAL_ATTRIBUTE` (`attribute_id`),
  KEY `FK_ATTRIBUTE_DECIMAL_STORE` (`store_id`),
  KEY `FK_ATTRIBUTE_DECIMAL_ENTITY` (`entity_id`),
  KEY `value_by_attribute` (`attribute_id`,`value`),
  KEY `value_by_entity_type` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Decimal values of attributes' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `eav_entity_decimal`
--


-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_int`
--

CREATE TABLE IF NOT EXISTS `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_INT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ATTRIBUTE_INT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_ATTRIBUTE_INT_STORE` (`store_id`),
  KEY `FK_ATTRIBUTE_INT_ENTITY` (`entity_id`),
  KEY `value_by_attribute` (`attribute_id`,`value`),
  KEY `value_by_entity_type` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Integer values of attributes' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `eav_entity_int`
--


-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_store`
--

CREATE TABLE IF NOT EXISTS `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `increment_prefix` varchar(20) NOT NULL DEFAULT '',
  `increment_last_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_store_id`),
  KEY `FK_eav_entity_store_entity_type` (`entity_type_id`),
  KEY `FK_eav_entity_store_store` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `eav_entity_store`
--


-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_text`
--

CREATE TABLE IF NOT EXISTS `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_TEXT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ATTRIBUTE_TEXT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_ATTRIBUTE_TEXT_STORE` (`store_id`),
  KEY `FK_ATTRIBUTE_TEXT_ENTITY` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Text values of attributes' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `eav_entity_text`
--


-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_type`
--

CREATE TABLE IF NOT EXISTS `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_code` varchar(50) NOT NULL DEFAULT '',
  `entity_model` varchar(255) NOT NULL,
  `attribute_model` varchar(255) NOT NULL,
  `entity_table` varchar(255) NOT NULL DEFAULT '',
  `value_table_prefix` varchar(255) NOT NULL DEFAULT '',
  `entity_id_field` varchar(255) NOT NULL DEFAULT '',
  `is_data_sharing` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `data_sharing_key` varchar(100) DEFAULT 'default',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `increment_model` varchar(255) NOT NULL DEFAULT '',
  `increment_per_store` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `increment_pad_length` tinyint(8) unsigned NOT NULL DEFAULT '8',
  `increment_pad_char` char(1) NOT NULL DEFAULT '0',
  `additional_attribute_table` varchar(255) NOT NULL DEFAULT '',
  `entity_attribute_collection` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_type_id`),
  KEY `entity_name` (`entity_type_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', '', 'customer/entity', '', '', 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
(2, 'customer_address', 'customer/address', '', 'customer/address_entity', '', '', 1, 'default', 2, '', 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
(3, 'customer_payment', '', '', 'customer/entity', '', '', 1, 'default', 3, '', 0, 8, '0', '', ''),
(4, 'order', 'sales/order', '', 'sales/order', '', '', 1, 'default', 18, 'eav/entity_increment_numeric', 1, 8, '0', '', ''),
(5, 'order_status', '', '', 'sales/order', '', '', 1, 'default', 0, '', 0, 8, '0', '', ''),
(6, 'order_address', 'sales/order_address', '', 'sales/order_entity', '', '', 1, 'default', 20, '', 0, 8, '0', '', ''),
(7, 'order_item', 'sales/order_item', '', 'sales/order_entity', '', '', 1, 'default', 21, '', 0, 8, '0', '', ''),
(8, 'order_payment', 'sales/order_payment', '', 'sales/order_entity', '', '', 1, 'default', 22, '', 0, 8, '0', '', ''),
(9, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', '', '', 0, 'default', 12, '', 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
(10, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', '', '', 0, 'default', 9, '', 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
(11, 'quote', 'sales/quote', '', 'sales/quote', '', '', 1, 'default', 23, '', 0, 8, '0', '', ''),
(12, 'quote_address', 'sales/quote_address', '', 'sales/quote_address', '', '', 1, 'default', 24, '', 0, 8, '0', '', ''),
(13, 'quote_address_rate', 'sales/quote_address_rate', '', 'sales/quote_entity', '', '', 1, 'default', 25, '', 0, 8, '0', '', ''),
(14, 'quote_address_item', 'sales/quote_address_item', '', 'sales/quote_entity', '', '', 1, 'default', 26, '', 0, 8, '0', '', ''),
(15, 'quote_item', 'sales/quote_item', '', 'sales/quote_item', '', '', 1, 'default', 27, '', 0, 8, '0', '', ''),
(16, 'quote_payment', 'sales/quote_payment', '', 'sales/quote_entity', '', '', 1, 'default', 28, '', 0, 8, '0', '', ''),
(17, 'order_status_history', 'sales/order_status_history', '', 'sales/order_entity', '', '', 1, 'default', 29, '', 0, 8, '0', '', ''),
(18, 'invoice', 'sales/order_invoice', '', 'sales/order_entity', '', '', 1, 'default', 30, 'eav/entity_increment_numeric', 1, 8, '0', '', ''),
(20, 'invoice_item', 'sales/order_invoice_item', '', 'sales/order_entity', '', '', 1, 'default', 32, '', 0, 8, '0', '', ''),
(22, 'invoice_shipment', '', '', 'sales/invoice', '', '', 1, 'default', 34, '', 0, 8, '0', '', ''),
(23, 'invoice_comment', 'sales/order_invoice_comment', '', 'sales/order_entity', '', '', 1, 'default', 50, '', 0, 8, '0', '', ''),
(24, 'shipment', 'sales/order_shipment', '', 'sales/order_entity', '', '', 1, 'default', 51, 'eav/entity_increment_numeric', 1, 8, '0', '', ''),
(25, 'shipment_item', 'sales/order_shipment_item', '', 'sales/order_entity', '', '', 1, 'default', 52, '', 0, 8, '0', '', ''),
(26, 'shipment_comment', 'sales/order_shipment_comment', '', 'sales/order_entity', '', '', 1, 'default', 53, '', 0, 8, '0', '', ''),
(27, 'shipment_track', 'sales/order_shipment_track', '', 'sales/order_entity', '', '', 1, 'default', 54, '', 0, 8, '0', '', ''),
(28, 'creditmemo', 'sales/order_creditmemo', '', 'sales/order_entity', '', '', 1, 'default', 55, 'eav/entity_increment_numeric', 1, 8, '0', '', ''),
(29, 'creditmemo_item', 'sales/order_creditmemo_item', '', 'sales/order_entity', '', '', 1, 'default', 56, '', 0, 8, '0', '', ''),
(30, 'creditmemo_comment', 'sales/order_creditmemo_comment', '', 'sales/order_entity', '', '', 1, 'default', 57, '', 0, 8, '0', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_VARCHAR_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ATTRIBUTE_VARCHAR_ATTRIBUTE` (`attribute_id`),
  KEY `FK_ATTRIBUTE_VARCHAR_STORE` (`store_id`),
  KEY `FK_ATTRIBUTE_VARCHAR_ENTITY` (`entity_id`),
  KEY `value_by_attribute` (`attribute_id`,`value`),
  KEY `value_by_entity_type` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Varchar values of attributes' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `eav_entity_varchar`
--


-- --------------------------------------------------------

--
-- 表的结构 `eav_form_element`
--

CREATE TABLE IF NOT EXISTS `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL,
  `fieldset_id` smallint(5) unsigned DEFAULT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_FORM_ATTRIBUTE` (`type_id`,`attribute_id`),
  KEY `IDX_FORM_TYPE` (`type_id`),
  KEY `IDX_FORM_FIELDSET` (`fieldset_id`),
  KEY `IDX_FORM_ATTRIBUTE` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- 转存表中的数据 `eav_form_element`
--

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 0),
(2, 1, 1, 2, 1),
(3, 1, 1, 3, 2),
(4, 2, 2, 1, 0),
(5, 2, 2, 2, 1),
(6, 2, 2, 3, 2),
(7, 3, 3, 9, 0),
(8, 3, 3, 10, 1),
(9, 3, 3, 95, 2),
(10, 3, 3, 17, 3),
(11, 3, 3, 18, 4),
(12, 3, 4, 16, 0),
(13, 3, 4, 15, 1),
(14, 3, 4, 12, 2),
(15, 3, 4, 14, 3),
(16, 3, 4, 11, 4),
(17, 4, NULL, 9, 0),
(18, 4, NULL, 10, 1),
(19, 4, NULL, 95, 2),
(20, 4, NULL, 3, 3),
(21, 4, NULL, 16, 4),
(22, 4, NULL, 15, 5),
(23, 4, NULL, 12, 6),
(24, 4, NULL, 14, 7),
(25, 4, NULL, 11, 8),
(26, 4, NULL, 17, 9),
(27, 4, NULL, 18, 10),
(28, 5, NULL, 9, 0),
(29, 5, NULL, 10, 1),
(30, 5, NULL, 95, 2),
(31, 5, NULL, 3, 3),
(32, 5, NULL, 16, 4),
(33, 5, NULL, 15, 5),
(34, 5, NULL, 12, 6),
(35, 5, NULL, 14, 7),
(36, 5, NULL, 11, 8),
(37, 5, NULL, 17, 9),
(38, 5, NULL, 18, 10),
(39, 6, NULL, 9, 0),
(40, 6, NULL, 10, 1),
(41, 6, NULL, 95, 2),
(42, 6, NULL, 16, 3),
(43, 6, NULL, 15, 4),
(44, 6, NULL, 12, 5),
(45, 6, NULL, 14, 6),
(46, 6, NULL, 11, 7),
(47, 6, NULL, 17, 8),
(48, 6, NULL, 18, 9),
(49, 7, NULL, 9, 0),
(50, 7, NULL, 10, 1),
(51, 7, NULL, 95, 2),
(52, 7, NULL, 16, 3),
(53, 7, NULL, 15, 4),
(54, 7, NULL, 12, 5),
(55, 7, NULL, 14, 6),
(56, 7, NULL, 11, 7),
(57, 7, NULL, 17, 8),
(58, 7, NULL, 18, 9),
(59, 8, 5, 1, 0),
(60, 8, 5, 2, 1),
(61, 8, 5, 3, 2),
(62, 8, 6, 95, 0),
(63, 8, 6, 17, 1),
(64, 8, 6, 16, 2),
(65, 8, 6, 15, 3),
(66, 8, 6, 12, 4),
(67, 8, 6, 14, 5),
(68, 8, 6, 11, 6);

-- --------------------------------------------------------

--
-- 表的结构 `eav_form_fieldset`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL,
  `code` char(64) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_FORM_FIELDSET_CODE` (`type_id`,`code`),
  KEY `IDX_FORM_TYPE` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `eav_form_fieldset`
--

INSERT INTO `eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
(1, 1, 'general', 1),
(2, 2, 'general', 1),
(3, 3, 'contact', 1),
(4, 3, 'address', 2),
(5, 8, 'general', 1),
(6, 8, 'address', 2);

-- --------------------------------------------------------

--
-- 表的结构 `eav_form_fieldset_label`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_FORM_FIELDSET` (`fieldset_id`),
  KEY `IDX_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `eav_form_fieldset_label`
--

INSERT INTO `eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
(1, 0, 'Personal Information'),
(2, 0, 'Account Information'),
(3, 0, 'Contact Information'),
(4, 0, 'Address'),
(5, 0, 'Personal Information'),
(6, 0, 'Address Information');

-- --------------------------------------------------------

--
-- 表的结构 `eav_form_type`
--

CREATE TABLE IF NOT EXISTS `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(64) NOT NULL,
  `label` varchar(255) NOT NULL,
  `is_system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(64) NOT NULL DEFAULT '',
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_FORM_TYPE_CODE` (`code`,`theme`,`store_id`),
  KEY `IDX_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `eav_form_type`
--

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'customer_account_create', 'customer_account_create', 1, '', 0),
(2, 'customer_account_edit', 'customer_account_edit', 1, '', 0),
(3, 'customer_address_edit', 'customer_address_edit', 1, '', 0),
(4, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(5, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(6, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(7, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
(8, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `eav_form_type_entity`
--

CREATE TABLE IF NOT EXISTS `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL,
  `entity_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TYPE` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `eav_form_type_entity`
--

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 1),
(8, 1),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2);

-- --------------------------------------------------------

--
-- 表的结构 `eway_api_debug`
--

CREATE TABLE IF NOT EXISTS `eway_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `eway_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `flo2cash_api_debug`
--

CREATE TABLE IF NOT EXISTS `flo2cash_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  `exception` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `flo2cash_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `gift_message`
--

CREATE TABLE IF NOT EXISTS `gift_message` (
  `gift_message_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(7) unsigned NOT NULL DEFAULT '0',
  `sender` varchar(255) NOT NULL DEFAULT '',
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `gift_message`
--


-- --------------------------------------------------------

--
-- 表的结构 `googlebase_attributes`
--

CREATE TABLE IF NOT EXISTS `googlebase_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `gbase_attribute` varchar(255) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `GOOGLEBASE_ATTRIBUTES_ATTRIBUTE_ID` (`attribute_id`),
  KEY `GOOGLEBASE_ATTRIBUTES_TYPE_ID` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Base Attributes link Product Attributes' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `googlebase_attributes`
--


-- --------------------------------------------------------

--
-- 表的结构 `googlebase_items`
--

CREATE TABLE IF NOT EXISTS `googlebase_items` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL,
  `gbase_item_id` varchar(255) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `published` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `impr` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clicks` smallint(5) unsigned NOT NULL DEFAULT '0',
  `views` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_hidden` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `GOOGLEBASE_ITEMS_PRODUCT_ID` (`product_id`),
  KEY `GOOGLEBASE_ITEMS_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Base Items Products' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `googlebase_items`
--


-- --------------------------------------------------------

--
-- 表的结构 `googlebase_types`
--

CREATE TABLE IF NOT EXISTS `googlebase_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` smallint(5) unsigned NOT NULL,
  `gbase_itemtype` varchar(255) NOT NULL,
  `target_country` varchar(2) NOT NULL DEFAULT 'US',
  PRIMARY KEY (`type_id`),
  KEY `GOOGLEBASE_TYPES_ATTRIBUTE_SET_ID` (`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Base Item Types link Attribute Sets' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `googlebase_types`
--


-- --------------------------------------------------------

--
-- 表的结构 `googlecheckout_api_debug`
--

CREATE TABLE IF NOT EXISTS `googlecheckout_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dir` enum('in','out') DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `googlecheckout_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `googleoptimizer_code`
--

CREATE TABLE IF NOT EXISTS `googleoptimizer_code` (
  `code_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(50) NOT NULL DEFAULT '',
  `store_id` smallint(5) unsigned NOT NULL,
  `control_script` text,
  `tracking_script` text,
  `conversion_script` text,
  `conversion_page` varchar(255) NOT NULL DEFAULT '',
  `additional_data` text,
  PRIMARY KEY (`code_id`),
  KEY `GOOGLEOPTIMIZER_CODE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `googleoptimizer_code`
--


-- --------------------------------------------------------

--
-- 表的结构 `ideal_api_debug`
--

CREATE TABLE IF NOT EXISTS `ideal_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ideal_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `index_event`
--

CREATE TABLE IF NOT EXISTS `index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) NOT NULL,
  `entity` varchar(64) NOT NULL,
  `entity_pk` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `old_data` mediumtext,
  `new_data` mediumtext,
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `IDX_UNIQUE_EVENT` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=167 ;

--
-- 转存表中的数据 `index_event`
--

INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(1, 'save', 'cataloginventory_stock_item', 120, '2010-05-19 09:25:19', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;}'),
(2, 'save', 'catalog_product', 166, '2010-05-19 09:25:20', 'a:6:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(3, 'mass_action', 'catalog_product', NULL, '2010-05-19 09:26:33', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}', 'a:10:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(4, 'delete', 'core_store', 2, '2010-05-27 04:26:07', 'a:0:{}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}'),
(5, 'delete', 'core_store', 3, '2010-05-27 04:26:22', 'a:0:{}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}'),
(6, 'save', 'core_store', 2, '2010-10-05 08:31:43', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}'),
(7, 'save', 'catalog_category', 35, '2010-10-06 13:07:22', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(8, 'save', 'catalog_category', 36, '2010-10-06 13:07:48', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(9, 'save', 'catalog_category', 37, '2010-10-06 13:08:28', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(10, 'save', 'catalog_category', 38, '2010-10-06 13:09:00', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(11, 'save', 'catalog_category', 3, '2010-10-06 13:09:25', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(12, 'save', 'catalog_category', 20, '2010-10-06 13:09:45', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(13, 'save', 'catalog_category', 39, '2010-10-06 13:10:06', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(14, 'save', 'catalog_category', 40, '2010-10-06 13:10:28', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(15, 'save', 'catalog_category', 41, '2010-10-06 13:10:55', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(16, 'save', 'catalog_category', 42, '2010-10-06 13:11:20', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(17, 'save', 'catalog_category', 43, '2010-10-06 13:13:17', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(18, 'save', 'catalog_category', 44, '2010-10-06 13:13:50', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(19, 'save', 'catalog_category', 45, '2010-10-06 13:15:56', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(20, 'save', 'catalog_category', 46, '2010-10-06 13:16:36', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(21, 'save', 'catalog_category', 47, '2010-10-06 13:16:48', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(22, 'save', 'catalog_category', 48, '2010-10-06 13:17:01', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(23, 'save', 'catalog_category', 49, '2010-10-06 13:17:12', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(24, 'save', 'catalog_category', 50, '2010-10-06 13:17:27', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(25, 'save', 'catalog_category', 51, '2010-10-06 13:18:06', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(26, 'save', 'catalog_category', 52, '2010-10-06 13:18:21', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(27, 'save', 'catalog_category', 53, '2010-10-06 13:19:14', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(28, 'save', 'catalog_category', 54, '2010-10-06 13:19:34', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(29, 'save', 'catalog_category', 55, '2010-10-06 13:19:52', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(30, 'save', 'catalog_category', 56, '2010-10-06 14:07:58', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(31, 'save', 'catalog_category', 57, '2010-10-06 14:08:26', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(32, 'save', 'catalog_category', 58, '2010-10-08 07:15:25', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(33, 'save', 'catalog_category', 59, '2010-10-10 06:55:02', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(34, 'save', 'catalog_category', 60, '2010-10-10 06:59:43', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(35, 'save', 'catalog_category', 61, '2010-10-10 06:59:56', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(36, 'save', 'catalog_category', 62, '2010-10-10 07:04:20', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(37, 'save', 'catalog_category', 63, '2010-10-10 07:04:44', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(38, 'save', 'catalog_category', 64, '2010-10-10 07:05:07', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(39, 'save', 'catalog_category', 65, '2010-10-10 07:05:28', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(40, 'delete', 'catalog_product', 16, '2010-10-12 04:06:15', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(41, 'delete', 'catalog_product', 17, '2010-10-12 04:06:18', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(42, 'delete', 'catalog_product', 18, '2010-10-12 04:06:19', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(43, 'delete', 'catalog_product', 19, '2010-10-12 04:06:20', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(44, 'delete', 'catalog_product', 20, '2010-10-12 04:06:22', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(45, 'delete', 'catalog_product', 25, '2010-10-12 04:06:24', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(46, 'delete', 'catalog_product', 26, '2010-10-12 04:06:26', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(47, 'delete', 'catalog_product', 27, '2010-10-12 04:06:29', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(48, 'delete', 'catalog_product', 28, '2010-10-12 04:06:31', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(49, 'delete', 'catalog_product', 29, '2010-10-12 04:06:32', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(50, 'delete', 'catalog_product', 30, '2010-10-12 04:06:34', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(51, 'delete', 'catalog_product', 31, '2010-10-12 04:06:36', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(52, 'delete', 'catalog_product', 32, '2010-10-12 04:06:38', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(53, 'delete', 'catalog_product', 33, '2010-10-12 04:06:39', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(54, 'delete', 'catalog_product', 34, '2010-10-12 04:06:41', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(55, 'delete', 'catalog_product', 35, '2010-10-12 04:06:43', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(56, 'delete', 'catalog_product', 36, '2010-10-12 04:06:44', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(57, 'delete', 'catalog_product', 37, '2010-10-12 04:06:46', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(58, 'delete', 'catalog_product', 38, '2010-10-12 04:06:47', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(59, 'delete', 'catalog_product', 39, '2010-10-12 04:06:49', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(60, 'delete', 'catalog_product', 41, '2010-10-12 04:06:50', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(61, 'delete', 'catalog_product', 42, '2010-10-12 04:06:52', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(62, 'delete', 'catalog_product', 44, '2010-10-12 04:06:53', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(63, 'delete', 'catalog_product', 45, '2010-10-12 04:06:54', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(64, 'delete', 'catalog_product', 46, '2010-10-12 04:06:57', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(65, 'delete', 'catalog_product', 47, '2010-10-12 04:06:58', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(66, 'delete', 'catalog_product', 48, '2010-10-12 04:06:59', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(67, 'delete', 'catalog_product', 49, '2010-10-12 04:07:01', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(68, 'delete', 'catalog_product', 51, '2010-10-12 04:07:03', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(69, 'delete', 'catalog_product', 52, '2010-10-12 04:07:05', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(70, 'delete', 'catalog_product', 53, '2010-10-12 04:07:06', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(71, 'delete', 'catalog_product', 54, '2010-10-12 04:07:08', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(72, 'delete', 'catalog_product', 74, '2010-10-12 04:07:09', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}');
INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(73, 'delete', 'catalog_product', 75, '2010-10-12 04:07:10', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(74, 'delete', 'catalog_product', 79, '2010-10-12 04:07:12', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(75, 'delete', 'catalog_product', 80, '2010-10-12 04:07:13', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(76, 'delete', 'catalog_product', 81, '2010-10-12 04:07:15', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(77, 'delete', 'catalog_product', 82, '2010-10-12 04:07:16', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(78, 'delete', 'catalog_product', 83, '2010-10-12 04:07:18', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(79, 'delete', 'catalog_product', 84, '2010-10-12 04:07:19', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(80, 'delete', 'catalog_product', 85, '2010-10-12 04:07:21', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(81, 'delete', 'catalog_product', 86, '2010-10-12 04:07:22', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(82, 'delete', 'catalog_product', 87, '2010-10-12 04:07:23', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(83, 'delete', 'catalog_product', 88, '2010-10-12 04:07:24', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(84, 'delete', 'catalog_product', 89, '2010-10-12 04:07:25', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(85, 'delete', 'catalog_product', 90, '2010-10-12 04:07:26', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(86, 'delete', 'catalog_product', 91, '2010-10-12 04:07:27', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(87, 'delete', 'catalog_product', 92, '2010-10-12 04:07:28', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(88, 'delete', 'catalog_product', 93, '2010-10-12 04:07:30', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(89, 'delete', 'catalog_product', 94, '2010-10-12 04:07:31', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(90, 'delete', 'catalog_product', 95, '2010-10-12 04:07:33', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(91, 'delete', 'catalog_product', 96, '2010-10-12 04:07:34', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(92, 'delete', 'catalog_product', 97, '2010-10-12 04:07:35', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(93, 'delete', 'catalog_product', 98, '2010-10-12 04:07:37', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(94, 'delete', 'catalog_product', 99, '2010-10-12 04:07:38', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(95, 'delete', 'catalog_product', 100, '2010-10-12 04:07:39', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(96, 'delete', 'catalog_product', 101, '2010-10-12 04:07:41', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(97, 'delete', 'catalog_product', 102, '2010-10-12 04:07:42', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(98, 'delete', 'catalog_product', 103, '2010-10-12 04:07:43', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(99, 'delete', 'catalog_product', 104, '2010-10-12 04:07:44', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(100, 'delete', 'catalog_product', 105, '2010-10-12 04:07:45', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(101, 'delete', 'catalog_product', 106, '2010-10-12 04:07:47', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(102, 'delete', 'catalog_product', 107, '2010-10-12 04:07:48', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(103, 'delete', 'catalog_product', 108, '2010-10-12 04:07:50', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(104, 'delete', 'catalog_product', 109, '2010-10-12 04:07:51', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(105, 'delete', 'catalog_product', 110, '2010-10-12 04:07:52', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(106, 'delete', 'catalog_product', 111, '2010-10-12 04:07:53', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(107, 'delete', 'catalog_product', 112, '2010-10-12 04:07:54', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(108, 'delete', 'catalog_product', 113, '2010-10-12 04:07:56', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(109, 'delete', 'catalog_product', 114, '2010-10-12 04:07:57', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(110, 'delete', 'catalog_product', 115, '2010-10-12 04:07:58', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(111, 'delete', 'catalog_product', 117, '2010-10-12 04:07:59', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(112, 'delete', 'catalog_product', 118, '2010-10-12 04:08:01', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(113, 'delete', 'catalog_product', 119, '2010-10-12 04:08:03', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(114, 'delete', 'catalog_product', 120, '2010-10-12 04:08:06', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(115, 'delete', 'catalog_product', 121, '2010-10-12 04:08:07', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(116, 'delete', 'catalog_product', 122, '2010-10-12 04:08:08', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(117, 'delete', 'catalog_product', 123, '2010-10-12 04:08:10', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(118, 'delete', 'catalog_product', 124, '2010-10-12 04:08:11', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(119, 'delete', 'catalog_product', 125, '2010-10-12 04:08:13', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(120, 'delete', 'catalog_product', 126, '2010-10-12 04:08:15', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(121, 'delete', 'catalog_product', 127, '2010-10-12 04:08:16', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(122, 'delete', 'catalog_product', 128, '2010-10-12 04:08:17', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(123, 'delete', 'catalog_product', 129, '2010-10-12 04:08:18', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(124, 'delete', 'catalog_product', 130, '2010-10-12 04:08:19', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(125, 'delete', 'catalog_product', 131, '2010-10-12 04:08:20', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(126, 'delete', 'catalog_product', 132, '2010-10-12 04:08:21', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(127, 'delete', 'catalog_product', 133, '2010-10-12 04:08:22', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(128, 'delete', 'catalog_product', 134, '2010-10-12 04:08:24', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(129, 'delete', 'catalog_product', 135, '2010-10-12 04:08:26', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(130, 'delete', 'catalog_product', 137, '2010-10-12 04:08:27', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(131, 'delete', 'catalog_product', 138, '2010-10-12 04:08:28', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}');
INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(132, 'delete', 'catalog_product', 139, '2010-10-12 04:08:30', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(133, 'delete', 'catalog_product', 140, '2010-10-12 04:08:31', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(134, 'delete', 'catalog_product', 141, '2010-10-12 04:08:32', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(135, 'delete', 'catalog_product', 142, '2010-10-12 04:08:34', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(136, 'delete', 'catalog_product', 143, '2010-10-12 04:08:35', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(137, 'delete', 'catalog_product', 144, '2010-10-12 04:08:37', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(138, 'delete', 'catalog_product', 145, '2010-10-12 04:08:38', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(139, 'delete', 'catalog_product', 146, '2010-10-12 04:08:39', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(140, 'delete', 'catalog_product', 147, '2010-10-12 04:08:41', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(141, 'delete', 'catalog_product', 148, '2010-10-12 04:08:42', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(142, 'delete', 'catalog_product', 149, '2010-10-12 04:08:44', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(143, 'delete', 'catalog_product', 150, '2010-10-12 04:08:45', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(144, 'delete', 'catalog_product', 151, '2010-10-12 04:08:46', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(145, 'delete', 'catalog_product', 152, '2010-10-12 04:08:48', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(146, 'delete', 'catalog_product', 153, '2010-10-12 04:08:49', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(147, 'delete', 'catalog_product', 154, '2010-10-12 04:08:51', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(148, 'delete', 'catalog_product', 155, '2010-10-12 04:08:52', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(149, 'delete', 'catalog_product', 156, '2010-10-12 04:08:54', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(150, 'delete', 'catalog_product', 157, '2010-10-12 04:08:55', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(151, 'delete', 'catalog_product', 158, '2010-10-12 04:08:56', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(152, 'delete', 'catalog_product', 159, '2010-10-12 04:08:57', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(153, 'delete', 'catalog_product', 160, '2010-10-12 04:08:59', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(154, 'delete', 'catalog_product', 161, '2010-10-12 04:09:00', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(155, 'delete', 'catalog_product', 162, '2010-10-12 04:09:01', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(156, 'delete', 'catalog_product', 163, '2010-10-12 04:09:03', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(157, 'delete', 'catalog_product', 164, '2010-10-12 04:09:04', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(158, 'delete', 'catalog_product', 165, '2010-10-12 04:09:05', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(159, 'save', 'catalog_category', 66, '2010-10-12 06:48:09', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(160, 'save', 'catalog_category', 67, '2010-10-12 06:48:40', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(161, 'save', 'catalog_category', 68, '2010-10-12 06:49:09', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(162, 'save', 'cataloginventory_stock_item', 121, '2010-10-12 07:24:00', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(163, 'save', 'catalog_product', 167, '2010-10-12 07:24:01', 'a:8:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(164, 'delete', 'catalog_product', 167, '2010-10-12 07:51:25', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:11:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(165, 'save', 'cataloginventory_stock_item', 122, '2010-10-12 07:59:39', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(166, 'save', 'catalog_product', 168, '2010-10-12 07:59:41', 'a:8:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}');

-- --------------------------------------------------------

--
-- 表的结构 `index_process`
--

CREATE TABLE IF NOT EXISTS `index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `indexer_code` varchar(32) NOT NULL,
  `status` enum('pending','working','require_reindex') NOT NULL DEFAULT 'pending',
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `mode` enum('real_time','manual') NOT NULL DEFAULT 'real_time',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `IDX_CODE` (`indexer_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `index_process`
--

INSERT INTO `index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
(1, 'catalog_product_attribute', 'pending', '2010-05-27 04:23:19', '2010-05-27 04:23:20', 'real_time'),
(2, 'catalog_product_price', 'pending', '2010-05-27 04:23:20', '2010-05-27 04:23:23', 'real_time'),
(3, 'catalog_url', 'require_reindex', '2010-05-27 04:23:23', '2010-05-27 04:24:06', 'real_time'),
(4, 'catalog_product_flat', 'require_reindex', '2010-05-27 04:24:06', '2010-05-27 04:24:10', 'real_time'),
(5, 'catalog_category_flat', 'pending', '2010-05-27 04:24:10', '2010-05-27 04:24:11', 'real_time'),
(6, 'catalog_category_product', 'require_reindex', '2010-05-27 04:24:11', '2010-05-27 04:24:13', 'real_time'),
(7, 'catalogsearch_fulltext', 'require_reindex', '2010-05-27 04:28:50', '2010-05-27 04:28:51', 'real_time'),
(8, 'cataloginventory_stock', 'require_reindex', '2010-05-27 04:23:19', '2010-05-27 04:23:19', 'real_time'),
(9, 'tag_summary', 'require_reindex', NULL, NULL, 'real_time');

-- --------------------------------------------------------

--
-- 表的结构 `index_process_event`
--

CREATE TABLE IF NOT EXISTS `index_process_event` (
  `process_id` int(10) unsigned NOT NULL,
  `event_id` bigint(20) unsigned NOT NULL,
  `status` enum('new','working','done','error') NOT NULL DEFAULT 'new',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `FK_INDEX_EVNT_PROCESS` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `index_process_event`
--

INSERT INTO `index_process_event` (`process_id`, `event_id`, `status`) VALUES
(1, 2, 'done'),
(1, 3, 'done'),
(1, 40, 'done'),
(1, 41, 'done'),
(1, 42, 'done'),
(1, 43, 'done'),
(1, 44, 'done'),
(1, 45, 'done'),
(1, 46, 'done'),
(1, 47, 'done'),
(1, 48, 'done'),
(1, 49, 'done'),
(1, 50, 'done'),
(1, 51, 'done'),
(1, 52, 'done'),
(1, 53, 'done'),
(1, 54, 'done'),
(1, 55, 'done'),
(1, 56, 'done'),
(1, 57, 'done'),
(1, 58, 'done'),
(1, 59, 'done'),
(1, 60, 'done'),
(1, 61, 'done'),
(1, 62, 'done'),
(1, 63, 'done'),
(1, 64, 'done'),
(1, 65, 'done'),
(1, 66, 'done'),
(1, 67, 'done'),
(1, 68, 'done'),
(1, 69, 'done'),
(1, 70, 'done'),
(1, 71, 'done'),
(1, 72, 'done'),
(1, 73, 'done'),
(1, 74, 'done'),
(1, 75, 'done'),
(1, 76, 'done'),
(1, 77, 'done'),
(1, 78, 'done'),
(1, 79, 'done'),
(1, 80, 'done'),
(1, 81, 'done'),
(1, 82, 'done'),
(1, 83, 'done'),
(1, 84, 'done'),
(1, 85, 'done'),
(1, 86, 'done'),
(1, 87, 'done'),
(1, 88, 'done'),
(1, 89, 'done'),
(1, 90, 'done'),
(1, 91, 'done'),
(1, 92, 'done'),
(1, 93, 'done'),
(1, 94, 'done'),
(1, 95, 'done'),
(1, 96, 'done'),
(1, 97, 'done'),
(1, 98, 'done'),
(1, 99, 'done'),
(1, 100, 'done'),
(1, 101, 'done'),
(1, 102, 'done'),
(1, 103, 'done'),
(1, 104, 'done'),
(1, 105, 'done'),
(1, 106, 'done'),
(1, 107, 'done'),
(1, 108, 'done'),
(1, 109, 'done'),
(1, 110, 'done'),
(1, 111, 'done'),
(1, 112, 'done'),
(1, 113, 'done'),
(1, 114, 'done'),
(1, 115, 'done'),
(1, 116, 'done'),
(1, 117, 'done'),
(1, 118, 'done'),
(1, 119, 'done'),
(1, 120, 'done'),
(1, 121, 'done'),
(1, 122, 'done'),
(1, 123, 'done'),
(1, 124, 'done'),
(1, 125, 'done'),
(1, 126, 'done'),
(1, 127, 'done'),
(1, 128, 'done'),
(1, 129, 'done'),
(1, 130, 'done'),
(1, 131, 'done'),
(1, 132, 'done'),
(1, 133, 'done'),
(1, 134, 'done'),
(1, 135, 'done'),
(1, 136, 'done'),
(1, 137, 'done'),
(1, 138, 'done'),
(1, 139, 'done'),
(1, 140, 'done'),
(1, 141, 'done'),
(1, 142, 'done'),
(1, 143, 'done'),
(1, 144, 'done'),
(1, 145, 'done'),
(1, 146, 'done'),
(1, 147, 'done'),
(1, 148, 'done'),
(1, 149, 'done'),
(1, 150, 'done'),
(1, 151, 'done'),
(1, 152, 'done'),
(1, 153, 'done'),
(1, 154, 'done'),
(1, 155, 'done'),
(1, 156, 'done'),
(1, 157, 'done'),
(1, 158, 'done'),
(1, 163, 'done'),
(1, 164, 'done'),
(1, 166, 'done'),
(2, 2, 'done'),
(2, 3, 'done'),
(2, 40, 'done'),
(2, 41, 'done'),
(2, 42, 'done'),
(2, 43, 'done'),
(2, 44, 'done'),
(2, 45, 'done'),
(2, 46, 'done'),
(2, 47, 'done'),
(2, 48, 'done'),
(2, 49, 'done'),
(2, 50, 'done'),
(2, 51, 'done'),
(2, 52, 'done'),
(2, 53, 'done'),
(2, 54, 'done'),
(2, 55, 'done'),
(2, 56, 'done'),
(2, 57, 'done'),
(2, 58, 'done'),
(2, 59, 'done'),
(2, 60, 'done'),
(2, 61, 'done'),
(2, 62, 'done'),
(2, 63, 'done'),
(2, 64, 'done'),
(2, 65, 'done'),
(2, 66, 'done'),
(2, 67, 'done'),
(2, 68, 'done'),
(2, 69, 'done'),
(2, 70, 'done'),
(2, 71, 'done'),
(2, 72, 'done'),
(2, 73, 'done'),
(2, 74, 'done'),
(2, 75, 'done'),
(2, 76, 'done'),
(2, 77, 'done'),
(2, 78, 'done'),
(2, 79, 'done'),
(2, 80, 'done'),
(2, 81, 'done'),
(2, 82, 'done'),
(2, 83, 'done'),
(2, 84, 'done'),
(2, 85, 'done'),
(2, 86, 'done'),
(2, 87, 'done'),
(2, 88, 'done'),
(2, 89, 'done'),
(2, 90, 'done'),
(2, 91, 'done'),
(2, 92, 'done'),
(2, 93, 'done'),
(2, 94, 'done'),
(2, 95, 'done'),
(2, 96, 'done'),
(2, 97, 'done'),
(2, 98, 'done'),
(2, 99, 'done'),
(2, 100, 'done'),
(2, 101, 'done'),
(2, 102, 'done'),
(2, 103, 'done'),
(2, 104, 'done'),
(2, 105, 'done'),
(2, 106, 'done'),
(2, 107, 'done'),
(2, 108, 'done'),
(2, 109, 'done'),
(2, 110, 'done'),
(2, 111, 'done'),
(2, 112, 'done'),
(2, 113, 'done'),
(2, 114, 'done'),
(2, 115, 'done'),
(2, 116, 'done'),
(2, 117, 'done'),
(2, 118, 'done'),
(2, 119, 'done'),
(2, 120, 'done'),
(2, 121, 'done'),
(2, 122, 'done'),
(2, 123, 'done'),
(2, 124, 'done'),
(2, 125, 'done'),
(2, 126, 'done'),
(2, 127, 'done'),
(2, 128, 'done'),
(2, 129, 'done'),
(2, 130, 'done'),
(2, 131, 'done'),
(2, 132, 'done'),
(2, 133, 'done'),
(2, 134, 'done'),
(2, 135, 'done'),
(2, 136, 'done'),
(2, 137, 'done'),
(2, 138, 'done'),
(2, 139, 'done'),
(2, 140, 'done'),
(2, 141, 'done'),
(2, 142, 'done'),
(2, 143, 'done'),
(2, 144, 'done'),
(2, 145, 'done'),
(2, 146, 'done'),
(2, 147, 'done'),
(2, 148, 'done'),
(2, 149, 'done'),
(2, 150, 'done'),
(2, 151, 'done'),
(2, 152, 'done'),
(2, 153, 'done'),
(2, 154, 'done'),
(2, 155, 'done'),
(2, 156, 'done'),
(2, 157, 'done'),
(2, 158, 'done'),
(2, 163, 'done'),
(2, 164, 'done'),
(2, 166, 'done'),
(3, 2, 'done'),
(3, 6, 'done'),
(3, 7, 'done'),
(3, 8, 'done'),
(3, 9, 'done'),
(3, 10, 'done'),
(3, 11, 'done'),
(3, 12, 'done'),
(3, 13, 'done'),
(3, 14, 'done'),
(3, 15, 'done'),
(3, 16, 'done'),
(3, 17, 'done'),
(3, 18, 'done'),
(3, 19, 'done'),
(3, 20, 'done'),
(3, 21, 'done'),
(3, 22, 'done'),
(3, 23, 'done'),
(3, 24, 'done'),
(3, 25, 'done'),
(3, 26, 'done'),
(3, 27, 'done'),
(3, 28, 'done'),
(3, 29, 'done'),
(3, 30, 'done'),
(3, 31, 'done'),
(3, 32, 'done'),
(3, 33, 'done'),
(3, 34, 'done'),
(3, 35, 'done'),
(3, 36, 'done'),
(3, 37, 'done'),
(3, 38, 'done'),
(3, 39, 'done'),
(3, 159, 'done'),
(3, 160, 'done'),
(3, 161, 'done'),
(3, 163, 'done'),
(3, 166, 'done'),
(4, 2, 'done'),
(4, 4, 'done'),
(4, 5, 'done'),
(4, 6, 'done'),
(4, 163, 'done'),
(4, 166, 'done'),
(6, 2, 'done'),
(6, 3, 'done'),
(6, 6, 'done'),
(6, 7, 'done'),
(6, 8, 'done'),
(6, 9, 'done'),
(6, 10, 'done'),
(6, 11, 'done'),
(6, 12, 'done'),
(6, 13, 'done'),
(6, 14, 'done'),
(6, 15, 'done'),
(6, 16, 'done'),
(6, 17, 'done'),
(6, 18, 'done'),
(6, 19, 'done'),
(6, 20, 'done'),
(6, 21, 'done'),
(6, 22, 'done'),
(6, 23, 'done'),
(6, 24, 'done'),
(6, 25, 'done'),
(6, 26, 'done'),
(6, 27, 'done'),
(6, 28, 'done'),
(6, 29, 'done'),
(6, 30, 'done'),
(6, 31, 'done'),
(6, 32, 'done'),
(6, 33, 'done'),
(6, 34, 'done'),
(6, 35, 'done'),
(6, 36, 'done'),
(6, 37, 'done'),
(6, 38, 'done'),
(6, 39, 'done'),
(6, 159, 'done'),
(6, 160, 'done'),
(6, 161, 'done'),
(6, 163, 'done'),
(6, 166, 'done'),
(7, 2, 'done'),
(7, 3, 'done'),
(7, 4, 'done'),
(7, 5, 'done'),
(7, 6, 'done'),
(7, 40, 'done'),
(7, 41, 'done'),
(7, 42, 'done'),
(7, 43, 'done'),
(7, 44, 'done'),
(7, 45, 'done'),
(7, 46, 'done'),
(7, 47, 'done'),
(7, 48, 'done'),
(7, 49, 'done'),
(7, 50, 'done'),
(7, 51, 'done'),
(7, 52, 'done'),
(7, 53, 'done'),
(7, 54, 'done'),
(7, 55, 'done'),
(7, 56, 'done'),
(7, 57, 'done'),
(7, 58, 'done'),
(7, 59, 'done'),
(7, 60, 'done'),
(7, 61, 'done'),
(7, 62, 'done'),
(7, 63, 'done'),
(7, 64, 'done'),
(7, 65, 'done'),
(7, 66, 'done'),
(7, 67, 'done'),
(7, 68, 'done'),
(7, 69, 'done'),
(7, 70, 'done'),
(7, 71, 'done'),
(7, 72, 'done'),
(7, 73, 'done'),
(7, 74, 'done'),
(7, 75, 'done'),
(7, 76, 'done'),
(7, 77, 'done'),
(7, 78, 'done'),
(7, 79, 'done'),
(7, 80, 'done'),
(7, 81, 'done'),
(7, 82, 'done'),
(7, 83, 'done'),
(7, 84, 'done'),
(7, 85, 'done'),
(7, 86, 'done'),
(7, 87, 'done'),
(7, 88, 'done'),
(7, 89, 'done'),
(7, 90, 'done'),
(7, 91, 'done'),
(7, 92, 'done'),
(7, 93, 'done'),
(7, 94, 'done'),
(7, 95, 'done'),
(7, 96, 'done'),
(7, 97, 'done'),
(7, 98, 'done'),
(7, 99, 'done'),
(7, 100, 'done'),
(7, 101, 'done'),
(7, 102, 'done'),
(7, 103, 'done'),
(7, 104, 'done'),
(7, 105, 'done'),
(7, 106, 'done'),
(7, 107, 'done'),
(7, 108, 'done'),
(7, 109, 'done'),
(7, 110, 'done'),
(7, 111, 'done'),
(7, 112, 'done'),
(7, 113, 'done'),
(7, 114, 'done'),
(7, 115, 'done'),
(7, 116, 'done'),
(7, 117, 'done'),
(7, 118, 'done'),
(7, 119, 'done'),
(7, 120, 'done'),
(7, 121, 'done'),
(7, 122, 'done'),
(7, 123, 'done'),
(7, 124, 'done'),
(7, 125, 'done'),
(7, 126, 'done'),
(7, 127, 'done'),
(7, 128, 'done'),
(7, 129, 'done'),
(7, 130, 'done'),
(7, 131, 'done'),
(7, 132, 'done'),
(7, 133, 'done'),
(7, 134, 'done'),
(7, 135, 'done'),
(7, 136, 'done'),
(7, 137, 'done'),
(7, 138, 'done'),
(7, 139, 'done'),
(7, 140, 'done'),
(7, 141, 'done'),
(7, 142, 'done'),
(7, 143, 'done'),
(7, 144, 'done'),
(7, 145, 'done'),
(7, 146, 'done'),
(7, 147, 'done'),
(7, 148, 'done'),
(7, 149, 'done'),
(7, 150, 'done'),
(7, 151, 'done'),
(7, 152, 'done'),
(7, 153, 'done'),
(7, 154, 'done'),
(7, 155, 'done'),
(7, 156, 'done'),
(7, 157, 'done'),
(7, 158, 'done'),
(7, 163, 'done'),
(7, 164, 'done'),
(7, 166, 'done'),
(8, 1, 'done'),
(8, 2, 'done'),
(8, 3, 'done'),
(8, 6, 'done'),
(8, 40, 'done'),
(8, 41, 'done'),
(8, 42, 'done'),
(8, 43, 'done'),
(8, 44, 'done'),
(8, 45, 'done'),
(8, 46, 'done'),
(8, 47, 'done'),
(8, 48, 'done'),
(8, 49, 'done'),
(8, 50, 'done'),
(8, 51, 'done'),
(8, 52, 'done'),
(8, 53, 'done'),
(8, 54, 'done'),
(8, 55, 'done'),
(8, 56, 'done'),
(8, 57, 'done'),
(8, 58, 'done'),
(8, 59, 'done'),
(8, 60, 'done'),
(8, 61, 'done'),
(8, 62, 'done'),
(8, 63, 'done'),
(8, 64, 'done'),
(8, 65, 'done'),
(8, 66, 'done'),
(8, 67, 'done'),
(8, 68, 'done'),
(8, 69, 'done'),
(8, 70, 'done'),
(8, 71, 'done'),
(8, 72, 'done'),
(8, 73, 'done'),
(8, 74, 'done'),
(8, 75, 'done'),
(8, 76, 'done'),
(8, 77, 'done'),
(8, 78, 'done'),
(8, 79, 'done'),
(8, 80, 'done'),
(8, 81, 'done'),
(8, 82, 'done'),
(8, 83, 'done'),
(8, 84, 'done'),
(8, 85, 'done'),
(8, 86, 'done'),
(8, 87, 'done'),
(8, 88, 'done'),
(8, 89, 'done'),
(8, 90, 'done'),
(8, 91, 'done'),
(8, 92, 'done'),
(8, 93, 'done'),
(8, 94, 'done'),
(8, 95, 'done'),
(8, 96, 'done'),
(8, 97, 'done'),
(8, 98, 'done'),
(8, 99, 'done'),
(8, 100, 'done'),
(8, 101, 'done'),
(8, 102, 'done'),
(8, 103, 'done'),
(8, 104, 'done'),
(8, 105, 'done'),
(8, 106, 'done'),
(8, 107, 'done'),
(8, 108, 'done'),
(8, 109, 'done'),
(8, 110, 'done'),
(8, 111, 'done'),
(8, 112, 'done'),
(8, 113, 'done'),
(8, 114, 'done'),
(8, 115, 'done'),
(8, 116, 'done'),
(8, 117, 'done'),
(8, 118, 'done'),
(8, 119, 'done'),
(8, 120, 'done'),
(8, 121, 'done'),
(8, 122, 'done'),
(8, 123, 'done'),
(8, 124, 'done'),
(8, 125, 'done'),
(8, 126, 'done'),
(8, 127, 'done'),
(8, 128, 'done'),
(8, 129, 'done'),
(8, 130, 'done'),
(8, 131, 'done'),
(8, 132, 'done'),
(8, 133, 'done'),
(8, 134, 'done'),
(8, 135, 'done'),
(8, 136, 'done'),
(8, 137, 'done'),
(8, 138, 'done'),
(8, 139, 'done'),
(8, 140, 'done'),
(8, 141, 'done'),
(8, 142, 'done'),
(8, 143, 'done'),
(8, 144, 'done'),
(8, 145, 'done'),
(8, 146, 'done'),
(8, 147, 'done'),
(8, 148, 'done'),
(8, 149, 'done'),
(8, 150, 'done'),
(8, 151, 'done'),
(8, 152, 'done'),
(8, 153, 'done'),
(8, 154, 'done'),
(8, 155, 'done'),
(8, 156, 'done'),
(8, 157, 'done'),
(8, 158, 'done'),
(8, 162, 'done'),
(8, 163, 'done'),
(8, 164, 'done'),
(8, 165, 'done'),
(8, 166, 'done'),
(9, 2, 'done'),
(9, 40, 'done'),
(9, 41, 'done'),
(9, 42, 'done'),
(9, 43, 'done'),
(9, 44, 'done'),
(9, 45, 'done'),
(9, 46, 'done'),
(9, 47, 'done'),
(9, 48, 'done'),
(9, 49, 'done'),
(9, 50, 'done'),
(9, 51, 'done'),
(9, 52, 'done'),
(9, 53, 'done'),
(9, 54, 'done'),
(9, 55, 'done'),
(9, 56, 'done'),
(9, 57, 'done'),
(9, 58, 'done'),
(9, 59, 'done'),
(9, 60, 'done'),
(9, 61, 'done'),
(9, 62, 'done'),
(9, 63, 'done'),
(9, 64, 'done'),
(9, 65, 'done'),
(9, 66, 'done'),
(9, 67, 'done'),
(9, 68, 'done'),
(9, 69, 'done'),
(9, 70, 'done'),
(9, 71, 'done'),
(9, 72, 'done'),
(9, 73, 'done'),
(9, 74, 'done'),
(9, 75, 'done'),
(9, 76, 'done'),
(9, 77, 'done'),
(9, 78, 'done'),
(9, 79, 'done'),
(9, 80, 'done'),
(9, 81, 'done'),
(9, 82, 'done'),
(9, 83, 'done'),
(9, 84, 'done'),
(9, 85, 'done'),
(9, 86, 'done'),
(9, 87, 'done'),
(9, 88, 'done'),
(9, 89, 'done'),
(9, 90, 'done'),
(9, 91, 'done'),
(9, 92, 'done'),
(9, 93, 'done'),
(9, 94, 'done'),
(9, 95, 'done'),
(9, 96, 'done'),
(9, 97, 'done'),
(9, 98, 'done'),
(9, 99, 'done'),
(9, 100, 'done'),
(9, 101, 'done'),
(9, 102, 'done'),
(9, 103, 'done'),
(9, 104, 'done'),
(9, 105, 'done'),
(9, 106, 'done'),
(9, 107, 'done'),
(9, 108, 'done'),
(9, 109, 'done'),
(9, 110, 'done'),
(9, 111, 'done'),
(9, 112, 'done'),
(9, 113, 'done'),
(9, 114, 'done'),
(9, 115, 'done'),
(9, 116, 'done'),
(9, 117, 'done'),
(9, 118, 'done'),
(9, 119, 'done'),
(9, 120, 'done'),
(9, 121, 'done'),
(9, 122, 'done'),
(9, 123, 'done'),
(9, 124, 'done'),
(9, 125, 'done'),
(9, 126, 'done'),
(9, 127, 'done'),
(9, 128, 'done'),
(9, 129, 'done'),
(9, 130, 'done'),
(9, 131, 'done'),
(9, 132, 'done'),
(9, 133, 'done'),
(9, 134, 'done'),
(9, 135, 'done'),
(9, 136, 'done'),
(9, 137, 'done'),
(9, 138, 'done'),
(9, 139, 'done'),
(9, 140, 'done'),
(9, 141, 'done'),
(9, 142, 'done'),
(9, 143, 'done'),
(9, 144, 'done'),
(9, 145, 'done'),
(9, 146, 'done'),
(9, 147, 'done'),
(9, 148, 'done'),
(9, 149, 'done'),
(9, 150, 'done'),
(9, 151, 'done'),
(9, 152, 'done'),
(9, 153, 'done'),
(9, 154, 'done'),
(9, 155, 'done'),
(9, 156, 'done'),
(9, 157, 'done'),
(9, 158, 'done'),
(9, 163, 'done'),
(9, 164, 'done'),
(9, 166, 'done');

-- --------------------------------------------------------

--
-- 表的结构 `log_customer`
--

CREATE TABLE IF NOT EXISTS `log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_id` bigint(20) unsigned DEFAULT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `login_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_at` datetime DEFAULT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `IDX_VISITOR` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customers log information' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `log_customer`
--


-- --------------------------------------------------------

--
-- 表的结构 `log_quote`
--

CREATE TABLE IF NOT EXISTS `log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `visitor_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quote log data';

--
-- 转存表中的数据 `log_quote`
--


-- --------------------------------------------------------

--
-- 表的结构 `log_summary`
--

CREATE TABLE IF NOT EXISTS `log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL,
  `type_id` smallint(5) unsigned DEFAULT NULL,
  `visitor_count` int(11) NOT NULL DEFAULT '0',
  `customer_count` int(11) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Summary log information' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `log_summary`
--


-- --------------------------------------------------------

--
-- 表的结构 `log_summary_type`
--

CREATE TABLE IF NOT EXISTS `log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_code` varchar(64) NOT NULL DEFAULT '',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0',
  `period_type` enum('MINUTE','HOUR','DAY','WEEK','MONTH') NOT NULL DEFAULT 'MINUTE',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Type of summary information' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `log_summary_type`
--

INSERT INTO `log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- 表的结构 `log_url`
--

CREATE TABLE IF NOT EXISTS `log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `visitor_id` bigint(20) unsigned DEFAULT NULL,
  `visit_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`url_id`),
  KEY `IDX_VISITOR` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='URL visiting history';

--
-- 转存表中的数据 `log_url`
--

INSERT INTO `log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
(1, 1, '2008-12-27 20:52:03'),
(2, 2, '2010-05-19 09:22:55'),
(3, 2, '2010-05-19 09:22:57'),
(4, 2, '2010-05-19 09:23:00'),
(5, 2, '2010-05-19 09:25:31'),
(6, 2, '2010-05-19 09:25:35'),
(7, 2, '2010-05-19 09:26:16'),
(8, 2, '2010-05-19 09:26:41'),
(9, 2, '2010-05-19 09:27:12'),
(10, 2, '2010-05-19 09:27:15'),
(11, 2, '2010-05-19 09:27:29'),
(12, 2, '2010-05-19 09:27:53'),
(13, 2, '2010-05-19 09:27:56'),
(14, 2, '2010-05-19 09:27:58'),
(15, 2, '2010-05-19 09:28:00'),
(16, 2, '2010-05-19 09:30:35'),
(17, 2, '2010-05-19 09:30:41'),
(18, 2, '2010-05-19 09:30:54'),
(19, 3, '2010-05-26 02:42:59'),
(20, 4, '2010-05-27 04:13:38'),
(21, 5, '2010-05-27 04:13:40'),
(22, 5, '2010-05-27 04:35:37'),
(23, 5, '2010-05-27 04:35:41'),
(24, 5, '2010-05-27 04:36:06'),
(25, 5, '2010-05-27 04:37:16'),
(26, 5, '2010-05-27 04:37:37'),
(27, 5, '2010-05-27 04:37:56'),
(28, 5, '2010-05-27 04:38:35'),
(29, 5, '2010-05-27 04:38:57'),
(30, 5, '2010-05-27 04:39:03'),
(31, 5, '2010-05-27 04:39:10'),
(32, 5, '2010-05-27 04:39:49'),
(33, 5, '2010-05-27 05:01:14'),
(34, 6, '2010-05-27 07:42:58'),
(35, 6, '2010-05-27 07:43:03'),
(36, 6, '2010-05-27 07:44:22'),
(37, 7, '2010-05-27 10:28:56'),
(38, 8, '2010-05-27 10:28:57'),
(39, 9, '2010-06-08 04:45:38'),
(40, 9, '2010-06-08 04:47:51'),
(41, 9, '2010-06-08 04:47:53'),
(42, 10, '2010-06-08 06:38:37'),
(43, 11, '2010-06-08 10:01:16'),
(44, 12, '2010-10-05 08:23:13'),
(45, 12, '2010-10-05 08:23:25'),
(46, 13, '2010-10-05 08:26:37'),
(47, 13, '2010-10-05 08:39:01'),
(48, 13, '2010-10-05 08:39:04'),
(49, 13, '2010-10-05 08:39:04'),
(50, 13, '2010-10-05 08:39:08'),
(51, 13, '2010-10-05 08:42:35'),
(52, 14, '2010-10-06 04:13:26'),
(53, 14, '2010-10-06 04:29:52'),
(54, 14, '2010-10-06 04:33:28'),
(55, 14, '2010-10-06 04:33:33'),
(56, 14, '2010-10-06 04:33:36'),
(57, 14, '2010-10-06 04:35:54'),
(58, 14, '2010-10-06 04:35:56'),
(59, 14, '2010-10-06 04:36:09'),
(60, 14, '2010-10-06 04:41:40'),
(61, 14, '2010-10-06 04:43:53'),
(62, 14, '2010-10-06 04:45:41'),
(63, 15, '2010-10-08 05:25:55'),
(64, 15, '2010-10-08 05:31:45'),
(65, 15, '2010-10-08 05:31:46'),
(66, 15, '2010-10-08 05:31:55'),
(67, 15, '2010-10-08 05:36:35'),
(68, 15, '2010-10-08 05:46:11'),
(69, 15, '2010-10-08 05:46:11'),
(70, 15, '2010-10-08 05:46:14'),
(71, 15, '2010-10-08 05:46:17'),
(72, 15, '2010-10-08 05:46:17'),
(73, 15, '2010-10-08 05:46:43'),
(74, 15, '2010-10-08 05:46:43'),
(75, 15, '2010-10-08 05:49:07'),
(76, 15, '2010-10-08 05:49:07'),
(77, 15, '2010-10-08 05:49:11'),
(78, 15, '2010-10-08 05:49:11'),
(79, 15, '2010-10-08 05:49:14'),
(80, 15, '2010-10-08 05:49:15'),
(81, 15, '2010-10-08 05:51:50'),
(82, 15, '2010-10-08 05:51:50'),
(83, 15, '2010-10-08 05:51:54'),
(84, 15, '2010-10-08 05:51:57'),
(85, 15, '2010-10-08 05:52:02'),
(86, 15, '2010-10-08 05:55:30'),
(87, 15, '2010-10-08 05:55:45'),
(88, 15, '2010-10-08 05:56:55'),
(89, 15, '2010-10-08 05:56:58'),
(90, 15, '2010-10-08 05:57:02'),
(91, 15, '2010-10-08 05:57:03'),
(92, 15, '2010-10-08 05:57:35'),
(93, 15, '2010-10-08 05:57:40'),
(94, 15, '2010-10-08 05:57:42'),
(95, 15, '2010-10-08 05:57:43'),
(96, 15, '2010-10-08 05:58:01'),
(97, 15, '2010-10-08 05:58:12'),
(98, 15, '2010-10-08 05:58:17'),
(99, 15, '2010-10-08 05:58:20'),
(100, 15, '2010-10-08 05:58:44'),
(101, 15, '2010-10-08 05:58:46'),
(102, 15, '2010-10-08 05:58:51'),
(103, 15, '2010-10-08 05:58:53'),
(104, 15, '2010-10-08 05:58:56'),
(105, 15, '2010-10-08 05:59:15'),
(106, 15, '2010-10-08 05:59:17'),
(107, 15, '2010-10-08 05:59:21'),
(108, 15, '2010-10-08 05:59:21'),
(109, 15, '2010-10-08 06:01:00'),
(110, 15, '2010-10-08 06:01:02'),
(111, 15, '2010-10-08 06:01:02'),
(112, 15, '2010-10-08 06:01:07'),
(113, 15, '2010-10-08 06:01:39'),
(114, 15, '2010-10-08 06:02:54'),
(115, 15, '2010-10-08 06:02:56'),
(116, 15, '2010-10-08 06:03:12'),
(117, 15, '2010-10-08 06:03:13'),
(118, 15, '2010-10-08 06:03:35'),
(119, 15, '2010-10-08 06:07:29'),
(120, 15, '2010-10-08 06:11:26'),
(121, 15, '2010-10-08 06:13:31'),
(122, 15, '2010-10-08 06:14:23'),
(123, 15, '2010-10-08 06:14:29'),
(124, 15, '2010-10-08 06:17:15'),
(125, 15, '2010-10-08 06:22:11'),
(126, 16, '2010-10-08 06:23:45'),
(127, 17, '2010-10-08 06:23:50'),
(128, 18, '2010-10-08 06:23:55'),
(129, 15, '2010-10-08 06:28:22'),
(130, 15, '2010-10-08 06:29:53'),
(131, 15, '2010-10-08 06:31:48'),
(132, 15, '2010-10-08 06:35:25'),
(133, 15, '2010-10-08 06:37:31'),
(134, 15, '2010-10-08 06:46:51'),
(135, 15, '2010-10-08 06:48:26'),
(136, 15, '2010-10-08 06:48:33'),
(137, 15, '2010-10-08 06:48:36'),
(138, 15, '2010-10-08 06:48:50'),
(139, 15, '2010-10-08 06:48:57'),
(140, 15, '2010-10-08 06:49:44'),
(141, 15, '2010-10-08 06:49:46'),
(142, 15, '2010-10-08 06:49:47'),
(143, 15, '2010-10-08 06:51:21'),
(144, 15, '2010-10-08 07:10:26'),
(145, 15, '2010-10-08 07:10:27'),
(146, 15, '2010-10-08 07:14:32'),
(147, 15, '2010-10-08 07:14:36'),
(148, 15, '2010-10-08 07:14:39'),
(149, 15, '2010-10-08 07:14:44'),
(150, 15, '2010-10-08 07:16:06'),
(151, 15, '2010-10-08 07:20:50'),
(152, 15, '2010-10-08 07:21:16'),
(153, 15, '2010-10-08 07:21:49'),
(154, 15, '2010-10-08 07:22:25'),
(155, 15, '2010-10-08 07:22:54'),
(156, 15, '2010-10-08 07:27:21'),
(157, 15, '2010-10-08 07:29:34'),
(158, 15, '2010-10-08 07:30:39'),
(159, 15, '2010-10-08 07:30:41'),
(160, 15, '2010-10-08 07:30:41'),
(161, 15, '2010-10-08 07:33:59'),
(162, 15, '2010-10-08 07:34:01'),
(163, 15, '2010-10-08 07:34:02'),
(164, 15, '2010-10-08 07:34:32'),
(165, 15, '2010-10-08 07:34:45'),
(166, 15, '2010-10-08 07:34:51'),
(167, 15, '2010-10-08 07:35:58'),
(168, 15, '2010-10-08 07:36:21'),
(169, 15, '2010-10-08 07:36:29'),
(170, 15, '2010-10-08 07:41:42'),
(171, 15, '2010-10-08 07:44:18'),
(172, 15, '2010-10-08 07:44:20'),
(173, 15, '2010-10-08 07:47:39'),
(174, 15, '2010-10-08 07:51:14'),
(175, 15, '2010-10-08 07:52:09'),
(176, 15, '2010-10-08 07:56:07'),
(177, 15, '2010-10-08 07:58:47'),
(178, 15, '2010-10-08 07:58:57'),
(179, 15, '2010-10-08 08:10:36'),
(180, 15, '2010-10-08 08:25:36'),
(181, 15, '2010-10-08 08:25:48'),
(182, 15, '2010-10-08 08:26:17'),
(183, 15, '2010-10-08 08:26:50'),
(184, 15, '2010-10-08 08:27:49'),
(185, 15, '2010-10-08 08:27:52'),
(186, 15, '2010-10-08 08:27:59'),
(187, 15, '2010-10-08 08:28:18'),
(188, 15, '2010-10-08 08:28:23'),
(189, 15, '2010-10-08 08:29:52'),
(190, 15, '2010-10-08 08:29:58'),
(191, 15, '2010-10-08 08:30:02'),
(192, 15, '2010-10-08 08:30:03'),
(193, 15, '2010-10-08 08:30:05'),
(194, 15, '2010-10-08 08:30:18'),
(195, 15, '2010-10-08 08:30:21'),
(196, 15, '2010-10-08 08:30:23'),
(197, 15, '2010-10-08 08:30:36'),
(198, 15, '2010-10-08 08:30:39'),
(199, 15, '2010-10-08 08:30:49'),
(200, 15, '2010-10-08 08:30:51'),
(201, 15, '2010-10-08 08:30:54'),
(202, 15, '2010-10-08 08:30:55'),
(203, 15, '2010-10-08 08:32:37'),
(204, 15, '2010-10-08 08:32:39'),
(205, 15, '2010-10-08 08:32:46'),
(206, 15, '2010-10-08 08:35:31'),
(207, 15, '2010-10-08 08:35:33'),
(208, 15, '2010-10-08 08:36:20'),
(209, 15, '2010-10-08 08:37:47'),
(210, 15, '2010-10-08 08:37:52'),
(211, 15, '2010-10-08 08:37:54'),
(212, 15, '2010-10-08 08:37:57'),
(213, 15, '2010-10-08 08:41:10'),
(214, 15, '2010-10-08 08:43:02'),
(215, 15, '2010-10-08 09:03:20'),
(216, 15, '2010-10-08 09:03:43'),
(217, 15, '2010-10-08 09:04:43'),
(218, 15, '2010-10-08 09:05:54'),
(219, 15, '2010-10-08 09:06:19'),
(220, 15, '2010-10-08 09:06:28'),
(221, 15, '2010-10-08 09:12:54'),
(222, 15, '2010-10-08 09:24:13'),
(223, 15, '2010-10-08 09:24:30'),
(224, 15, '2010-10-08 09:25:06'),
(225, 15, '2010-10-08 09:31:19'),
(226, 15, '2010-10-08 09:31:31'),
(227, 15, '2010-10-08 09:31:34'),
(228, 15, '2010-10-08 09:31:36'),
(229, 15, '2010-10-08 09:31:42'),
(230, 15, '2010-10-08 09:31:45'),
(231, 19, '2010-10-10 06:47:50'),
(232, 19, '2010-10-10 06:48:09'),
(233, 19, '2010-10-10 06:49:50'),
(234, 19, '2010-10-10 06:55:16'),
(235, 19, '2010-10-10 06:55:52'),
(236, 19, '2010-10-10 06:56:06'),
(237, 19, '2010-10-10 06:56:17'),
(238, 19, '2010-10-10 06:56:20'),
(239, 19, '2010-10-10 06:56:23'),
(240, 19, '2010-10-10 06:56:25'),
(241, 19, '2010-10-10 07:00:07'),
(242, 19, '2010-10-10 07:00:07'),
(243, 19, '2010-10-10 07:02:44'),
(244, 19, '2010-10-10 07:02:44'),
(245, 19, '2010-10-10 07:02:50'),
(246, 19, '2010-10-10 07:05:43'),
(247, 19, '2010-10-10 07:05:58'),
(248, 19, '2010-10-10 07:06:02'),
(249, 19, '2010-10-10 07:26:23'),
(250, 19, '2010-10-10 07:26:29'),
(251, 19, '2010-10-10 07:26:30'),
(252, 19, '2010-10-10 07:26:53'),
(253, 19, '2010-10-10 07:26:55'),
(254, 19, '2010-10-10 07:27:09'),
(255, 19, '2010-10-10 07:27:10'),
(256, 19, '2010-10-10 07:27:12'),
(257, 19, '2010-10-10 07:27:13'),
(258, 19, '2010-10-10 07:28:52'),
(259, 19, '2010-10-10 07:29:11'),
(260, 19, '2010-10-10 07:29:14'),
(261, 19, '2010-10-10 07:29:31'),
(262, 19, '2010-10-10 07:29:34'),
(263, 19, '2010-10-10 07:29:35'),
(264, 19, '2010-10-10 07:29:38'),
(265, 19, '2010-10-10 07:29:41'),
(266, 19, '2010-10-10 07:31:15'),
(267, 19, '2010-10-10 07:31:26'),
(268, 19, '2010-10-10 07:31:30'),
(269, 19, '2010-10-10 07:31:32'),
(270, 19, '2010-10-10 07:32:10'),
(271, 19, '2010-10-10 07:32:13'),
(272, 19, '2010-10-10 07:32:15'),
(273, 19, '2010-10-10 07:32:18'),
(274, 19, '2010-10-10 07:32:21'),
(275, 19, '2010-10-10 07:32:47'),
(276, 19, '2010-10-10 07:33:56'),
(277, 19, '2010-10-10 07:34:01'),
(278, 19, '2010-10-10 07:36:17'),
(279, 19, '2010-10-10 07:36:17'),
(280, 19, '2010-10-10 07:36:18'),
(281, 19, '2010-10-10 07:36:23'),
(282, 19, '2010-10-10 07:36:23'),
(283, 19, '2010-10-10 07:36:23'),
(284, 19, '2010-10-10 07:36:28'),
(285, 19, '2010-10-10 07:36:45'),
(286, 19, '2010-10-10 07:36:48'),
(287, 19, '2010-10-10 07:41:13'),
(288, 19, '2010-10-10 07:46:01'),
(289, 19, '2010-10-10 07:48:54'),
(290, 19, '2010-10-10 07:49:05'),
(291, 19, '2010-10-10 07:49:11'),
(292, 19, '2010-10-10 07:50:01'),
(293, 19, '2010-10-10 07:52:11'),
(294, 19, '2010-10-10 07:52:35'),
(295, 19, '2010-10-10 07:54:33'),
(296, 19, '2010-10-10 07:54:35'),
(297, 19, '2010-10-10 07:54:37'),
(298, 19, '2010-10-10 07:54:51'),
(299, 19, '2010-10-10 07:54:56'),
(300, 19, '2010-10-10 07:54:59'),
(301, 19, '2010-10-10 07:57:21'),
(302, 19, '2010-10-10 07:59:57'),
(303, 19, '2010-10-10 08:00:24'),
(304, 19, '2010-10-10 08:02:43'),
(305, 19, '2010-10-10 08:03:36'),
(306, 19, '2010-10-10 08:04:15'),
(307, 19, '2010-10-10 08:07:15'),
(308, 19, '2010-10-10 08:07:18'),
(309, 19, '2010-10-10 08:07:54'),
(310, 19, '2010-10-10 08:09:22'),
(311, 20, '2010-10-11 08:29:21'),
(312, 20, '2010-10-11 08:29:28'),
(313, 20, '2010-10-11 08:58:01'),
(314, 20, '2010-10-11 09:08:04'),
(315, 20, '2010-10-11 09:42:48'),
(316, 20, '2010-10-11 09:49:50'),
(317, 20, '2010-10-11 10:01:45'),
(318, 20, '2010-10-11 10:03:32'),
(319, 20, '2010-10-11 10:06:34'),
(320, 20, '2010-10-11 10:07:26'),
(321, 20, '2010-10-11 10:08:16'),
(322, 20, '2010-10-11 10:08:38'),
(323, 20, '2010-10-11 10:10:09'),
(324, 20, '2010-10-11 10:11:39'),
(325, 20, '2010-10-11 10:16:01'),
(326, 20, '2010-10-11 10:19:08'),
(327, 20, '2010-10-11 10:20:52'),
(328, 20, '2010-10-11 10:21:01'),
(329, 21, '2010-10-12 03:05:22'),
(330, 21, '2010-10-12 03:09:26'),
(331, 21, '2010-10-12 03:12:59'),
(332, 21, '2010-10-12 03:13:43'),
(333, 21, '2010-10-12 03:18:59'),
(334, 21, '2010-10-12 03:19:02'),
(335, 21, '2010-10-12 03:19:53'),
(336, 21, '2010-10-12 03:20:40'),
(337, 21, '2010-10-12 03:20:41'),
(338, 21, '2010-10-12 03:20:53'),
(339, 21, '2010-10-12 03:21:02'),
(340, 21, '2010-10-12 03:30:37'),
(341, 21, '2010-10-12 03:30:40'),
(342, 21, '2010-10-12 03:32:08'),
(343, 21, '2010-10-12 03:32:25'),
(344, 21, '2010-10-12 03:35:28'),
(345, 21, '2010-10-12 03:35:32'),
(346, 21, '2010-10-12 03:36:35'),
(347, 21, '2010-10-12 03:36:39'),
(348, 21, '2010-10-12 03:38:20'),
(349, 21, '2010-10-12 03:38:21'),
(350, 21, '2010-10-12 03:38:22'),
(351, 21, '2010-10-12 03:38:27'),
(352, 21, '2010-10-12 03:40:38'),
(353, 21, '2010-10-12 03:42:31'),
(354, 21, '2010-10-12 03:42:32'),
(355, 21, '2010-10-12 03:42:33'),
(356, 21, '2010-10-12 03:42:34'),
(357, 21, '2010-10-12 03:42:57'),
(358, 21, '2010-10-12 03:42:59'),
(359, 21, '2010-10-12 03:43:00'),
(360, 21, '2010-10-12 03:43:20'),
(361, 21, '2010-10-12 03:43:49'),
(362, 21, '2010-10-12 03:44:30'),
(363, 21, '2010-10-12 03:44:47'),
(364, 21, '2010-10-12 03:59:20'),
(365, 21, '2010-10-12 04:02:06'),
(366, 21, '2010-10-12 04:05:38'),
(367, 21, '2010-10-12 04:05:40'),
(368, 21, '2010-10-12 04:10:27'),
(369, 21, '2010-10-12 04:12:57'),
(370, 21, '2010-10-12 04:25:15'),
(371, 21, '2010-10-12 04:25:41'),
(372, 21, '2010-10-12 04:25:42'),
(373, 21, '2010-10-12 04:26:21'),
(374, 21, '2010-10-12 04:26:50'),
(375, 21, '2010-10-12 04:27:44'),
(376, 21, '2010-10-12 04:27:58'),
(377, 21, '2010-10-12 04:29:04'),
(378, 21, '2010-10-12 04:29:06'),
(379, 21, '2010-10-12 04:31:37'),
(380, 21, '2010-10-12 04:31:51'),
(381, 21, '2010-10-12 04:36:13'),
(382, 21, '2010-10-12 04:40:04'),
(383, 21, '2010-10-12 04:42:17'),
(384, 22, '2010-10-12 05:44:55'),
(385, 22, '2010-10-12 05:47:41'),
(386, 22, '2010-10-12 05:48:53'),
(387, 22, '2010-10-12 05:50:01'),
(388, 22, '2010-10-12 05:51:02'),
(389, 22, '2010-10-12 05:53:24'),
(390, 22, '2010-10-12 05:54:22'),
(391, 22, '2010-10-12 05:55:07'),
(392, 22, '2010-10-12 05:55:35'),
(393, 22, '2010-10-12 05:55:55'),
(394, 22, '2010-10-12 05:56:15'),
(395, 22, '2010-10-12 05:56:20'),
(396, 22, '2010-10-12 05:56:31'),
(397, 22, '2010-10-12 05:57:36'),
(398, 22, '2010-10-12 05:58:27'),
(399, 22, '2010-10-12 05:59:24'),
(400, 22, '2010-10-12 05:59:24'),
(401, 22, '2010-10-12 06:00:27'),
(402, 22, '2010-10-12 06:01:45'),
(403, 22, '2010-10-12 06:01:46'),
(404, 22, '2010-10-12 06:03:17'),
(405, 22, '2010-10-12 06:06:44'),
(406, 22, '2010-10-12 06:07:05'),
(407, 22, '2010-10-12 06:08:05'),
(408, 22, '2010-10-12 06:08:17'),
(409, 22, '2010-10-12 06:12:21'),
(410, 22, '2010-10-12 06:13:47'),
(411, 22, '2010-10-12 06:14:14'),
(412, 22, '2010-10-12 06:14:28'),
(413, 22, '2010-10-12 06:14:50'),
(414, 22, '2010-10-12 06:14:54'),
(415, 22, '2010-10-12 06:15:01'),
(416, 22, '2010-10-12 06:16:00'),
(417, 22, '2010-10-12 06:16:15'),
(418, 22, '2010-10-12 06:18:04'),
(419, 22, '2010-10-12 06:18:54'),
(420, 22, '2010-10-12 06:18:56'),
(421, 22, '2010-10-12 06:19:41'),
(422, 22, '2010-10-12 06:20:26'),
(423, 22, '2010-10-12 06:23:04'),
(424, 22, '2010-10-12 06:24:14'),
(425, 22, '2010-10-12 06:24:52'),
(426, 22, '2010-10-12 06:27:18'),
(427, 22, '2010-10-12 06:28:52'),
(428, 22, '2010-10-12 06:29:16'),
(429, 22, '2010-10-12 06:29:46'),
(430, 22, '2010-10-12 06:29:57'),
(431, 22, '2010-10-12 06:30:09'),
(432, 22, '2010-10-12 06:30:53'),
(433, 22, '2010-10-12 06:31:24'),
(434, 22, '2010-10-12 06:31:25'),
(435, 22, '2010-10-12 06:31:43'),
(436, 22, '2010-10-12 06:32:40'),
(437, 22, '2010-10-12 06:33:35'),
(438, 22, '2010-10-12 06:34:56'),
(439, 22, '2010-10-12 06:35:47'),
(440, 22, '2010-10-12 06:36:18'),
(441, 22, '2010-10-12 06:36:25'),
(442, 22, '2010-10-12 06:37:13'),
(443, 22, '2010-10-12 06:37:31'),
(444, 22, '2010-10-12 06:38:36'),
(445, 22, '2010-10-12 06:38:47'),
(446, 22, '2010-10-12 06:39:10'),
(447, 22, '2010-10-12 06:39:30'),
(448, 22, '2010-10-12 06:39:52'),
(449, 22, '2010-10-12 06:40:10'),
(450, 22, '2010-10-12 06:40:18'),
(451, 22, '2010-10-12 06:40:33'),
(452, 22, '2010-10-12 06:45:59'),
(453, 22, '2010-10-12 07:24:27'),
(454, 22, '2010-10-12 07:24:42'),
(455, 22, '2010-10-12 07:27:33'),
(456, 22, '2010-10-12 07:27:44'),
(457, 22, '2010-10-12 07:27:54'),
(458, 22, '2010-10-12 07:28:02'),
(459, 22, '2010-10-12 07:28:07'),
(460, 22, '2010-10-12 07:28:17'),
(461, 22, '2010-10-12 07:28:24'),
(462, 22, '2010-10-12 07:28:30'),
(463, 22, '2010-10-12 07:28:34'),
(464, 22, '2010-10-12 07:28:39'),
(465, 22, '2010-10-12 07:29:17'),
(466, 22, '2010-10-12 07:29:22'),
(467, 22, '2010-10-12 07:29:23'),
(468, 22, '2010-10-12 07:30:42'),
(469, 22, '2010-10-12 07:30:44'),
(470, 22, '2010-10-12 07:30:48'),
(471, 22, '2010-10-12 07:30:54'),
(472, 22, '2010-10-12 07:30:55'),
(473, 22, '2010-10-12 07:31:00'),
(474, 22, '2010-10-12 07:31:41'),
(475, 22, '2010-10-12 07:32:23'),
(476, 22, '2010-10-12 07:32:28'),
(477, 22, '2010-10-12 07:32:32'),
(478, 22, '2010-10-12 07:32:40'),
(479, 22, '2010-10-12 07:32:44'),
(480, 22, '2010-10-12 07:33:20'),
(481, 22, '2010-10-12 07:33:51'),
(482, 22, '2010-10-12 07:34:09'),
(483, 22, '2010-10-12 07:34:48'),
(484, 22, '2010-10-12 07:34:57'),
(485, 22, '2010-10-12 07:34:59'),
(486, 22, '2010-10-12 07:35:02'),
(487, 22, '2010-10-12 07:35:42'),
(488, 22, '2010-10-12 07:35:45'),
(489, 22, '2010-10-12 07:35:50'),
(490, 22, '2010-10-12 07:36:09'),
(491, 22, '2010-10-12 07:36:13'),
(492, 22, '2010-10-12 07:36:54'),
(493, 22, '2010-10-12 07:36:57'),
(494, 22, '2010-10-12 07:37:30'),
(495, 22, '2010-10-12 07:37:33'),
(496, 22, '2010-10-12 07:37:39'),
(497, 22, '2010-10-12 07:38:04'),
(498, 22, '2010-10-12 07:38:27'),
(499, 22, '2010-10-12 07:38:29'),
(500, 22, '2010-10-12 07:38:31'),
(501, 22, '2010-10-12 07:38:36'),
(502, 22, '2010-10-12 07:38:38'),
(503, 22, '2010-10-12 07:39:27'),
(504, 22, '2010-10-12 07:39:30'),
(505, 22, '2010-10-12 07:39:34'),
(506, 22, '2010-10-12 07:39:35'),
(507, 22, '2010-10-12 07:39:37'),
(508, 22, '2010-10-12 07:39:42'),
(509, 22, '2010-10-12 07:39:47'),
(510, 22, '2010-10-12 07:40:00'),
(511, 22, '2010-10-12 07:40:03'),
(512, 22, '2010-10-12 07:40:07'),
(513, 22, '2010-10-12 07:40:09'),
(514, 22, '2010-10-12 07:40:57'),
(515, 22, '2010-10-12 07:40:57'),
(516, 22, '2010-10-12 07:41:30'),
(517, 22, '2010-10-12 07:42:15'),
(518, 22, '2010-10-12 07:42:38'),
(519, 22, '2010-10-12 07:42:40'),
(520, 22, '2010-10-12 07:42:49'),
(521, 22, '2010-10-12 07:42:53'),
(522, 22, '2010-10-12 07:42:56'),
(523, 22, '2010-10-12 07:43:24'),
(524, 22, '2010-10-12 07:43:25'),
(525, 22, '2010-10-12 07:43:25'),
(526, 22, '2010-10-12 07:43:29'),
(527, 22, '2010-10-12 07:43:33'),
(528, 22, '2010-10-12 07:43:36'),
(529, 22, '2010-10-12 07:43:40'),
(530, 22, '2010-10-12 07:44:19'),
(531, 22, '2010-10-12 07:44:20'),
(532, 22, '2010-10-12 07:44:57'),
(533, 22, '2010-10-12 07:46:45'),
(534, 22, '2010-10-12 07:46:45'),
(535, 22, '2010-10-12 07:46:56'),
(536, 22, '2010-10-12 07:46:58'),
(537, 22, '2010-10-12 08:01:24'),
(538, 22, '2010-10-12 08:01:30'),
(539, 22, '2010-10-12 08:01:32'),
(540, 22, '2010-10-12 08:01:35'),
(541, 22, '2010-10-12 08:01:46'),
(542, 22, '2010-10-12 08:01:49'),
(543, 22, '2010-10-12 08:02:09'),
(544, 22, '2010-10-12 08:02:30'),
(545, 22, '2010-10-12 08:03:12'),
(546, 22, '2010-10-12 08:03:16'),
(547, 22, '2010-10-12 08:03:19'),
(548, 22, '2010-10-12 08:03:22'),
(549, 22, '2010-10-12 08:03:55'),
(550, 22, '2010-10-12 08:05:05'),
(551, 22, '2010-10-12 08:05:08'),
(552, 22, '2010-10-12 08:05:12'),
(553, 22, '2010-10-12 08:05:15'),
(554, 22, '2010-10-12 08:05:19'),
(555, 22, '2010-10-12 08:05:19'),
(556, 22, '2010-10-12 08:05:21'),
(557, 22, '2010-10-12 08:05:22'),
(558, 22, '2010-10-12 08:05:24'),
(559, 22, '2010-10-12 08:05:44'),
(560, 22, '2010-10-12 08:05:50'),
(561, 22, '2010-10-12 08:06:01'),
(562, 22, '2010-10-12 08:06:38'),
(563, 22, '2010-10-12 08:06:40'),
(564, 22, '2010-10-12 08:07:48'),
(565, 22, '2010-10-12 08:07:54'),
(566, 22, '2010-10-12 08:08:01'),
(567, 22, '2010-10-12 08:09:42'),
(568, 22, '2010-10-12 08:09:45'),
(569, 22, '2010-10-12 08:09:48'),
(570, 22, '2010-10-12 08:09:52'),
(571, 22, '2010-10-12 08:09:55'),
(572, 22, '2010-10-12 08:09:58'),
(573, 22, '2010-10-12 08:10:25'),
(574, 22, '2010-10-12 08:10:28'),
(575, 22, '2010-10-12 08:12:09'),
(576, 22, '2010-10-12 08:13:08'),
(577, 22, '2010-10-12 08:13:14'),
(578, 22, '2010-10-12 08:15:47'),
(579, 22, '2010-10-12 08:17:13'),
(580, 22, '2010-10-12 08:19:34'),
(581, 22, '2010-10-12 08:24:56'),
(582, 22, '2010-10-12 08:25:18'),
(583, 22, '2010-10-12 08:29:16'),
(584, 22, '2010-10-12 08:30:15'),
(585, 22, '2010-10-12 08:30:19'),
(586, 22, '2010-10-12 08:37:31'),
(587, 22, '2010-10-12 08:37:39'),
(588, 22, '2010-10-12 08:37:48'),
(589, 22, '2010-10-12 08:37:51'),
(590, 22, '2010-10-12 08:37:53'),
(591, 22, '2010-10-12 08:37:56'),
(592, 22, '2010-10-12 08:38:00'),
(593, 22, '2010-10-12 08:40:32'),
(594, 22, '2010-10-12 08:40:35'),
(595, 22, '2010-10-12 08:49:43'),
(596, 22, '2010-10-12 08:49:46'),
(597, 22, '2010-10-12 08:59:19'),
(598, 22, '2010-10-12 09:06:01'),
(599, 22, '2010-10-12 09:06:48'),
(600, 22, '2010-10-12 09:07:44'),
(601, 22, '2010-10-12 09:08:56'),
(602, 22, '2010-10-12 09:09:45'),
(603, 22, '2010-10-12 09:14:09'),
(604, 22, '2010-10-12 09:16:15'),
(605, 22, '2010-10-12 09:17:47'),
(606, 22, '2010-10-12 09:18:17'),
(607, 22, '2010-10-12 09:18:40'),
(608, 22, '2010-10-12 09:20:22'),
(609, 22, '2010-10-12 09:20:38'),
(610, 22, '2010-10-12 09:21:18'),
(611, 22, '2010-10-12 09:21:22'),
(612, 22, '2010-10-12 09:22:27'),
(613, 22, '2010-10-12 09:23:06'),
(614, 22, '2010-10-12 09:23:55'),
(615, 22, '2010-10-12 09:24:09'),
(616, 22, '2010-10-12 09:24:24'),
(617, 22, '2010-10-12 09:24:38'),
(618, 22, '2010-10-12 09:24:52'),
(619, 22, '2010-10-12 09:25:30'),
(620, 22, '2010-10-12 09:26:14'),
(621, 22, '2010-10-12 09:26:30'),
(622, 22, '2010-10-12 09:27:11'),
(623, 22, '2010-10-12 09:32:23'),
(624, 22, '2010-10-12 09:32:38'),
(625, 22, '2010-10-12 09:33:03'),
(626, 22, '2010-10-12 09:33:51'),
(627, 22, '2010-10-12 09:35:19'),
(628, 22, '2010-10-12 09:36:08'),
(629, 22, '2010-10-12 09:36:22'),
(630, 22, '2010-10-12 09:37:52'),
(631, 22, '2010-10-12 09:39:57'),
(632, 22, '2010-10-12 09:40:21'),
(633, 22, '2010-10-12 09:40:38'),
(634, 22, '2010-10-12 09:42:28'),
(635, 22, '2010-10-12 09:50:54'),
(636, 22, '2010-10-12 09:50:57');

-- --------------------------------------------------------

--
-- 表的结构 `log_url_info`
--

CREATE TABLE IF NOT EXISTS `log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Detale information about url visit' AUTO_INCREMENT=637 ;

--
-- 转存表中的数据 `log_url_info`
--

INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(2, 'http://127.0.0.1/index.php/sony-vaio-vgn-txn27n-b-11-1-notebook-pc.html', 'http://127.0.0.1/index.php/'),
(3, 'http://127.0.0.1/index.php/catalog/category/view/s/furniture/id/10/', 'http://127.0.0.1/index.php/sony-vaio-vgn-txn27n-b-11-1-notebook-pc.html'),
(4, 'http://127.0.0.1/index.php/catalog/category/view/s/cell-phones/id/8/', 'http://127.0.0.1/index.php/catalog/category/view/s/furniture/id/10/'),
(5, 'http://127.0.0.1/index.php/', 'http://127.0.0.1/index.php/install/wizard/end/'),
(6, 'http://127.0.0.1/index.php/catalog/category/view/s/cell-phones/id/8/', 'http://127.0.0.1/index.php/'),
(7, 'http://127.0.0.1/index.php/catalog/category/view/s/cell-phones/id/8/', 'http://127.0.0.1/index.php/catalog/category/view/s/furniture/id/10/'),
(8, 'http://127.0.0.1/index.php/catalog/category/view/s/cell-phones/id/8/', 'http://127.0.0.1/index.php/catalog/category/view/s/furniture/id/10/'),
(9, 'http://127.0.0.1/index.php/catalog/category/view/s/living-room/id/22/', 'http://127.0.0.1/index.php/catalog/category/view/s/cell-phones/id/8/'),
(10, 'http://127.0.0.1/index.php/catalog/product/view/id/51/s/ottoman/category/22/', 'http://127.0.0.1/index.php/catalog/category/view/s/living-room/id/22/'),
(11, 'http://127.0.0.1/index.php/', 'http://127.0.0.1/index.php/catalog/product/view/id/51/s/ottoman/category/22/'),
(12, 'http://127.0.0.1/index.php/acer-ferrari-3200-notebook-computer-pc.html', 'http://127.0.0.1/index.php/'),
(13, 'http://127.0.0.1/index.php/', 'http://127.0.0.1/index.php/catalog/product/view/id/51/s/ottoman/category/22/'),
(14, 'http://127.0.0.1/index.php/olympus-stylus-750-7-1mp-digital-camera.html', 'http://127.0.0.1/index.php/'),
(15, 'http://127.0.0.1/index.php/', 'http://127.0.0.1/index.php/catalog/product/view/id/51/s/ottoman/category/22/'),
(16, 'http://127.0.0.1/index.php/catalog/category/view/s/cell-phones/id/8/', 'http://127.0.0.1/index.php/'),
(17, 'http://127.0.0.1/index.php/catalog/product/view/id/16/s/nokia-2610-phone/category/8/', 'http://127.0.0.1/index.php/catalog/category/view/s/cell-phones/id/8/'),
(18, 'http://127.0.0.1/index.php/catalog/product/gallery/id/16/image/126/', 'http://127.0.0.1/index.php/catalog/product/view/id/16/s/nokia-2610-phone/category/8/'),
(19, 'http://127.0.0.1/', ''),
(20, 'http://127.0.0.1/', ''),
(21, 'http://127.0.0.1/', ''),
(22, 'http://127.0.0.1/', ''),
(23, 'http://127.0.0.1/', ''),
(24, 'http://127.0.0.1/', ''),
(25, 'http://127.0.0.1/', ''),
(26, 'http://127.0.0.1/', ''),
(27, 'http://127.0.0.1/', ''),
(28, 'http://127.0.0.1/', ''),
(29, 'http://127.0.0.1/', ''),
(30, 'http://127.0.0.1/', ''),
(31, 'http://127.0.0.1/index.php/catalog/category/view/id/8', 'http://127.0.0.1/'),
(32, 'http://127.0.0.1/index.php/catalog/category/view/id/8', 'http://127.0.0.1/'),
(33, 'http://127.0.0.1/index.php/catalog/category/view/id/8', 'http://127.0.0.1/'),
(34, 'http://127.0.0.1/index.php/catalog/category/view/id/8', 'http://127.0.0.1/'),
(35, 'http://127.0.0.1/index.php/', 'http://127.0.0.1/index.php/electronics/cell-phones.html'),
(36, 'http://127.0.0.1/index.php/', 'http://127.0.0.1/index.php/electronics/cell-phones.html'),
(37, 'http://127.0.0.1/index.php/', 'http://127.0.0.1/index.php/electronics/cell-phones.html'),
(38, 'http://127.0.0.1/index.php/', 'http://127.0.0.1/index.php/electronics/cell-phones.html'),
(39, 'http://127.0.0.1/', ''),
(40, 'http://127.0.0.1/', ''),
(41, 'http://127.0.0.1/', ''),
(42, 'http://127.0.0.1/', ''),
(43, 'http://127.0.0.1/', ''),
(44, 'http://127.0.0.1/index.php/', 'http://127.0.0.1/index.php/install/wizard/end/'),
(45, 'http://127.0.0.1/catalog/product/view/id/27', 'http://127.0.0.1/index.php/'),
(46, 'http://127.0.0.1/', ''),
(47, 'http://127.0.0.1/', ''),
(48, 'http://127.0.0.1/?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(49, 'http://127.0.0.1/?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(50, 'http://127.0.0.1/?___store=chinese&___from_store=english', 'http://127.0.0.1/?___store=english&___from_store=chinese'),
(51, 'http://127.0.0.1/?___store=chinese&___from_store=english', 'http://127.0.0.1/?___store=english&___from_store=chinese'),
(52, 'http://127.0.0.1/', ''),
(53, 'http://127.0.0.1/', ''),
(54, 'http://127.0.0.1/', ''),
(55, 'http://127.0.0.1/', ''),
(56, 'http://127.0.0.1/', ''),
(57, 'http://127.0.0.1/', ''),
(58, 'http://127.0.0.1/', ''),
(59, 'http://127.0.0.1/', ''),
(60, 'http://127.0.0.1/', ''),
(61, 'http://127.0.0.1/', ''),
(62, 'http://127.0.0.1/', ''),
(63, 'http://127.0.0.1/', ''),
(64, 'http://127.0.0.1/?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(65, 'http://127.0.0.1/?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(66, 'http://127.0.0.1/?___store=chinese&___from_store=english', 'http://127.0.0.1/?___store=english&___from_store=chinese'),
(67, 'http://127.0.0.1/?___store=chinese&___from_store=english', 'http://127.0.0.1/?___store=english&___from_store=chinese'),
(68, 'http://127.0.0.1/?___store=english&___from_store=chinese', 'http://127.0.0.1/?___store=chinese&___from_store=english'),
(69, 'http://127.0.0.1/?___store=english&___from_store=chinese', 'http://127.0.0.1/?___store=chinese&___from_store=english'),
(70, 'http://127.0.0.1/?___store=chinese&___from_store=english', 'http://127.0.0.1/?___store=english&___from_store=chinese'),
(71, 'http://127.0.0.1/?___store=english&___from_store=chinese', 'http://127.0.0.1/?___store=chinese&___from_store=english'),
(72, 'http://127.0.0.1/?___store=english&___from_store=chinese', 'http://127.0.0.1/?___store=chinese&___from_store=english'),
(73, 'http://127.0.0.1/', ''),
(74, 'http://127.0.0.1/', ''),
(75, 'http://127.0.0.1/', ''),
(76, 'http://127.0.0.1/', ''),
(77, 'http://127.0.0.1/', ''),
(78, 'http://127.0.0.1/', ''),
(79, 'http://127.0.0.1/', ''),
(80, 'http://127.0.0.1/', ''),
(81, 'http://127.0.0.1/', ''),
(82, 'http://127.0.0.1/', ''),
(83, 'http://127.0.0.1/?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(84, 'http://127.0.0.1/?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(85, 'http://127.0.0.1/', ''),
(86, 'http://127.0.0.1/', ''),
(87, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/index.html'),
(88, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(89, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=chinese&___from_store=english'),
(90, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=chinese&___from_store=english'),
(91, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=chinese&___from_store=english'),
(92, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(93, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=chinese&___from_store=english'),
(94, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=chinese&___from_store=english'),
(95, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=chinese&___from_store=english'),
(96, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=english&___from_store=chinese'),
(97, 'http://127.0.0.1/index.php', ''),
(98, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=english&___from_store=chinese'),
(99, 'http://127.0.0.1/index.php', ''),
(100, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(101, 'http://127.0.0.1/index.php', 'http://127.0.0.1/'),
(102, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=english&___from_store=chinese'),
(103, 'http://127.0.0.1/index.php', 'http://127.0.0.1/'),
(104, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=english&___from_store=chinese'),
(105, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/?___store=english&___from_store=chinese'),
(106, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(107, 'http://127.0.0.1/index.php?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(108, 'http://127.0.0.1/index.php?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(109, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(110, 'http://127.0.0.1/index.php?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(111, 'http://127.0.0.1/index.php?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(112, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(113, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(114, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(115, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(116, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(117, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(118, 'http://127.0.0.1/css/master.css', 'http://127.0.0.1/'),
(119, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(120, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(121, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(122, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(123, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(124, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(125, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(126, 'http://tracker.bittorrent.am/announce?info_hash=%3D%1F%BB%82%E9%94A%DA%CBje%E3%A9%D9%00%C0%F1%C9%7D%FA&peer_id=%2DSD0100%2DHd%84%A5%12T%FB%E8%16%0C%98%DD&ip=222.70.99.17&port=10002&uploaded=0&downloaded=0&left=127139840&numwant=200&key=16553&compact=', ''),
(127, 'http://tracker.bittorrent.am/announce?info_hash=%3D%1F%BB%82%E9%94A%DA%CBje%E3%A9%D9%00%C0%F1%C9%7D%FA&peer_id=%2DSD0100%2DHd%84%A5%12T%FB%E8%16%0C%98%DD&ip=222.70.99.17&port=10002&uploaded=0&downloaded=0&left=127139840&numwant=200&key=16553&compact=', ''),
(128, 'http://tracker.bittorrent.am/announce?info_hash=%3D%1F%BB%82%E9%94A%DA%CBje%E3%A9%D9%00%C0%F1%C9%7D%FA&peer_id=%2DSD0100%2DHd%84%A5%12T%FB%E8%16%0C%98%DD&ip=222.70.99.17&port=10002&uploaded=0&downloaded=0&left=127139840&numwant=0&key=16553&compact=1&', ''),
(129, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(130, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(131, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(132, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(133, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(134, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(135, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(136, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(137, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(138, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(139, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(140, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(141, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(142, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(143, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(144, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(145, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(146, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(147, 'http://127.0.0.1/catalog/category/view/s/a-a-c-a/id/43/', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(148, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/catalog/category/view/s/a-a-c-a/id/43/'),
(149, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(150, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(151, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(152, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(153, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(154, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(155, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(156, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(157, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(158, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(159, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(160, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(161, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(162, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(163, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(164, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(165, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(166, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(167, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(168, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(169, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(170, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(171, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(172, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(173, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(174, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(175, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(176, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(177, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(178, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(179, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(180, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(181, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(182, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(183, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(184, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(185, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(186, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(187, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(188, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(189, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(190, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(191, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(192, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(193, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(194, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(195, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(196, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(197, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(198, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(199, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(200, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(201, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(202, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(203, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(204, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(205, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(206, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(207, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(208, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(209, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(210, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(211, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(212, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(213, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(214, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(215, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(216, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(217, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(218, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(219, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(220, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(221, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(222, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(223, 'http://127.0.0.1/catalogsearch/term/popular/', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(224, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(225, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', ''),
(226, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(227, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(228, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/a-a.html'),
(229, 'http://127.0.0.1/catalog/category/view/id/44', 'http://127.0.0.1/a-a-c-a.html'),
(230, 'http://127.0.0.1/catalog/category/view/id/39', 'http://127.0.0.1/a-a-c-a/a-a.html'),
(231, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(232, 'http://127.0.0.1/jobs', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(233, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(234, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(235, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(236, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(237, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(238, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(239, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(240, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(241, 'http://127.0.0.1/index.php?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(242, 'http://127.0.0.1/index.php?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(243, 'http://127.0.0.1/index.php?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(244, 'http://127.0.0.1/index.php?___store=english&___from_store=chinese', 'http://127.0.0.1/'),
(245, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=english&___from_store=chinese'),
(246, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(247, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(248, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(249, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(250, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(251, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(252, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(253, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(254, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(255, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(256, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(257, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(258, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(259, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(260, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(261, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(262, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(263, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(264, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(265, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(266, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(267, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(268, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(269, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(270, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(271, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(272, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(273, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/a-a.html'),
(274, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(275, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(276, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(277, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(278, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(279, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(280, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(281, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(282, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(283, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(284, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(285, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(286, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(287, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(288, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(289, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(290, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/a-a.html'),
(291, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(292, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(293, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(294, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(295, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(296, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(297, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(298, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(299, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/a-a.html'),
(300, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(301, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(302, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(303, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(304, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(305, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(306, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(307, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(308, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(309, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(310, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(311, 'http://127.0.0.1/index.php/', ''),
(312, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/index.php/'),
(313, 'http://127.0.0.1/index.php/', ''),
(314, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(315, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(316, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(317, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(318, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(319, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(320, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(321, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(322, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(323, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(324, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(325, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(326, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(327, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(328, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php/'),
(329, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(330, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(331, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(332, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(333, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(334, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(335, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(336, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(337, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(338, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(339, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(340, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(341, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(342, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(343, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(344, 'http://127.0.0.1/catalog/category/view/id/59', 'http://127.0.0.1/a-a.html'),
(345, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(346, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(347, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(348, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(349, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(350, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(351, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(352, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(353, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(354, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(355, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(356, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(357, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(358, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(359, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(360, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(361, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(362, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(363, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(364, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(365, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(366, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/a-a.html'),
(367, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(368, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(369, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(370, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(371, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(372, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(373, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(374, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(375, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a-c-a.html'),
(376, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(377, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(378, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(379, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(380, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(381, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(382, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(383, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(384, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(385, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(386, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(387, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(388, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(389, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(390, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(391, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(392, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(393, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(394, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(395, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(396, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(397, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(398, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(399, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(400, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(401, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(402, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(403, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(404, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(405, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(406, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(407, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(408, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(409, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(410, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(411, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(412, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(413, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(414, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(415, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(416, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(417, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(418, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(419, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(420, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(421, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(422, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(423, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(424, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(425, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(426, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(427, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(428, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(429, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(430, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(431, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(432, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(433, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(434, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(435, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(436, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(437, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(438, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(439, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(440, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(441, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(442, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(443, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(444, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(445, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(446, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(447, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(448, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(449, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(450, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(451, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a.html'),
(452, 'http://127.0.0.1/catalog/category/view/id/54', ''),
(453, 'http://127.0.0.1/peak-2010-re02357e', ''),
(454, 'http://127.0.0.1/catalog/category/view/id/43', 'http://127.0.0.1/a-a.html'),
(455, 'http://127.0.0.1/ez-a.html', ''),
(456, 'http://127.0.0.1/ez-a/peak-2010-re02357e', ''),
(457, 'http://127.0.0.1/ez-a/peak-2010-re02357ehtml', ''),
(458, 'http://127.0.0.1/ez-a/peak-2010-re02357e.html', ''),
(459, 'http://127.0.0.1/peak-2010-re02357e.html', ''),
(460, 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B', 'http://127.0.0.1/peak-2010-re02357e.html'),
(461, 'http://127.0.0.1/catalogsearch/result/?q=%E9%9E%8B', 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B'),
(462, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(463, 'http://127.0.0.1/catalogsearch/result/?q=%E9%9E%8B', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(464, 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B', 'http://127.0.0.1/catalogsearch/result/?q=%E9%9E%8B'),
(465, 'http://127.0.0.1/catalogsearch/result/?q=Diamond', 'http://127.0.0.1/a-a.html'),
(466, 'http://127.0.0.1/catalogsearch/ajax/suggest/?q=Diamond', 'http://127.0.0.1/catalogsearch/result/?q=Diamond'),
(467, 'http://127.0.0.1/catalogsearch/result/?q=Diamond', 'http://127.0.0.1/catalogsearch/result/?q=Diamond'),
(468, 'http://127.0.0.1/catalogsearch/ajax/suggest/?q=Diamond', 'http://127.0.0.1/catalogsearch/result/?q=Diamond'),
(469, 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B', 'http://127.0.0.1/catalogsearch/result/?q=Diamond'),
(470, 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B', 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B'),
(471, 'http://127.0.0.1/catalogsearch/ajax/suggest/?q=PEAK', 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B'),
(472, 'http://127.0.0.1/catalogsearch/result/?q=PEAK', 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B'),
(473, 'http://127.0.0.1/catalogsearch/result/?q=PEAK', 'http://127.0.0.1/catalogsearch/result/?q=PEAK'),
(474, 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B', 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B'),
(475, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B'),
(476, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(477, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(478, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(479, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(480, 'http://127.0.0.1/catalog/category/view/id/46', ''),
(481, 'http://127.0.0.1/catalog/category/view/id/46', ''),
(482, 'http://127.0.0.1/catalog/category/view/id/46', ''),
(483, 'http://127.0.0.1/catalog/category/view/id/46', ''),
(484, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(485, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(486, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(487, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(488, 'http://127.0.0.1/catalog/category/view/id/68', 'http://127.0.0.1/a-a/a-a.html'),
(489, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(490, 'http://127.0.0.1/catalog/category/view/id/66', 'http://127.0.0.1/a-a/a-a.html'),
(491, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(492, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(493, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(494, 'http://127.0.0.1/catalogsearch/result/?q=PEAK', 'http://127.0.0.1/catalogsearch/result/?q=PEAK'),
(495, 'http://127.0.0.1/catalogsearch/result/?q=PEAK', 'http://127.0.0.1/catalogsearch/result/?q=PEAK'),
(496, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(497, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B'),
(498, 'http://127.0.0.1/catalogsearch/result/?q=PEAK', 'http://127.0.0.1/catalogsearch/result/?q=PEAK'),
(499, 'http://127.0.0.1/catalogsearch/result/?q=PEAK', 'http://127.0.0.1/catalogsearch/result/?q=PEAK'),
(500, 'http://127.0.0.1/catalogsearch/result/?q=PEAK', 'http://127.0.0.1/catalogsearch/result/?q=PEAK'),
(501, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B'),
(502, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(503, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(504, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(505, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(506, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(507, 'http://127.0.0.1/catalog/category/view/id/66', 'http://127.0.0.1/a-a/a-a.html'),
(508, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(509, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(510, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(511, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(512, 'http://127.0.0.1/catalog/category/view/id/66', 'http://127.0.0.1/a-a/a-a.html'),
(513, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(514, 'http://127.0.0.1/catalogsearch/result/?q=diomand', 'http://127.0.0.1/a-a/a-a.html'),
(515, 'http://127.0.0.1/catalogsearch/ajax/suggest/?q=diomand', 'http://127.0.0.1/a-a/a-a.html'),
(516, 'http://127.0.0.1/catalogsearch/result/?q=diomand', 'http://127.0.0.1/a-a/a-a.html'),
(517, 'http://127.0.0.1/catalogsearch/result/?q=diomand', 'http://127.0.0.1/catalogsearch/result/?q=diomand'),
(518, 'http://127.0.0.1/catalogsearch/ajax/suggest/?q=Diamond', 'http://127.0.0.1/catalogsearch/result/?q=diomand'),
(519, 'http://127.0.0.1/catalogsearch/result/?q=Diamond', 'http://127.0.0.1/catalogsearch/result/?q=diomand'),
(520, 'http://127.0.0.1/catalogsearch/result/?q=%E5%8C%B9%E5%85%8B', 'http://127.0.0.1/catalogsearch/result/?q=Diamond'),
(521, 'http://127.0.0.1/catalogsearch/result/?q=Diamond', 'http://127.0.0.1/catalogsearch/result/?q=diomand'),
(522, 'http://127.0.0.1/catalog/product/view/id/166', 'http://127.0.0.1/catalogsearch/result/?q=Diamond'),
(523, 'http://127.0.0.1/catalogsearch/ajax/suggest/?q=PEA', 'http://127.0.0.1/htc-touch-diamond.html'),
(524, 'http://127.0.0.1/catalogsearch/result/?q=PEAK', 'http://127.0.0.1/htc-touch-diamond.html'),
(525, 'http://127.0.0.1/catalogsearch/ajax/suggest/?q=PEAK', 'http://127.0.0.1/htc-touch-diamond.html'),
(526, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/catalogsearch/result/?q=PEAK'),
(527, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(528, 'http://127.0.0.1/catalog/category/view/id/66', 'http://127.0.0.1/a-a/a-a.html'),
(529, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(530, 'http://127.0.0.1/catalogsearch/result/?q=peak', 'http://127.0.0.1/a-a/a-a.html'),
(531, 'http://127.0.0.1/catalogsearch/ajax/suggest/?q=peak', 'http://127.0.0.1/a-a/a-a.html'),
(532, 'http://127.0.0.1/catalogsearch/result/?q=peak', 'http://127.0.0.1/a-a/a-a.html'),
(533, 'http://127.0.0.1/catalogsearch/result/?q=2010', 'http://127.0.0.1/catalogsearch/result/?q=peak'),
(534, 'http://127.0.0.1/catalogsearch/ajax/suggest/?q=2010', 'http://127.0.0.1/catalogsearch/result/?q=peak'),
(535, 'http://127.0.0.1/catalogsearch/ajax/suggest/?q=2010', 'http://127.0.0.1/catalogsearch/result/?q=2010'),
(536, 'http://127.0.0.1/catalogsearch/result/?q=%E6%96%B0%E6%AC%BE', 'http://127.0.0.1/catalogsearch/result/?q=2010'),
(537, 'http://127.0.0.1/index.php?___store=chinese&___from_store=english', 'http://127.0.0.1/'),
(538, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/index.php?___store=chinese&___from_store=english'),
(539, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(540, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(541, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(542, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(543, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(544, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(545, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(546, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a/a-a/ez.html'),
(547, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(548, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(549, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(550, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(551, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(552, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(553, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a/a-a/ez.html'),
(554, 'http://127.0.0.1/catalog/category/view/id/59', 'http://127.0.0.1/a-a.html'),
(555, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(556, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(557, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(558, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(559, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(560, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(561, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(562, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(563, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(564, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(565, 'http://127.0.0.1/catalogsearch/result/?q=peak', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(566, 'http://127.0.0.1/catalogsearch/result/?q=peak', 'http://127.0.0.1/catalogsearch/result/?q=peak'),
(567, 'http://127.0.0.1/catalogsearch/result/?q=peak', 'http://127.0.0.1/catalogsearch/result/?q=peak'),
(568, 'http://127.0.0.1/catalogsearch/result/?q=peak', 'http://127.0.0.1/catalogsearch/result/?q=peak'),
(569, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/catalogsearch/result/?q=peak'),
(570, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(571, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(572, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(573, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(574, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(575, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(576, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(577, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html');
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(578, 'http://127.0.0.1/catalog/product/view/id/166', 'http://127.0.0.1/a-a/a-a/ez/ez-a/peak-2010.html'),
(579, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(580, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(581, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(582, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(583, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(584, 'http://127.0.0.1/customer/account/login/', 'http://127.0.0.1/a-a/a-a/ez/ez-a/peak-2010.html'),
(585, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(586, 'http://127.0.0.1/catalog/product/gallery/id/168/image/368/', 'http://127.0.0.1/a-a/a-a/ez/ez-a/peak-2010.html'),
(587, 'http://127.0.0.1/catalog/product/gallery/image/367/id/168/', 'http://127.0.0.1/catalog/product/gallery/id/168/image/368/'),
(588, 'http://127.0.0.1/catalog/category/view/id/54', 'http://127.0.0.1/a-a/a-a/ez/ez-a/peak-2010.html'),
(589, 'http://127.0.0.1/catalog/category/view/id/58', 'http://127.0.0.1/a-a.html'),
(590, 'http://127.0.0.1/catalog/category/view/id/67', 'http://127.0.0.1/a-a/a-a.html'),
(591, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(592, 'http://127.0.0.1/catalog/product/view/id/166/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(593, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez.html'),
(594, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(595, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(596, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(597, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(598, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(599, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(600, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(601, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(602, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(603, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(604, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(605, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(606, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(607, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(608, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(609, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(610, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(611, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(612, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(613, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(614, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(615, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(616, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(617, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(618, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(619, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(620, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(621, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(622, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(623, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(624, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(625, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(626, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(627, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(628, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(629, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(630, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(631, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(632, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(633, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(634, 'http://127.0.0.1/catalog/product/view/id/168/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html'),
(635, 'http://127.0.0.1/catalog/category/view/id/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a/peak-2010.html'),
(636, 'http://127.0.0.1/catalog/product/view/id/166/category/46', 'http://127.0.0.1/a-a/a-a/ez/ez-a.html');

-- --------------------------------------------------------

--
-- 表的结构 `log_visitor`
--

CREATE TABLE IF NOT EXISTS `log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` char(64) NOT NULL DEFAULT '',
  `first_visit_at` datetime DEFAULT NULL,
  `last_visit_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='System visitors log' AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `log_visitor`
--

INSERT INTO `log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, 'cl4hiv32itoat0cs8aio8jhph4', '2010-05-19 09:22:51', '2010-05-19 09:22:51', 0, 1),
(2, 'cl4hiv32itoat0cs8aio8jhph4', '2010-05-19 09:22:55', '2010-05-19 09:30:54', 18, 1),
(3, 'offug1j9dlhuu40157d3larb71', '2010-05-26 02:42:56', '2010-05-26 02:42:59', 19, 1),
(4, '09i3uslbo0642tr8jlbrq5ta37', '2010-05-27 04:13:35', '2010-05-27 04:13:38', 20, 1),
(5, 'c3dupthva6dlacdkmur0cpp9u0', '2010-05-27 04:13:39', '2010-05-27 05:01:14', 33, 1),
(6, 'be9m6i4ok7gm9mgig79lh4ltu7', '2010-05-27 07:42:54', '2010-05-27 07:44:22', 36, 1),
(7, 'o7ougrdplulq838iv3ufjorud6', '2010-05-27 10:28:55', '2010-05-27 10:28:56', 37, 1),
(8, '5ega5crr8f6k9o4fp57r917ct7', '2010-05-27 10:28:56', '2010-05-27 10:28:56', 38, 1),
(9, 've1uenlco8e0q0o9fups69acu0', '2010-06-08 04:45:34', '2010-06-08 04:47:53', 41, 1),
(10, '5ochhbpm2urbp3s1ogp9t5g9m5', '2010-06-08 06:38:36', '2010-06-08 06:38:37', 42, 1),
(11, '5a2lp2p2kvbvlu95q8b2abpbo7', '2010-06-08 10:01:13', '2010-06-08 10:01:16', 43, 1),
(12, 'likq43odfete8i0knr29ccofu4', '2010-10-05 08:23:11', '2010-10-05 08:23:25', 45, 1),
(13, 'kahp1rk1745t6n800afoghs316', '2010-10-05 08:26:36', '2010-10-05 08:42:35', 51, 1),
(14, 'ufoiiug15kf2oao5dbbuo6gd76', '2010-10-06 04:13:21', '2010-10-06 04:45:41', 62, 1),
(15, '22pt0hfpalqdfi3ce4ititlji3', '2010-10-08 05:25:52', '2010-10-08 09:31:45', 230, 1),
(16, 'btt9ga4o553rcmp6bdut6sf1h1', '2010-10-08 06:23:45', '2010-10-08 06:23:45', 126, 1),
(17, 'mek0q7dnecq9jh0t1f6b4ecjc5', '2010-10-08 06:23:50', '2010-10-08 06:23:50', 127, 1),
(18, '9tmnigcg0vpqfragjltisupta1', '2010-10-08 06:23:55', '2010-10-08 06:23:55', 128, 1),
(19, 'si909r7v72bjfkgveriou53960', '2010-10-10 06:47:49', '2010-10-10 08:09:22', 310, 1),
(20, 'rjmsrpgb2kntck79misbjg90n4', '2010-10-11 08:29:19', '2010-10-11 10:21:01', 328, 1),
(21, 'ira549ee8loqdsl7tsag2sp3h4', '2010-10-12 03:05:22', '2010-10-12 04:42:17', 383, 1),
(22, 'tplqiip5gahpm8cb2tud3u3eo2', '2010-10-12 05:44:54', '2010-10-12 09:50:57', 636, 1);

-- --------------------------------------------------------

--
-- 表的结构 `log_visitor_info`
--

CREATE TABLE IF NOT EXISTS `log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `http_referer` varchar(255) DEFAULT NULL,
  `http_user_agent` varchar(255) DEFAULT NULL,
  `http_accept_charset` varchar(255) DEFAULT NULL,
  `http_accept_language` varchar(255) DEFAULT NULL,
  `server_addr` bigint(20) DEFAULT NULL,
  `remote_addr` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Additional information by visitor';

--
-- 转存表中的数据 `log_visitor_info`
--

INSERT INTO `log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, 'http://127.0.0.1/index.php/install/wizard/end/', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(2, 'http://127.0.0.1/index.php/', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(3, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(4, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(5, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(6, 'http://127.0.0.1/', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(7, 'http://127.0.0.1/index.php/electronics/cell-phones.html', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(8, 'http://127.0.0.1/index.php/electronics/cell-phones.html', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(9, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(10, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(11, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(12, 'http://127.0.0.1/index.php/install/wizard/end/', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.472.63 Safari/534.3', 'GBK,utf-8;q=0.7,*;q=0.3', 'zh-CN,zh;q=0.8', 2130706433, 2130706433),
(13, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(14, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(15, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(16, '', 'Bittorrent', '', '', 2130706433, 2130706433),
(17, '', 'Bittorrent', '', '', 2130706433, 2130706433),
(18, '', 'Bittorrent', '', '', 2130706433, 2130706433),
(19, 'http://127.0.0.1/', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(20, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(21, 'http://127.0.0.1/', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433),
(22, '', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10', 'GB2312,utf-8;q=0.7,*;q=0.7', 'zh-cn,zh;q=0.5', 2130706433, 2130706433);

-- --------------------------------------------------------

--
-- 表的结构 `log_visitor_online`
--

CREATE TABLE IF NOT EXISTS `log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_type` char(1) NOT NULL,
  `remote_addr` bigint(20) NOT NULL,
  `first_visit_at` datetime DEFAULT NULL,
  `last_visit_at` datetime DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `last_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_VISIT_TIME` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_CUSTOMER` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `log_visitor_online`
--


-- --------------------------------------------------------

--
-- 表的结构 `newsletter_problem`
--

CREATE TABLE IF NOT EXISTS `newsletter_problem` (
  `problem_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `subscriber_id` int(7) unsigned DEFAULT NULL,
  `queue_id` int(7) unsigned NOT NULL DEFAULT '0',
  `problem_error_code` int(3) unsigned DEFAULT '0',
  `problem_error_text` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`problem_id`),
  KEY `FK_PROBLEM_SUBSCRIBER` (`subscriber_id`),
  KEY `FK_PROBLEM_QUEUE` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter problems' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `newsletter_problem`
--


-- --------------------------------------------------------

--
-- 表的结构 `newsletter_queue`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue` (
  `queue_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(7) unsigned NOT NULL DEFAULT '0',
  `queue_status` int(3) unsigned NOT NULL DEFAULT '0',
  `queue_start_at` datetime DEFAULT NULL,
  `queue_finish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`queue_id`),
  KEY `FK_QUEUE_TEMPLATE` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter queue' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `newsletter_queue`
--


-- --------------------------------------------------------

--
-- 表的结构 `newsletter_queue_link`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue_link` (
  `queue_link_id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(7) unsigned NOT NULL DEFAULT '0',
  `subscriber_id` int(7) unsigned NOT NULL DEFAULT '0',
  `letter_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`queue_link_id`),
  KEY `FK_QUEUE_LINK_SUBSCRIBER` (`subscriber_id`),
  KEY `FK_QUEUE_LINK_QUEUE` (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_SEND_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter queue to subscriber link' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `newsletter_queue_link`
--


-- --------------------------------------------------------

--
-- 表的结构 `newsletter_queue_store_link`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue_store_link` (
  `queue_id` int(7) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `FK_NEWSLETTER_QUEUE_STORE_LINK_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newsletter_queue_store_link`
--


-- --------------------------------------------------------

--
-- 表的结构 `newsletter_subscriber`
--

CREATE TABLE IF NOT EXISTS `newsletter_subscriber` (
  `subscriber_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT '0',
  `change_status_at` datetime DEFAULT NULL,
  `customer_id` int(11) unsigned NOT NULL DEFAULT '0',
  `subscriber_email` varchar(150) NOT NULL DEFAULT '',
  `subscriber_status` int(3) NOT NULL DEFAULT '0',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL',
  PRIMARY KEY (`subscriber_id`),
  KEY `FK_SUBSCRIBER_CUSTOMER` (`customer_id`),
  KEY `FK_NEWSLETTER_SUBSCRIBER_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter subscribers' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `newsletter_subscriber`
--


-- --------------------------------------------------------

--
-- 表的结构 `newsletter_template`
--

CREATE TABLE IF NOT EXISTS `newsletter_template` (
  `template_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(150) DEFAULT NULL,
  `template_text` text,
  `template_text_preprocessed` text,
  `template_styles` text,
  `template_type` int(3) unsigned DEFAULT NULL,
  `template_subject` varchar(200) DEFAULT NULL,
  `template_sender_name` varchar(200) DEFAULT NULL,
  `template_sender_email` varchar(200) DEFAULT NULL,
  `template_actual` tinyint(1) unsigned DEFAULT '1',
  `added_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_actual` (`template_actual`),
  KEY `added_at` (`added_at`),
  KEY `modified_at` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter templates' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `newsletter_template`
--


-- --------------------------------------------------------

--
-- 表的结构 `oscommerce_import`
--

CREATE TABLE IF NOT EXISTS `oscommerce_import` (
  `import_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(5) NOT NULL,
  `db_name` varchar(255) DEFAULT NULL,
  `db_user` varchar(255) DEFAULT NULL,
  `db_password` varchar(255) DEFAULT NULL,
  `db_type` varchar(32) DEFAULT NULL,
  `table_prefix` varchar(32) DEFAULT NULL,
  `send_subscription` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`import_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `oscommerce_import`
--


-- --------------------------------------------------------

--
-- 表的结构 `oscommerce_import_type`
--

CREATE TABLE IF NOT EXISTS `oscommerce_import_type` (
  `type_id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `type_code` varchar(32) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `oscommerce_import_type`
--

INSERT INTO `oscommerce_import_type` (`type_id`, `type_code`, `type_name`) VALUES
(1, 'website', 'Website'),
(2, 'store', 'Store'),
(3, 'category', 'Category'),
(4, 'product', 'Product'),
(5, 'customer', 'Customer'),
(6, 'order', 'Order'),
(7, 'group', 'Store Group'),
(8, 'taxclass', 'Product Tax Class'),
(9, 'root_category', 'Root Category');

-- --------------------------------------------------------

--
-- 表的结构 `oscommerce_orders`
--

CREATE TABLE IF NOT EXISTS `oscommerce_orders` (
  `osc_magento_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `magento_customers_id` int(11) NOT NULL DEFAULT '0',
  `import_id` int(11) NOT NULL DEFAULT '0',
  `website_id` int(11) NOT NULL DEFAULT '0',
  `customers_name` varchar(64) NOT NULL DEFAULT '',
  `customers_company` varchar(32) DEFAULT NULL,
  `customers_street_address` varchar(64) NOT NULL DEFAULT '',
  `customers_suburb` varchar(32) DEFAULT NULL,
  `customers_city` varchar(32) NOT NULL DEFAULT '',
  `customers_postcode` varchar(10) NOT NULL DEFAULT '',
  `customers_state` varchar(32) DEFAULT NULL,
  `customers_country` varchar(32) NOT NULL DEFAULT '',
  `customers_telephone` varchar(32) NOT NULL DEFAULT '',
  `customers_email_address` varchar(96) NOT NULL DEFAULT '',
  `customers_address_format_id` int(5) NOT NULL DEFAULT '0',
  `delivery_name` varchar(64) NOT NULL DEFAULT '',
  `delivery_company` varchar(32) DEFAULT NULL,
  `delivery_street_address` varchar(64) NOT NULL DEFAULT '',
  `delivery_suburb` varchar(32) DEFAULT NULL,
  `delivery_city` varchar(32) NOT NULL DEFAULT '',
  `delivery_postcode` varchar(10) NOT NULL DEFAULT '',
  `delivery_state` varchar(32) DEFAULT NULL,
  `delivery_country` varchar(32) NOT NULL DEFAULT '',
  `delivery_address_format_id` int(5) NOT NULL DEFAULT '0',
  `billing_name` varchar(64) NOT NULL DEFAULT '',
  `billing_company` varchar(32) DEFAULT NULL,
  `billing_street_address` varchar(64) NOT NULL DEFAULT '',
  `billing_suburb` varchar(32) DEFAULT NULL,
  `billing_city` varchar(32) NOT NULL DEFAULT '',
  `billing_postcode` varchar(10) NOT NULL DEFAULT '',
  `billing_state` varchar(32) DEFAULT NULL,
  `billing_country` varchar(32) NOT NULL DEFAULT '',
  `billing_address_format_id` int(5) NOT NULL DEFAULT '0',
  `payment_method` varchar(255) NOT NULL DEFAULT '',
  `cc_type` varchar(20) DEFAULT NULL,
  `cc_owner` varchar(64) DEFAULT NULL,
  `cc_number` varchar(32) DEFAULT NULL,
  `cc_expires` varchar(4) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` varchar(32) DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `currency_symbol` char(3) DEFAULT NULL,
  `orders_total` decimal(14,6) DEFAULT NULL,
  PRIMARY KEY (`osc_magento_id`),
  KEY `idx_orders_customers_id` (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `oscommerce_orders`
--


-- --------------------------------------------------------

--
-- 表的结构 `oscommerce_orders_products`
--

CREATE TABLE IF NOT EXISTS `oscommerce_orders_products` (
  `orders_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `osc_magento_id` int(11) NOT NULL DEFAULT '0',
  `products_id` int(11) NOT NULL DEFAULT '0',
  `products_model` varchar(12) DEFAULT NULL,
  `products_name` varchar(64) NOT NULL DEFAULT '',
  `products_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `final_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `products_tax` decimal(7,4) NOT NULL DEFAULT '0.0000',
  `products_quantity` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orders_products_id`),
  KEY `idx_orders_products_osc_magento_id` (`osc_magento_id`),
  KEY `idx_orders_products_products_id` (`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `oscommerce_orders_products`
--


-- --------------------------------------------------------

--
-- 表的结构 `oscommerce_orders_status_history`
--

CREATE TABLE IF NOT EXISTS `oscommerce_orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `osc_magento_id` int(11) NOT NULL DEFAULT '0',
  `orders_status_id` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_notified` int(1) DEFAULT '0',
  `comments` mediumtext,
  `orders_status` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`orders_status_history_id`),
  KEY `idx_orders_status_history_osc_magento_id` (`osc_magento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `oscommerce_orders_status_history`
--


-- --------------------------------------------------------

--
-- 表的结构 `oscommerce_orders_total`
--

CREATE TABLE IF NOT EXISTS `oscommerce_orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `osc_magento_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `class` varchar(32) NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orders_total_id`),
  KEY `idx_orders_total_osc_magento_id` (`osc_magento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `oscommerce_orders_total`
--


-- --------------------------------------------------------

--
-- 表的结构 `oscommerce_ref`
--

CREATE TABLE IF NOT EXISTS `oscommerce_ref` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `import_id` int(10) NOT NULL,
  `type_id` int(10) NOT NULL,
  `value` int(10) NOT NULL,
  `ref_id` int(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `oscommerce_ref`
--


-- --------------------------------------------------------

--
-- 表的结构 `paybox_api_debug`
--

CREATE TABLE IF NOT EXISTS `paybox_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `real_order_id` varchar(50) NOT NULL DEFAULT '',
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `paybox_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `paybox_question_number`
--

CREATE TABLE IF NOT EXISTS `paybox_question_number` (
  `account_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_hash` varchar(50) NOT NULL DEFAULT '',
  `increment_value` int(10) unsigned NOT NULL DEFAULT '1',
  `reset_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `paybox_question_number`
--


-- --------------------------------------------------------

--
-- 表的结构 `paygate_authorizenet_debug`
--

CREATE TABLE IF NOT EXISTS `paygate_authorizenet_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_body` text,
  `response_body` text,
  `request_serialized` text,
  `result_serialized` text,
  `request_dump` text,
  `result_dump` text,
  PRIMARY KEY (`debug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `paygate_authorizenet_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `paypaluk_api_debug`
--

CREATE TABLE IF NOT EXISTS `paypaluk_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `paypaluk_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `paypal_api_debug`
--

CREATE TABLE IF NOT EXISTS `paypal_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `paypal_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `paypal_settlement_report`
--

CREATE TABLE IF NOT EXISTS `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `report_date` date NOT NULL,
  `account_id` varchar(64) NOT NULL,
  `filename` varchar(24) NOT NULL,
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `UNQ_REPORT_DATE_ACCOUNT` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `paypal_settlement_report`
--


-- --------------------------------------------------------

--
-- 表的结构 `paypal_settlement_report_row`
--

CREATE TABLE IF NOT EXISTS `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `report_id` int(10) unsigned NOT NULL,
  `transaction_id` varchar(19) NOT NULL,
  `invoice_id` varchar(127) DEFAULT NULL,
  `paypal_reference_id` varchar(19) NOT NULL,
  `paypal_reference_id_type` enum('ODR','TXN','SUB','PAP','') NOT NULL,
  `transaction_event_code` char(5) NOT NULL DEFAULT '',
  `transaction_initiation_date` datetime DEFAULT NULL,
  `transaction_completion_date` datetime DEFAULT NULL,
  `transaction_debit_or_credit` enum('CR','DR') NOT NULL DEFAULT 'CR',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `gross_transaction_currency` char(3) NOT NULL DEFAULT '',
  `fee_debit_or_credit` enum('CR','DR') NOT NULL,
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `fee_currency` char(3) NOT NULL,
  `custom_field` varchar(255) DEFAULT NULL,
  `consumer_id` varchar(127) NOT NULL DEFAULT '',
  PRIMARY KEY (`row_id`),
  KEY `IDX_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `paypal_settlement_report_row`
--


-- --------------------------------------------------------

--
-- 表的结构 `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_title` varchar(255) NOT NULL DEFAULT '',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned DEFAULT '0',
  `date_posted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_closed` datetime DEFAULT NULL,
  `active` smallint(6) NOT NULL DEFAULT '1',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `answers_display` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`poll_id`),
  KEY `FK_POLL_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `poll`
--

INSERT INTO `poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
(1, 'What is your favorite color', 7, 1, '2007-06-15 19:17:49', '2007-08-31 07:41:32', 1, 1, NULL),
(2, 'What is your favorite Magento feature?', 4708, 0, '2007-08-31 07:41:20', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `poll_answer`
--

CREATE TABLE IF NOT EXISTS `poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0',
  `answer_title` varchar(255) NOT NULL DEFAULT '',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0',
  `answer_order` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`answer_id`),
  KEY `FK_POLL_PARENT` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `poll_answer`
--

INSERT INTO `poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
(1, 1, 'Green', 0, 0),
(2, 1, 'Red', 0, 0),
(3, 1, 'Black', 2, 0),
(4, 1, 'Magenta', 5, 0),
(5, 2, 'Layered Navigation', 1889, 0),
(6, 2, 'Price Rules', 1340, 0),
(7, 2, 'Category Management', 724, 0),
(8, 2, 'Compare Products', 762, 0);

-- --------------------------------------------------------

--
-- 表的结构 `poll_store`
--

CREATE TABLE IF NOT EXISTS `poll_store` (
  `poll_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `FK_POLL_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `poll_store`
--

INSERT INTO `poll_store` (`poll_id`, `store_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `poll_vote`
--

CREATE TABLE IF NOT EXISTS `poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` bigint(20) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vote_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`vote_id`),
  KEY `FK_POLL_ANSWER` (`poll_answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `poll_vote`
--


-- --------------------------------------------------------

--
-- 表的结构 `product_alert_price`
--

CREATE TABLE IF NOT EXISTS `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_send_date` datetime DEFAULT NULL,
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`alert_price_id`),
  KEY `FK_PRODUCT_ALERT_PRICE_CUSTOMER` (`customer_id`),
  KEY `FK_PRODUCT_ALERT_PRICE_PRODUCT` (`product_id`),
  KEY `FK_PRODUCT_ALERT_PRICE_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `product_alert_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `product_alert_stock`
--

CREATE TABLE IF NOT EXISTS `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `send_date` datetime DEFAULT NULL,
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`alert_stock_id`),
  KEY `FK_PRODUCT_ALERT_STOCK_CUSTOMER` (`customer_id`),
  KEY `FK_PRODUCT_ALERT_STOCK_PRODUCT` (`product_id`),
  KEY `FK_PRODUCT_ALERT_STOCK_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `product_alert_stock`
--


-- --------------------------------------------------------

--
-- 表的结构 `protx_api_debug`
--

CREATE TABLE IF NOT EXISTS `protx_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(255) NOT NULL DEFAULT '',
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `protx_api_debug`
--


-- --------------------------------------------------------

--
-- 表的结构 `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rating_code` varchar(64) NOT NULL DEFAULT '',
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `IDX_CODE` (`rating_code`),
  KEY `FK_RATING_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='ratings' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `rating`
--

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
(1, 1, 'Quality', 0),
(2, 1, 'Value', 0),
(3, 1, 'Price', 0);

-- --------------------------------------------------------

--
-- 表的结构 `rating_entity`
--

CREATE TABLE IF NOT EXISTS `rating_entity` (
  `entity_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `entity_code` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `IDX_CODE` (`entity_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating entities' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `rating_entity`
--

INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- 表的结构 `rating_option`
--

CREATE TABLE IF NOT EXISTS `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rating_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`),
  KEY `FK_RATING_OPTION_RATING` (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating options' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `rating_option`
--

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- 表的结构 `rating_option_vote`
--

CREATE TABLE IF NOT EXISTS `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `remote_ip` varchar(16) NOT NULL DEFAULT '',
  `remote_ip_long` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) unsigned DEFAULT '0',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rating_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `review_id` bigint(20) unsigned DEFAULT NULL,
  `percent` tinyint(3) NOT NULL DEFAULT '0',
  `value` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`),
  KEY `FK_RATING_OPTION_VALUE_OPTION` (`option_id`),
  KEY `FK_RATING_OPTION_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `rating_option_vote`
--


-- --------------------------------------------------------

--
-- 表的结构 `rating_option_vote_aggregated`
--

CREATE TABLE IF NOT EXISTS `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `percent` tinyint(3) NOT NULL DEFAULT '0',
  `percent_approved` tinyint(3) DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`primary_id`),
  KEY `FK_RATING_OPTION_VALUE_AGGREGATE` (`rating_id`),
  KEY `FK_RATING_OPTION_VOTE_AGGREGATED_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `rating_option_vote_aggregated`
--


-- --------------------------------------------------------

--
-- 表的结构 `rating_store`
--

CREATE TABLE IF NOT EXISTS `rating_store` (
  `rating_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `FK_RATING_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rating_store`
--

INSERT INTO `rating_store` (`rating_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `rating_title`
--

CREATE TABLE IF NOT EXISTS `rating_title` (
  `rating_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `FK_RATING_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rating_title`
--


-- --------------------------------------------------------

--
-- 表的结构 `report_compared_product_index`
--

CREATE TABLE IF NOT EXISTS `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_id` int(10) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `added_at` datetime NOT NULL,
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_BY_VISITOR` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_BY_CUSTOMER` (`customer_id`,`product_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_SORT_ADDED_AT` (`added_at`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `report_compared_product_index`
--


-- --------------------------------------------------------

--
-- 表的结构 `report_event`
--

CREATE TABLE IF NOT EXISTS `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logged_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `event_type_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `IDX_EVENT_TYPE` (`event_type_id`),
  KEY `IDX_SUBJECT` (`subject_id`),
  KEY `IDX_OBJECT` (`object_id`),
  KEY `IDX_SUBTYPE` (`subtype`),
  KEY `FK_REPORT_EVENT_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `report_event`
--

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2010-05-19 09:27:13', 1, 51, 2, 1, 1),
(2, '2010-05-19 09:30:38', 1, 16, 2, 1, 1),
(3, '2010-10-05 08:23:23', 1, 27, 12, 1, 1),
(4, '2010-10-12 07:42:55', 1, 166, 22, 1, 1),
(5, '2010-10-12 08:13:13', 1, 168, 22, 1, 1),
(6, '2010-10-12 08:15:46', 1, 166, 22, 1, 1),
(7, '2010-10-12 08:17:12', 1, 168, 22, 1, 1),
(8, '2010-10-12 08:19:33', 1, 168, 22, 1, 1),
(9, '2010-10-12 08:24:56', 1, 168, 22, 1, 1),
(10, '2010-10-12 08:25:18', 1, 168, 22, 1, 1),
(11, '2010-10-12 08:29:14', 1, 168, 22, 1, 1),
(12, '2010-10-12 08:30:19', 1, 168, 22, 1, 1),
(13, '2010-10-12 08:38:00', 1, 166, 22, 1, 1),
(14, '2010-10-12 08:40:34', 1, 168, 22, 1, 1),
(15, '2010-10-12 08:49:41', 1, 168, 22, 1, 1),
(16, '2010-10-12 08:49:46', 1, 168, 22, 1, 1),
(17, '2010-10-12 08:59:18', 1, 168, 22, 1, 1),
(18, '2010-10-12 09:06:00', 1, 168, 22, 1, 1),
(19, '2010-10-12 09:06:47', 1, 168, 22, 1, 1),
(20, '2010-10-12 09:07:43', 1, 168, 22, 1, 1),
(21, '2010-10-12 09:08:56', 1, 168, 22, 1, 1),
(22, '2010-10-12 09:09:44', 1, 168, 22, 1, 1),
(23, '2010-10-12 09:14:08', 1, 168, 22, 1, 1),
(24, '2010-10-12 09:16:14', 1, 168, 22, 1, 1),
(25, '2010-10-12 09:17:46', 1, 168, 22, 1, 1),
(26, '2010-10-12 09:18:16', 1, 168, 22, 1, 1),
(27, '2010-10-12 09:18:39', 1, 168, 22, 1, 1),
(28, '2010-10-12 09:20:22', 1, 168, 22, 1, 1),
(29, '2010-10-12 09:20:37', 1, 168, 22, 1, 1),
(30, '2010-10-12 09:21:17', 1, 168, 22, 1, 1),
(31, '2010-10-12 09:21:21', 1, 168, 22, 1, 1),
(32, '2010-10-12 09:22:27', 1, 168, 22, 1, 1),
(33, '2010-10-12 09:23:06', 1, 168, 22, 1, 1),
(34, '2010-10-12 09:23:54', 1, 168, 22, 1, 1),
(35, '2010-10-12 09:24:09', 1, 168, 22, 1, 1),
(36, '2010-10-12 09:24:23', 1, 168, 22, 1, 1),
(37, '2010-10-12 09:24:38', 1, 168, 22, 1, 1),
(38, '2010-10-12 09:24:51', 1, 168, 22, 1, 1),
(39, '2010-10-12 09:25:29', 1, 168, 22, 1, 1),
(40, '2010-10-12 09:26:13', 1, 168, 22, 1, 1),
(41, '2010-10-12 09:26:29', 1, 168, 22, 1, 1),
(42, '2010-10-12 09:27:10', 1, 168, 22, 1, 1),
(43, '2010-10-12 09:32:22', 1, 168, 22, 1, 1),
(44, '2010-10-12 09:32:38', 1, 168, 22, 1, 1),
(45, '2010-10-12 09:33:02', 1, 168, 22, 1, 1),
(46, '2010-10-12 09:33:50', 1, 168, 22, 1, 1),
(47, '2010-10-12 09:35:18', 1, 168, 22, 1, 1),
(48, '2010-10-12 09:36:07', 1, 168, 22, 1, 1),
(49, '2010-10-12 09:36:21', 1, 168, 22, 1, 1),
(50, '2010-10-12 09:37:51', 1, 168, 22, 1, 1),
(51, '2010-10-12 09:39:56', 1, 168, 22, 1, 1),
(52, '2010-10-12 09:40:21', 1, 168, 22, 1, 1),
(53, '2010-10-12 09:40:37', 1, 168, 22, 1, 1),
(54, '2010-10-12 09:42:27', 1, 168, 22, 1, 1),
(55, '2010-10-12 09:50:56', 1, 166, 22, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `report_event_types`
--

CREATE TABLE IF NOT EXISTS `report_event_types` (
  `event_type_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(64) NOT NULL,
  `customer_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `report_event_types`
--

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 1),
(2, 'sendfriend_product', 1),
(3, 'catalog_product_compare_add_product', 1),
(4, 'checkout_cart_add_product', 1),
(5, 'wishlist_add_product', 1),
(6, 'wishlist_share', 1);

-- --------------------------------------------------------

--
-- 表的结构 `report_viewed_product_index`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_id` int(10) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `added_at` datetime NOT NULL,
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_BY_VISITOR` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_BY_CUSTOMER` (`customer_id`,`product_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_SORT_ADDED_AT` (`added_at`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `report_viewed_product_index`
--

INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 22, NULL, 166, 1, '2010-10-12 09:50:56'),
(2, 22, NULL, 168, 1, '2010-10-12 09:42:27');

-- --------------------------------------------------------

--
-- 表的结构 `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`review_id`),
  KEY `FK_REVIEW_ENTITY` (`entity_id`),
  KEY `FK_REVIEW_STATUS` (`status_id`),
  KEY `FK_REVIEW_PARENT_PRODUCT` (`entity_pk_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `review`
--


-- --------------------------------------------------------

--
-- 表的结构 `review_detail`
--

CREATE TABLE IF NOT EXISTS `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `detail` text NOT NULL,
  `nickname` varchar(128) NOT NULL DEFAULT '',
  `customer_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `FK_REVIEW_DETAIL_REVIEW` (`review_id`),
  KEY `FK_REVIEW_DETAIL_STORE` (`store_id`),
  KEY `FK_REVIEW_DETAIL_CUSTOMER` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `review_detail`
--


-- --------------------------------------------------------

--
-- 表的结构 `review_entity`
--

CREATE TABLE IF NOT EXISTS `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `entity_code` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review entities' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `review_entity`
--

INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- 表的结构 `review_entity_summary`
--

CREATE TABLE IF NOT EXISTS `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0',
  `entity_type` tinyint(4) NOT NULL DEFAULT '0',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0',
  `rating_summary` tinyint(4) NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`primary_id`),
  KEY `FK_REVIEW_ENTITY_SUMMARY_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `review_entity_summary`
--


-- --------------------------------------------------------

--
-- 表的结构 `review_status`
--

CREATE TABLE IF NOT EXISTS `review_status` (
  `status_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `status_code` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review statuses' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `review_status`
--

INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- 表的结构 `review_store`
--

CREATE TABLE IF NOT EXISTS `review_store` (
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `FK_REVIEW_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `review_store`
--


-- --------------------------------------------------------

--
-- 表的结构 `salesrule`
--

CREATE TABLE IF NOT EXISTS `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `from_date` date DEFAULT '0000-00-00',
  `to_date` date DEFAULT '0000-00-00',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0',
  `customer_group_ids` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `conditions_serialized` mediumtext NOT NULL,
  `actions_serialized` mediumtext NOT NULL,
  `stop_rules_processing` tinyint(1) NOT NULL DEFAULT '1',
  `is_advanced` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `product_ids` text,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `simple_action` varchar(32) NOT NULL DEFAULT '',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_qty` decimal(12,4) unsigned DEFAULT NULL,
  `discount_step` int(10) unsigned NOT NULL,
  `simple_free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `apply_to_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `times_used` int(11) unsigned NOT NULL DEFAULT '0',
  `is_rss` tinyint(4) NOT NULL DEFAULT '0',
  `website_ids` text,
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`rule_id`),
  KEY `sort_order` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `salesrule`
--


-- --------------------------------------------------------

--
-- 表的结构 `salesrule_coupon`
--

CREATE TABLE IF NOT EXISTS `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `usage_limit` int(10) unsigned DEFAULT NULL,
  `usage_per_customer` int(10) unsigned DEFAULT NULL,
  `times_used` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration_date` datetime DEFAULT NULL,
  `is_primary` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_RULE_MAIN_COUPON` (`rule_id`,`is_primary`),
  KEY `FK_SALESRULE_COUPON_RULE_ID_SALESRULE` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `salesrule_coupon`
--


-- --------------------------------------------------------

--
-- 表的结构 `salesrule_coupon_usage`
--

CREATE TABLE IF NOT EXISTS `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `times_used` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `FK_SALESRULE_COUPON_CUSTOMER_COUPON_ID_CUSTOMER_ENTITY` (`coupon_id`),
  KEY `FK_SALESRULE_COUPON_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `salesrule_coupon_usage`
--


-- --------------------------------------------------------

--
-- 表的结构 `salesrule_customer`
--

CREATE TABLE IF NOT EXISTS `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `times_used` smallint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_customer_id`),
  KEY `rule_id` (`rule_id`,`customer_id`),
  KEY `customer_id` (`customer_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `salesrule_customer`
--


-- --------------------------------------------------------

--
-- 表的结构 `salesrule_label`
--

CREATE TABLE IF NOT EXISTS `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `IDX_RULE_STORE` (`rule_id`,`store_id`),
  KEY `FK_SALESRULE_LABEL_STORE` (`store_id`),
  KEY `FK_SALESRULE_LABEL_RULE` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `salesrule_label`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_bestsellers_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_daily` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_PRODUCT` (`period`,`store_id`,`product_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_bestsellers_aggregated_daily`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_bestsellers_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_monthly` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_PRODUCT` (`period`,`store_id`,`product_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_bestsellers_aggregated_monthly`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_bestsellers_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_yearly` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_PRODUCT` (`period`,`store_id`,`product_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_bestsellers_aggregated_yearly`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_billing_agreement`
--

CREATE TABLE IF NOT EXISTS `sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `method_code` varchar(32) NOT NULL,
  `reference_id` varchar(32) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`agreement_id`),
  KEY `IDX_CUSTOMER` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_billing_agreement`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_billing_agreement_order`
--

CREATE TABLE IF NOT EXISTS `sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `UNQ_BILLING_AGREEMENT_ORDER` (`agreement_id`,`order_id`),
  KEY `FK_BILLING_AGREEMENT_ORDER_ORDER` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sales_billing_agreement_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_creditmemo`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `adjustment_positive` decimal(12,4) DEFAULT NULL,
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `store_to_order_rate` decimal(12,4) DEFAULT NULL,
  `base_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_to_order_rate` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL,
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `shipping_amount` decimal(12,4) DEFAULT NULL,
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `adjustment_negative` decimal(12,4) DEFAULT NULL,
  `base_shipping_amount` decimal(12,4) DEFAULT NULL,
  `store_to_base_rate` decimal(12,4) DEFAULT NULL,
  `base_to_global_rate` decimal(12,4) DEFAULT NULL,
  `base_adjustment` decimal(12,4) DEFAULT NULL,
  `base_subtotal` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `subtotal` decimal(12,4) DEFAULT NULL,
  `adjustment` decimal(12,4) DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL,
  `base_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `email_sent` tinyint(1) unsigned DEFAULT NULL,
  `creditmemo_status` int(10) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `shipping_address_id` int(10) DEFAULT NULL,
  `billing_address_id` int(10) DEFAULT NULL,
  `invoice_id` int(10) DEFAULT NULL,
  `cybersource_token` varchar(255) DEFAULT NULL,
  `store_currency_code` char(3) DEFAULT NULL,
  `order_currency_code` char(3) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `global_currency_code` char(3) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_STATE` (`state`),
  KEY `IDX_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_creditmemo`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_creditmemo_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `is_customer_notified` int(10) DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_creditmemo_comment`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_creditmemo_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `store_to_order_rate` decimal(12,4) DEFAULT NULL,
  `base_to_order_rate` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `store_to_base_rate` decimal(12,4) DEFAULT NULL,
  `base_to_global_rate` decimal(12,4) DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `creditmemo_status` int(10) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `invoice_id` int(10) DEFAULT NULL,
  `store_currency_code` char(3) DEFAULT NULL,
  `order_currency_code` char(3) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `global_currency_code` char(3) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `order_increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_created_at` datetime DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_STATE` (`state`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_creditmemo_grid`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_creditmemo_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `base_price` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `base_row_total` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `row_total` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `base_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `price_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_tax_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL,
  `qty` decimal(12,4) DEFAULT NULL,
  `base_cost` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `order_item_id` int(10) DEFAULT NULL,
  `additional_data` text,
  `description` text,
  `weee_tax_applied` text,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_creditmemo_item`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_invoice`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `base_tax_amount` decimal(12,4) DEFAULT NULL,
  `store_to_order_rate` decimal(12,4) DEFAULT NULL,
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_to_order_rate` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `shipping_amount` decimal(12,4) DEFAULT NULL,
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `store_to_base_rate` decimal(12,4) DEFAULT NULL,
  `base_shipping_amount` decimal(12,4) DEFAULT NULL,
  `total_qty` decimal(12,4) DEFAULT NULL,
  `base_to_global_rate` decimal(12,4) DEFAULT NULL,
  `subtotal` decimal(12,4) DEFAULT NULL,
  `base_subtotal` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `billing_address_id` int(10) DEFAULT NULL,
  `is_used_for_refund` tinyint(1) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `email_sent` tinyint(1) unsigned DEFAULT NULL,
  `can_void_flag` tinyint(1) unsigned DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `shipping_address_id` int(10) DEFAULT NULL,
  `cybersource_token` varchar(255) DEFAULT NULL,
  `store_currency_code` char(3) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `order_currency_code` char(3) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `global_currency_code` char(3) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `invoice_type` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `real_order_id` varchar(255) DEFAULT NULL,
  `invoice_status_id` int(11) DEFAULT NULL,
  `is_virtual` int(11) DEFAULT NULL,
  `total_paid` decimal(12,4) DEFAULT NULL,
  `total_due` decimal(12,4) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_STATE` (`state`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_invoice`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_invoice_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `is_customer_notified` tinyint(1) unsigned DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_invoice_comment`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_invoice_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `state` int(10) DEFAULT NULL,
  `store_currency_code` char(3) DEFAULT NULL,
  `order_currency_code` char(3) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `global_currency_code` char(3) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `order_increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_created_at` datetime DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_STATE` (`state`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_invoice_grid`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_invoice_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `base_price` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `base_row_total` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `row_total` decimal(12,4) DEFAULT NULL,
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `base_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `price_incl_tax` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `base_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL,
  `qty` decimal(12,4) DEFAULT NULL,
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `base_cost` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `order_item_id` int(10) DEFAULT NULL,
  `additional_data` text,
  `description` text,
  `weee_tax_applied` text,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_invoice_item`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(32) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `protect_code` varchar(255) DEFAULT NULL,
  `shipping_description` varchar(255) DEFAULT NULL,
  `is_virtual` tinyint(1) unsigned DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `base_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_discount_canceled` decimal(12,4) DEFAULT NULL,
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL,
  `base_discount_refunded` decimal(12,4) DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `base_shipping_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL,
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL,
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL,
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL,
  `base_subtotal` decimal(12,4) DEFAULT NULL,
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL,
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL,
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL,
  `base_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_tax_canceled` decimal(12,4) DEFAULT NULL,
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL,
  `base_tax_refunded` decimal(12,4) DEFAULT NULL,
  `base_to_global_rate` decimal(12,4) DEFAULT NULL,
  `base_to_order_rate` decimal(12,4) DEFAULT NULL,
  `base_total_canceled` decimal(12,4) DEFAULT NULL,
  `base_total_invoiced` decimal(12,4) DEFAULT NULL,
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL,
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL,
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL,
  `base_total_paid` decimal(12,4) DEFAULT NULL,
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL,
  `base_total_refunded` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `discount_canceled` decimal(12,4) DEFAULT NULL,
  `discount_invoiced` decimal(12,4) DEFAULT NULL,
  `discount_refunded` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `shipping_amount` decimal(12,4) DEFAULT NULL,
  `shipping_canceled` decimal(12,4) DEFAULT NULL,
  `shipping_invoiced` decimal(12,4) DEFAULT NULL,
  `shipping_refunded` decimal(12,4) DEFAULT NULL,
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL,
  `store_to_base_rate` decimal(12,4) DEFAULT NULL,
  `store_to_order_rate` decimal(12,4) DEFAULT NULL,
  `subtotal` decimal(12,4) DEFAULT NULL,
  `subtotal_canceled` decimal(12,4) DEFAULT NULL,
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL,
  `subtotal_refunded` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `tax_canceled` decimal(12,4) DEFAULT NULL,
  `tax_invoiced` decimal(12,4) DEFAULT NULL,
  `tax_refunded` decimal(12,4) DEFAULT NULL,
  `total_canceled` decimal(12,4) DEFAULT NULL,
  `total_invoiced` decimal(12,4) DEFAULT NULL,
  `total_offline_refunded` decimal(12,4) DEFAULT NULL,
  `total_online_refunded` decimal(12,4) DEFAULT NULL,
  `total_paid` decimal(12,4) DEFAULT NULL,
  `total_qty_ordered` decimal(12,4) DEFAULT NULL,
  `total_refunded` decimal(12,4) DEFAULT NULL,
  `can_ship_partially` tinyint(1) unsigned DEFAULT NULL,
  `can_ship_partially_item` tinyint(1) unsigned DEFAULT NULL,
  `customer_is_guest` tinyint(1) unsigned DEFAULT NULL,
  `customer_note_notify` tinyint(1) unsigned DEFAULT NULL,
  `billing_address_id` int(10) DEFAULT NULL,
  `customer_group_id` smallint(5) DEFAULT NULL,
  `edit_increment` int(10) DEFAULT NULL,
  `email_sent` tinyint(1) unsigned DEFAULT NULL,
  `forced_do_shipment_with_invoice` tinyint(1) unsigned DEFAULT NULL,
  `gift_message_id` int(10) DEFAULT NULL,
  `payment_authorization_expiration` int(10) DEFAULT NULL,
  `paypal_ipn_customer_notified` int(10) DEFAULT NULL,
  `quote_address_id` int(10) DEFAULT NULL,
  `quote_id` int(10) DEFAULT NULL,
  `shipping_address_id` int(10) DEFAULT NULL,
  `adjustment_negative` decimal(12,4) DEFAULT NULL,
  `adjustment_positive` decimal(12,4) DEFAULT NULL,
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL,
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL,
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_total_due` decimal(12,4) DEFAULT NULL,
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL,
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL,
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `total_due` decimal(12,4) DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `customer_dob` datetime DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `applied_rule_ids` varchar(255) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_firstname` varchar(255) DEFAULT NULL,
  `customer_lastname` varchar(255) DEFAULT NULL,
  `customer_middlename` varchar(255) DEFAULT NULL,
  `customer_prefix` varchar(255) DEFAULT NULL,
  `customer_suffix` varchar(255) DEFAULT NULL,
  `customer_taxvat` varchar(255) DEFAULT NULL,
  `discount_description` varchar(255) DEFAULT NULL,
  `ext_customer_id` varchar(255) DEFAULT NULL,
  `ext_order_id` varchar(255) DEFAULT NULL,
  `global_currency_code` char(3) DEFAULT NULL,
  `hold_before_state` varchar(255) DEFAULT NULL,
  `hold_before_status` varchar(255) DEFAULT NULL,
  `order_currency_code` varchar(255) DEFAULT NULL,
  `original_increment_id` varchar(50) DEFAULT NULL,
  `relation_child_id` varchar(32) DEFAULT NULL,
  `relation_child_real_id` varchar(32) DEFAULT NULL,
  `relation_parent_id` varchar(32) DEFAULT NULL,
  `relation_parent_real_id` varchar(32) DEFAULT NULL,
  `remote_ip` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `store_currency_code` char(3) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `x_forwarded_for` varchar(255) DEFAULT NULL,
  `customer_note` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `total_item_count` smallint(5) unsigned DEFAULT '0',
  `customer_gender` int(11) DEFAULT NULL,
  `currency_rate` decimal(12,4) DEFAULT NULL,
  `tax_percent` decimal(12,4) DEFAULT NULL,
  `custbalance_amount` decimal(12,4) DEFAULT NULL,
  `currency_base_id` int(11) DEFAULT NULL,
  `real_order_id` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `is_multi_payment` int(11) DEFAULT NULL,
  `tracking_numbers` text,
  `is_hold` int(11) DEFAULT NULL,
  `base_custbalance_amount` decimal(12,4) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL,
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL,
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_STATE` (`state`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_EXT_ORDER_ID` (`ext_order_id`),
  KEY `IDX_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order_address`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `customer_address_id` int(10) DEFAULT NULL,
  `quote_address_id` int(10) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `country_id` char(2) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_order_address`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(32) DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `base_total_paid` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `total_paid` decimal(12,4) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `order_currency_code` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `IDX_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_TOTAL_PAID` (`total_paid`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SHIPPING_NAME` (`shipping_name`),
  KEY `IDX_BILLING_NAME` (`billing_name`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_order_grid`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_item_id` int(10) unsigned DEFAULT NULL,
  `quote_item_id` int(10) unsigned DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_options` text,
  `weight` decimal(12,4) DEFAULT '0.0000',
  `is_virtual` tinyint(1) unsigned DEFAULT NULL,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `applied_rule_ids` text,
  `additional_data` text,
  `free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_qty_decimal` tinyint(1) unsigned DEFAULT NULL,
  `no_discount` tinyint(1) unsigned DEFAULT '0',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000',
  `base_cost` decimal(12,4) DEFAULT '0.0000',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `original_price` decimal(12,4) DEFAULT NULL,
  `base_original_price` decimal(12,4) DEFAULT NULL,
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `row_weight` decimal(12,4) DEFAULT '0.0000',
  `gift_message_id` int(10) DEFAULT NULL,
  `gift_message_available` int(10) DEFAULT NULL,
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL,
  `tax_before_discount` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied` text,
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `ext_order_item_id` varchar(255) DEFAULT NULL,
  `locked_do_invoice` int(10) unsigned DEFAULT NULL,
  `locked_do_ship` int(10) unsigned DEFAULT NULL,
  `price_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL,
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL,
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL,
  `is_nominal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `IDX_ORDER` (`order_id`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_order_item`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order_payment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `base_shipping_captured` decimal(12,4) DEFAULT NULL,
  `shipping_captured` decimal(12,4) DEFAULT NULL,
  `amount_refunded` decimal(12,4) DEFAULT NULL,
  `base_amount_paid` decimal(12,4) DEFAULT NULL,
  `amount_canceled` decimal(12,4) DEFAULT NULL,
  `base_amount_authorized` decimal(12,4) DEFAULT NULL,
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL,
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL,
  `base_shipping_amount` decimal(12,4) DEFAULT NULL,
  `shipping_amount` decimal(12,4) DEFAULT NULL,
  `amount_paid` decimal(12,4) DEFAULT NULL,
  `amount_authorized` decimal(12,4) DEFAULT NULL,
  `base_amount_ordered` decimal(12,4) DEFAULT NULL,
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL,
  `shipping_refunded` decimal(12,4) DEFAULT NULL,
  `base_amount_refunded` decimal(12,4) DEFAULT NULL,
  `amount_ordered` decimal(12,4) DEFAULT NULL,
  `base_amount_canceled` decimal(12,4) DEFAULT NULL,
  `ideal_transaction_checked` tinyint(1) unsigned DEFAULT NULL,
  `quote_payment_id` int(10) DEFAULT NULL,
  `additional_data` text,
  `cc_exp_month` varchar(255) DEFAULT NULL,
  `cc_ss_start_year` varchar(255) DEFAULT NULL,
  `echeck_bank_name` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `cc_debug_request_body` varchar(255) DEFAULT NULL,
  `cc_secure_verify` varchar(255) DEFAULT NULL,
  `cybersource_token` varchar(255) DEFAULT NULL,
  `ideal_issuer_title` varchar(255) DEFAULT NULL,
  `protection_eligibility` varchar(255) DEFAULT NULL,
  `cc_approval` varchar(255) DEFAULT NULL,
  `cc_last4` varchar(255) DEFAULT NULL,
  `cc_status_description` varchar(255) DEFAULT NULL,
  `echeck_type` varchar(255) DEFAULT NULL,
  `paybox_question_number` varchar(255) DEFAULT NULL,
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL,
  `cc_ss_start_month` varchar(255) DEFAULT NULL,
  `echeck_account_type` varchar(255) DEFAULT NULL,
  `last_trans_id` varchar(255) DEFAULT NULL,
  `cc_cid_status` varchar(255) DEFAULT NULL,
  `cc_owner` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `ideal_issuer_id` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `cc_exp_year` varchar(255) DEFAULT NULL,
  `cc_status` varchar(255) DEFAULT NULL,
  `echeck_routing_number` varchar(255) DEFAULT NULL,
  `account_status` varchar(255) DEFAULT NULL,
  `anet_trans_method` varchar(255) DEFAULT NULL,
  `cc_debug_response_body` varchar(255) DEFAULT NULL,
  `cc_ss_issue` varchar(255) DEFAULT NULL,
  `echeck_account_name` varchar(255) DEFAULT NULL,
  `cc_avs_status` varchar(255) DEFAULT NULL,
  `cc_number_enc` varchar(255) DEFAULT NULL,
  `cc_trans_id` varchar(255) DEFAULT NULL,
  `flo2cash_account_id` varchar(255) DEFAULT NULL,
  `paybox_request_number` varchar(255) DEFAULT NULL,
  `address_status` varchar(255) DEFAULT NULL,
  `cc_raw_request` text,
  `cc_raw_response` text,
  `customer_payment_id` int(11) DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT NULL,
  `additional_information` text,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_order_payment`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order_status_history`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `is_customer_notified` int(10) DEFAULT NULL,
  `is_visible_on_front` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  `status` varchar(32) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`),
  KEY `IDX_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_order_status_history`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `converted_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) unsigned DEFAULT '1',
  `is_virtual` tinyint(1) unsigned DEFAULT '0',
  `is_multi_shipping` tinyint(1) unsigned DEFAULT '0',
  `items_count` int(10) unsigned DEFAULT '0',
  `items_qty` decimal(12,4) DEFAULT '0.0000',
  `orig_order_id` int(10) unsigned DEFAULT '0',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL,
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL,
  `global_currency_code` varchar(255) DEFAULT NULL,
  `base_currency_code` varchar(255) DEFAULT NULL,
  `store_currency_code` varchar(255) DEFAULT NULL,
  `quote_currency_code` varchar(255) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `checkout_method` varchar(255) DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT '0',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0',
  `customer_group_id` int(10) unsigned DEFAULT '0',
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_prefix` varchar(40) DEFAULT NULL,
  `customer_firstname` varchar(255) DEFAULT NULL,
  `customer_middlename` varchar(40) DEFAULT NULL,
  `customer_lastname` varchar(255) DEFAULT NULL,
  `customer_suffix` varchar(40) DEFAULT NULL,
  `customer_dob` datetime DEFAULT NULL,
  `customer_note` varchar(255) DEFAULT NULL,
  `customer_note_notify` tinyint(1) unsigned DEFAULT '1',
  `customer_is_guest` tinyint(1) unsigned DEFAULT '0',
  `customer_taxvat` varchar(255) DEFAULT NULL,
  `remote_ip` varchar(32) DEFAULT NULL,
  `applied_rule_ids` varchar(255) DEFAULT NULL,
  `reserved_order_id` varchar(64) DEFAULT '',
  `password_hash` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `subtotal` decimal(12,4) DEFAULT NULL,
  `base_subtotal` decimal(12,4) DEFAULT NULL,
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL,
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL,
  `gift_message_id` varchar(255) DEFAULT NULL,
  `is_changed` int(10) unsigned DEFAULT NULL,
  `trigger_recollect` tinyint(1) NOT NULL DEFAULT '0',
  `ext_shipping_info` text,
  `customer_gender` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `FK_SALES_QUOTE_STORE` (`store_id`),
  KEY `IDX_CUSTOMER` (`customer_id`,`store_id`,`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_quote`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_address`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_id` int(10) unsigned DEFAULT NULL,
  `save_in_address_book` tinyint(1) DEFAULT '0',
  `customer_address_id` int(10) unsigned DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `prefix` varchar(40) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(40) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `suffix` varchar(40) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `region_id` int(10) unsigned DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `same_as_billing` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `collect_shipping_rates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_method` varchar(255) NOT NULL DEFAULT '',
  `shipping_description` varchar(255) NOT NULL DEFAULT '',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `customer_notes` text,
  `applied_taxes` text,
  `gift_message_id` varchar(255) DEFAULT NULL,
  `discount_description` varchar(255) DEFAULT NULL,
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL,
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `FK_SALES_QUOTE_ADDRESS_SALES_QUOTE` (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_quote_address`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_address_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_item_id` int(10) unsigned DEFAULT NULL,
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `applied_rule_ids` text,
  `additional_data` text,
  `weight` decimal(12,4) DEFAULT '0.0000',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `row_weight` decimal(12,4) DEFAULT '0.0000',
  `gift_message_id` varchar(255) DEFAULT NULL,
  `base_cost` decimal(12,4) DEFAULT NULL,
  `price_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL,
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`address_item_id`),
  KEY `FK_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS` (`quote_address_id`),
  KEY `FK_SALES_QUOTE_ADDRESS_ITEM_QUOTE_ITEM` (`quote_item_id`),
  KEY `FK_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT` (`parent_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_quote_address_item`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_id` int(10) unsigned DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `parent_item_id` int(10) unsigned DEFAULT NULL,
  `is_virtual` tinyint(1) unsigned DEFAULT NULL,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `applied_rule_ids` text,
  `additional_data` text,
  `free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_qty_decimal` tinyint(1) unsigned DEFAULT NULL,
  `no_discount` tinyint(1) unsigned DEFAULT '0',
  `weight` decimal(12,4) DEFAULT '0.0000',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `custom_price` decimal(12,4) DEFAULT NULL,
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000',
  `row_weight` decimal(12,4) DEFAULT '0.0000',
  `product_type` varchar(255) DEFAULT NULL,
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL,
  `tax_before_discount` decimal(12,4) DEFAULT NULL,
  `original_custom_price` decimal(12,4) DEFAULT NULL,
  `gift_message_id` varchar(255) DEFAULT NULL,
  `weee_tax_applied` text,
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `base_cost` decimal(12,4) DEFAULT NULL,
  `price_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL,
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `FK_SALES_QUOTE_ITEM_SALES_QUOTE` (`quote_id`),
  KEY `FK_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM` (`parent_item_id`),
  KEY `FK_SALES_QUOTE_ITEM_CATALOG_PRODUCT_ENTITY` (`product_id`),
  KEY `FK_SALES_QUOTE_ITEM_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_quote_item`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_item_option`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `FK_SALES_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Additional options for quote item' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_quote_item_option`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_payment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `method` varchar(255) DEFAULT '',
  `cc_type` varchar(255) DEFAULT '',
  `cc_number_enc` varchar(255) DEFAULT '',
  `cc_last4` varchar(255) DEFAULT '',
  `cc_cid_enc` varchar(255) DEFAULT '',
  `cc_owner` varchar(255) DEFAULT '',
  `cc_exp_month` tinyint(2) unsigned DEFAULT '0',
  `cc_exp_year` smallint(4) unsigned DEFAULT '0',
  `cc_ss_owner` varchar(255) DEFAULT '',
  `cc_ss_start_month` tinyint(2) unsigned DEFAULT '0',
  `cc_ss_start_year` smallint(4) unsigned DEFAULT '0',
  `cybersource_token` varchar(255) DEFAULT '',
  `paypal_correlation_id` varchar(255) DEFAULT '',
  `paypal_payer_id` varchar(255) DEFAULT '',
  `paypal_payer_status` varchar(255) DEFAULT '',
  `po_number` varchar(255) DEFAULT '',
  `ideal_issuer_id` varchar(255) DEFAULT NULL,
  `ideal_issuer_list` varchar(255) DEFAULT NULL,
  `additional_information` text,
  PRIMARY KEY (`payment_id`),
  KEY `FK_SALES_QUOTE_PAYMENT_SALES_QUOTE` (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_quote_payment`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `carrier` varchar(255) DEFAULT NULL,
  `carrier_title` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `method_description` text,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `method_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rate_id`),
  KEY `FK_SALES_QUOTE_SHIPPING_RATE_ADDRESS` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_quote_shipping_rate`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_shipment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `total_weight` decimal(12,4) DEFAULT NULL,
  `total_qty` decimal(12,4) DEFAULT NULL,
  `email_sent` tinyint(1) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `shipping_address_id` int(10) DEFAULT NULL,
  `billing_address_id` int(10) DEFAULT NULL,
  `shipment_status` int(10) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_TOTAL_QTY` (`total_qty`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_shipment`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_shipment_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `is_customer_notified` int(10) DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_shipment_comment`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_shipment_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `total_qty` decimal(12,4) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `shipment_status` int(10) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `order_increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_created_at` datetime DEFAULT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_TOTAL_QTY` (`total_qty`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_SHIPMENT_STATUS` (`shipment_status`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SHIPPING_NAME` (`shipping_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_shipment_grid`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_shipment_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `row_total` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `qty` decimal(12,4) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `order_item_id` int(10) DEFAULT NULL,
  `additional_data` text,
  `description` text,
  `name` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_shipment_item`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_shipment_track`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `qty` decimal(12,4) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `number` text,
  `description` text,
  `title` varchar(255) DEFAULT NULL,
  `carrier_code` varchar(32) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_flat_shipment_track`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_invoiced_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `orders_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced_captured` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced_not_captured` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_invoiced_aggregated`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_invoiced_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `orders_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced_captured` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced_not_captured` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_invoiced_aggregated_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `sales_order_aggregated_created` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_order_aggregated_created`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_order_tax`
--

CREATE TABLE IF NOT EXISTS `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `percent` decimal(12,4) NOT NULL,
  `amount` decimal(12,4) NOT NULL,
  `priority` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `base_amount` decimal(12,4) NOT NULL,
  `process` smallint(6) NOT NULL,
  `base_real_amount` decimal(12,4) NOT NULL,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_id`),
  KEY `IDX_ORDER_TAX` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_order_tax`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `txn_id` varchar(100) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(100) DEFAULT NULL,
  `txn_type` varchar(15) NOT NULL DEFAULT '',
  `is_closed` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `additional_information` blob,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_ORDER_PAYMENT_TXN` (`order_id`,`payment_id`,`txn_id`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_PARENT_ID` (`parent_id`),
  KEY `IDX_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_payment_transaction`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_recurring_profile`
--

CREATE TABLE IF NOT EXISTS `sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(20) NOT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `method_code` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `subscriber_name` varchar(150) DEFAULT NULL,
  `start_datetime` datetime NOT NULL,
  `internal_reference_id` varchar(42) NOT NULL,
  `schedule_description` varchar(255) NOT NULL,
  `suspension_threshold` smallint(6) unsigned DEFAULT NULL,
  `bill_failed_later` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `period_unit` varchar(20) NOT NULL,
  `period_frequency` tinyint(3) unsigned DEFAULT NULL,
  `period_max_cycles` tinyint(3) unsigned DEFAULT NULL,
  `billing_amount` double(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `trial_period_unit` varchar(20) DEFAULT NULL,
  `trial_period_frequency` tinyint(3) unsigned DEFAULT NULL,
  `trial_period_max_cycles` tinyint(3) unsigned DEFAULT NULL,
  `trial_billing_amount` double(12,4) unsigned DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `shipping_amount` decimal(12,4) unsigned DEFAULT NULL,
  `tax_amount` decimal(12,4) unsigned DEFAULT NULL,
  `init_amount` decimal(12,4) unsigned DEFAULT NULL,
  `init_may_fail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order_info` text NOT NULL,
  `order_item_info` text NOT NULL,
  `billing_address_info` text NOT NULL,
  `shipping_address_info` text,
  `profile_vendor_info` text,
  `additional_info` text,
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `UNQ_INTERNAL_REF_ID` (`internal_reference_id`),
  KEY `IDX_RECURRING_PROFILE_CUSTOMER` (`customer_id`),
  KEY `IDX_RECURRING_PROFILE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_recurring_profile`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_recurring_profile_order`
--

CREATE TABLE IF NOT EXISTS `sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_PROFILE_ORDER` (`profile_id`,`order_id`),
  KEY `IDX_ORDER` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_recurring_profile_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_refunded_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `online_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `offline_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_refunded_aggregated`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_refunded_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `online_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `offline_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_refunded_aggregated_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_shipping_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `shipping_description` varchar(255) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `total_shipping` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_shipping_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_shipping_aggregated`
--


-- --------------------------------------------------------

--
-- 表的结构 `sales_shipping_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `shipping_description` varchar(255) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `total_shipping` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_shipping_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sales_shipping_aggregated_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `sendfriend_log`
--

CREATE TABLE IF NOT EXISTS `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` bigint(20) NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL,
  `website_id` smallint(5) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `IDX_REMOTE_ADDR` (`ip`),
  KEY `IDX_LOG_TIME` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sendfriend_log`
--


-- --------------------------------------------------------

--
-- 表的结构 `shipping_tablerate`
--

CREATE TABLE IF NOT EXISTS `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `website_id` int(11) NOT NULL DEFAULT '0',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0',
  `dest_region_id` int(10) NOT NULL DEFAULT '0',
  `dest_zip` varchar(10) NOT NULL DEFAULT '',
  `condition_name` varchar(20) NOT NULL DEFAULT '',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `dest_country` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `shipping_tablerate`
--


-- --------------------------------------------------------

--
-- 表的结构 `sitemap`
--

CREATE TABLE IF NOT EXISTS `sitemap` (
  `sitemap_id` int(11) NOT NULL AUTO_INCREMENT,
  `sitemap_type` varchar(32) DEFAULT NULL,
  `sitemap_filename` varchar(32) DEFAULT NULL,
  `sitemap_path` tinytext,
  `sitemap_time` timestamp NULL DEFAULT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`sitemap_id`),
  KEY `FK_SITEMAP_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sitemap`
--


-- --------------------------------------------------------

--
-- 表的结构 `strikeiron_tax_rate`
--

CREATE TABLE IF NOT EXISTS `strikeiron_tax_rate` (
  `tax_rate_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `tax_country_id` varchar(6) DEFAULT NULL,
  `tax_region_id` mediumint(9) unsigned DEFAULT NULL,
  `tax_postcode` varchar(12) DEFAULT NULL,
  `rate_value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Strikeiron tax rates' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `strikeiron_tax_rate`
--


-- --------------------------------------------------------

--
-- 表的结构 `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `first_customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `first_store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=199 ;

--
-- 转存表中的数据 `tag`
--

INSERT INTO `tag` (`tag_id`, `name`, `status`, `first_customer_id`, `first_store_id`) VALUES
(1, 'bed', 1, 1, 1),
(2, 'trendy', 1, 1, 1),
(3, 'wood', 1, 1, 1),
(4, 'young', 1, 1, 1),
(5, 'hip', 1, 1, 1),
(6, 'Excellent', 1, 1, 1),
(7, 'Furniture', 1, 1, 1),
(8, 'modern', 1, 1, 1),
(9, 'pocket', 1, 1, 1),
(10, 'clean', 1, 1, 1),
(11, 'apple', 1, 1, 1),
(12, 'cool', 1, 1, 1),
(13, 'universal', 1, 1, 1),
(14, 'clogs', 1, 1, 1),
(15, 'outdoor', 1, 1, 1),
(16, 'green', 1, 1, 1),
(17, 'bones', 1, 1, 1),
(18, 'pda', 1, 1, 1),
(19, 'slider', 1, 1, 1),
(20, 'mobile', 1, 1, 1),
(21, 'joe', 1, 1, 1),
(22, 'laces', 1, 1, 1),
(23, 'Camera', 1, 1, 2),
(24, 'charger', 1, 1, 2),
(25, 'Geil', 1, 1, 2),
(26, 'crackberry', 1, 1, 1),
(27, 'SEXY', 1, 1, 1),
(28, 'tight', 1, 1, 1),
(29, 'Test', 1, 1, 1),
(30, 'red', 1, 1, 1),
(31, 'sandals', 1, 1, 1),
(32, 'design', 1, 1, 1),
(33, 'ugly', 1, 1, 1),
(34, 'rubber', 1, 1, 1),
(35, 'light', 1, 1, 1),
(36, 'monikas', 1, 1, 1),
(37, 't-shirt', 1, 1, 1),
(38, 'test,', 1, 1, 1),
(39, 'Sportsshoes', 1, 1, 1),
(40, 'very', 1, 1, 1),
(41, 'good', 1, 1, 1),
(42, 'phone', 1, 1, 1),
(43, 'favorite', 1, 1, 1),
(44, 'shoe', 1, 1, 1),
(45, 'shirt', 1, 1, 1),
(46, 'monkeybutt', 1, 1, 1),
(47, 'pizzamonkey', 1, 1, 1),
(48, 'silver', 1, 1, 1),
(49, 'black', 1, 1, 1),
(50, 'sony', 1, 1, 1),
(51, 'laptop', 1, 1, 1),
(52, 'compact', 1, 1, 1),
(53, 'small screen', 1, 1, 1),
(54, 'tee-shirt', 1, 1, 1),
(55, 'computer', 1, 1, 1),
(56, 'shoes', 1, 1, 1),
(57, 'sandale', 1, 1, 1),
(58, 'tina', 1, 1, 1),
(59, 'brown', 1, 1, 1),
(60, 'lova', 1, 1, 1),
(61, 'Tag', 1, 1, 1),
(62, 'toes', -1, 1, 1),
(63, 'mniam', 1, 1, 1),
(64, 'couch', 1, 1, 1),
(65, 'chair', 1, 1, 1),
(66, 'sandals,', 1, 1, 1),
(67, 'blue,', 1, 1, 1),
(68, 'shoes,', 1, 1, 1),
(69, 'small', 1, 1, 1),
(70, 'nice', 1, 1, 1),
(71, 'badassness', 1, 1, 1),
(72, 'cellotastic', 1, 1, 1),
(73, 'macbook', 1, 1, 1),
(74, 'mac', 1, 1, 1),
(75, 'thongs', 1, 1, 1),
(76, 'bla', 1, 1, 3),
(77, 'notebook', 1, 1, 2),
(78, 'phonex', 1, 1, 1),
(79, 'süper', 1, 1, 1),
(80, 'testing', 1, 1, 1),
(81, 'awesome', 1, 1, 1),
(82, 'holeys', 1, 1, 1),
(83, 'Innovate', 1, 1, 1),
(84, 'buenisimo', 1, 1, 1),
(85, 'laptopik', 1, 1, 1),
(86, 'rouge', 1, 1, 1),
(87, 'modern,', 1, 1, 1),
(88, 'moderne', 1, 1, 1),
(89, 'blue', 1, 1, 1),
(90, 'sandally', 1, 1, 1),
(91, 'zoom', 1, 1, 1),
(92, 'amazing', 1, 1, 1),
(93, 'acer', 1, 1, 1),
(94, 'portable', 1, 1, 1),
(95, 'nippley', 1, 1, 1),
(96, 'headless', 1, 1, 1),
(97, 'prettyboy', 1, 1, 1),
(98, 'grey', 1, 1, 1),
(99, 'pouffe', 1, 1, 1),
(100, 'teste', 1, 1, 1),
(101, 'photography', 1, 1, 1),
(102, 'handy', 1, 1, 2),
(103, 'strange', 1, 1, 2),
(104, 'skeleton', 1, 1, 2),
(105, 'terry''s', 1, 1, 1),
(106, 'green,', 1, 1, 1),
(107, 'sexy,', 1, 1, 1),
(108, 'hi', 1, 1, 1),
(109, 'Hohoho', 1, 1, 2),
(110, 'Image', 1, 1, 1),
(111, 'canape', 1, 1, 1),
(112, 'chic', 1, 1, 1),
(113, 'dresser', 1, 1, 1),
(114, 'lens', 1, 1, 1),
(115, 'schoen', 1, 1, 1),
(116, 'golf', 1, 1, 1),
(117, 'philip', 1, 1, 1),
(118, 'coconut', 1, 1, 1),
(119, 'mytag', 1, 1, 1),
(120, 'mesas', 1, 1, 1),
(121, 'hideous', 1, 1, 1),
(122, 'mystuff', 1, 1, 1),
(123, 'user', 1, 1, 1),
(124, 'shittt', 1, 1, 1),
(125, 'sex', 1, 1, 1),
(126, 'sucks', 1, 1, 1),
(127, 'whynot', 1, 1, 3),
(128, 'camera-photo', 1, 1, 3),
(129, 'wow', 1, 1, 1),
(130, 'kzyhu', 1, 1, 1),
(131, 'badminded', 1, 1, 2),
(132, 'noerd', 1, 1, 2),
(133, 'square', 1, 1, 1),
(134, 'beach', 1, 1, 1),
(135, 'Core Duo', 1, 1, 1),
(136, 'spray', 1, 1, 1),
(137, 'paint', 1, 1, 1),
(138, 'tempos', 1, 1, 1),
(139, 'teacher', 1, 1, 1),
(140, 'ATT', 1, 1, 1),
(141, 'BlackBerry', 1, 1, 1),
(142, 'gadget', 1, 1, 1),
(143, 'pas', 1, 1, 3),
(144, 'mal', 1, 1, 3),
(145, 'SMUKKE', 1, 1, 1),
(146, 'kurti', 1, 1, 1),
(147, 'larum', 1, 1, 1),
(148, 'try', 1, 0, 0),
(149, 'WAAAAAOOO', 1, 1, 1),
(150, 'portatil', 1, 1, 1),
(151, 'CRAPOTO', 1, 1, 3),
(152, 'Kamera,', 1, 1, 2),
(153, 'Camera,', 1, 1, 2),
(154, 'Olympus', 1, 1, 2),
(155, 'Nine', 1, 1, 1),
(156, 'West', 1, 1, 1),
(157, 'Women''s', 1, 1, 1),
(158, 'Lucero', 1, 1, 1),
(159, 'Pump', 1, 1, 1),
(160, 'Web', 1, 1, 1),
(161, 'browser', 1, 1, 1),
(162, 'content,', 1, 1, 1),
(163, 'messaging', 1, 1, 1),
(164, 'sessions,', 1, 1, 1),
(165, 'and', -1, 1, 1),
(166, 'attachments.', 1, 1, 1),
(167, 'Anashria', 1, 1, 1),
(168, 'Womens', 1, 1, 1),
(169, 'Premier', 1, 1, 1),
(170, 'Leather', 1, 1, 1),
(171, 'Sandal', 1, 1, 1),
(172, 'arbeit', -1, 1, 2),
(173, 'crap', 1, 1, 1),
(174, 'Walkman', 1, 1, 1),
(175, 'gift', 1, 1, 1),
(176, 'for', -1, 1, 1),
(177, 'her', 1, 1, 1),
(178, 'Hupe', 1, 1, 1),
(179, 'sleek', -1, 1, 1),
(180, 'samsung', 1, 1, 1),
(181, 'footrest', 1, 1, 1),
(182, 'shit', 1, 1, 1),
(183, 'jogging', 1, 1, 1),
(184, 'cool t-shirt', 1, 1, 1),
(185, 'must get', 1, 1, 1),
(186, 'bright', 1, 1, 2),
(187, 'cellphone', 1, 1, 1),
(188, 'comfort', 1, 1, 3),
(189, 'ferrari', 1, 1, 1),
(190, 'shiny', 1, 1, 1),
(191, 'toll', 1, 1, 1),
(192, 'warm', 1, 1, 1),
(193, 'SOFA', 1, 1, 1),
(194, 'fast', 1, 1, 1),
(195, 'emo', 1, 1, 1),
(196, 'smart', 1, 1, 1),
(197, 'Canon', 1, 1, 3),
(198, 'appletoys', 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tag_properties`
--

CREATE TABLE IF NOT EXISTS `tag_properties` (
  `tag_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `base_popularity` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `FK_TAG_PROPERTIES_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tag_properties`
--


-- --------------------------------------------------------

--
-- 表的结构 `tag_relation`
--

CREATE TABLE IF NOT EXISTS `tag_relation` (
  `tag_relation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(6) unsigned NOT NULL DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`tag_relation_id`) USING BTREE,
  UNIQUE KEY `UNQ_TAG_CUSTOMER_PRODUCT_STORE` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  KEY `IDX_PRODUCT` (`product_id`),
  KEY `IDX_TAG` (`tag_id`),
  KEY `IDX_CUSTOMER` (`customer_id`),
  KEY `IDX_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `tag_relation`
--


-- --------------------------------------------------------

--
-- 表的结构 `tag_summary`
--

CREATE TABLE IF NOT EXISTS `tag_summary` (
  `tag_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `customers` int(11) unsigned NOT NULL DEFAULT '0',
  `products` int(11) unsigned NOT NULL DEFAULT '0',
  `uses` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'deprecated since 1.4.0.1',
  `historical_uses` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'deprecated since 1.4.0.1',
  `popularity` int(11) unsigned NOT NULL DEFAULT '0',
  `base_popularity` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'deprecated since 1.4.0.1',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `FK_TAG_SUMMARY_STORE` (`store_id`),
  KEY `IDX_TAG` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tag_summary`
--

INSERT INTO `tag_summary` (`tag_id`, `store_id`, `customers`, `products`, `uses`, `historical_uses`, `popularity`, `base_popularity`) VALUES
(24, 0, 1, 1, 1, 1, 1, 0),
(25, 0, 1, 1, 1, 1, 1, 0),
(103, 0, 1, 1, 1, 1, 1, 0),
(104, 0, 1, 1, 1, 1, 1, 0),
(127, 0, 1, 1, 1, 1, 1, 0),
(128, 0, 1, 1, 1, 1, 1, 0),
(131, 0, 1, 1, 1, 1, 1, 0),
(132, 0, 1, 1, 1, 1, 1, 0),
(143, 0, 1, 1, 1, 1, 1, 0),
(144, 0, 1, 1, 1, 1, 1, 0),
(148, 0, 0, 0, 0, 0, 0, 0),
(151, 0, 1, 1, 1, 1, 1, 0),
(152, 0, 1, 1, 1, 1, 1, 0),
(154, 0, 1, 1, 1, 1, 1, 0),
(172, 0, 1, 1, 1, 1, 1, 0),
(186, 0, 1, 1, 1, 1, 1, 0),
(188, 0, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tax_calculation`
--

CREATE TABLE IF NOT EXISTS `tax_calculation` (
  `tax_calculation_rate_id` int(11) NOT NULL,
  `tax_calculation_rule_id` int(11) NOT NULL,
  `customer_tax_class_id` smallint(6) NOT NULL,
  `product_tax_class_id` smallint(6) NOT NULL,
  KEY `FK_TAX_CALCULATION_RULE` (`tax_calculation_rule_id`),
  KEY `FK_TAX_CALCULATION_RATE` (`tax_calculation_rate_id`),
  KEY `FK_TAX_CALCULATION_CTC` (`customer_tax_class_id`),
  KEY `FK_TAX_CALCULATION_PTC` (`product_tax_class_id`),
  KEY `IDX_TAX_CALCULATION` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tax_calculation`
--

INSERT INTO `tax_calculation` (`tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 2, 3, 1),
(2, 2, 3, 1),
(1, 1, 3, 2),
(2, 1, 3, 2);

-- --------------------------------------------------------

--
-- 表的结构 `tax_calculation_rate`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_country_id` char(2) NOT NULL,
  `tax_region_id` mediumint(9) NOT NULL,
  `tax_postcode` varchar(21) NOT NULL,
  `code` varchar(255) NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `zip_is_range` tinyint(1) DEFAULT NULL,
  `zip_from` int(11) unsigned DEFAULT NULL,
  `zip_to` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_RATE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `IDX_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `IDX_TAX_CALCULATION_RATE_RANGE` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tax_calculation_rate`
--

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tax_calculation_rate_title`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_calculation_rate_id` int(11) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE` (`tax_calculation_rate_id`,`store_id`),
  KEY `FK_TAX_CALCULATION_RATE_TITLE_RATE` (`tax_calculation_rate_id`),
  KEY `FK_TAX_CALCULATION_RATE_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `tax_calculation_rate_title`
--


-- --------------------------------------------------------

--
-- 表的结构 `tax_calculation_rule`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `priority` mediumint(9) NOT NULL,
  `position` mediumint(9) NOT NULL,
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_RULE` (`priority`,`position`,`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tax_calculation_rule`
--

INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`) VALUES
(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1),
(2, 'Retail Customer-default-Rate 1', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tax_class`
--

CREATE TABLE IF NOT EXISTS `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) NOT NULL DEFAULT '',
  `class_type` enum('CUSTOMER','PRODUCT') NOT NULL DEFAULT 'CUSTOMER',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tax_class`
--

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(1, 'default', 'PRODUCT'),
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Shipping', 'PRODUCT');

-- --------------------------------------------------------

--
-- 表的结构 `tax_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `tax_order_aggregated_created` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `code` varchar(255) NOT NULL DEFAULT '',
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `percent` float(12,4) NOT NULL DEFAULT '0.0000',
  `orders_count` int(11) unsigned NOT NULL DEFAULT '0',
  `tax_base_amount_sum` float(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_CODE_ORDER_STATUS` (`period`,`store_id`,`code`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `tax_order_aggregated_created`
--


-- --------------------------------------------------------

--
-- 表的结构 `weee_discount`
--

CREATE TABLE IF NOT EXISTS `weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_WEBSITE` (`website_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_PRODUCT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_GROUP` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weee_discount`
--


-- --------------------------------------------------------

--
-- 表的结构 `weee_tax`
--

CREATE TABLE IF NOT EXISTS `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(2) NOT NULL DEFAULT '',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `state` varchar(255) NOT NULL DEFAULT '*',
  `attribute_id` smallint(5) unsigned NOT NULL,
  `entity_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`value_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_WEBSITE` (`website_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_PRODUCT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_COUNTRY` (`country`),
  KEY `FK_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `weee_tax`
--


-- --------------------------------------------------------

--
-- 表的结构 `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `parameters` text,
  PRIMARY KEY (`widget_id`),
  KEY `IDX_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `widget`
--


-- --------------------------------------------------------

--
-- 表的结构 `widget_instance`
--

CREATE TABLE IF NOT EXISTS `widget_instance` (
  `instance_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT '',
  `package_theme` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `store_ids` varchar(255) NOT NULL DEFAULT '0',
  `widget_parameters` text,
  `sort_order` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `widget_instance`
--


-- --------------------------------------------------------

--
-- 表的结构 `widget_instance_page`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `group` varchar(25) NOT NULL DEFAULT '',
  `layout_handle` varchar(255) NOT NULL DEFAULT '',
  `block_reference` varchar(255) NOT NULL DEFAULT '',
  `for` varchar(25) NOT NULL DEFAULT '',
  `entities` text,
  `template` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`page_id`),
  KEY `IDX_WIDGET_WIDGET_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `widget_instance_page`
--


-- --------------------------------------------------------

--
-- 表的结构 `widget_instance_page_layout`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page_layout` (
  `page_id` int(11) unsigned NOT NULL DEFAULT '0',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `page_id` (`page_id`,`layout_update_id`),
  KEY `IDX_WIDGET_WIDGET_INSTANCE_PAGE_ID` (`page_id`),
  KEY `IDX_WIDGET_WIDGET_INSTANCE_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `widget_instance_page_layout`
--


-- --------------------------------------------------------

--
-- 表的结构 `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `shared` tinyint(1) unsigned DEFAULT '0',
  `sharing_code` varchar(32) NOT NULL DEFAULT '',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `UNQ_CUSTOMER` (`customer_id`),
  KEY `IDX_IS_SHARED` (`shared`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Wishlist main' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `wishlist`
--


-- --------------------------------------------------------

--
-- 表的结构 `wishlist_item`
--

CREATE TABLE IF NOT EXISTS `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`wishlist_item_id`),
  KEY `IDX_WISHLIST` (`wishlist_id`),
  KEY `IDX_PRODUCT` (`product_id`),
  KEY `IDX_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `wishlist_item`
--


--
-- 限制导出的表
--

--
-- 限制表 `admin_rule`
--
ALTER TABLE `admin_rule`
  ADD CONSTRAINT `FK_admin_rule` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `api_rule`
--
ALTER TABLE `api_rule`
  ADD CONSTRAINT `FK_api_rule` FOREIGN KEY (`role_id`) REFERENCES `api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `api_session`
--
ALTER TABLE `api_session`
  ADD CONSTRAINT `FK_API_SESSION_USER` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogindex_aggregation`
--
ALTER TABLE `catalogindex_aggregation`
  ADD CONSTRAINT `FK_CATALOGINDEX_AGGREGATION_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogindex_aggregation_to_tag`
--
ALTER TABLE `catalogindex_aggregation_to_tag`
  ADD CONSTRAINT `FK_CATALOGINDEX_AGGREGATION_TO_TAG_AGGREGATION` FOREIGN KEY (`aggregation_id`) REFERENCES `catalogindex_aggregation` (`aggregation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINDEX_AGGREGATION_TO_TAG_TAG` FOREIGN KEY (`tag_id`) REFERENCES `catalogindex_aggregation_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogindex_eav`
--
ALTER TABLE `catalogindex_eav`
  ADD CONSTRAINT `FK_CATALOGINDEX_EAV_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINDEX_EAV_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINDEX_EAV_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogindex_minimal_price`
--
ALTER TABLE `catalogindex_minimal_price`
  ADD CONSTRAINT `FK_CATALOGINDEX_MINIMAL_PRICE_CUSTOMER_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINDEX_MINIMAL_PRICE_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CI_MINIMAL_PRICE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogindex_price`
--
ALTER TABLE `catalogindex_price`
  ADD CONSTRAINT `FK_CATALOGINDEX_PRICE_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINDEX_PRICE_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CI_PRICE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `FK_CATALOGINVENTORY_STOCK_ITEM_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINVENTORY_STOCK_ITEM_STOCK` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD CONSTRAINT `FK_CATALOGINVENTORY_STOCK_STATUS_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINVENTORY_STOCK_STATUS_STOCK` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINVENTORY_STOCK_STATUS_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_RULE` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD CONSTRAINT `FK_catalogrule_product_customergroup` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_catalogrule_product_rule` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_catalogrule_product_website` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD CONSTRAINT `FK_catalogrule_product_price_customergroup` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRICE_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_catalogrule_product_price_website` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
  ADD CONSTRAINT `FK_CATALOGSEARCH_QUERY_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogsearch_result`
--
ALTER TABLE `catalogsearch_result`
  ADD CONSTRAINT `FK_CATALOGSEARCH_RESULT_CATALOG_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGSEARCH_RESULT_QUERY` FOREIGN KEY (`query_id`) REFERENCES `catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_EMTITY_INT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_EMTITY_INT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_EMTITY_INT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_flat_store_1`
--
ALTER TABLE `catalog_category_flat_store_1`
  ADD CONSTRAINT `FK_CATEGORY_FLAT_CATEGORY_ID_STORE_1` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATEGORY_FLAT_STORE_ID_STORE_1` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_flat_store_2`
--
ALTER TABLE `catalog_category_flat_store_2`
  ADD CONSTRAINT `FK_CATEGORY_FLAT_CATEGORY_ID_STORE_2` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATEGORY_FLAT_STORE_ID_STORE_2` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_flat_store_3`
--
ALTER TABLE `catalog_category_flat_store_3`
  ADD CONSTRAINT `FK_CATEGORY_FLAT_CATEGORY_ID_STORE_3` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATEGORY_FLAT_STORE_ID_STORE_3` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `CATALOG_CATEGORY_PRODUCT_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CATALOG_CATEGORY_PRODUCT_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_CATEGORY_ENTITY` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_PRODUCT_ENTITY` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATEGORY_PRODUCT_INDEX_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `FK_CATALOG_EAV_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_enabled_index`
--
ALTER TABLE `catalog_product_enabled_index`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_PRODUCT_ENTITY` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_MEDIA_GALLERY_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_MEDIA_GALLERY_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- 限制表 `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_MEDIA_GALLERY_VALUE_GALLERY` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_MEDIA_GALLERY_VALUE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE;

--
-- 限制表 `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `FK_catalog_product_entity_tier_price_group` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TIER_PRICE_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_TIER_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_flat_1`
--
ALTER TABLE `catalog_product_flat_1`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_FLAT_1_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_PRICE_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_TIER_PRICE_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `FK_PRODUCT_LINK_LINKED_PRODUCT` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_LINK_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_LINK_TYPE` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `FK_ATTRIBUTE_PRODUCT_LINK_TYPE` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `FK_DECIMAL_LINK` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DECIMAL_PRODUCT_LINK_ATTRIBUTE` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `FK_INT_PRODUCT_LINK` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_INT_PRODUCT_LINK_ATTRIBUTE` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- 限制表 `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `FK_VARCHAR_LINK` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_VARCHAR_PRODUCT_LINK_ATTRIBUTE` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRICE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRICE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TITLE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_RELATION_CHILD` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_RELATION_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `FK_SUPER_PRODUCT_ATTRIBUTE_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- 限制表 `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_ATTRIBUTE` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_super_attribute_pricing`
--
ALTER TABLE `catalog_product_super_attribute_pricing`
  ADD CONSTRAINT `catalog_product_super_attribute_pricing_ibfk_1` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_SUPER_PRICE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SUPER_PRODUCT_ATTRIBUTE_PRICING` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `catalog_product_super_link_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_product_super_link_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SUPER_PRODUCT_LINK_ENTITY` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SUPER_PRODUCT_LINK_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_WEBSITE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_WEBSITE_PRODUCT_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `FK_CHECKOUT_AGREEMENT` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CHECKOUT_AGREEMENT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_BLOCK` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_PAGE` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_cache_tag`
--
ALTER TABLE `core_cache_tag`
  ADD CONSTRAINT `FK_CORE_CACHE_TAG` FOREIGN KEY (`cache_id`) REFERENCES `core_cache` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_layout_link`
--
ALTER TABLE `core_layout_link`
  ADD CONSTRAINT `FK_CORE_LAYOUT_LINK_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_LAYOUT_LINK_UPDATE` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_session`
--
ALTER TABLE `core_session`
  ADD CONSTRAINT `FK_SESSION_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_store`
--
ALTER TABLE `core_store`
  ADD CONSTRAINT `FK_STORE_GROUP_STORE` FOREIGN KEY (`group_id`) REFERENCES `core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_STORE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_store_group`
--
ALTER TABLE `core_store_group`
  ADD CONSTRAINT `FK_STORE_GROUP_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_translate`
--
ALTER TABLE `core_translate`
  ADD CONSTRAINT `FK_CORE_TRANSLATE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  ADD CONSTRAINT `core_url_rewrite_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_variable_value`
--
ALTER TABLE `core_variable_value`
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `coupon_aggregated`
--
ALTER TABLE `coupon_aggregated`
  ADD CONSTRAINT `FK_SALESTRULE_COUPON_AGGREGATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `coupon_aggregated_order`
--
ALTER TABLE `coupon_aggregated_order`
  ADD CONSTRAINT `FK_SALESTRULE_COUPON_AGGREGATED_ORDER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_CUSTOMER_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DATETIME_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DATETIME_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DATETIME_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DECIMAL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DECIMAL_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DECIMAL_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_INT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_INT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_INT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_TEXT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_TEXT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_TEXT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_VARCHAR_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_VARCHAR_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_VARCHAR_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `FK_CUSTOMER_EAV_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `FK_CUSTOMER_DATETIME_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_DATETIME_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_DATETIME_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `FK_CUSTOMER_DECIMAL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_DECIMAL_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_DECIMAL_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `FK_CUSTOMER_INT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_INT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_INT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `FK_CUSTOMER_TEXT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_TEXT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_TEXT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `FK_CUSTOMER_VARCHAR_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_VARCHAR_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_VARCHAR_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_PROFILE` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE;

--
-- 限制表 `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_EXPORT_BATCH` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE;

--
-- 限制表 `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_IMPORT_BATCH` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE;

--
-- 限制表 `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
  ADD CONSTRAINT `FK_dataflow_import_data` FOREIGN KEY (`session_id`) REFERENCES `dataflow_session` (`session_id`);

--
-- 限制表 `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
  ADD CONSTRAINT `FK_dataflow_profile_history` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `design_change`
--
ALTER TABLE `design_change`
  ADD CONSTRAINT `FK_DESIGN_CHANGE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `FK_DIRECTORY_REGION_NAME_REGION` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `FK_DOWNLODABLE_LINK_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_LINK` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_LINK` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `FK_DOWNLODABLE_SAMPLE_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `FK_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_SAMPLE_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `FK_eav_attribute` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `FK_eav_attribute_group` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `FK_ATTRIBUTE_LABEL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ATTRIBUTE_LABEL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `FK_ATTRIBUTE_OPTION_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `FK_ATTRIBUTE_OPTION_VALUE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ATTRIBUTE_OPTION_VALUE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `FK_eav_attribute_set` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD CONSTRAINT `FK_eav_entity` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_eav_entity_store` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `FK_eav_entity_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_eav_entity_attribute_group` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_ATTRIVUTE_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_ATTRIVUTE_GROUP` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `FK_eav_entity_store_entity_type` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_eav_entity_store_store` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_FORM_FIELDSET` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_FORM_TYPE` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_FORM_TYPE` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_FORM_FIELDSET` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_FORM_TYPE` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `googlebase_attributes`
--
ALTER TABLE `googlebase_attributes`
  ADD CONSTRAINT `GOOGLEBASE_ATTRIBUTES_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `GOOGLEBASE_ATTRIBUTES_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `googlebase_types` (`type_id`) ON DELETE CASCADE;

--
-- 限制表 `googlebase_items`
--
ALTER TABLE `googlebase_items`
  ADD CONSTRAINT `GOOGLEBASE_ITEMS_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `GOOGLEBASE_ITEMS_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE;

--
-- 限制表 `googlebase_types`
--
ALTER TABLE `googlebase_types`
  ADD CONSTRAINT `GOOGLEBASE_TYPES_ATTRIBUTE_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

--
-- 限制表 `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  ADD CONSTRAINT `FK_GOOGLEOPTIMIZER_CODE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `index_process_event`
--
ALTER TABLE `index_process_event`
  ADD CONSTRAINT `FK_INDEX_EVNT_PROCESS` FOREIGN KEY (`event_id`) REFERENCES `index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT` FOREIGN KEY (`process_id`) REFERENCES `index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `FK_PROBLEM_QUEUE` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`),
  ADD CONSTRAINT `FK_PROBLEM_SUBSCRIBER` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`);

--
-- 限制表 `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `FK_QUEUE_TEMPLATE` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE;

--
-- 限制表 `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `FK_QUEUE_LINK_QUEUE` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_QUEUE_LINK_SUBSCRIBER` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

--
-- 限制表 `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `FK_LINK_QUEUE` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_STORE_LINK_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `FK_NEWSLETTER_SUBSCRIBER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_PAYPAL_SETTLEMENT_ROW_REPORT` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `poll`
--
ALTER TABLE `poll`
  ADD CONSTRAINT `FK_POLL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD CONSTRAINT `FK_POLL_PARENT` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `poll_store`
--
ALTER TABLE `poll_store`
  ADD CONSTRAINT `FK_POLL_STORE_POLL` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_POLL_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `poll_vote`
--
ALTER TABLE `poll_vote`
  ADD CONSTRAINT `FK_POLL_ANSWER` FOREIGN KEY (`poll_answer_id`) REFERENCES `poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_RATING_ENTITY_KEY` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating_option`
--
ALTER TABLE `rating_option`
  ADD CONSTRAINT `FK_RATING_OPTION_RATING` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `FK_RATING_OPTION_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_OPTION_VALUE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `FK_RATING_OPTION_VALUE_AGGREGATE` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating_store`
--
ALTER TABLE `rating_store`
  ADD CONSTRAINT `FK_RATING_STORE_RATING` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_RATING_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating_title`
--
ALTER TABLE `rating_title`
  ADD CONSTRAINT `FK_RATING_TITLE` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `report_event`
--
ALTER TABLE `report_event`
  ADD CONSTRAINT `FK_REPORT_EVENT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_EVENT_TYPE` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_REVIEW_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_STATUS` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`);

--
-- 限制表 `review_detail`
--
ALTER TABLE `review_detail`
  ADD CONSTRAINT `FK_REVIEW_DETAIL_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_DETAIL_REVIEW` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_DETAIL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `FK_REVIEW_ENTITY_SUMMARY_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `review_store`
--
ALTER TABLE `review_store`
  ADD CONSTRAINT `FK_REVIEW_STORE_REVIEW` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_store_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `FK_SALESRULE_COUPON_RULE_ID_SALESRULE` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `FK_SALESRULE_COUPON_CUSTOMER_COUPON_ID_CUSTOMER_ENTITY` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_COUPON_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `FK_salesrule_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_salesrule_customer_rule` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `FK_SALESRULE_LABEL_RULE` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_LABEL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_DAILY_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_DAILY_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_MONTHLY_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_MONTHLY_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_YEARLY_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_YEARLY_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_billing_agreement`
--
ALTER TABLE `sales_billing_agreement`
  ADD CONSTRAINT `FK_BILLING_AGREEMENT_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_billing_agreement_order`
--
ALTER TABLE `sales_billing_agreement_order`
  ADD CONSTRAINT `FK_BILLING_AGREEMENT_ORDER_AGREEMENT` FOREIGN KEY (`agreement_id`) REFERENCES `sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_BILLING_AGREEMENT_ORDER_ORDER` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_creditmemo`
--
ALTER TABLE `sales_flat_creditmemo`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_PARENT` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_creditmemo_comment`
--
ALTER TABLE `sales_flat_creditmemo_comment`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_COMMENT_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_creditmemo_grid`
--
ALTER TABLE `sales_flat_creditmemo_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_GRID_PARENT` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_GRID_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_creditmemo_item`
--
ALTER TABLE `sales_flat_creditmemo_item`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_ITEM_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_invoice`
--
ALTER TABLE `sales_flat_invoice`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_PARENT` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_invoice_comment`
--
ALTER TABLE `sales_flat_invoice_comment`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_COMMENT_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_invoice_grid`
--
ALTER TABLE `sales_flat_invoice_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_PARENT` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_invoice_item`
--
ALTER TABLE `sales_flat_invoice_item`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_ITEM_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order`
--
ALTER TABLE `sales_flat_order`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order_address`
--
ALTER TABLE `sales_flat_order_address`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ADDRESS_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order_grid`
--
ALTER TABLE `sales_flat_order_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_PARENT` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order_item`
--
ALTER TABLE `sales_flat_order_item`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_PARENT` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order_payment`
--
ALTER TABLE `sales_flat_order_payment`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_PAYMENT_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order_status_history`
--
ALTER TABLE `sales_flat_order_status_history`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote`
--
ALTER TABLE `sales_flat_quote`
  ADD CONSTRAINT `FK_SALES_QUOTE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_address`
--
ALTER TABLE `sales_flat_quote_address`
  ADD CONSTRAINT `FK_SALES_QUOTE_ADDRESS_SALES_QUOTE` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_address_item`
--
ALTER TABLE `sales_flat_quote_address_item`
  ADD CONSTRAINT `FK_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS` FOREIGN KEY (`quote_address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_QUOTE_ADDRESS_ITEM_QUOTE_ITEM` FOREIGN KEY (`quote_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_item`
--
ALTER TABLE `sales_flat_quote_item`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_QUOTE_ITEM_CATALOG_PRODUCT_ENTITY` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_QUOTE_ITEM_SALES_QUOTE` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_QUOTE_ITEM_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_item_option`
--
ALTER TABLE `sales_flat_quote_item_option`
  ADD CONSTRAINT `FK_SALES_QUOTE_ITEM_OPTION_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_payment`
--
ALTER TABLE `sales_flat_quote_payment`
  ADD CONSTRAINT `FK_SALES_QUOTE_PAYMENT_SALES_QUOTE` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_shipping_rate`
--
ALTER TABLE `sales_flat_quote_shipping_rate`
  ADD CONSTRAINT `FK_SALES_QUOTE_SHIPPING_RATE_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_shipment`
--
ALTER TABLE `sales_flat_shipment`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_PARENT` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_shipment_comment`
--
ALTER TABLE `sales_flat_shipment_comment`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_COMMENT_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_shipment_grid`
--
ALTER TABLE `sales_flat_shipment_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_PARENT` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_shipment_item`
--
ALTER TABLE `sales_flat_shipment_item`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_ITEM_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_shipment_track`
--
ALTER TABLE `sales_flat_shipment_track`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_TRACK_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_ORDER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `FK_SALES_ORDER_AGGREGATED_CREATED` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_ORDER` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_PAYMENT` FOREIGN KEY (`payment_id`) REFERENCES `sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_recurring_profile`
--
ALTER TABLE `sales_recurring_profile`
  ADD CONSTRAINT `FK_RECURRING_PROFILE_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RECURRING_PROFILE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_recurring_profile_order`
--
ALTER TABLE `sales_recurring_profile_order`
  ADD CONSTRAINT `FK_RECURRING_PROFILE_ORDER_ORDER` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RECURRING_PROFILE_ORDER_PROFILE` FOREIGN KEY (`profile_id`) REFERENCES `sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_ORDER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_ORDER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sitemap`
--
ALTER TABLE `sitemap`
  ADD CONSTRAINT `FK_SITEMAP_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tag_properties`
--
ALTER TABLE `tag_properties`
  ADD CONSTRAINT `FK_TAG_PROPERTIES_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_PROPERTIES_TAG` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tag_relation`
--
ALTER TABLE `tag_relation`
  ADD CONSTRAINT `FK_TAG_RELATION_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_TAG` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tag_summary`
--
ALTER TABLE `tag_summary`
  ADD CONSTRAINT `FK_TAG_SUMMARY_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_SUMMARY_TAG` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `FK_TAX_CALCULATION_CTC` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_PTC` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_RATE` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_RULE` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_TAX_CALCULATION_RATE_TITLE_RATE` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_RATE_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `FK_TAX_ORDER_AGGREGATED_CREATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `weee_discount`
--
ALTER TABLE `weee_discount`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_COUNTRY` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `FK_WIDGET_WIDGET_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `FK_WIDGET_WIDGET_INSTANCE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WIDGET_WIDGET_INSTANCE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `FK_WISHLIST_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `FK_WISHLIST_ITEM_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WISHLIST_ITEM_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WISHLIST_ITEM_WISHLIST` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
