-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jun 11, 2017 at 08:37 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chime`
--
DROP DATABASE `chime`;
CREATE DATABASE IF NOT EXISTS `chime` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chime`;

-- --------------------------------------------------------

--
-- Table structure for table `user_content`
--

DROP TABLE IF EXISTS `user_content`;
CREATE TABLE `user_content` (
`contentID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `lesson_name` varchar(500) NOT NULL,
  `category` int(11) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_content`
--

INSERT INTO `user_content` (`contentID`, `userID`, `lesson_name`, `category`, `difficulty`, `content`) VALUES
(3, 1, 'Java programming', 3, 3, '<h3 id="N100DA" class="ibm-h3">The Java compiler</h3>\r\n<p>When you program for the Java platform, you write source code in .java files and then compile them. The compiler checks your code against the language''s syntax rules, then writes out <em>bytecode</em> in .class files. Bytecode is a set of instructions targeted to run on a Java virtual machine (JVM). In adding this level of abstraction, the Java compiler differs from other language compilers, which write out instructions suitable for the CPU chipset the program will run on.</p>\r\n<h3 id="N100E4" class="ibm-h3">The JVM</h3>\r\n<p>At runtime, the JVM reads and interprets .class files and executes the program''s instructions on the native hardware platform for which the JVM was written. The JVM interprets the bytecode just as a CPU would interpret assembly-language instructions. The difference is that the JVM is a piece of software written specifically for a particular platform. The JVM is the heart of the Java language''s "write-once, run-anywhere" principle. Your code can run on any chipset for which a suitable JVM implementation is available. JVMs are available for major platforms like Linux and Windows, and subsets of the Java language have been implemented in JVMs for mobile phones and hobbyist chips.</p>'),
(4, 1, 'Lesson in PHP', 3, 1, '<div id="tutorial" class="chapter">\r\n<div class="info">\r\n<h1>A simple tutorial</h1>\r\n<h2>Table of Contents</h2>\r\n<ul class="chunklist chunklist_chapter">\r\n<li><a href="http://php.net/manual/en/tutorial.requirements.php">What do I need?</a></li>\r\n<li><a href="http://php.net/manual/en/tutorial.firstpage.php">Your first PHP-enabled page</a></li>\r\n<li><a href="http://php.net/manual/en/tutorial.useful.php">Something Useful</a></li>\r\n<li><a href="http://php.net/manual/en/tutorial.forms.php">Dealing with Forms</a></li>\r\n<li><a href="http://php.net/manual/en/tutorial.oldcode.php">Using old code with new versions of PHP</a></li>\r\n<li><a href="http://php.net/manual/en/tutorial.whatsnext.php">What''s next?</a></li>\r\n</ul>\r\n</div>\r\n<p class="para">Here we would like to show the very basics of PHP in a short, simple tutorial. This text only deals with dynamic web page creation with PHP, though PHP is not only capable of creating web pages. See the section titled <a class="link" href="http://php.net/manual/en/intro-whatcando.php">What can PHP do</a> for more information.</p>\r\n<p class="para">PHP-enabled web pages are treated just like regular HTML pages and you can create and edit them the same way you normally create regular HTML pages.</p>\r\n</div>'),
(5, 1, 'Introduction to Machine Learning', 3, 4, '<h3>Hello World of Machine Learning</h3>\r\n<p>The best small project to start with on a new tool is the classification of iris flowers (e.g. <a href="https://archive.ics.uci.edu/ml/datasets/Iris">the iris dataset</a>).</p>\r\n<p>This is a good project because it is so well understood.</p>\r\n<ul>\r\n<li>Attributes are numeric so you have to figure out how to load and handle data.</li>\r\n<li>It is a classification problem, allowing you to practice with perhaps an easier type of supervised learning algorithm.</li>\r\n<li>It is a multi-class classification problem (multi-nominal) that may require some specialized handling.</li>\r\n<li>It only has 4 attributes and 150 rows, meaning it is small and easily fits into memory (and a screen or A4 page).</li>\r\n<li>All of the numeric attributes are in the same units and the same scale, not requiring any special scaling or transforms to get started.</li>\r\n</ul>\r\n<p>Let&rsquo;s get started with your hello world machine learning project in Python.</p>\r\n<h2>Machine Learning in Python: Step-By-Step Tutorial<br /> (start here)</h2>\r\n<p>In this section, we are going to work through a small machine learning project end-to-end.</p>\r\n<p>Here is an overview of what we are going to cover:</p>\r\n<ol>\r\n<li>Installing the Python and SciPy platform.</li>\r\n<li>Loading the dataset.</li>\r\n<li>Summarizing the dataset.</li>\r\n<li>Visualizing the dataset.</li>\r\n<li>Evaluating some algorithms.</li>\r\n<li>Making some predictions.</li>\r\n</ol>\r\n<p>Take your time. Work through each step.</p>\r\n<p>Try to type in the commands yourself or copy-and-paste the commands to speed things up.</p>\r\n<p>If you have any questions at all, please leave a comment at the bottom of the post.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_content`
--
ALTER TABLE `user_content`
 ADD PRIMARY KEY (`contentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_content`
--
ALTER TABLE `user_content`
MODIFY `contentID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;--
-- Database: `chime_comm`
--
DROP DATABASE `chime_comm`;
CREATE DATABASE IF NOT EXISTS `chime_comm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chime_comm`;

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(250) NOT NULL DEFAULT '',
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `page` varchar(250) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `username`, `ip_address`, `page`, `date_added`) VALUES
(1, 'admin', '::1', 'main/checklist', '2017-06-10 21:22:42'),
(2, 'admin', '::1', 'main/checklist', '2017-06-10 21:22:55'),
(3, 'admin', '::1', 'main/checklist', '2017-06-10 21:36:08'),
(4, 'admin', '::1', 'settings/viewers', '2017-06-10 21:36:26'),
(5, 'admin', '::1', 'manage/comments', '2017-06-10 21:36:31'),
(6, 'admin', '::1', 'main/checklist', '2017-06-10 21:36:38'),
(7, 'admin', '::1', 'settings/layout_comments', '2017-06-10 21:36:44'),
(8, 'admin', '::1', 'layout_comments/gravatar', '2017-06-10 21:36:56'),
(9, 'admin', '::1', 'layout_comments/gravatar', '2017-06-10 21:37:02'),
(10, 'admin', '::1', 'settings/layout_comments', '2017-06-10 21:37:04'),
(11, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:37:32'),
(12, 'admin', '::1', 'layout_form/upload', '2017-06-10 21:37:44'),
(13, 'admin', '::1', 'layout_form/upload', '2017-06-10 21:37:48'),
(14, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:37:50'),
(15, 'admin', '::1', 'layout_form/website', '2017-06-10 21:37:53'),
(16, 'admin', '::1', 'layout_form/website', '2017-06-10 21:37:57'),
(17, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:37:58'),
(18, 'admin', '::1', 'layout_form/captcha', '2017-06-10 21:38:48'),
(19, 'admin', '::1', 'layout_form/captcha', '2017-06-10 21:38:52'),
(20, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:38:56'),
(21, 'admin', '::1', 'layout_form/powered', '2017-06-10 21:39:02'),
(22, 'admin', '::1', 'layout_form/powered', '2017-06-10 21:39:12'),
(23, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:39:14'),
(24, 'admin', '::1', 'layout_form/preview', '2017-06-10 21:39:20'),
(25, 'admin', '::1', 'layout_form/preview', '2017-06-10 21:39:23'),
(26, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:39:25'),
(27, 'admin', '::1', 'layout_form/question', '2017-06-10 21:39:30'),
(28, 'admin', '::1', 'layout_form/question', '2017-06-10 21:39:33'),
(29, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:39:34'),
(30, 'admin', '::1', 'layout_form/terms', '2017-06-10 21:39:41'),
(31, 'admin', '::1', 'layout_form/terms', '2017-06-10 21:39:44'),
(32, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:39:46'),
(33, 'admin', '::1', 'layout_form/bb_code', '2017-06-10 21:39:52'),
(34, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:39:59'),
(35, 'admin', '::1', 'settings/maintenance', '2017-06-10 21:44:11'),
(36, 'admin', '::1', 'settings/system', '2017-06-10 21:44:14'),
(37, 'admin', '::1', 'settings/system', '2017-06-10 21:45:11'),
(38, 'admin', '::1', 'settings/system', '2017-06-10 21:45:22'),
(39, 'admin', '::1', 'settings/layout_comments', '2017-06-10 21:49:22'),
(40, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:49:43'),
(41, 'admin', '::1', 'layout_form/cookie', '2017-06-10 21:49:47'),
(42, 'admin', '::1', 'layout_form/cookie', '2017-06-10 21:49:53'),
(43, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:49:56'),
(44, 'admin', '::1', 'layout_form/privacy', '2017-06-10 21:50:06'),
(45, 'admin', '::1', 'layout_form/privacy', '2017-06-10 21:50:09'),
(46, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:50:11'),
(47, 'admin', '::1', 'layout_form/notify', '2017-06-10 21:50:14'),
(48, 'admin', '::1', 'layout_form/notify', '2017-06-10 21:50:17'),
(49, 'admin', '::1', 'settings/layout_form', '2017-06-10 21:50:19'),
(50, 'admin', '::1', 'settings/layout_comments', '2017-06-10 22:05:13'),
(51, 'admin', '::1', 'layout_comments/share', '2017-06-10 22:05:22'),
(52, 'admin', '::1', 'layout_comments/share', '2017-06-10 22:05:26'),
(53, 'admin', '::1', 'settings/layout_comments', '2017-06-10 22:05:32'),
(54, 'admin', '::1', 'manage/comments', '2017-06-10 22:06:05'),
(55, 'admin', '::1', 'settings/system', '2017-06-10 22:11:00'),
(56, 'admin', '::1', 'settings/viewers', '2017-06-10 22:11:04'),
(57, 'admin', '::1', 'settings/security', '2017-06-10 22:11:10'),
(58, 'admin', '::1', 'settings/security', '2017-06-10 22:11:17'),
(59, 'admin', '::1', 'settings/flooding', '2017-06-10 22:11:21'),
(60, 'admin', '::1', 'settings/layout_comments', '2017-06-10 22:11:33'),
(61, 'admin', '::1', 'layout_comments/search', '2017-06-10 22:11:49'),
(62, 'admin', '::1', 'settings/layout_comments', '2017-06-10 22:11:51'),
(63, 'admin', '::1', 'layout_comments/social', '2017-06-10 22:11:55'),
(64, 'admin', '::1', 'layout_comments/social', '2017-06-10 22:12:00'),
(65, 'admin', '::1', 'settings/layout_comments', '2017-06-10 22:12:02'),
(66, 'admin', '::1', 'layout_comments/rss', '2017-06-10 22:12:28'),
(67, 'admin', '::1', 'layout_comments/rss', '2017-06-10 22:12:33'),
(68, 'admin', '::1', 'layout_comments/rss', '2017-06-10 22:12:37'),
(69, 'admin', '::1', 'settings/layout_comments', '2017-06-10 22:12:39'),
(70, 'admin', '::1', 'main/checklist', '2017-06-11 07:29:23'),
(71, 'admin', '::1', 'manage/admins', '2017-06-11 07:29:27'),
(72, 'admin', '::1', 'manage/comments', '2017-06-11 07:29:30'),
(73, 'admin', '::1', 'edit/page', '2017-06-11 07:29:40'),
(74, 'admin', '::1', 'manage/comments', '2017-06-11 07:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(250) NOT NULL DEFAULT '',
  `password` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `cookie_key` varchar(250) NOT NULL DEFAULT '',
  `detect_admin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `detect_method` varchar(250) NOT NULL DEFAULT 'both',
  `receive_email_ban` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `receive_email_comment_approve` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `receive_email_comment_success` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `receive_email_flag` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `login_attempts` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `resets` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_login` datetime NOT NULL,
  `restrict_pages` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `viewable_pages` text NOT NULL,
  `modifiable_pages` text NOT NULL,
  `format` varchar(250) NOT NULL DEFAULT 'html',
  `is_super` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`, `ip_address`, `cookie_key`, `detect_admin`, `detect_method`, `receive_email_ban`, `receive_email_comment_approve`, `receive_email_comment_success`, `receive_email_flag`, `login_attempts`, `resets`, `last_login`, `restrict_pages`, `viewable_pages`, `modifiable_pages`, `format`, `is_super`, `is_enabled`, `date_modified`, `date_added`) VALUES
(1, 'admin', '$2y$10$FvEXLuBBgNvS2CP51htBR.9oZ2w9EmKv6nJD.1DLjVbuk99YsHy0S', 'bandazagorath@gmail.com', '::1', 'OI8kFZp3oq5Il4zumV1x', 1, 'both', 1, 1, 1, 1, 0, 0, '2017-06-10 21:36:08', 0, '', '', 'html', 1, 1, '2017-06-11 04:22:31', '2017-06-11 04:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `attempts`
--

DROP TABLE IF EXISTS `attempts`;
CREATE TABLE `attempts` (
`id` int(10) unsigned NOT NULL,
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

DROP TABLE IF EXISTS `backups`;
CREATE TABLE `backups` (
`id` int(10) unsigned NOT NULL,
  `description` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans` (
`id` int(10) unsigned NOT NULL,
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `reason` varchar(250) NOT NULL DEFAULT '',
  `unban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0',
  `website` varchar(250) NOT NULL DEFAULT '',
  `town` varchar(250) NOT NULL DEFAULT '',
  `state_id` int(10) NOT NULL DEFAULT '0',
  `country_id` int(10) NOT NULL DEFAULT '0',
  `rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reply_to` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `reply` text NOT NULL,
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `is_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `notes` text NOT NULL,
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_sent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sent_to` int(10) unsigned NOT NULL DEFAULT '0',
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `dislikes` int(10) unsigned NOT NULL DEFAULT '0',
  `reports` int(10) unsigned NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_verified` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `page_id`, `website`, `town`, `state_id`, `country_id`, `rating`, `reply_to`, `comment`, `reply`, `ip_address`, `is_approved`, `notes`, `is_admin`, `is_sent`, `sent_to`, `likes`, `dislikes`, `reports`, `is_sticky`, `is_locked`, `is_verified`, `date_modified`, `date_added`) VALUES
(1, 1, 1, '', '', 0, 0, 5, 0, '<p>testing:huh:</p>', '', '::1', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-06-10 22:04:47', '2017-06-10 22:04:47'),
(2, 2, 1, '', '', 0, 0, 0, 1, '<p>Nice good stuff!!:tongue:</p>', '', '::1', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-06-10 22:09:39', '2017-06-10 22:09:39'),
(3, 3, 1, '', '', 0, 0, 0, 2, '<p>I agree with you :tongue::scared::sleep::confused:</p>', '', '::1', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-06-11 07:16:19', '2017-06-11 07:16:19'),
(4, 4, 2, '', '', 0, 0, 3, 0, '<p>Comment on second page</p>', '', '::1', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-06-11 10:59:51', '2017-06-11 10:59:51'),
(5, 5, 5, '', '', 0, 0, 5, 0, '<p>This tutorial is great :huh::laugh:</p>', '', '::1', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-06-11 11:34:45', '2017-06-11 11:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `code` varchar(3) NOT NULL DEFAULT '',
  `top` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `top`, `enabled`, `date_modified`, `date_added`) VALUES
(1, 'Afghanistan', 'AFG', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(2, 'Albania', 'ALB', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(3, 'Algeria', 'DZA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(4, 'Andorra', 'AND', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(5, 'Angola', 'AGO', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(6, 'Argentina', 'ARG', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(7, 'Armenia', 'ARM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(8, 'Australia', 'AUS', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(9, 'Austria', 'AUT', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(10, 'Azerbaijan', 'AZE', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(11, 'Bahrain', 'BHR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(12, 'Bangladesh', 'BGD', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(13, 'Belarus', 'BLR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(14, 'Belgium', 'BEL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(15, 'Belize', 'BLZ', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(16, 'Benin', 'BEN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(17, 'Bermuda', 'BMU', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(18, 'Bhutan', 'BTN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(19, 'Bolivia', 'BOL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(20, 'Bosnia and Herzegovina', 'BIH', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(21, 'Botswana', 'BWA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(22, 'Brazil', 'BRA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(23, 'Brunei', 'BRN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(24, 'Bulgaria', 'BGR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(25, 'Burkina Faso', 'BFA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(26, 'Burundi', 'BDI', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(27, 'Cambodia', 'KHM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(28, 'Cameroon', 'CMR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(29, 'Canada', 'CAN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(30, 'Central African Republic', 'CAF', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(31, 'Chad', 'TCD', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(32, 'Chile', 'CHL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(33, 'China', 'CHN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(34, 'Colombia', 'COL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(35, 'Congo', 'COG', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(36, 'Costa Rica', 'CRI', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(37, 'Croatia', 'HRV', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(38, 'Cuba', 'CUB', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(39, 'Cyprus', 'CYP', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(40, 'Czech Republic', 'CZE', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(41, 'Denmark', 'DNK', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(42, 'Djibouti', 'DJI', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(43, 'Dominican Republic', 'DOM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(44, 'Ecuador', 'ECU', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(45, 'Egypt', 'EGY', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(46, 'El Salvador', 'SLV', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(47, 'Equatorial Guinea', 'GNQ', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(48, 'Eritrea', 'ERI', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(49, 'Estonia', 'EST', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(50, 'Ethiopia', 'ETH', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(51, 'Falklands', 'FLK', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(52, 'Finland', 'FIN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(53, 'France', 'FRA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(54, 'Gabon', 'GAB', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(55, 'Gambia', 'GMB', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(56, 'Georgia', 'GEO', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(57, 'Germany', 'DEU', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(58, 'Ghana', 'GHA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(59, 'Greece', 'GRC', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(60, 'Greenland', 'GRL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(61, 'Guatemala', 'GTM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(62, 'Guinea', 'GIN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(63, 'Guinea-Bissau', 'GNB', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(64, 'Guyana', 'GUY', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(65, 'Haiti', 'HTI', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(66, 'Honduras', 'HND', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(67, 'Hong Kong', 'HKG', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(68, 'Hungary', 'HUN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(69, 'Iceland', 'ISL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(70, 'India', 'IND', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(71, 'Indonesia', 'IDN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(72, 'Iran', 'IRN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(73, 'Iraq', 'IRQ', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(74, 'Ireland', 'IRL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(75, 'Israel', 'ISR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(76, 'Italy', 'ITA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(77, 'Ivory Coast', 'CIV', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(78, 'Jamaica', 'JAM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(79, 'Japan', 'JPN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(80, 'Jordan', 'JOR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(81, 'Kazakhstan', 'KAZ', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(82, 'Kenya', 'KEN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(83, 'Kosovo', 'UNK', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(84, 'Kuwait', 'KWT', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(85, 'Kyrgyzstan', 'KGZ', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(86, 'Laos', 'LAO', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(87, 'Latvia', 'LVA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(88, 'Lebanon', 'LBN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(89, 'Lesotho', 'LSO', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(90, 'Liberia', 'LBR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(91, 'Libya', 'LBY', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(92, 'Liechtenstein', 'LIE', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(93, 'Lithuania', 'LTU', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(94, 'Madagascar', 'MDG', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(95, 'Malawi', 'MWI', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(96, 'Malaysia', 'MYS', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(97, 'Mali', 'MLI', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(98, 'Mauritania', 'MRT', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(99, 'Mexico', 'MEX', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(100, 'Moldova', 'MDA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(101, 'Monaco', 'MCO', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(102, 'Mongolia', 'MNG', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(103, 'Montenegro', 'MNE', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(104, 'Morocco', 'MAR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(105, 'Mozambique', 'MOZ', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(106, 'Myanmar', 'MMR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(107, 'Namibia', 'NAM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(108, 'Nepal', 'NPL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(109, 'Netherlands', 'NLD', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(110, 'New Zealand', 'NZL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(111, 'Nicaragua', 'NIC', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(112, 'Niger', 'NER', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(113, 'Nigeria', 'NGA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(114, 'North Korea', 'PRK', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(115, 'Norway', 'NOR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(116, 'Oman', 'OMN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(117, 'Pakistan', 'PAK', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(118, 'Palestine', 'PSE', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(119, 'Panama', 'PAN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(120, 'Papua New Guinea', 'PNG', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(121, 'Paraguay', 'PRY', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(122, 'Peru', 'PER', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(123, 'Philippines', 'PHL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(124, 'Poland', 'POL', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(125, 'Portugal', 'PRT', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(126, 'Puerto Rico', 'PRI', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(127, 'Qatar', 'QAT', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(128, 'Romania', 'ROM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(129, 'Russia', 'RUS', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(130, 'Rwanda', 'RWA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(131, 'San Marino', 'SMR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(132, 'Saudi Arabia', 'SAU', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(133, 'Senegal', 'SEN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(134, 'Serbia', 'SRB', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(135, 'Sierra Leone', 'SLE', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(136, 'Singapore', 'SGP', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(137, 'Slovakia', 'SVK', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(138, 'Slovenia', 'SVN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(139, 'Somalia', 'SOM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(140, 'South Africa', 'ZAF', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(141, 'South Korea', 'KOR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(142, 'South Sudan', 'SSD', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(143, 'Spain', 'ESP', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(144, 'Sri Lanka', 'LKA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(145, 'Sudan', 'SDN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(146, 'Suriname', 'SUR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(147, 'Swaziland', 'SWZ', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(148, 'Sweden', 'SWE', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(149, 'Switzerland', 'CHE', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(150, 'Syria', 'SYR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(151, 'Taiwan', 'TWN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(152, 'Tajikistan', 'TJK', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(153, 'Tanzania', 'TZA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(154, 'Thailand', 'THA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(155, 'Togo', 'TGO', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(156, 'Trinidad and Tobago', 'TTO', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(157, 'Tunisia', 'TUN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(158, 'Turkey', 'TUR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(159, 'Turkmenistan', 'TKM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(160, 'Uganda', 'UGA', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(161, 'Ukraine', 'UKR', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(162, 'United Arab Emirates', 'ARE', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(163, 'UK', 'GBR', 1, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(164, 'US', 'USA', 1, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(165, 'Uruguay', 'URY', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(166, 'Uzbekistan', 'UZB', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(167, 'Venezuela', 'VEN', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(168, 'Vietnam', 'VNM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(169, 'Western Sahara', 'ESH', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(170, 'Yemen', 'YEM', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(171, 'Zambia', 'ZMB', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32'),
(172, 'Zimbabwe', 'ZWE', 0, 1, '2017-06-11 04:22:32', '2017-06-11 04:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
`id` int(10) unsigned NOT NULL,
  `type` varchar(250) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `modified_by` varchar(250) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `type`, `text`, `modified_by`, `date_modified`) VALUES
(1, 'admin_notes', '', '', '2017-06-11 04:22:32'),
(2, 'admin_tips', 'Secure your admin folder with .htpasswd for extra protection.\r\nIf using the RSS feature check the FAQ about RSS Auto-Discovery.\r\nWhen modifying the code you can put the script in maintenance mode.\r\nUse robots.txt to help prevent the upload folder from being indexed.\r\nCustomize the terms & privacy text in the language folder.\r\nModules can help make the experience of you and your users better.\r\nSee who is viewing your pages in Reports -> Viewers.\r\nCustomize the emails you send and receive using the Settings menu.\r\nBack up your database regularly using Tools -> Database Backup.\r\nAdd your own captcha questions in Settings -> Layout -> Form.\r\nIf something is not working turn on Error Reporting in Settings.\r\nYou can disable the form of a specific page in Manage -> Pages.\r\nYou can add other administrators to help with the workload.\r\nAdd the UTF-8 charset to your head tag for international support.\r\nOptimize your tables now and again using Tools -> Optimize Tables.\r\nAdd some notes below to keep track of admin related tasks.\r\nYou can share ideas and submit feature requests on the forum.\r\nEnabling the image captcha helps prevent robotic submission.\r\nClick the ''Get help for this page'' link at the top right of pages.\r\nSelect which emails you receive in Settings -> Administrator.\r\nChange the order of the form/comments in Extensions -> Themes.\r\nCheck frequently for any reports in Manage -> Comments.\r\nKeep track of admin panel usage in Reports -> Access.\r\nCustomize the ''Sort By'' items in Setting -> Layout -> Comments.\r\nEnable the Akismet service in Extensions -> Modules to filter spam.\r\nYou can change the default Gravatar in Settings -> Layout -> Comments.\r\nSticky the important comments so that they always appear at the top.\r\nLock replies for a particular comment using the Edit Comment page.\r\nEnable the Chart plugin in Extensions -> Modules for extra stats.\r\nSearch the language files for text in Tools -> Text Finder.\r\nEnable the Rich Snippets module for a better search engine result.\r\nYou can supply your website''s user login information to the form.\r\nCustomize the image captcha in Settings -> Layout -> Form.\r\nAdjust the reply scroll speed in Settings -> Layout -> Comments.\r\nEnable parsing in Settings -> System if pages are slow to load.\r\nYou can select a different theme in Extensions -> Themes.\r\nConfigure the automated task system in the Tasks menu.\r\nEdit a user to moderate their comments differently.\r\nEnable SSL in Settings -> Security if you have a certificate.', '', '2017-06-11 04:22:32'),
(3, 'banned_emails', '', '', '2017-06-11 04:22:32'),
(4, 'banned_names', '', '', '2017-06-11 04:22:32'),
(5, 'banned_towns', '', '', '2017-06-11 04:22:32'),
(6, 'banned_websites', '', '', '2017-06-11 04:22:32'),
(7, 'detect_links', 'www\r\n\r\nhttp\r\n\r\n.aero\r\n.asia\r\n.biz\r\n.cat\r\n.co\r\n.com\r\n.coop\r\n.edu\r\n.gov\r\n.info\r\n.int\r\n.jobs\r\n.me\r\n.mil\r\n.mobi\r\n.museum\r\n.name\r\n.net\r\n.org\r\n.pro\r\n.tel\r\n.travel\r\n.tv\r\n\r\n.ar\r\n.au\r\n.br\r\n.ca\r\n.ch\r\n.cn\r\n.de\r\n.es\r\n.eu\r\n.fr\r\n.it\r\n.jp\r\n.nl\r\n.no\r\n.ru\r\n.se\r\n.uk\r\n.us', '', '2017-06-11 04:22:32'),
(8, 'dummy_emails', 'domain.\r\nexample.\r\ntest.', '', '2017-06-11 04:22:32'),
(9, 'dummy_names', 'test\r\ntester\r\ntesting', '', '2017-06-11 04:22:32'),
(10, 'dummy_towns', 'test\r\ntester\r\ntesting', '', '2017-06-11 04:22:32'),
(11, 'dummy_websites', 'domain.\r\nexample.\r\ntest.', '', '2017-06-11 04:22:32'),
(12, 'mild_swear_words', 'arse\r\narses\r\nass\r\nasses\r\nbollocks\r\ncrap', '', '2017-06-11 04:22:32'),
(13, 'reserved_emails', '', '', '2017-06-11 04:22:32'),
(14, 'reserved_names', 'admin\r\nadmins\r\nadministrator\r\nadministrators\r\nauthor\r\nauthors\r\ndeveloper\r\ndevelopers\r\nmoderator\r\nmoderators\r\nowner\r\nowners\r\nsupport\r\nteam', '', '2017-06-11 04:22:32'),
(15, 'reserved_towns', '', '', '2017-06-11 04:22:32'),
(16, 'reserved_websites', '', '', '2017-06-11 04:22:32'),
(17, 'signature_html', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">lernante loko</td>\r\n</tr>\r\n<tr>\r\n<td><a href="http://localhost">http://localhost</a></td>\r\n</tr>\r\n</table>', '', '2017-06-11 04:22:32'),
(18, 'signature_text', 'lernante loko\r\nhttp://localhost', '', '2017-06-11 04:22:32'),
(19, 'spam_words', 'ambien\r\ncapsule\r\ncapsules\r\ncialis\r\nherbal\r\nlevitra\r\nmedication\r\nmedications\r\npharma\r\npharmaceutical\r\npharmacy\r\npill\r\npills\r\nprescription\r\ntablet\r\ntablets\r\nviagra\r\n\r\nanal\r\nclit\r\nclits\r\nenlarge\r\nenlarger\r\nenlarges\r\nerect\r\nerection\r\nfetish\r\nhormone\r\nhormones\r\nintimacy\r\nintimate\r\nnaked\r\nnude\r\norgasm\r\norgasms\r\npenis\r\nporn\r\nporno\r\npornography\r\nsex\r\nsexual\r\nsexy\r\nvagina\r\n\r\ncasino\r\ncasinos\r\nholdem\r\ngamble\r\ngambling\r\nlottery\r\npoker\r\nslots\r\n\r\nact now\r\nact today\r\nbest price\r\nbest prices\r\nbuy cheap\r\nbuy now\r\nbuy today\r\ncall now\r\ncall today\r\ncash bonus\r\ncheap price\r\ncheap prices\r\ncheapest price\r\ncheapest prices\r\ndiscount\r\ndiscounts\r\ndiscounted\r\ngreat price\r\ngreat prices\r\nhigh quality\r\nlow price\r\nlow prices\r\nlowest price\r\nlowest prices\r\norder now\r\norder today\r\nsave almost\r\nsave \r\nearly\r\nsave up to\r\nwholesale\r\n\r\nreplica\r\nrolex\r\n\r\nhair loss\r\nweight loss\r\n\r\nbankrupt\r\nbankruptcy\r\n\r\ncvv\r\ncvv2\r\n\r\nsim card\r\nsim cards', '', '2017-06-11 04:22:32'),
(20, 'strong_swear_words', 'arse hole\r\narsehole\r\narse holes\r\narseholes\r\nass hole\r\nasshole\r\nass holes\r\nassholes\r\nbastard\r\nbastards\r\nbitch\r\nbitches\r\nblow job\r\nblowjob\r\nblow jobs\r\nblowjobs\r\nbull shit\r\nbullshit\r\nchinc\r\nchincs\r\nchink\r\nchinks\r\ncock sucker\r\ncock suckers\r\ncock\r\ncocks\r\ncocksucker\r\ncocksuckers\r\ncum\r\ncums\r\ncunt\r\ncunts\r\ndick\r\ndicks\r\ndick head\r\ndickhead\r\ndick heads\r\ndickheads\r\ndike\r\ndikes\r\ndildo\r\ndildos\r\ndyke\r\ndykes\r\nfaggot\r\nfaggots\r\nfuc\r\nfuck\r\nfucka\r\nfucked\r\nfucker\r\nfuckers\r\nfuckin\r\nfucking\r\nfucks\r\nfuk\r\nfuks\r\ngook\r\ngooks\r\nhand job\r\nhandjob\r\nhand jobs\r\nhandjobs\r\njackarse\r\njackarses\r\njackass\r\njackasses\r\njap\r\njaps\r\nmothafucka\r\nmothafucker\r\nmother fuckers\r\nmotherfuckers\r\nmother fucker\r\nmotherfucker\r\nnigga\r\nniggas\r\nnigger\r\nniggers\r\nniglet\r\nniglets\r\npaki\r\npakis\r\npiss\r\npissed\r\npoof\r\npoofs\r\nprick\r\npricks\r\npussies\r\npussy\r\npussys\r\nshit\r\nshite\r\nshits\r\nslut\r\nsluts\r\ntit\r\ntits\r\ntwat\r\ntwats\r\nwank\r\nwanks\r\nwanker\r\nwankers\r\nwanking\r\nwhore\r\nwhores\r\nwop\r\nwops', '', '2017-06-11 04:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails` (
`id` int(10) unsigned NOT NULL,
  `type` varchar(250) NOT NULL DEFAULT '',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `from_name` varchar(250) NOT NULL DEFAULT '',
  `from_email` varchar(250) NOT NULL DEFAULT '',
  `reply_to` varchar(250) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `html` text NOT NULL,
  `language` varchar(250) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `type`, `subject`, `from_name`, `from_email`, `reply_to`, `text`, `html`, `language`, `date_modified`) VALUES
(1, 'ban', '[username], there&#039;s a new ban!', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [username],\r\n\r\nA new user, with the IP address [ip address], has been banned for the following reason:\r\n- [reason]\r\n\r\nHere is the link to your admin panel:\r\n[admin link]\r\n\r\nRegards,\r\n\r\n[signature]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [username],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">A new user, with the IP address [ip address], has been banned for the following reason:</td>\r\n</tr>\r\n<tr>\r\n<td>- [reason]</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Here is the link to your admin panel:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[admin link]">[admin link]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]', 'english', '2017-06-11 04:22:32'),
(2, 'comment_approve', 'Comment Approve', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [username],\r\n\r\nA new comment has been posted on the page [page reference], located at the following address:\r\n[comment url]\r\n\r\nThe comment was made by [poster] and was as follows:\r\n\r\n************************\r\n\r\n[comment]\r\n\r\n************************\r\n\r\nThis comment requires approval due to the following reason(s):\r\n[reason]\r\n\r\nHere is the link to your admin panel:\r\n[admin link]\r\n\r\nRegards,\r\n\r\n[signature]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [username],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">A new comment has been posted on the page [page reference], located at the following address:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[comment url]">[comment url]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">The comment was made by [poster] and was as follows:</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">[comment]</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">This comment requires approval due to the following reason(s):</td>\r\n</tr>\r\n<tr>\r\n<td>[reason]</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Here is the link to your admin panel:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[admin link]">[admin link]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]', 'english', '2017-06-11 04:22:32'),
(3, 'comment_success', 'Comment Success', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [username],\r\n\r\nA new comment has been posted on the page [page reference], located at the following address:\r\n[comment url]\r\n\r\nThe comment was made by [poster] and was as follows:\r\n\r\n************************\r\n\r\n[comment]\r\n\r\n************************\r\n\r\nThis comment does not require approval.\r\n\r\nHere is the link to your admin panel:\r\n[admin link]\r\n\r\nRegards,\r\n\r\n[signature]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [username],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">A new comment has been posted on the page [page reference], located at the following address:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[comment url]">[comment url]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">The comment was made by [poster] and was as follows:</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">[comment]</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">This comment does not require approval.</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Here is the link to your admin panel:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[admin link]">[admin link]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]', 'english', '2017-06-11 04:22:32'),
(4, 'flag', '[username], a comment is flagged!', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [username],\r\n\r\nA new comment has been flagged on the page [page reference], located at the following address:\r\n[comment url]\r\n\r\nThe flagged comment was made by [poster] and was as follows:\r\n\r\n************************\r\n\r\n[comment]\r\n\r\n************************\r\n\r\nHere is the link to your admin panel:\r\n[admin link]\r\n\r\nRegards,\r\n\r\n[signature]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [username],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">A new comment has been flagged on the page [page reference], located at the following address:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[comment url]">[comment url]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">The flagged comment was made by [poster] and was as follows:</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">[comment]</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Here is the link to your admin panel:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[admin link]">[admin link]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]', 'english', '2017-06-11 04:22:32'),
(5, 'password_reset', 'Password Reset', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [username],\r\n\r\nYour login details are listed below:\r\n\r\nUsername: [username]\r\nPassword: [password]\r\n\r\nHere is the link to your admin panel:\r\n[admin link]\r\n\r\nRegards,\r\n\r\n[signature]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [username],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Your login details are listed below:</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px"><b>Username:</b></td><td style="padding-top:15px; padding-left:5px">[username]</td>\r\n</tr>\r\n<tr>\r\n<td><b>Password:</b></td><td style="padding-left:5px">[password]</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Here is the link to your admin panel:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[admin link]">[admin link]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]', 'english', '2017-06-11 04:22:32'),
(6, 'setup_test', 'Setup Test', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [username],\r\n\r\nThis is a test email generated by the ''Settings -> Email -> Setup'' page.\r\n\r\nIf you have received this email, you have the correct email settings.\r\n\r\nHere is the link to your admin panel:\r\n[admin link]\r\n\r\nRegards,\r\n\r\n[signature]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [username],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">This is a test email generated by the ''Settings -> Email -> Setup'' page.</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">If you have received this email, you have the correct email settings.</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Here is the link to your admin panel:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[admin link]">[admin link]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]', 'english', '2017-06-11 04:22:32'),
(7, 'subscriber_confirmation', 'Subscription Confirmation', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [name],\r\n\r\nYou have requested a subscription to the page [page reference], located at the following address:\r\n[page url]\r\n\r\nPlease confirm this subscription by clicking the link below:\r\n[confirmation link]\r\n\r\nIf you did not request this subscription, there is nothing that you need to do.\r\n\r\nYou will not receive anymore emails of this type.\r\n\r\nRegards,\r\n\r\n[signature]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [name],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">You have requested a subscription to the page [page reference], located at the following address:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[page url]">[page url]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Please confirm this subscription by clicking the link below:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[confirmation link]">[confirmation link]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">If you did not request this subscription, there is nothing that you need to do.</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">You will not receive anymore emails of this type.</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]', 'english', '2017-06-11 04:22:32'),
(8, 'subscriber_notification_admin', '[name], the Admin has posted!', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [name],\r\n\r\nThe admin has posted a comment on the page [page reference], located at the following address:\r\n[comment url]\r\n\r\nThe comment was made by [poster] and was as follows:\r\n\r\n************************\r\n\r\n[comment]\r\n\r\n************************\r\n\r\nRegards,\r\n\r\n[signature]\r\n\r\nTo manage your subscription, click the link below:\r\n[user url]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [name],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">The admin has posted a comment on the page [page reference], located at the following address:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[comment url]">[comment url]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">The comment was made by [poster] and was as follows:</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">[comment]</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">To manage your subscription, click the link below:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[user url]">[user url]</a></td>\r\n</tr>\r\n</table>', 'english', '2017-06-11 04:22:32'),
(9, 'subscriber_notification_basic', '[name], there''s a new comment!', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [name],\r\n\r\nA new comment has been posted on the page [page reference], located at the following address:\r\n[comment url]\r\n\r\nThe comment was made by [poster] and was as follows:\r\n\r\n************************\r\n\r\n[comment]\r\n\r\n************************\r\n\r\nRegards,\r\n\r\n[signature]\r\n\r\nTo manage your subscription, click the link below:\r\n[user url]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [name],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">A new comment has been posted on the page [page reference], located at the following address:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[comment url]">[comment url]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">The comment was made by [poster] and was as follows:</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">[comment]</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">To manage your subscription, click the link below:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[user url]">[user url]</a></td>\r\n</tr>\r\n</table>', 'english', '2017-06-11 04:22:32'),
(10, 'subscriber_notification_reply', '[name], you have a reply!', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [name],\r\n\r\nYou have a reply on the page [page reference], located at the following address:\r\n[comment url]\r\n\r\nThe comment was made by [poster] and was as follows:\r\n\r\n************************\r\n\r\n[comment]\r\n\r\n************************\r\n\r\nRegards,\r\n\r\n[signature]\r\n\r\nTo manage your subscription, click the link below:\r\n[user url]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [name],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">You have a reply on the page [page reference], located at the following address:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[comment url]">[comment url]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">The comment was made by [poster] and was as follows:</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">[comment]</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">To manage your subscription, click the link below:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[user url]">[user url]</a></td>\r\n</tr>\r\n</table>', 'english', '2017-06-11 04:22:32'),
(11, 'user_comment_approved', '[name], your comment is approved!', 'lernante loko', 'comments@localhost', 'no-reply@localhost', 'Hello [name],\r\n\r\nYour comment is now approved on the page [page reference], located at the following address:\r\n[comment url]\r\n\r\nThe comment that you posted was as follows:\r\n\r\n************************\r\n\r\n[comment]\r\n\r\n************************\r\n\r\nRegards,\r\n\r\n[signature]\r\n\r\nTo manage your preferences, click the link below:\r\n[user url]', '<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>Hello [name],</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Your comment is now approved on the page [page reference], located at the following address:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[comment url]">[comment url]</a></td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">The comment that you posted was as follows:</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">[comment]</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:15px">************************</td>\r\n</tr>\r\n</table>\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">Regards,</td>\r\n</tr>\r\n</table>\r\n\r\n[signature]\r\n\r\n<table style="border-collapse:collapse" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td style="padding-top:15px">To manage your preferences, click the link below:</td>\r\n</tr>\r\n<tr>\r\n<td><a href="[user url]">[user url]</a></td>\r\n</tr>\r\n</table>', 'english', '2017-06-11 04:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
CREATE TABLE `logins` (
`id` int(10) unsigned NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `date_modified`) VALUES
(1, '2017-06-10 21:36:08'),
(2, '2017-06-11 04:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
`id` int(10) unsigned NOT NULL,
  `module` varchar(250) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
`id` int(10) unsigned NOT NULL,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `reference` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(1000) NOT NULL DEFAULT '',
  `moderate` varchar(250) NOT NULL DEFAULT 'default',
  `is_form_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `identifier`, `reference`, `url`, `moderate`, `is_form_enabled`, `date_modified`, `date_added`) VALUES
(1, '1', 'Main Page Test', 'http://localhost:8887/chimehack4/', 'default', 1, '2017-06-10 21:35:07', '2017-06-10 21:35:07'),
(2, '2', 'Content 2', 'http://localhost:8887/chimehack4/showContent.php?cID=2', 'default', 1, '2017-06-11 10:59:23', '2017-06-11 10:59:23'),
(3, '3', 'Content 3', 'http://localhost:8887/chimehack4/showContent.php?cID=3', 'default', 1, '2017-06-11 11:08:29', '2017-06-11 11:08:29'),
(4, '4', 'Content 4', 'http://localhost:8887/chimehack4/showContent.php?cID=4', 'default', 1, '2017-06-11 11:14:50', '2017-06-11 11:14:50'),
(5, '5', 'Content 5', 'http://localhost:8887/chimehack4/showContent.php?cID=5', 'default', 1, '2017-06-11 11:34:18', '2017-06-11 11:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
`id` int(10) unsigned NOT NULL,
  `question` varchar(250) NOT NULL DEFAULT '',
  `answer` varchar(250) NOT NULL DEFAULT '',
  `language` varchar(250) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `language`, `date_modified`, `date_added`) VALUES
(1, 'Enter the third letter of the word castle.', 's', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2, 'Enter the word shark backwards.', 'krahs', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(3, 'What is the opposite word of weak?', 'strong', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(4, 'Is it true or false that green is a number?', 'false', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(5, 'How many letters are in the word two?', '3|three', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(6, 'Which is darker: black or white?', 'black', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(7, 'Enter the last letter of the word satellite.', 'e', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(8, 'What is the opposite word of small?', 'big', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(9, 'Out of 56, 14 or 27, which is the smallest?', '14|fourteen', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(10, 'Enter the word hand backwards.', 'dnah', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(11, 'Type the numbers for four hundred seventy-two.', '472', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(12, 'Enter the fifth word of this sentence.', 'of', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(13, 'Enter the third word of this sentence.', 'third', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(14, 'What is the sum of 1 + 2 + 3?', '6|six', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(15, 'Enter the word table backwards.', 'elbat', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(16, 'What is the day after Friday?', 'saturday', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(17, 'Is ice cream hot or cold?', 'cold', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(18, 'What is the next number: 10, 12, 14, ..?', '16|sixteen', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(19, 'What is the fifth month of the year?', 'may', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(20, 'Type the word for the number 9.', 'nine', 'english', '2017-06-11 04:22:33', '2017-06-11 04:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
`id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reporters`
--

DROP TABLE IF EXISTS `reporters`;
CREATE TABLE `reporters` (
`id` int(10) unsigned NOT NULL,
  `comment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
`id` int(10) unsigned NOT NULL,
  `category` varchar(250) NOT NULL DEFAULT '',
  `title` varchar(250) NOT NULL DEFAULT '',
  `value` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `category`, `title`, `value`) VALUES
(1, 'admin_panel', 'checklist_complete', '0'),
(2, 'approval', 'approve_comments', '0'),
(3, 'approval', 'approve_notifications', '0'),
(4, 'approval', 'trust_previous_users', '0'),
(5, 'commentics', 'enabled_powered_by', '0'),
(6, 'commentics', 'powered_by_type', 'text'),
(7, 'commentics', 'powered_by_new_window', '1'),
(8, 'comments', 'show_average_rating', '1'),
(9, 'comments', 'show_comment_count', '1'),
(10, 'comments', 'show_topic', '1'),
(11, 'comments', 'show_gravatar', '0'),
(12, 'comments', 'show_website', '1'),
(13, 'comments', 'show_town', '1'),
(14, 'comments', 'show_state', '1'),
(15, 'comments', 'show_country', '1'),
(16, 'comments', 'show_says', '1'),
(17, 'comments', 'show_rating', '1'),
(18, 'comments', 'show_date', '1'),
(19, 'comments', 'show_like', '1'),
(20, 'comments', 'show_dislike', '1'),
(21, 'comments', 'show_share', '0'),
(22, 'comments', 'show_flag', '1'),
(23, 'comments', 'show_permalink', '1'),
(24, 'comments', 'show_reply', '1'),
(25, 'comments', 'show_rss', '0'),
(26, 'comments', 'show_pagination', '1'),
(27, 'comments', 'pagination_amount', '5'),
(28, 'comments', 'pagination_range', '2'),
(29, 'comments', 'show_page_number', '1'),
(30, 'comments', 'page_number_format', 'Page X of Y'),
(31, 'comments', 'flag_max_per_user', '3'),
(32, 'comments', 'flag_min_per_comment', '2'),
(33, 'comments', 'flag_disapprove', '1'),
(34, 'comments', 'date_auto', '1'),
(35, 'comments', 'hide_replies', '1'),
(36, 'comments', 'reply_indent', '25'),
(37, 'comments', 'reply_depth', '5'),
(38, 'comments', 'scroll_reply', '1'),
(39, 'comments', 'scroll_speed', '1000'),
(40, 'comments', 'show_sort_by', '1'),
(41, 'comments', 'show_sort_by_1', '1'),
(42, 'comments', 'show_sort_by_2', '1'),
(43, 'comments', 'show_sort_by_3', '1'),
(44, 'comments', 'show_sort_by_4', '1'),
(45, 'comments', 'show_sort_by_5', '1'),
(46, 'comments', 'show_sort_by_6', '1'),
(47, 'comments', 'gravatar_default', 'mm'),
(48, 'comments', 'gravatar_custom', ''),
(49, 'comments', 'gravatar_size', '72'),
(50, 'comments', 'gravatar_rating', 'g'),
(51, 'comments', 'show_level', '1'),
(52, 'comments', 'level_5', '50'),
(53, 'comments', 'level_4', '40'),
(54, 'comments', 'level_3', '30'),
(55, 'comments', 'level_2', '20'),
(56, 'comments', 'level_1', '10'),
(57, 'comments', 'level_0', '0'),
(58, 'comments', 'show_bio', '1'),
(59, 'comments', 'show_read_more', '1'),
(60, 'comments', 'read_more_limit', '150'),
(61, 'comments', 'show_social', '0'),
(62, 'comments', 'social_new_window', '1'),
(63, 'comments', 'show_social_digg', '1'),
(64, 'comments', 'show_social_facebook', '1'),
(65, 'comments', 'show_social_google', '1'),
(66, 'comments', 'show_social_linkedin', '0'),
(67, 'comments', 'show_social_reddit', '0'),
(68, 'comments', 'show_social_stumbleupon', '1'),
(69, 'comments', 'show_social_twitter', '1'),
(70, 'comments', 'show_search', '1'),
(71, 'comments', 'show_notify', '1'),
(72, 'comments', 'comments_order', '1'),
(73, 'comments', 'share_new_window', '1'),
(74, 'comments', 'show_share_digg', '0'),
(75, 'comments', 'show_share_facebook', '1'),
(76, 'comments', 'show_share_google', '1'),
(77, 'comments', 'show_share_linkedin', '0'),
(78, 'comments', 'show_share_reddit', '0'),
(79, 'comments', 'show_share_stumbleupon', '0'),
(80, 'comments', 'show_share_twitter', '1'),
(81, 'comments', 'website_new_window', '1'),
(82, 'comments', 'website_no_follow', '1'),
(83, 'comments', 'comments_position_1', 'sort_by'),
(84, 'comments', 'comments_position_2', 'search'),
(85, 'comments', 'comments_position_3', 'topic'),
(86, 'comments', 'comments_position_4', 'average_rating'),
(87, 'comments', 'comments_position_5', 'social'),
(88, 'comments', 'comments_position_6', 'pagination'),
(89, 'comments', 'comments_position_7', 'rss'),
(90, 'comments', 'comments_position_8', 'page_number'),
(91, 'comments', 'comments_position_9', 'pagination'),
(92, 'comments', 'comments_position_10', ''),
(93, 'comments', 'comments_position_11', 'notify'),
(94, 'comments', 'comments_position_12', ''),
(95, 'email', 'transport_method', 'php'),
(96, 'email', 'smtp_host', 'smtp.example.com'),
(97, 'email', 'smtp_port', '25'),
(98, 'email', 'smtp_encrypt', 'off'),
(99, 'email', 'smtp_username', ''),
(100, 'email', 'smtp_password', ''),
(101, 'email', 'sendmail_path', '/usr/sbin/sendmail'),
(102, 'error_reporting', 'error_reporting_frontend', '0'),
(103, 'error_reporting', 'error_reporting_backend', '0'),
(104, 'error_reporting', 'error_reporting_method', 'log'),
(105, 'form', 'enabled_form', '1'),
(106, 'form', 'hide_form', '1'),
(107, 'form', 'display_javascript_disabled', '1'),
(108, 'form', 'display_required_symbol', '1'),
(109, 'form', 'display_required_text', '1'),
(110, 'form', 'enabled_bb_code', '1'),
(111, 'form', 'enabled_smilies', '1'),
(112, 'form', 'enabled_counter', '1'),
(113, 'form', 'enabled_upload', '0'),
(114, 'form', 'enabled_rating', '1'),
(115, 'form', 'enabled_website', '0'),
(116, 'form', 'enabled_town', '1'),
(117, 'form', 'enabled_state', '1'),
(118, 'form', 'enabled_country', '1'),
(119, 'form', 'enabled_question', '0'),
(120, 'form', 'enabled_captcha', '0'),
(121, 'form', 'enabled_notify', '0'),
(122, 'form', 'enabled_cookie', '0'),
(123, 'form', 'enabled_privacy', '0'),
(124, 'form', 'enabled_terms', '0'),
(125, 'form', 'enabled_preview', '0'),
(126, 'form', 'required_email', '1'),
(127, 'form', 'required_website', '0'),
(128, 'form', 'required_town', '0'),
(129, 'form', 'required_state', '0'),
(130, 'form', 'required_country', '0'),
(131, 'form', 'required_rating', '0'),
(132, 'form', 'default_name', ''),
(133, 'form', 'default_email', ''),
(134, 'form', 'default_website', ''),
(135, 'form', 'default_town', ''),
(136, 'form', 'default_state', ''),
(137, 'form', 'default_country', ''),
(138, 'form', 'default_rating', ''),
(139, 'form', 'default_comment', ''),
(140, 'form', 'default_notify', '1'),
(141, 'form', 'default_cookie', '1'),
(142, 'form', 'default_privacy', '0'),
(143, 'form', 'default_terms', '0'),
(144, 'form', 'filled_name_cookie_action', 'normal'),
(145, 'form', 'filled_name_login_action', 'disable'),
(146, 'form', 'filled_email_cookie_action', 'normal'),
(147, 'form', 'filled_email_login_action', 'disable'),
(148, 'form', 'filled_website_cookie_action', 'normal'),
(149, 'form', 'filled_website_login_action', 'disable'),
(150, 'form', 'filled_town_cookie_action', 'normal'),
(151, 'form', 'filled_town_login_action', 'disable'),
(152, 'form', 'filled_state_cookie_action', 'normal'),
(153, 'form', 'filled_state_login_action', 'disable'),
(154, 'form', 'filled_country_cookie_action', 'normal'),
(155, 'form', 'filled_country_login_action', 'disable'),
(156, 'form', 'maximum_name', '30'),
(157, 'form', 'maximum_email', '250'),
(158, 'form', 'maximum_website', '250'),
(159, 'form', 'maximum_town', '30'),
(160, 'form', 'maximum_question', '30'),
(161, 'form', 'enabled_bb_code_bold', '1'),
(162, 'form', 'enabled_bb_code_italic', '1'),
(163, 'form', 'enabled_bb_code_underline', '1'),
(164, 'form', 'enabled_bb_code_strike', '1'),
(165, 'form', 'enabled_bb_code_superscript', '1'),
(166, 'form', 'enabled_bb_code_subscript', '1'),
(167, 'form', 'enabled_bb_code_code', '1'),
(168, 'form', 'enabled_bb_code_php', '1'),
(169, 'form', 'enabled_bb_code_quote', '1'),
(170, 'form', 'enabled_bb_code_line', '1'),
(171, 'form', 'enabled_bb_code_bullet', '1'),
(172, 'form', 'enabled_bb_code_numeric', '1'),
(173, 'form', 'enabled_bb_code_link', '1'),
(174, 'form', 'enabled_bb_code_email', '1'),
(175, 'form', 'enabled_bb_code_image', '1'),
(176, 'form', 'enabled_bb_code_youtube', '1'),
(177, 'form', 'enabled_smilies_smile', '1'),
(178, 'form', 'enabled_smilies_sad', '1'),
(179, 'form', 'enabled_smilies_huh', '1'),
(180, 'form', 'enabled_smilies_laugh', '1'),
(181, 'form', 'enabled_smilies_mad', '1'),
(182, 'form', 'enabled_smilies_tongue', '1'),
(183, 'form', 'enabled_smilies_cry', '1'),
(184, 'form', 'enabled_smilies_grin', '1'),
(185, 'form', 'enabled_smilies_wink', '1'),
(186, 'form', 'enabled_smilies_scared', '1'),
(187, 'form', 'enabled_smilies_cool', '1'),
(188, 'form', 'enabled_smilies_sleep', '1'),
(189, 'form', 'enabled_smilies_blush', '1'),
(190, 'form', 'enabled_smilies_confused', '1'),
(191, 'form', 'enabled_smilies_shocked', '1'),
(192, 'form', 'agree_to_preview', '0'),
(193, 'form', 'repeat_rating', 'hide'),
(194, 'form', 'captcha_type', 'securimage'),
(195, 'form', 'recaptcha_public_key', ''),
(196, 'form', 'recaptcha_private_key', ''),
(197, 'form', 'recaptcha_theme', 'light'),
(198, 'form', 'recaptcha_type', 'image'),
(199, 'form', 'recaptcha_size', 'normal'),
(200, 'form', 'recaptcha_language', 'auto'),
(201, 'form', 'securimage_width', '215'),
(202, 'form', 'securimage_height', '80'),
(203, 'form', 'securimage_length', '6'),
(204, 'form', 'securimage_perturbation', '0.75'),
(205, 'form', 'securimage_lines', '5'),
(206, 'form', 'securimage_noise', '2'),
(207, 'form', 'securimage_text_color', '#616161'),
(208, 'form', 'securimage_line_color', '#616161'),
(209, 'form', 'securimage_back_color', '#FFFFFF'),
(210, 'form', 'securimage_noise_color', '#616161'),
(211, 'language', 'language_frontend', 'english'),
(212, 'language', 'language_backend', 'english'),
(213, 'language', 'language_install', 'english'),
(214, 'maintenance', 'maintenance_mode', '0'),
(215, 'maintenance', 'maintenance_message', 'We''re currently in maintenance.'),
(216, 'notice', 'notice_manage_admins', '1'),
(217, 'notice', 'notice_manage_bans', '1'),
(218, 'notice', 'notice_manage_comments', '1'),
(219, 'notice', 'notice_manage_pages', '1'),
(220, 'notice', 'notice_manage_questions', '1'),
(221, 'notice', 'notice_manage_subscriptions', '1'),
(222, 'notice', 'notice_edit_comment', '1'),
(223, 'notice', 'notice_edit_spam', '1'),
(224, 'notice', 'notice_settings_admin_detection', '1'),
(225, 'notice', 'notice_settings_email_editor', '1'),
(226, 'processor', 'one_name_enabled', '0'),
(227, 'processor', 'fix_name_enabled', '0'),
(228, 'processor', 'detect_link_in_name_enabled', '1'),
(229, 'processor', 'link_in_name_action', 'error'),
(230, 'processor', 'reserved_names_enabled', '1'),
(231, 'processor', 'reserved_names_action', 'error'),
(232, 'processor', 'dummy_names_enabled', '1'),
(233, 'processor', 'dummy_names_action', 'error'),
(234, 'processor', 'banned_names_enabled', '1'),
(235, 'processor', 'banned_names_action', 'ban'),
(236, 'processor', 'reserved_emails_enabled', '1'),
(237, 'processor', 'reserved_emails_action', 'error'),
(238, 'processor', 'dummy_emails_enabled', '1'),
(239, 'processor', 'dummy_emails_action', 'error'),
(240, 'processor', 'banned_emails_enabled', '1'),
(241, 'processor', 'banned_emails_action', 'ban'),
(242, 'processor', 'approve_websites', '0'),
(243, 'processor', 'validate_website_ping', '1'),
(244, 'processor', 'reserved_websites_enabled', '1'),
(245, 'processor', 'reserved_websites_action', 'error'),
(246, 'processor', 'dummy_websites_enabled', '1'),
(247, 'processor', 'dummy_websites_action', 'error'),
(248, 'processor', 'banned_websites_as_website_enabled', '1'),
(249, 'processor', 'banned_websites_as_website_action', 'ban'),
(250, 'processor', 'banned_websites_as_comment_enabled', '1'),
(251, 'processor', 'banned_websites_as_comment_action', 'approve'),
(252, 'processor', 'reserved_towns_enabled', '1'),
(253, 'processor', 'reserved_towns_action', 'error'),
(254, 'processor', 'dummy_towns_enabled', '1'),
(255, 'processor', 'dummy_towns_action', 'error'),
(256, 'processor', 'banned_towns_enabled', '1'),
(257, 'processor', 'banned_towns_action', 'ban'),
(258, 'processor', 'fix_town_enabled', '1'),
(259, 'processor', 'detect_link_in_town_enabled', '1'),
(260, 'processor', 'link_in_town_action', 'error'),
(261, 'processor', 'comment_minimum_characters', '2'),
(262, 'processor', 'comment_minimum_words', '1'),
(263, 'processor', 'comment_maximum_characters', '1000'),
(264, 'processor', 'comment_maximum_lines', '50'),
(265, 'processor', 'comment_maximum_smilies', '5'),
(266, 'processor', 'comment_convert_links', '1'),
(267, 'processor', 'comment_convert_emails', '1'),
(268, 'processor', 'comment_links_new_window', '1'),
(269, 'processor', 'comment_links_nofollow', '1'),
(270, 'processor', 'comment_line_breaks', '1'),
(271, 'processor', 'comment_long_word', '100'),
(272, 'processor', 'swear_word_masking', '*****'),
(273, 'processor', 'check_capitals_enabled', '0'),
(274, 'processor', 'check_capitals_percentage', '50'),
(275, 'processor', 'check_capitals_action', 'error'),
(276, 'processor', 'mild_swear_words_enabled', '1'),
(277, 'processor', 'mild_swear_words_action', 'mask'),
(278, 'processor', 'strong_swear_words_enabled', '1'),
(279, 'processor', 'strong_swear_words_action', 'mask_approve'),
(280, 'processor', 'spam_words_enabled', '1'),
(281, 'processor', 'spam_words_action', 'approve'),
(282, 'processor', 'detect_link_in_comment_enabled', '1'),
(283, 'processor', 'link_in_comment_action', 'approve'),
(284, 'processor', 'approve_images', '1'),
(285, 'processor', 'approve_videos', '1'),
(286, 'processor', 'approve_uploads', '1'),
(287, 'processor', 'check_repeats_enabled', '0'),
(288, 'processor', 'check_repeats_amount', '5'),
(289, 'processor', 'check_repeats_action', 'error'),
(290, 'processor', 'flood_control_delay_enabled', '1'),
(291, 'processor', 'flood_control_delay_time', '60'),
(292, 'processor', 'flood_control_delay_all_pages', '1'),
(293, 'processor', 'flood_control_maximum_enabled', '1'),
(294, 'processor', 'flood_control_maximum_amount', '5'),
(295, 'processor', 'flood_control_maximum_period', '1'),
(296, 'processor', 'flood_control_maximum_all_pages', '1'),
(297, 'processor', 'maximum_upload_size', '5'),
(298, 'processor', 'maximum_upload_amount', '3'),
(299, 'processor', 'notify_type', 'all'),
(300, 'processor', 'notify_format', 'html'),
(301, 'processor', 'notify_approve', '1'),
(302, 'processor', 'form_cookie', '0'),
(303, 'processor', 'form_cookie_days', '365'),
(304, 'rss', 'rss_new_window', '1'),
(305, 'rss', 'rss_title', 'lernante loko'),
(306, 'rss', 'rss_link', 'http://localhost'),
(307, 'rss', 'rss_image_enabled', '1'),
(308, 'rss', 'rss_image_url', 'http://localhost/favicon.ico'),
(309, 'rss', 'rss_image_width', '16'),
(310, 'rss', 'rss_image_height', '16'),
(311, 'rss', 'rss_limit_enabled', '1'),
(312, 'rss', 'rss_limit_amount', '30'),
(313, 'security', 'ban_cookie_days', '30'),
(314, 'security', 'security_key', 'Xn3nYAv8ocgwrqrwDAvy'),
(315, 'security', 'session_key', 'RckN97xtS7AQhQM6z4dZ'),
(316, 'security', 'encryption_key', 'mAq4fNjbsU8evfOicnej'),
(317, 'security', 'check_referrer', '0'),
(318, 'security', 'check_config', '1'),
(319, 'security', 'check_honeypot', '1'),
(320, 'security', 'check_time', '1'),
(321, 'security', 'check_ip_address', '0'),
(322, 'security', 'check_csrf', '1'),
(323, 'system', 'site_id', 'DppN0P5scdXT59C7Qq16'),
(324, 'system', 'site_name', 'lernante loko'),
(325, 'system', 'time_zone', 'America/Hermosillo'),
(326, 'system', 'site_domain', 'Test'),
(327, 'system', 'site_url', 'http://localhost:8887/chimehack4'),
(328, 'system', 'commentics_folder', 'commsystem'),
(329, 'system', 'commentics_url', 'http://localhost:8887/chimehack4/commsystem/'),
(330, 'system', 'backend_folder', 'svstuff'),
(331, 'system', 'ssl_certificate', '0'),
(332, 'system', 'mysqldump_path', ''),
(333, 'system', 'use_wysiwyg', '1'),
(334, 'system', 'display_parsing', '0'),
(335, 'system', 'is_demo', '0'),
(336, 'system', 'limit_results', '15'),
(337, 'system', 'delay_pages', '1'),
(338, 'system', 'lower_pages', '0'),
(339, 'system', 'admin_cookie_days', '365'),
(340, 'system', 'optimize_date', '2017-06-11 04:22:33'),
(341, 'system', 'last_call', ''),
(342, 'tasks', 'task_enabled_delete_bans', '1'),
(343, 'tasks', 'days_to_delete_bans', '30'),
(344, 'tasks', 'task_enabled_delete_comments', '0'),
(345, 'tasks', 'days_to_delete_comments', '365'),
(346, 'tasks', 'task_enabled_delete_reporters', '1'),
(347, 'tasks', 'days_to_delete_reporters', '30'),
(348, 'tasks', 'task_enabled_delete_subscriptions', '1'),
(349, 'tasks', 'days_to_delete_subscriptions', '7'),
(350, 'tasks', 'task_enabled_delete_voters', '1'),
(351, 'tasks', 'days_to_delete_voters', '30'),
(352, 'theme', 'theme_frontend', 'default'),
(353, 'theme', 'theme_backend', 'default'),
(354, 'theme', 'theme_install', 'default'),
(355, 'theme', 'jquery_source', 'local'),
(356, 'theme', 'jquery_ui_source', 'local'),
(357, 'theme', 'font_awesome_source', 'local'),
(358, 'theme', 'colorbox_source', 'local'),
(359, 'theme', 'order_parts', '1,2'),
(360, 'viewers', 'viewers_enabled', '1'),
(361, 'viewers', 'viewers_timeout', '1200'),
(362, 'viewers', 'viewers_refresh', '1'),
(363, 'viewers', 'viewers_interval', '60');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `country_code` varchar(3) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2992 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_code`, `enabled`, `date_modified`, `date_added`) VALUES
(1, 'Badakhshan', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2, 'Badghis', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(3, 'Baghlan', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(4, 'Balkh', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(5, 'Bamyan', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(6, 'Daykundi', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(7, 'Farah', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(8, 'Faryab', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(9, 'Ghazni', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(10, 'Ghor', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(11, 'Helmand', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(12, 'Herat', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(13, 'Jowzjan', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(14, 'Kabul', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(15, 'Kandahar', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(16, 'Kapisa', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(17, 'Khost', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(18, 'Kunar', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(19, 'Kunduz', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(20, 'Laghman', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(21, 'Logar', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(22, 'Maidan Wardak', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(23, 'Nangarhar', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(24, 'Nimruz', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(25, 'Nuristan', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(26, 'Paktia', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(27, 'Paktika', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(28, 'Samangan', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(29, 'Sar-e Pol', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(30, 'Takhar', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(31, 'Urozgan', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(32, 'Zabol', 'AFG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(33, 'Berat', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(34, 'Dibër', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(35, 'Durrës', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(36, 'Elbasan', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(37, 'Fier', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(38, 'Gjirokastër', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(39, 'Korçë', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(40, 'Kukës', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(41, 'Lezhë', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(42, 'Shkodër', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(43, 'Tirana', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(44, 'Vlorë', 'ALB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(45, 'Adrar', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(46, 'Aïn Defla', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(47, 'Aïn Témouchent', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(48, 'Algiers', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(49, 'Annaba', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(50, 'Batna', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(51, 'Béchar', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(52, 'Béjaïa', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(53, 'Biskra', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(54, 'Blida', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(55, 'Bordj Bou Arréridj', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(56, 'Bouira', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(57, 'Boumerdès', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(58, 'Chlef', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(59, 'Constantine', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(60, 'Djelfa', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(61, 'El Bayadh', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(62, 'El Oued', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(63, 'El Tarf', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(64, 'Ghardaïa', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(65, 'Guelma', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(66, 'Illizi', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(67, 'Jijel', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(68, 'Khenchela', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(69, 'Laghouat', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(70, 'Mascara', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(71, 'Médéa', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(72, 'Mila', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(73, 'Mostaganem', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(74, 'M''Sila', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(75, 'Naama', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(76, 'Oran', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(77, 'Ouargla', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(78, 'Oum el-Bouaghi', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(79, 'Relizane', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(80, 'Saïda', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(81, 'Sétif', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(82, 'Sidi Bel Abbes', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(83, 'Skikda', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(84, 'Souk Ahras', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(85, 'Tamanghasset', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(86, 'Tébessa', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(87, 'Tiaret', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(88, 'Tindouf', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(89, 'Tipasa', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(90, 'Tissemsilt', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(91, 'Tizi Ouzou', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(92, 'Tlemcen', 'DZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(93, 'Andorra la Vella', 'AND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(94, 'Canillo', 'AND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(95, 'Encamp', 'AND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(96, 'La Massana', 'AND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(97, 'Les Escaldes-Engordany', 'AND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(98, 'Ordino', 'AND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(99, 'Sant Julià de Lòria', 'AND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(100, 'Bengo', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(101, 'Benguela', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(102, 'Bié', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(103, 'Cabinda', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(104, 'Cuando Cubango', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(105, 'Cuanza Norte', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(106, 'Cuanza Sul', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(107, 'Cunene', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(108, 'Huambo', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(109, 'Huila', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(110, 'Luanda', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(111, 'Lunda Norte', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(112, 'Lunda Sul', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(113, 'Malanje', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(114, 'Moxico', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(115, 'Namibe', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(116, 'Uige', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(117, 'Zaire', 'AGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(118, 'Buenos Aires', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(119, 'Catamarca', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(120, 'Chaco', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(121, 'Chubut', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(122, 'Córdoba', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(123, 'Corrientes', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(124, 'Distrito Federal', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(125, 'Entre Rios', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(126, 'Formosa', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(127, 'Jujuy', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(128, 'La Pampa', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(129, 'La Rioja', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(130, 'Mendoza', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(131, 'Misiones', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(132, 'Neuquén', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(133, 'Rio Negro', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(134, 'Salta', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(135, 'San Juan', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(136, 'San Luis', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(137, 'Santa Cruz', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(138, 'Santa Fe', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(139, 'Santiago del Estero', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(140, 'Tierra del Fuego', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(141, 'Tucumán', 'ARG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(142, 'Aragatsotn', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(143, 'Ararat', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(144, 'Armavir', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(145, 'Gegharkunik', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(146, 'Kotayk', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(147, 'Lori', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(148, 'Shirak', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(149, 'Syunik', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(150, 'Tavush', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(151, 'Vayots Dzor', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(152, 'Yerevan', 'ARM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(153, 'Australian Capital Territory', 'AUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(154, 'New South Wales', 'AUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(155, 'Northern Territory', 'AUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(156, 'Queensland', 'AUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(157, 'South Australia', 'AUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(158, 'Tasmania', 'AUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(159, 'Victoria', 'AUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(160, 'Western Australia', 'AUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(161, 'Burgenland', 'AUT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(162, 'Kärnten', 'AUT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(163, 'Niederösterreich', 'AUT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(164, 'Oberösterreich', 'AUT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(165, 'Salzburg', 'AUT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(166, 'Steiermark', 'AUT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(167, 'Tirol', 'AUT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(168, 'Vorarlberg', 'AUT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(169, 'Wien', 'AUT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(170, 'Absheron', 'AZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(171, 'Aran', 'AZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(172, 'Daglig-Shirvan', 'AZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(173, 'Ganja-Qazakh', 'AZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(174, 'Kalbajar-Lachin', 'AZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(175, 'Lankaran', 'AZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(176, 'Nakhchivan', 'AZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(177, 'Quba-Khachmaz', 'AZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(178, 'Shaki-Zaqatala', 'AZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(179, 'Yukhari-Karabakh', 'AZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(180, 'Capital', 'BHR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(181, 'Muharraq', 'BHR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(182, 'Northern', 'BHR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(183, 'Southern', 'BHR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(184, 'Barisal', 'BGD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(185, 'Chittagong', 'BGD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(186, 'Dhaka', 'BGD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(187, 'Khulna', 'BGD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(188, 'Mymensingh', 'BGD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(189, 'Rajshahi', 'BGD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(190, 'Rangpur', 'BGD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(191, 'Sylhet', 'BGD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(192, 'Brest', 'BLR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(193, 'Gomel', 'BLR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(194, 'Grodno', 'BLR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(195, 'Minsk', 'BLR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(196, 'Mogilev', 'BLR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(197, 'Vitebsk', 'BLR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(198, 'Antwerp', 'BEL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(199, 'East Flanders', 'BEL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(200, 'Flemish Brabant', 'BEL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(201, 'Hainaut', 'BEL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(202, 'Liège', 'BEL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(203, 'Limburg', 'BEL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(204, 'Luxembourg', 'BEL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(205, 'Namur', 'BEL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(206, 'Walloon Brabant', 'BEL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(207, 'West Flanders', 'BEL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(208, 'Belize', 'BLZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(209, 'Cayo', 'BLZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(210, 'Corozal', 'BLZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(211, 'Orange Walk', 'BLZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(212, 'Stann Creek', 'BLZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(213, 'Toledo', 'BLZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(214, 'Alibori', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(215, 'Atakira', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(216, 'Atlantique', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(217, 'Borgou', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(218, 'Collines', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(219, 'Donga', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(220, 'Kouffo', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(221, 'Littoral', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(222, 'Mono', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(223, 'Ouémé', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(224, 'Plateau', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(225, 'Zou', 'BEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(226, 'Bumthang', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(227, 'Chukha', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(228, 'Dagana', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(229, 'Gasa', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(230, 'Haa', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(231, 'Lhuntse', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(232, 'Mongar', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(233, 'Paro', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(234, 'Pemagatshel', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(235, 'Punakha', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(236, 'Samdrup Jongkhar', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(237, 'Samtse', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(238, 'Sarpang', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(239, 'Thimphu', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(240, 'Trashigang', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(241, 'Trashiyangste', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(242, 'Trongsa', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(243, 'Tsirang', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(244, 'Wangdue Phodrang', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(245, 'Zhemgang', 'BTN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(246, 'Beni', 'BOL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(247, 'Chuquisaca', 'BOL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(248, 'Cochabamba', 'BOL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(249, 'La Paz', 'BOL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(250, 'Oruro', 'BOL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(251, 'Pando', 'BOL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(252, 'Potosi', 'BOL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(253, 'Santa Cruz', 'BOL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(254, 'Tarija', 'BOL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(255, 'Bosnia-Podrinje Canton Gorade', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(256, 'Canton 10', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(257, 'Central Bosnia Canton', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(258, 'Federation of Bosnia and Herzegovina', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(259, 'Herzegovina-Neretva Canton', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(260, 'Posavina Canton', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(261, 'Sarajevo Canton', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(262, 'Tuzla Canton', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(263, 'Una-Sana Canton', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(264, 'West Herzegovina Canton', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(265, 'Zenica-Doboj Canton', 'BIH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(266, 'Central', 'BWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(267, 'Ghanzi', 'BWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(268, 'Kgalagadi', 'BWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(269, 'Kgatleng', 'BWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(270, 'Kweneng', 'BWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(271, 'North East', 'BWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(272, 'North West', 'BWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(273, 'South East', 'BWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(274, 'Southern', 'BWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(275, 'Acre', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(276, 'Alagoas', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(277, 'Amapá', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(278, 'Amazonas', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(279, 'Bahia', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(280, 'Ceará', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(281, 'Distrito Federal', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(282, 'Espírito Santo', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(283, 'Goiás', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(284, 'Maranhão', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(285, 'Mato Grosso', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(286, 'Mato Grosso do Sul', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(287, 'Minas Gerais', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(288, 'Pará', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(289, 'Paraíba', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(290, 'Paraná', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(291, 'Pernambuco', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(292, 'Piauí', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(293, 'Rio de Janeiro', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(294, 'Rio Grande do Norte', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(295, 'Rio Grande do Sul', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(296, 'Rondônia', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(297, 'Roraima', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(298, 'Santa Catarina', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(299, 'São Paulo', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(300, 'Sergipe', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(301, 'Tocantins', 'BRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(302, 'Belait', 'BRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(303, 'Brunei-Muara', 'BRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(304, 'Temburong', 'BRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(305, 'Tutong', 'BRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(306, 'Blagoevgrad', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(307, 'Burgas', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(308, 'Dobrich', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(309, 'Gabrovo', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(310, 'Haskovo', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(311, 'Kardzhali', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(312, 'Kyustendil', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(313, 'Lovech', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(314, 'Montana', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(315, 'Pazardzhik', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(316, 'Pernik', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(317, 'Pleven', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(318, 'Plovdiv', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(319, 'Razgrad', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(320, 'Ruse', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(321, 'Shumen', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(322, 'Silistra', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(323, 'Sliven', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(324, 'Smolyan', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(325, 'Sofia', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(326, 'Sofia City', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(327, 'Stara Zagora', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(328, 'Targovishte', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(329, 'Varna', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(330, 'Veliko Tarnovo', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(331, 'Vidin', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(332, 'Vratsa', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(333, 'Yambol', 'BGR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(334, 'Boucle du Mouhoun', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(335, 'Cascades', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(336, 'Centre', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(337, 'Centre-Est', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(338, 'Centre-Nord', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(339, 'Centre-Ouest', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(340, 'Centre-Sud', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(341, 'Est', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(342, 'Hauts-Bassins', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(343, 'Nord', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(344, 'Plateau-Central', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(345, 'Sahel', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(346, 'Sud-Ouest', 'BFA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(347, 'Bubanza', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(348, 'Bujumbura Mairie', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(349, 'Bujumbura Rural', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(350, 'Bururi', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(351, 'Cankuzo', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(352, 'Cibitoke', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(353, 'Gitega', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(354, 'Karuzi', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(355, 'Kayanza', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(356, 'Kirundo', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(357, 'Makamba', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(358, 'Muramvya', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(359, 'Muyinga', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(360, 'Mwaro', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(361, 'Ngozi', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(362, 'Rumonge', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(363, 'Rutana', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(364, 'Ruyigi', 'BDI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(365, 'Banteay Meanchey', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(366, 'Battambang', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(367, 'Kampong Cham', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(368, 'Kampong Chhnang', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(369, 'Kampong Speu', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(370, 'Kampong Thom', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(371, 'Kampot', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(372, 'Kandal', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(373, 'Kep', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(374, 'Koh Kong', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(375, 'Kratié', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(376, 'Mondulkiri', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(377, 'Oddar Meanchey', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(378, 'Pailin', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(379, 'Phnom Penh', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(380, 'Preah Sihanouk', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(381, 'Preah Vihear', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(382, 'Prey Veng', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(383, 'Pursat', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(384, 'Ratanakiri', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(385, 'Siem Reap', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(386, 'Stung Treng', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(387, 'Svay Rieng', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(388, 'Takéo', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(389, 'Tboung Khmum', 'KHM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(390, 'Adamawa', 'CMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(391, 'Centre', 'CMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(392, 'East', 'CMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(393, 'Far North', 'CMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(394, 'Littoral', 'CMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(395, 'North', 'CMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(396, 'Northwest', 'CMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(397, 'South', 'CMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(398, 'Southwest', 'CMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(399, 'West', 'CMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(400, 'Alberta', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(401, 'British Columbia', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(402, 'Manitoba', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(403, 'New Brunswick', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(404, 'Newfoundland and Labrador', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(405, 'Northwest Territories', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(406, 'Nova Scotia', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(407, 'Ontario', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(408, 'Prince Edward Island', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(409, 'Quebec', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(410, 'Saskatchewan', 'CAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(411, 'Bamingui-Bangoran', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(412, 'Basse-Kotto', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(413, 'Haute-Kotto', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(414, 'Haut-Mbomou', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(415, 'Kemo', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(416, 'Lobaye', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(417, 'Mambere-KadeÔ', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(418, 'Mbomou', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(419, 'Nana-Mambere', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(420, 'Ombella-M''Poko', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(421, 'Ouaka', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(422, 'Ouham', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(423, 'Ouham-Pende', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(424, 'Vakaga', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(425, 'Nana-Grebizi', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(426, 'Sangha-Mbaere', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(427, 'Bangui', 'CAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(428, 'Bahr El Gazel', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(429, 'Batha', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(430, 'Borkou', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(431, 'Chari-Baguirmi', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(432, 'Ennedi-Est', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(433, 'Ennedi-Ouest', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(434, 'Guéra', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(435, 'Hadjer-Lamis', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(436, 'Kanem', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(437, 'Lac', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(438, 'Logone Occidental', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(439, 'Logone Oriental', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(440, 'Mandoul', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(441, 'Mayo-Kebbi Est', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(442, 'Mayo-Kebbi Ouest', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(443, 'Moyen-Chari', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(444, 'N''Djamena', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(445, 'Ouaddai', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(446, 'Salamat', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(447, 'Sila', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(448, 'Tandjilé', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(449, 'Tibesti', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(450, 'Wadi Fira', 'TCD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(451, 'Antofagasta', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(452, 'Araucanía', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(453, 'Arica y Parinacota', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(454, 'Atacama', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(455, 'Aysén del General Carlos Ibáñez del Campo', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(456, 'Bío Bío', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(457, 'Coquimbo', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(458, 'Libertador General Bernardo O''Higgins', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(459, 'Los Lagos', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(460, 'Los Ríos', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(461, 'Magallanes y la Antártica Chilena', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(462, 'Maule', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(463, 'Santiago Metropolitan', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(464, 'Tarapacá', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(465, 'Valparaíso', 'CHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(466, 'Anhui', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(467, 'Beijing', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(468, 'Chongqing', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(469, 'Fujian', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(470, 'Gansu', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(471, 'Guangdong', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(472, 'Guangxi', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(473, 'Guizhou', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(474, 'Hainan', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(475, 'Hebei', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(476, 'Heilongjiang', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(477, 'Henan', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(478, 'Hong Kong', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(479, 'Hubei', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(480, 'Hunan', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(481, 'Inner Mongolia', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(482, 'Jiangsu', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(483, 'Jiangxi', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(484, 'Jilin', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(485, 'Liaoning', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(486, 'Macau', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(487, 'Ningxia', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(488, 'Qinghai', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(489, 'Shaanxi', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(490, 'Shandong', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(491, 'Shanghai', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(492, 'Shanxi', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(493, 'Sichuan', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(494, 'Tianjin', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(495, 'Tibet', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(496, 'Xinjiang', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(497, 'Yunnan', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(498, 'Zhejiang', 'CHN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(499, 'Amazonas', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(500, 'Antioquia', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(501, 'Arauca', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(502, 'Atlántico', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(503, 'Bogotá', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(504, 'Bolívar', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(505, 'Boyacá', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(506, 'Caldas', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(507, 'Caquetá', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(508, 'Casanare', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(509, 'Cauca', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(510, 'Cesar', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(511, 'Chocó', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(512, 'Córdoba', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(513, 'Cundinamarca', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(514, 'Guainía', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(515, 'Guajira', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(516, 'Huila', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(517, 'La Guajira', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(518, 'Magdalena', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(519, 'Meta', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(520, 'Nariño', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(521, 'Norte de Santander', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(522, 'Putumayo', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(523, 'Quindío', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(524, 'Risaralda', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(525, 'San Andrés y Providencia  ', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(526, 'Santander', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(527, 'Sucre', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(528, 'Tolima', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(529, 'Valle del Cauca', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(530, 'Vaupés', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(531, 'Vichada', 'COL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(532, 'Bandundu', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(533, 'Bas-Congo', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(534, 'Équateur', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(535, 'Kasai-Occidental', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(536, 'Kasai-Oriental', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(537, 'Katanga', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(538, 'Kinshasa', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(539, 'Maniema', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(540, 'Nord-Kivu', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(541, 'Orientale', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(542, 'Sud-Kivu', 'COG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(543, 'Alajuela', 'CRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(544, 'Cartago', 'CRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(545, 'Guanacaste', 'CRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(546, 'Heredia', 'CRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(547, 'Limón', 'CRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(548, 'Puntarenas', 'CRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(549, 'San José', 'CRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(550, 'Bjelovar-Bilogora', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(551, 'Brod-Posavina', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(552, 'Dubrovnik-Neretva', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(553, 'Istria', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(554, 'Karlovac', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(555, 'Koprivnica-Krievci', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(556, 'Krapina-Zagorje', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(557, 'Lika-Senj', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(558, 'Medimurje', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(559, 'Osijek-Baranja', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(560, 'Poega-Slavonia', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(561, 'Primorje-Gorski Kotar', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(562, 'ibenik-Knin', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(563, 'Sisak-Moslavina', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(564, 'Split-Dalmatia', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(565, 'Varadin', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(566, 'Virovitica-Podravina', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(567, 'Vukovar-Srijem', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(568, 'Zadar', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(569, 'Zagreb County', 'HRV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(570, 'Artemisa', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(571, 'Camagüey', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(572, 'Ciego de Ávila', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(573, 'Cienfuegos', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(574, 'Granma', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(575, 'Guantánamo', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(576, 'Holguín', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(577, 'Isla de la Juventud', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(578, 'La Habana', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(579, 'Las Tunas', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(580, 'Matanzas', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(581, 'Mayabeque', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(582, 'Pinar del Río', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(583, 'Sancti Spíritus', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(584, 'Santiago de Cuba', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(585, 'Villa Clara', 'CUB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(586, 'Famagusta', 'CYP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(587, 'Kyrenia', 'CYP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(588, 'Larnaca', 'CYP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(589, 'Limassol', 'CYP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(590, 'Nicosia', 'CYP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(591, 'Paphos', 'CYP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(592, 'Hlavní mesto', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(593, 'Jihomoravský', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(594, 'Jihoceský', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(595, 'Karlovarský', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(596, 'Kraj Vysocina', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(597, 'Královéhradecký', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(598, 'Liberecký', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(599, 'Moravskoslezský', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(600, 'Olomoucký', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(601, 'Pardubický', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(602, 'Plzenský', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(603, 'Stredoceský', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(604, 'Ústecký', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(605, 'Zlínský', 'CZE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(606, 'Hovedstaden', 'DNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(607, 'Midtjylland', 'DNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(608, 'Nordjylland', 'DNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(609, 'Sjælland', 'DNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(610, 'Syddanmark', 'DNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(611, 'Ali Sabieh', 'DJI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(612, 'Dikhil', 'DJI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(613, 'Djibouti', 'DJI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(614, 'Obock', 'DJI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(615, 'Tadjourah', 'DJI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(616, 'Azua', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(617, 'Baoruco', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(618, 'Barahona', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(619, 'Dajabón', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(620, 'Distrito Nacional', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(621, 'Duarte', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(622, 'El Seibo', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(623, 'Elías Piña', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(624, 'Espaillat', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(625, 'Hato Mayor', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(626, 'Hermanas Mirabal', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(627, 'Independencia', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(628, 'La Altagracia', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(629, 'La Romana', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(630, 'La Vega', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(631, 'María Trinidad Sánchez', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(632, 'Monseñor Nouel', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(633, 'Monte Cristi', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(634, 'Monte Plata', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(635, 'Pedernales', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(636, 'Peravia', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(637, 'Puerto Plata', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(638, 'Samaná', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(639, 'Sánchez Ramírez', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(640, 'San Cristóbal', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(641, 'San José de Ocoa', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(642, 'San Juan', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(643, 'San Pedro de Macorís', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(644, 'Santiago', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(645, 'Santiago Rodríguez', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(646, 'Santo Domingo', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(647, 'Valverde', 'DOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(648, 'Azuay', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(649, 'Bolivar', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(650, 'Cañar', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(651, 'Carchi', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(652, 'Chimborazo', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(653, 'Cotopaxi', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(654, 'El Oro', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(655, 'Esmeraldas', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(656, 'Galápagos', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(657, 'Guayas', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(658, 'Imbabura', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(659, 'Loja', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(660, 'Los Rios', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(661, 'Manabí', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(662, 'Morona Santiago', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(663, 'Napo', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(664, 'Orellana', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(665, 'Pastaza', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(666, 'Pichincha', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(667, 'Santa Elena', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(668, 'Santo Domingo de los Tsáchilas', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(669, 'Sucumbíos', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(670, 'Tungurahua', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(671, 'Zamora-Chinchipe', 'ECU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(672, 'Alexandria', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(673, 'Aswan', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33');
INSERT INTO `states` (`id`, `name`, `country_code`, `enabled`, `date_modified`, `date_added`) VALUES
(674, 'Asyut', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(675, 'Beheira', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(676, 'Beni Suef', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(677, 'Cairo', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(678, 'Dakahlia', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(679, 'Damietta', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(680, 'Faiyum', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(681, 'Gharbia', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(682, 'Giza', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(683, 'Ismailia', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(684, 'Kafr el-Sheikh', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(685, 'Luxor', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(686, 'Matruh', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(687, 'Minya', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(688, 'Monufia', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(689, 'New Valley', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(690, 'North Sinai', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(691, 'Port Said', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(692, 'Qalyubia', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(693, 'Qena', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(694, 'Red Sea', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(695, 'Sharqia', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(696, 'Sohag', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(697, 'South Sinai', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(698, 'Suez', 'EGY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(699, 'Ahuachapán', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(700, 'Cabañas', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(701, 'Chalatenango', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(702, 'Cuscatlán', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(703, 'La Libertad', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(704, 'La Paz', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(705, 'La Unión', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(706, 'Morazán', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(707, 'San Miguel', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(708, 'San Salvador', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(709, 'San Vicente', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(710, 'Santa Ana', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(711, 'Sonsonate', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(712, 'Usulután', 'SLV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(713, 'Annobón', 'GNQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(714, 'Bioko Norte', 'GNQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(715, 'Bioko Sur', 'GNQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(716, 'Centro Sur', 'GNQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(717, 'Kié-Ntem', 'GNQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(718, 'Litoral', 'GNQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(719, 'Wele-Nzas', 'GNQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(720, 'Anseba', 'ERI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(721, 'Debub', 'ERI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(722, 'Maekel', 'ERI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(723, 'Gash-Barka', 'ERI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(724, 'Northern Red Sea', 'ERI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(725, 'Southern Red Sea', 'ERI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(726, 'Harju', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(727, 'Hiiu', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(728, 'Ida-Viru', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(729, 'Järva', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(730, 'Jõgeva', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(731, 'Lääne', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(732, 'Lääne-Viru', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(733, 'Pärnu', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(734, 'Põlva', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(735, 'Rapla', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(736, 'Saare', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(737, 'Tartu', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(738, 'Valga', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(739, 'Viljandi', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(740, 'Võru', 'EST', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(741, 'Addis Ababa', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(742, 'Afar', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(743, 'Amhara', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(744, 'Benishangul-Gumuz', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(745, 'Dire Dawa', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(746, 'Gambela', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(747, 'Harari', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(748, 'Oromia', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(749, 'Somali', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(750, 'Southern Nations', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(751, 'Tigray', 'ETH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(752, 'Albermarle', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(753, 'Berkeley', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(754, 'Concordia', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(755, 'Darwin', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(756, 'East Falkland ', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(757, 'Fox Bay', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(758, 'North Lafonia', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(759, 'San Carlos', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(760, 'Saunders and Dunbar', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(761, 'South Lafonia', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(762, 'Stanley', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(763, 'Teal', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(764, 'Weddell', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(765, 'Wickham and Fitzroy', 'FLK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(766, 'Ahvenanmaa', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(767, 'Etelä-Karjala', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(768, 'Etelä-Pohjanmaa', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(769, 'Etelä-Savo', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(770, 'Kainuu', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(771, 'Kanta-Häme', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(772, 'Keski-Pohjanmaa', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(773, 'Keski-Suomi', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(774, 'Kymenlaakso', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(775, 'Lappi', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(776, 'Päijät-Häme', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(777, 'Pirkanmaa', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(778, 'Pohjanmaa', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(779, 'Pohjois-Karjala', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(780, 'Pohjois-Pohjanmaa', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(781, 'Pohjois-Savo', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(782, 'Satakunta', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(783, 'Uusimaa', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(784, 'Varsinais-Suomi', 'FIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(785, 'Alsace-Champagne-Ardenne-Lorraine', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(786, 'Aquitaine-Limousin-Poitou-Charentes', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(787, 'Auvergne-Rhône-Alpes', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(788, 'Bretagne', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(789, 'Bourgogne-Franche-Comté', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(790, 'Centre-Val de Loire', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(791, 'Corse', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(792, 'Languedoc-Roussillon-Midi-Pyrénées', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(793, 'Normandie', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(794, 'Nord-Pas-de-Calais-Picardie', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(795, 'Île-de-France', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(796, 'Provence-Alpes-Côte d''Azur', 'FRA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(797, 'Estuaire', 'GAB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(798, 'Haut-Ogooué', 'GAB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(799, 'Moyen-Ogooué', 'GAB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(800, 'Ngounié', 'GAB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(801, 'Nyanga', 'GAB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(802, 'Ogooué-Ivindo', 'GAB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(803, 'Ogooué-Lolo', 'GAB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(804, 'Ogooué-Maritime', 'GAB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(805, 'Woleu-Ntem', 'GAB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(806, 'Banjul', 'GMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(807, 'Central River', 'GMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(808, 'Lower River', 'GMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(809, 'North Bank', 'GMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(810, 'Upper River', 'GMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(811, 'Western', 'GMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(812, 'Abkhazia', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(813, 'Ajaria', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(814, 'Guria', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(815, 'Imereti', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(816, 'Kakheti', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(817, 'Kvemo Kartli', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(818, 'Mtskheta-Mtianeti', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(819, 'Racha Lechkhumi and Kvemo Svanet', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(820, 'Samegrelo-Zemo Svaneti', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(821, 'Samtskhe-Javakheti', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(822, 'Shida Kartli', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(823, 'Tbilisi', 'GEO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(824, 'Baden-Württemberg', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(825, 'Bavaria', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(826, 'Berlin', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(827, 'Brandenburg', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(828, 'Bremen', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(829, 'Hamburg', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(830, 'Hesse', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(831, 'Lower Saxony', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(832, 'Mecklenburg-Vorpommern', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(833, 'North Rhine-Westphalia', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(834, 'Rhineland-Palatinate', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(835, 'Saarland', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(836, 'Saxony', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(837, 'Saxony-Anhalt', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(838, 'Schleswig-Holstein', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(839, 'Thuringia', 'DEU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(840, 'Ashanti', 'GHA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(841, 'Brong-Ahafo', 'GHA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(842, 'Central', 'GHA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(843, 'Eastern', 'GHA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(844, 'Greater Accra', 'GHA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(845, 'Northern', 'GHA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(846, 'Upper East', 'GHA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(847, 'Upper West', 'GHA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(848, 'Volta', 'GHA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(849, 'Western', 'GHA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(850, 'Attica', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(851, 'Central Greece', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(852, 'Central Macedonia', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(853, 'Crete', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(854, 'Eastern Macedonia and Thrace', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(855, 'Epirus', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(856, 'Ionian Islands', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(857, 'North Aegean', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(858, 'Peloponnese', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(859, 'South Aegean', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(860, 'Thessaly', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(861, 'Western Greece', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(862, 'Western Macedonia', 'GRC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(863, 'Kujalleq', 'GRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(864, 'Qaasuitsup', 'GRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(865, 'Qeqqata', 'GRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(866, 'Sermersooq', 'GRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(867, 'Alta Verapaz', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(868, 'Baja Verapaz', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(869, 'Chimaltenango', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(870, 'Chiquimula', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(871, 'El Progreso', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(872, 'Escuintla', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(873, 'Guatemala', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(874, 'Huehuetenango', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(875, 'Izabal', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(876, 'Jalapa', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(877, 'Jutiapa', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(878, 'Petén', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(879, 'Quetzaltenango', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(880, 'Quiché', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(881, 'Retalhuleu', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(882, 'Sacatepéquez', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(883, 'San Marcos', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(884, 'Santa Rosa', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(885, 'Sololá', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(886, 'Suchitepéquez', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(887, 'Totonicapán', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(888, 'Zacapa', 'GTM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(889, 'Boké', 'GIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(890, 'Conakry', 'GIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(891, 'Faranah', 'GIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(892, 'Kankan', 'GIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(893, 'Kindia', 'GIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(894, 'Labé', 'GIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(895, 'Mamou', 'GIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(896, 'Nzérékoré', 'GIN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(897, 'Bafatá', 'GNB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(898, 'Biombo', 'GNB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(899, 'Bissau', 'GNB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(900, 'Bolama', 'GNB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(901, 'Cacheu', 'GNB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(902, 'Gabú', 'GNB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(903, 'Oio', 'GNB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(904, 'Quinara', 'GNB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(905, 'Tombalí', 'GNB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(906, 'Barima-Waini', 'GUY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(907, 'Cuyuni-Mazaruni', 'GUY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(908, 'Demerara-Mahaica', 'GUY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(909, 'East Berbice-Corentyne', 'GUY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(910, 'Essequibo Islands-West Demerara', 'GUY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(911, 'Mahaica-Berbice', 'GUY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(912, 'Pomeroon-Supenaam', 'GUY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(913, 'Potaro-Siparuni', 'GUY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(914, 'Upper Demerara-Berbice', 'GUY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(915, 'Upper Takutu-Upper Essequibo', 'GUY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(916, 'Artibonite', 'HTI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(917, 'Centre', 'HTI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(918, 'Grand''Anse', 'HTI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(919, 'Nippes', 'HTI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(920, 'Nord', 'HTI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(921, 'Nord-Est', 'HTI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(922, 'Nord-Ouest', 'HTI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(923, 'Ouest', 'HTI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(924, 'Sud', 'HTI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(925, 'Sud-Est', 'HTI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(926, 'Atlántida', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(927, 'Choluteca', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(928, 'Colón', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(929, 'Comayagua', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(930, 'Copán', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(931, 'Cortés', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(932, 'El Paraíso', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(933, 'Francisco Morazán', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(934, 'Gracias a Dios', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(935, 'Intibucá', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(936, 'Islas de la Bahía', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(937, 'La Paz', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(938, 'Lempira', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(939, 'Ocotepeque', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(940, 'Olancho', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(941, 'Santa Bárbara', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(942, 'Valle', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(943, 'Yoro', 'HND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(944, 'Central and Western', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(945, 'Eastern', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(946, 'Islands', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(947, 'Kowloon City', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(948, 'Kwai Tsing', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(949, 'Kwun Tong', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(950, 'North', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(951, 'Sai Kung', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(952, 'Sha Tin', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(953, 'Sham Shui Po', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(954, 'Southern', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(955, 'Tai Po', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(956, 'Tsuen Wan', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(957, 'Tuen Mun', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(958, 'Wan Chai', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(959, 'Wong Tai Sin', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(960, 'Yau Tsim Mong', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(961, 'Yuen Long', 'HKG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(962, 'Central Hungary', 'HUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(963, 'Central Transdanubia', 'HUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(964, 'Northern Great Plain', 'HUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(965, 'Northern Hungary', 'HUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(966, 'Southern Great Plain', 'HUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(967, 'Southern Transdanubia', 'HUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(968, 'Western Transdanubia', 'HUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(969, 'Capital Region', 'ISL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(970, 'Eastern Region', 'ISL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(971, 'Northeastern Region', 'ISL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(972, 'Northwestern Region', 'ISL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(973, 'Southern Peninsula', 'ISL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(974, 'Southern Region', 'ISL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(975, 'Western Region', 'ISL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(976, 'Westfjords', 'ISL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(977, 'Andhra Pradesh', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(978, 'Arunachal Pradesh', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(979, 'Assam', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(980, 'Bihar', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(981, 'Chhattisgarh', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(982, 'Goa', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(983, 'Gujarat', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(984, 'Haryana', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(985, 'Himachal Pradesh', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(986, 'Jammu and Kashmir', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(987, 'Jharkhand', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(988, 'Karnataka', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(989, 'Kerala', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(990, 'Madhya Pradesh', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(991, 'Maharashtra', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(992, 'Manipur', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(993, 'Meghalaya', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(994, 'Mizoram', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(995, 'Nagaland', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(996, 'Odisha', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(997, 'Punjab', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(998, 'Rajasthan', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(999, 'Sikkim', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1000, 'Tamil Nadu', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1001, 'Telangana', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1002, 'Tripura', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1003, 'Uttar Pradesh', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1004, 'Uttarakhand', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1005, 'West Bengal', 'IND', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1006, 'Bali', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1007, 'BangkaBelitung Islands', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1008, 'Banten', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1009, 'Bengkulu', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1010, 'Central Java', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1011, 'Central Kalimantan', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1012, 'Central Sulawesi', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1013, 'East Java', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1014, 'East Kalimantan', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1015, 'East Nusa Tenggara', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1016, 'Gorontalo', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1017, 'Jakarta Special Capital Region', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1018, 'Jambi', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1019, 'Lampung', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1020, 'Maluku', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1021, 'North Kalimantan', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1022, 'North Maluku', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1023, 'North Sulawesi', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1024, 'North Sumatra', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1025, 'Riau', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1026, 'Riau Islands', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1027, 'South Kalimantan', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1028, 'South Sulawesi', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1029, 'South Sumatra', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1030, 'Southeast Sulawesi', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1031, 'Special Region of Aceh', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1032, 'Special Region of Papua', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1033, 'Special Region of West Papua', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1034, 'Special Region of Yogyakarta', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1035, 'West Java', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1036, 'West Kalimantan', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1037, 'West Nusa Tenggara', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1038, 'West Sulawesi', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1039, 'West Sumatra', 'IDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1040, 'Alborz', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1041, 'Ardabil', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1042, 'Azerbaijan East', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1043, 'Azerbaijan West', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1044, 'Bushehr', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1045, 'Chahar Mahaal and Bakhtiari', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1046, 'Fars', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1047, 'Gilan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1048, 'Golestan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1049, 'Hamadan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1050, 'Hormozgan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1051, 'Ilam', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1052, 'Isfahan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1053, 'Kerman', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1054, 'Kermanshah', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1055, 'Khorasan North', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1056, 'Khorasan Razavi', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1057, 'Khorasan South', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1058, 'Khuzestan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1059, 'Kohgiluyeh and Boyer-Ahmad', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1060, 'Kurdistan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1061, 'Lorestan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1062, 'Markazi', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1063, 'Mazandaran', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1064, 'Qazvin', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1065, 'Qom', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1066, 'Semnan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1067, 'Sistan and Baluchestan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1068, 'Tehran', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1069, 'Yazd', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1070, 'Zanjan', 'IRN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1071, 'Al Anbar', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1072, 'Al Diwaniyah', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1073, 'Babil', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1074, 'Baghdad', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1075, 'Basra', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1076, 'Dhi Qar', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1077, 'Diyala', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1078, 'Dohuk', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1079, 'Erbil', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1080, 'Halabja', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1081, 'Karbala', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1082, 'Kirkuk', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1083, 'Maysan', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1084, 'Muthana', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1085, 'Najaf', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1086, 'Nineveh', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1087, 'Saladin', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1088, 'Sulaymaniyah', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1089, 'Wasit', 'IRQ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1090, 'Antrim', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1091, 'Armagh', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1092, 'Carlow', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1093, 'Cavan', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1094, 'Clare', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1095, 'Cork', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1096, 'Donegal', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1097, 'Down', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1098, 'Dublin', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1099, 'Dún Laoghaire Rathdown', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1100, 'Fermanagh', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1101, 'Fingal', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1102, 'Galway', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1103, 'Kerry', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1104, 'Kildare', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1105, 'Kilkenny', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1106, 'Laois', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1107, 'Leitrim', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1108, 'Limerick', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1109, 'Londonderry', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1110, 'Longford', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1111, 'Louth', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1112, 'Mayo', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1113, 'Meath', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1114, 'Monaghan', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1115, 'Offaly', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1116, 'Roscommon', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1117, 'Sligo', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1118, 'South Dublin', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1119, 'Tipperary', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1120, 'Tyrone', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1121, 'Waterford', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1122, 'Westmeath', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1123, 'Wexford', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1124, 'Wicklow', 'IRL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1125, 'Ezor Yehuda VeShomron', 'ISR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1126, 'Mehoz HaDarom', 'ISR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1127, 'Mehoz HaMerkaz', 'ISR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1128, 'Mehoz HaTzafon', 'ISR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1129, 'Mehoz Heifa', 'ISR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1130, 'Mehoz Tel Aviv', 'ISR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1131, 'Mehoz Yerushalayim', 'ISR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1132, 'Abruzzo', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1133, 'Aosta Valley', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1134, 'Apulia', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1135, 'Basilicata', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1136, 'Calabria', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1137, 'Campania', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1138, 'Emilia-Romagna', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1139, 'Friuli-Venezia Giulia', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1140, 'Lazio', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1141, 'Liguria', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1142, 'Lombardy', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1143, 'Marche', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1144, 'Molise', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1145, 'Piedmont', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1146, 'Sardinia', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1147, 'Sicily', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1148, 'Trentino-South Tyrol', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1149, 'Tuscany', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1150, 'Umbria', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1151, 'Veneto', 'ITA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1152, 'Abidjan', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1153, 'Bas-Sassandra', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1154, 'Comoé', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1155, 'Denguélé', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1156, 'Gôh-Djiboua', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1157, 'Lacs', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1158, 'Lagunes', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1159, 'Montagnes', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1160, 'Sassandra-Marahoué', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1161, 'Savanes', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1162, 'Vallée du Bandama', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1163, 'Woroba', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1164, 'Yamoussoukro', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1165, 'Zanzan', 'CIV', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1166, 'Clarendon', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1167, 'Hanover', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1168, 'Kingston Parish', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1169, 'Manchester', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1170, 'Portland', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1171, 'Saint Andrew', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1172, 'Saint Ann', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1173, 'Saint Catherine', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1174, 'Saint Elizabeth', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1175, 'Saint James', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1176, 'Saint Mary', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1177, 'Saint Thomas', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1178, 'Trelawny', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1179, 'Westmoreland', 'JAM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1180, 'Aichi', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1181, 'Akita', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1182, 'Aomori', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1183, 'Chiba', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1184, 'Ehime', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1185, 'Fukui', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1186, 'Fukuoka', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1187, 'Fukushima', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1188, 'Gifu', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1189, 'Gunma', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1190, 'Hiroshima', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1191, 'Hokkaido', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1192, 'Hyogo', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1193, 'Ibaraki', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1194, 'Ishikawa', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1195, 'Iwate', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1196, 'Kagawa', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1197, 'Kagoshima', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1198, 'Kanagawa', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1199, 'Kochi', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1200, 'Kumamoto', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1201, 'Kyoto', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1202, 'Mie', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1203, 'Miyagi', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1204, 'Miyazaki', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1205, 'Nagano', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1206, 'Nagasaki', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1207, 'Nara', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1208, 'Niigata', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1209, 'Oita', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1210, 'Okayama', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1211, 'Okinawa', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1212, 'Osaka', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1213, 'Saga', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1214, 'Saitama', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1215, 'Shiga', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1216, 'Shimane', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1217, 'Shizuoka', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1218, 'Tochigi', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1219, 'Tokushima', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1220, 'Tottori', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1221, 'Toyama', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1222, 'Tokyo', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1223, 'Wakayama', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1224, 'Yamagata', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1225, 'Yamaguchi', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1226, 'Yamanashi', 'JPN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1227, 'Ajlun', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1228, 'Amman', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1229, 'Aqaba', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1230, 'Balqa', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1231, 'Irbid', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1232, 'Jarash', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1233, 'Karak', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1234, 'Ma`an', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1235, 'Madaba', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1236, 'Mafraq', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1237, 'Tafilah', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1238, 'Zarqa', 'JOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1239, 'Akmola Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1240, 'Aktobe Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1241, 'Almaty', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1242, 'Almaty Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1243, 'Astana', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1244, 'Atyrau Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1245, 'Baikonur', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1246, 'East Kazakhstan Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1247, 'Jambyl Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1248, 'Karaganda Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1249, 'Kostanay Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1250, 'Kyzylorda Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1251, 'Mangystau Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1252, 'North Kazakhstan Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1253, 'Pavlodar Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1254, 'South Kazakhstan Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1255, 'West Kazakhstan Region', 'KAZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1256, 'Baringo', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1257, 'Bomet', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1258, 'Bungoma', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1259, 'Busia', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1260, 'Elgeyo-Marakwet', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1261, 'Embu', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1262, 'Garissa', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1263, 'Homa Bay', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1264, 'Isiolo', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1265, 'Kajiado', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1266, 'Kakamega', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1267, 'Kericho', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1268, 'Kiambu', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1269, 'Kilifi', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1270, 'Kirinyaga', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1271, 'Kisii', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1272, 'Kisumu', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1273, 'Kitui', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1274, 'Kwale', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1275, 'Laikipia', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1276, 'Lamu', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1277, 'Machakos', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1278, 'Makueni', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1279, 'Mandera', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1280, 'Marsabit', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1281, 'Meru', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1282, 'Migori', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1283, 'Mombasa', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1284, 'Murang''a', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1285, 'Nairobi', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1286, 'Nakuru', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1287, 'Nandi', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1288, 'Narok', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1289, 'Nyamira', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1290, 'Nyandarua', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1291, 'Nyeri', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1292, 'Samburu', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1293, 'Siaya', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1294, 'Taita-Taveta', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1295, 'Tana River', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1296, 'Tharaka-Nithi', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1297, 'Trans Nzoia', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1298, 'Turkana', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1299, 'Uasin Gishu', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1300, 'Vihiga', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1301, 'Wajir', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1302, 'West Pokot', 'KEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1303, 'Ferizaj', 'UNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1304, 'Gjakova', 'UNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1305, 'Gjilan', 'UNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1306, 'Mitrovica', 'UNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1307, 'Pec', 'UNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1308, 'Pristina', 'UNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1309, 'Prizren', 'UNK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1310, 'Ahmadi', 'KWT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1311, 'Al Asimah', 'KWT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1312, 'Farwaniya', 'KWT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1313, 'Hawalli', 'KWT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1314, 'Jahra', 'KWT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1315, 'Mubarak Al-Kabeer', 'KWT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1316, 'Batken', 'KGZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1317, 'Bishkek City', 'KGZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1318, 'Chuy Region', 'KGZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1319, 'Issyk Kul Region', 'KGZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1320, 'Jalal-Abad Region', 'KGZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1321, 'Naryn Region', 'KGZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1322, 'Osh City', 'KGZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1323, 'Osh Region', 'KGZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1324, 'Talas Region', 'KGZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1325, 'Attapu', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1326, 'Bokèo', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1327, 'Bolikhamxai', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1328, 'Champasak', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1329, 'Houaphan', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1330, 'Khammouan', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1331, 'Louangphabang', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1332, 'Luang Namtha', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1333, 'Oudômxai', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1334, 'Phôngsali', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1335, 'Salavan', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33');
INSERT INTO `states` (`id`, `name`, `country_code`, `enabled`, `date_modified`, `date_added`) VALUES
(1336, 'Savannakhét', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1337, 'Vientiane', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1338, 'Xaignabouli', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1339, 'Xiangkhouang', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1340, 'Xékong', 'LAO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1341, 'Kurzeme', 'LVA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1342, 'Latgale', 'LVA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1343, 'Vidzeme', 'LVA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1344, 'Zemgale', 'LVA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1345, 'Beirut', 'LBN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1346, 'Beqaa', 'LBN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1347, 'Mount Lebanon', 'LBN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1348, 'Nabatiye', 'LBN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1349, 'North', 'LBN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1350, 'South', 'LBN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1351, 'Berea', 'LSO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1352, 'Butha-Buthe', 'LSO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1353, 'Leribe', 'LSO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1354, 'Mafeteng', 'LSO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1355, 'Maseru', 'LSO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1356, 'Mohale''s Hoek', 'LSO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1357, 'Mokhotlong', 'LSO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1358, 'Qacha''s Nek', 'LSO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1359, 'Quthing', 'LSO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1360, 'Thaba-Tseka', 'LSO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1361, 'Bomi', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1362, 'Bong', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1363, 'Gbarpolu', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1364, 'Grand Bassa', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1365, 'Grand Cape Mount', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1366, 'Grand Gedeh', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1367, 'Grand Kru', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1368, 'Lofa', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1369, 'Margibi', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1370, 'Maryland', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1371, 'Montserrado', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1372, 'Nimba', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1373, 'River Gee', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1374, 'Rivercess', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1375, 'Sinoe', 'LBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1376, 'Al Wahat', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1377, 'Benghazi', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1378, 'Butnan', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1379, 'Derna', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1380, 'Ghat', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1381, 'Jabal al Akhdar', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1382, 'Jabal al Gharbi', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1383, 'Jafara', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1384, 'Jufra', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1385, 'Kufra', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1386, 'Marj', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1387, 'Misrata', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1388, 'Murqub', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1389, 'Murzuq', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1390, 'Nalut', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1391, 'Nuqat al Khams', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1392, 'Sabha', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1393, 'Sirte', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1394, 'Tripoli', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1395, 'Wadi al Hayaa', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1396, 'Wadi al Shatii', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1397, 'Zawiya', 'LBY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1398, 'Balzers', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1399, 'Eschen', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1400, 'Gamprin', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1401, 'Mauren', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1402, 'Planken', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1403, 'Ruggell', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1404, 'Schaan', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1405, 'Schellenberg', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1406, 'Triesen', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1407, 'Triesenberg', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1408, 'Vaduz', 'LIE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1409, 'Alytus', 'LTU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1410, 'Kaunas', 'LTU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1411, 'Klaipeda', 'LTU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1412, 'Marijampole', 'LTU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1413, 'Paneveys', 'LTU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1414, 'Taurage', 'LTU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1415, 'Teliai', 'LTU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1416, 'Utena', 'LTU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1417, 'Vilnius', 'LTU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1418, 'iauliai', 'LTU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1419, 'Alaotra-Mangoro', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1420, 'Amoron''i Mania', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1421, 'Analamanga', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1422, 'Analanjirofo', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1423, 'Androy', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1424, 'Anosy', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1425, 'Atsimo-Andrefana', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1426, 'Atsimo-Atsinanana', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1427, 'Atsinanana', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1428, 'Betsiboka', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1429, 'Boeny', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1430, 'Bongolava', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1431, 'Diana', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1432, 'Ihorombe', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1433, 'Itasy', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1434, 'Matsiatra Ambony', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1435, 'Melaky', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1436, 'Menabe', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1437, 'Sava', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1438, 'Sofia', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1439, 'Vakinankaratra', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1440, 'Vatovavy-Fitovinany', 'MDG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1441, 'Balaka', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1442, 'Blantyre', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1443, 'Chikwawa', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1444, 'Chiradzulu', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1445, 'Chitipa', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1446, 'Dedza', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1447, 'Dowa', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1448, 'Karonga', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1449, 'Kasungu', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1450, 'Likoma', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1451, 'Lilongwe', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1452, 'Machinga', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1453, 'Mangochi', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1454, 'Mchinji', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1455, 'Mulanje', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1456, 'Mwanza', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1457, 'Mzimba', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1458, 'Neno', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1459, 'Nkhata Bay', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1460, 'Nkhotakota', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1461, 'Nsanje', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1462, 'Ntcheu', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1463, 'Ntchisi', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1464, 'Phalombe', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1465, 'Rumphi', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1466, 'Salima', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1467, 'Thyolo', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1468, 'Zomba', 'MWI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1469, 'Federal Territory of Kuala Lumpur', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1470, 'Federal Territory of Labuan', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1471, 'Federal Territory of Putrajaya', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1472, 'Johor Darul Ta''zim', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1473, 'Kedah Darul Aman', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1474, 'Kelantan Darul Naim', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1475, 'Malacca', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1476, 'Negeri Sembilan Darul Khusus', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1477, 'Pahang Darul Makmur', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1478, 'Penang', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1479, 'Perak Darul Ridzuan', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1480, 'Perlis Indera Kayangan', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1481, 'Sabah', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1482, 'Sarawak', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1483, 'Selangor Darul Ehsan', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1484, 'Terengganu Darul Iman', 'MYS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1485, 'Bamako', 'MLI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1486, 'Gao', 'MLI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1487, 'Kayes', 'MLI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1488, 'Kidal', 'MLI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1489, 'Koulikoro', 'MLI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1490, 'Mopti', 'MLI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1491, 'Sikasso', 'MLI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1492, 'Ségou', 'MLI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1493, 'Tombouctou', 'MLI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1494, 'Adrar', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1495, 'Assaba', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1496, 'Brakna', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1497, 'Dakhlet Nouadhibou', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1498, 'Gorgol', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1499, 'Guidimaka', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1500, 'Hodh Ech Chargui', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1501, 'Hodh El Gharbi', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1502, 'Inchiri', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1503, 'Nouakchott-Nord', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1504, 'Nouakchott-Ouest', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1505, 'Nouakchott-Sud', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1506, 'Tagant', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1507, 'Tiris Zemmour', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1508, 'Trarza', 'MRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1509, 'Aguascalientes', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1510, 'Baja California', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1511, 'Baja California Sur', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1512, 'Campeche', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1513, 'Chiapas', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1514, 'Chihuahua', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1515, 'Coahuila', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1516, 'Colima', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1517, 'Durango', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1518, 'Guanajuato', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1519, 'Guerrero', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1520, 'Hidalgo', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1521, 'Jalisco', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1522, 'Michoacán', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1523, 'Morelos', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1524, 'México', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1525, 'Nayarit', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1526, 'Nuevo León', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1527, 'Oaxaca', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1528, 'Puebla', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1529, 'Querétaro', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1530, 'Quintana Roo', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1531, 'San Luis Potosí', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1532, 'Sinaloa', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1533, 'Sonora', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1534, 'Tabasco', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1535, 'Tamaulipas', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1536, 'Tlaxcala', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1537, 'Veracruz', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1538, 'Yucatán', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1539, 'Zacatecas', 'MEX', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1540, 'Anenii Noi', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1541, 'Basarabeasca', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1542, 'Briceni', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1543, 'Cahul', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1544, 'Cantemir', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1545, 'Cimislia', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1546, 'Criuleni', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1547, 'Calarasi', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1548, 'Causeni', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1549, 'Donduseni', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1550, 'Drochia', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1551, 'Dubasari', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1552, 'Edinet', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1553, 'Floresti', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1554, 'Falesti', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1555, 'Glodeni', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1556, 'Hîncesti', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1557, 'Ialoveni', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1558, 'Leova', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1559, 'Nisporeni', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1560, 'Ocnita', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1561, 'Orhei', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1562, 'Rezina', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1563, 'Rîscani', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1564, 'Soroca', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1565, 'Straseni', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1566, 'Sîngerei', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1567, 'Taraclia', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1568, 'Telenesti', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1569, 'Ungheni', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1570, 'Soldanesti', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1571, 'Stefan Voda', 'MDA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1572, 'Fonteveille', 'MCO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1573, 'La Condamine', 'MCO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1574, 'Monaco Ville', 'MCO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1575, 'Monte Carlo', 'MCO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1576, 'Monteghetti', 'MCO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1577, 'Arkhangai', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1578, 'Bayan-Ölgii', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1579, 'Bayankhongor', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1580, 'Bulgan', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1581, 'Darkhan-Uul', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1582, 'Dornod', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1583, 'Dornogovi', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1584, 'Dundgovi', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1585, 'Govi-Altai', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1586, 'Govisümber', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1587, 'Khentii', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1588, 'Khovd', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1589, 'Khövsgöl', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1590, 'Ömnögovi', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1591, 'Orkhon', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1592, 'Övörkhangai', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1593, 'Selenge', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1594, 'Sükhbaatar', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1595, 'Töv', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1596, 'Ulaanbaatar', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1597, 'Uvs', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1598, 'Zavkhan', 'MNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1599, 'Andrijevica', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1600, 'Bar', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1601, 'Berane', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1602, 'Bijelo Polje', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1603, 'Budva', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1604, 'Cetinje', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1605, 'Danilovgrad', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1606, 'Gusinje', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1607, 'Herceg Novi', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1608, 'Kolain', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1609, 'Kotor', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1610, 'Mojkovac', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1611, 'Nikic', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1612, 'Petnjica', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1613, 'Plav', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1614, 'Pljevlja', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1615, 'Pluine', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1616, 'Podgorica', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1617, 'Roaje', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1618, 'Tivat', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1619, 'Ulcinj', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1620, 'avnik', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1621, 'abljak', 'MNE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1622, 'Béni Mellal-Khénifra', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1623, 'Casablanca-Settat', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1624, 'Dakhla-Oued Ed-Dahab', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1625, 'Draâ-Tafilalet', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1626, 'Fès-Meknès', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1627, 'Guelmim-Oued Noun', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1628, 'Laâyoune-Sakia El Hamra', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1629, 'Marrakech-Safi', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1630, 'Oriental', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1631, 'Rabat-Salé-Kénitra', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1632, 'Souss-Massa', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1633, 'Tanger-Tetouan-Al Hoceima', 'MAR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1634, 'Cabo Delgado', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1635, 'Gaza', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1636, 'Inhambane', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1637, 'Manica', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1638, 'Maputo', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1639, 'Maputo City', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1640, 'Nampula', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1641, 'Niassa', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1642, 'Sofala', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1643, 'Tete', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1644, 'Zambezia', 'MOZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1645, 'Ayeyarwaddy', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1646, 'Bago', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1647, 'Chin', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1648, 'Kachin', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1649, 'Kayah', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1650, 'Kayin', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1651, 'Magwe', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1652, 'Mandalay', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1653, 'Mon', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1654, 'Rakhine', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1655, 'Sagaing', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1656, 'Shan', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1657, 'Thaninthayi', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1658, 'Yangon', 'MMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1659, 'Bagmati', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1660, 'Bheri', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1661, 'Dhawalagiri', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1662, 'Gandaki', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1663, 'Janakpur', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1664, 'Karnali', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1665, 'Koshi', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1666, 'Lumbini', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1667, 'Mahakali', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1668, 'Mechi', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1669, 'Narayani', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1670, 'Rapti', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1671, 'Sagarmatha', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1672, 'Seti', 'NPL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1673, 'Drenthe', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1674, 'Flevoland', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1675, 'Fryslân', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1676, 'Gelderland', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1677, 'Groningen', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1678, 'Limburg', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1679, 'North Brabant', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1680, 'North Holland', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1681, 'Overijssel', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1682, 'South Holland', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1683, 'Utrecht', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1684, 'Zeeland', 'NLD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1685, 'Auckland', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1686, 'Bay of Plenty', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1687, 'Canterbury', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1688, 'Gisborne', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1689, 'Hawke''s Bay', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1690, 'Manawatu-Wanganui', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1691, 'Marlborough', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1692, 'Nelson', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1693, 'Northland', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1694, 'Otago', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1695, 'Southland', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1696, 'Taranaki', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1697, 'Tasman', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1698, 'Waikato', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1699, 'Wellington', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1700, 'West Coast', 'NZL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1701, 'Boaco', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1702, 'Carazo', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1703, 'Chinandega', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1704, 'Chontales', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1705, 'Estelí', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1706, 'Granada', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1707, 'Jinotega', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1708, 'León', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1709, 'Madriz', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1710, 'Managua', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1711, 'Masaya', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1712, 'Matagalpa', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1713, 'North Caribbean Coast', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1714, 'Nueva Segovia', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1715, 'Rivas', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1716, 'Río San Juan', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1717, 'South Caribbean Coast', 'NIC', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1718, 'Agadez', 'NER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1719, 'Diffa', 'NER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1720, 'Dosso', 'NER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1721, 'Maradi', 'NER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1722, 'Niamey', 'NER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1723, 'Tahoua', 'NER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1724, 'Tillabéri', 'NER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1725, 'Zinder', 'NER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1726, 'Abia', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1727, 'Adamawa', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1728, 'Akwa Ibom', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1729, 'Anambra', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1730, 'Bauchi', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1731, 'Bayelsa', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1732, 'Benue', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1733, 'Borno', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1734, 'Cross River', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1735, 'Delta', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1736, 'Ebonyi', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1737, 'Edo', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1738, 'Ekiti', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1739, 'Enugu', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1740, 'Gombe', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1741, 'Imo', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1742, 'Jigawa', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1743, 'Kaduna', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1744, 'Kano', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1745, 'Katsina', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1746, 'Kebbi', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1747, 'Kogi', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1748, 'Kwara', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1749, 'Lagos', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1750, 'Nasarawa', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1751, 'Niger', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1752, 'Ogun', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1753, 'Ondo', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1754, 'Osun', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1755, 'Oyo', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1756, 'Plateau', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1757, 'Rivers', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1758, 'Sokoto', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1759, 'Taraba', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1760, 'Yobe', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1761, 'Zamfara', 'NGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1762, 'Chagang', 'PRK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1763, 'Kangwon', 'PRK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1764, 'North Hamgyong', 'PRK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1765, 'North Hwanghae', 'PRK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1766, 'North Pyongan', 'PRK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1767, 'Ryanggang', 'PRK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1768, 'South Hamgyong', 'PRK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1769, 'South Hwanghae', 'PRK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1770, 'South Pyongan', 'PRK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1771, 'Ayeyarwaddy', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1772, 'Aust-Agder', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1773, 'Buskerud', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1774, 'Finnmark', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1775, 'Hedmark', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1776, 'Hordaland', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1777, 'Oslo', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1778, 'Møre og Romsdal', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1779, 'Nord-Trøndelag', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1780, 'Nordland', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1781, 'Oppland', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1782, 'Rogaland', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1783, 'Sogn og Fjordane', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1784, 'Sør-Trøndelag', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1785, 'Telemark', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1786, 'Troms', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1787, 'Vest-Agder', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1788, 'Vestfold', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1789, 'Østfold', 'NOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1790, 'Ad Dakhiliyah', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1791, 'Ad Dhahirah', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1792, 'Al Batinah North', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1793, 'Al Batinah South', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1794, 'Al Buraimi', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1795, 'Al Wusta', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1796, 'Ash Sharqiyah North', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1797, 'Ash Sharqiyah South', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1798, 'Dhofar', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1799, 'Musandam', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1800, 'Muscat', 'OMN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1801, 'Azad Jammu and Kashmir', 'PAK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1802, 'Balochistan', 'PAK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1803, 'Federally Administered Tribal Areas', 'PAK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1804, 'Gilgit-Baltistan', 'PAK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1805, 'Islamabad Capital Territory', 'PAK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1806, 'Khyber Pakhtunkhwa', 'PAK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1807, 'Punjab', 'PAK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1808, 'Sindh', 'PAK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1809, 'Bethlehem', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1810, 'Deir al-Balah', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1811, 'Gaza', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1812, 'Hebron', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1813, 'Jenin', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1814, 'Jericho', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1815, 'Jerusalem', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1816, 'Khan Yunis', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1817, 'Nablus', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1818, 'North Gaza', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1819, 'Qalqilya', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1820, 'Rafah', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1821, 'Ramallah and Al-Bireh', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1822, 'Salfit', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1823, 'Tubas', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1824, 'Tulkarm', 'PSE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1825, 'Bocas del Toro', 'PAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1826, 'Chiriquí', 'PAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1827, 'Coclé', 'PAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1828, 'Colón', 'PAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1829, 'Darién', 'PAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1830, 'Herrera', 'PAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1831, 'Los Santos', 'PAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1832, 'Panamá', 'PAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1833, 'Panamá Oeste', 'PAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1834, 'Veraguas', 'PAN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1835, 'Bougainville', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1836, 'Central', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1837, 'East New Britain', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1838, 'East Sepik', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1839, 'Eastern Highlands', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1840, 'Enga', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1841, 'Gulf', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1842, 'Hela', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1843, 'Jiwaka', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1844, 'Madang', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1845, 'Manus', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1846, 'Milne Bay', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1847, 'Morobe', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1848, 'National Capital District', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1849, 'New Ireland', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1850, 'Oro', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1851, 'Sandaun', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1852, 'Simbu', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1853, 'Southern Highlands', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1854, 'West New Britain', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1855, 'Western', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1856, 'Western Highlands', 'PNG', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1857, 'Distrito Capital', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1858, 'Central', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1859, 'Alto Paraguay', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1860, 'Alto Paraná', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1861, 'Amambay', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1862, 'Boquerón', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1863, 'Caaguazú', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1864, 'Caazapá', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1865, 'Canindeyú', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1866, 'Concepción', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1867, 'Cordillera', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1868, 'Guairá', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1869, 'Itapúa', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1870, 'Misiones', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1871, 'Ñeembucú', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1872, 'Paraguarí', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1873, 'Presidente Hayes', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1874, 'San Pedro', 'PRY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1875, 'Amazonas', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1876, 'Ancash', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1877, 'Apurímac', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1878, 'Arequipa', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1879, 'Ayacucho', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1880, 'Cajamarca', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1881, 'Callao', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1882, 'Cuzco', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1883, 'Huancavelica', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1884, 'Huánuco', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1885, 'Ica', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1886, 'Junín', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1887, 'La Libertad', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1888, 'Lambayeque', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1889, 'Lima', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1890, 'Loreto', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1891, 'Madre de Dios', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1892, 'Moquegua', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1893, 'Pasco', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1894, 'Piura', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1895, 'Puno', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1896, 'San Martín', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1897, 'Tacna', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1898, 'Tumbes', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1899, 'Ucayali', 'PER', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1900, 'Bicol', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1901, 'Cagayan', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1902, 'Calabarzon', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1903, 'Caraga', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1904, 'Central Luzon', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1905, 'Central Visayas', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1906, 'Cordillera', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1907, 'Davao', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1908, 'Eastern Visayas', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1909, 'Ilocos', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1910, 'Mimaropa', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1911, 'Mindanao', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1912, 'National Capital Region', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1913, 'Negros Island Region', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1914, 'Northern Mindanao', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1915, 'Soccsksargen', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1916, 'Western Visayas', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1917, 'Zamboanga Peninsula', 'PHL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1918, 'Greater Poland', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1919, 'Kuyavian-Pomeranian', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1920, 'Lesser Poland', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1921, 'Lódz', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1922, 'Lower Silesian', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1923, 'Lublin', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1924, 'Lubusz', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1925, 'Masovian', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1926, 'Opole', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1927, 'Podlaskie', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1928, 'Pomeranian', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1929, 'Silesian', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1930, 'Subcarpathian', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1931, 'Swietokrzyskie', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1932, 'Warmian-Masurian', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1933, 'West Pomeranian', 'POL', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1934, 'Aveiro', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1935, 'Azores Islands', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1936, 'Beja', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1937, 'Braga', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1938, 'Bragança', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1939, 'Castelo Branco', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1940, 'Coimbra', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1941, 'Faro', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1942, 'Guarda', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1943, 'Leiria', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1944, 'Lisbon', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1945, 'Madeira Islands', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1946, 'Portalegre', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1947, 'Porto', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1948, 'Santarém', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1949, 'Setúbal', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1950, 'Viana do Castelo', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1951, 'Vila Real', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1952, 'Viseu', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1953, 'Évora', 'PRT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1954, 'Arecibo', 'PRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1955, 'Bayamón', 'PRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1956, 'Carolina', 'PRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1957, 'Guayama', 'PRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1958, 'Humacao', 'PRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1959, 'Mayagüez-Aguadilla', 'PRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1960, 'Ponce', 'PRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1961, 'San Juan', 'PRI', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1962, 'Ad Dawhah', 'QAT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1963, 'Al Daayen', 'QAT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1964, 'Al Khor', 'QAT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1965, 'Al Wakrah', 'QAT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1966, 'Ar Rayyan', 'QAT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1967, 'Madinat ash Shamal', 'QAT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1968, 'Umm Salal', 'QAT', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1969, 'Alba', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1970, 'Arad', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1971, 'Arges', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1972, 'Bacau', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1973, 'Bihor', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1974, 'Bistrita-Nasaud', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1975, 'Botosani', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1976, 'Brasov', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1977, 'Braila', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1978, 'Bucuresti', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1979, 'Buzau', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1980, 'Caras-Severin', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1981, 'Cluj', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1982, 'Constanta', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1983, 'Covasna', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1984, 'Calarasi', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1985, 'Dolj', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1986, 'Dâmbovita', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1987, 'Galati', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1988, 'Giurgiu', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1989, 'Gorj', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1990, 'Harghita', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1991, 'Hunedoara', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1992, 'Ialomita', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1993, 'Iasi', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1994, 'Ilfov', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1995, 'Maramures', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1996, 'Mehedinti', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1997, 'Mures', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1998, 'Neamt', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(1999, 'Olt', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2000, 'Prahova', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2001, 'Satu Mare', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33');
INSERT INTO `states` (`id`, `name`, `country_code`, `enabled`, `date_modified`, `date_added`) VALUES
(2002, 'Sibiu', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2003, 'Suceava', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2004, 'Salaj', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2005, 'Teleorman', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2006, 'Timis', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2007, 'Tulcea', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2008, 'Vaslui', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2009, 'Vrancea', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2010, 'Vâlcea', 'ROM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2011, 'Adygea', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2012, 'Altai Krai', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2013, 'Altai Republic', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2014, 'Amur Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2015, 'Arkhangelsk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2016, 'Astrakhan Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2017, 'Bashkortostan', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2018, 'Belgorod Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2019, 'Bryansk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2020, 'Buryatia', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2021, 'Chechen Republic', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2022, 'Chelyabinsk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2023, 'Chukotka Autonomous Okrug', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2024, 'Chuvash Republic', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2025, 'Crimea', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2026, 'Dagestan', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2027, 'Ingushetia', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2028, 'Irkutsk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2029, 'Ivanovo Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2030, 'Jewish Autonomous Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2031, 'Kabardino-Balkar Republic', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2032, 'Kaliningrad Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2033, 'Kalmykia', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2034, 'Kaluga Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2035, 'Kamchatka Krai', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2036, 'Karachay-Cherkess Republic', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2037, 'Karelia', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2038, 'Kemerovo Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2039, 'Khabarovsk Krai', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2040, 'Khakassia', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2041, 'KhantyMansi Autonomous Okrug  Yugra', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2042, 'Kirov Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2043, 'Komi Republic', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2044, 'Kostroma Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2045, 'Krasnodar Krai', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2046, 'Krasnoyarsk Krai', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2047, 'Kurgan Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2048, 'Kursk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2049, 'Leningrad Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2050, 'Lipetsk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2051, 'Magadan Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2052, 'Mari El Republic', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2053, 'Mordovia', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2054, 'Moscow Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2055, 'Murmansk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2056, 'Nenets Autonomous Okrug', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2057, 'Nizhny Novgorod Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2058, 'North Ossetia-Alania', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2059, 'Novgorod Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2060, 'Novosibirsk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2061, 'Omsk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2062, 'Orenburg Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2063, 'Oryol Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2064, 'Penza Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2065, 'Perm Krai', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2066, 'Primorsky Krai', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2067, 'Pskov Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2068, 'Rostov Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2069, 'Ryazan Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2070, 'Saint Petersburg', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2071, 'Sakha Republic', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2072, 'Sakhalin Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2073, 'Samara Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2074, 'Saratov Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2075, 'Sevastopol', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2076, 'Smolensk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2077, 'Stavropol Krai', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2078, 'Sverdlovsk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2079, 'Tambov Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2080, 'Tatarstan', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2081, 'Tomsk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2082, 'Tula Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2083, 'Tuva Republic', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2084, 'Tver Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2085, 'Tyumen Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2086, 'Udmurt Republic', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2087, 'Ulyanovsk Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2088, 'Vladimir Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2089, 'Volgograd Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2090, 'Vologda Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2091, 'Voronezh Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2092, 'Yamalo-Nenets Autonomous Okrug', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2093, 'Yaroslavl Oblast', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2094, 'Zabaykalsky Krai', 'RUS', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2095, 'Bugesera', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2096, 'Burera', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2097, 'Gakenke', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2098, 'Gasabo', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2099, 'Gatsibo', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2100, 'Gicumbi', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2101, 'Gisagara', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2102, 'Huye', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2103, 'Kamonyi', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2104, 'Karongi', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2105, 'Kayonza', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2106, 'Kicukiro', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2107, 'Kirehe', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2108, 'Muhanga', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2109, 'Musanze', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2110, 'Ngoma', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2111, 'Ngororero', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2112, 'Nyabihu', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2113, 'Nyagatare', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2114, 'Nyamagabe', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2115, 'Nyamasheke', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2116, 'Nyanza', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2117, 'Nyarugenge', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2118, 'Nyaruguru', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2119, 'Rubavu', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2120, 'Ruhango', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2121, 'Rulindo', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2122, 'Rusizi', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2123, 'Rutsiro', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2124, 'Rwamagana', 'RWA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2125, 'Acquaviva', 'SMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2126, 'Borgo Maggiore', 'SMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2127, 'Chiesanuova', 'SMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2128, 'Domagnano', 'SMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2129, 'Faetano', 'SMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2130, 'Fiorentino', 'SMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2131, 'Montegiardino', 'SMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2132, 'San Marino', 'SMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2133, 'Serravalle', 'SMR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2134, '''Asir', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2135, 'Bahah', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2136, 'Eastern Province', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2137, 'Ha''il', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2138, 'Jawf', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2139, 'Jizan', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2140, 'Madinah', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2141, 'Makkah', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2142, 'Najran', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2143, 'Northern Borders', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2144, 'Qassim', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2145, 'Riyadh', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2146, 'Tabuk', 'SAU', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2147, 'Dakar', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2148, 'Diourbel', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2149, 'Fatick', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2150, 'Kaffrine', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2151, 'Kaolack', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2152, 'Kolda', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2153, 'Kédougou', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2154, 'Louga', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2155, 'Matam', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2156, 'Saint-Louis', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2157, 'Sédhiou', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2158, 'Tambacounda', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2159, 'Thiès', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2160, 'Ziguinchor', 'SEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2161, 'Bor', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2162, 'Branicevo', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2163, 'Central Banat', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2164, 'Jablanica', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2165, 'Kolubara', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2166, 'Kosovo District', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2167, 'Kosovo-Pomoravlje', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2168, 'Kosovska Mitrovica', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2169, 'Macva', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2170, 'Moravica', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2171, 'Niava', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2172, 'North Backa', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2173, 'North Banat', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2174, 'Pcinja', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2175, 'Pec', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2176, 'Pirot', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2177, 'Podunavlje', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2178, 'Pomoravlje', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2179, 'Prizren', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2180, 'Rasina', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2181, 'Raka', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2182, 'South Backa', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2183, 'South Banat', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2184, 'Srem', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2185, 'umadija', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2186, 'Toplica', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2187, 'West Backa', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2188, 'Zajecar', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2189, 'Zlatibor', 'SRB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2190, 'Bo', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2191, 'Bombali', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2192, 'Bonthe', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2193, 'Kailahun', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2194, 'Kambia', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2195, 'Kenema', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2196, 'Koinadugu', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2197, 'Kono', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2198, 'Moyamba', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2199, 'Port Loko', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2200, 'Pujehun', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2201, 'Tonkolili', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2202, 'Western Rural', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2203, 'Western Urban', 'SLE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2204, 'Central Region', 'SGP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2205, 'East Region', 'SGP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2206, 'North Region', 'SGP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2207, 'North-East Region', 'SGP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2208, 'West Region', 'SGP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2209, 'Banská Bystrica', 'SVK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2210, 'Bratislava', 'SVK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2211, 'Koice', 'SVK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2212, 'Nitra', 'SVK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2213, 'Preov', 'SVK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2214, 'Trencín', 'SVK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2215, 'Trnava', 'SVK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2216, 'ilina', 'SVK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2217, 'Carinthia', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2218, 'Central Sava', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2219, 'Central Slovenia', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2220, 'CoastalKarst', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2221, 'Drava', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2222, 'Gorizia', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2223, 'LittoralInner Carniola', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2224, 'Lower Sava', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2225, 'Mura', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2226, 'Savinja', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2227, 'Southeast Slovenia', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2228, 'Upper Carniola', 'SVN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2229, 'Awdal', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2230, 'Bakool', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2231, 'Banaadir', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2232, 'Bari', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2233, 'Bay', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2234, 'Galguduud', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2235, 'Gedo', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2236, 'Hiran', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2237, 'Lower Juba', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2238, 'Lower Shebelle', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2239, 'Middle Juba', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2240, 'Middle Shebelle', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2241, 'Mudug', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2242, 'Nugal', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2243, 'Sanaag', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2244, 'Sool', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2245, 'Togdheer', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2246, 'Woqooyi Galbeed', 'SOM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2247, 'Eastern Cape', 'ZAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2248, 'Free State', 'ZAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2249, 'Gauteng', 'ZAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2250, 'KwaZulu-Natal', 'ZAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2251, 'Limpopo', 'ZAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2252, 'Mpumalanga', 'ZAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2253, 'North West', 'ZAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2254, 'Northern Cape', 'ZAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2255, 'Western Cape', 'ZAF', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2256, 'Gangwon', 'KOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2257, 'Gyeonggi', 'KOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2258, 'Jeju', 'KOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2259, 'North Chungcheong', 'KOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2260, 'North Gyeongsang', 'KOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2261, 'North Jeolla', 'KOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2262, 'South Chungcheong', 'KOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2263, 'South Gyeongsang', 'KOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2264, 'South Jeolla', 'KOR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2265, 'Central Equatoria', 'SSD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2266, 'Eastern Equatoria', 'SSD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2267, 'Jonglei', 'SSD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2268, 'Lakes', 'SSD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2269, 'Northern Bahr el Ghazal', 'SSD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2270, 'Unity', 'SSD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2271, 'Upper Nile', 'SSD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2272, 'Warrap', 'SSD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2273, 'Western Bahr el Ghazal', 'SSD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2274, 'Western Equatoria', 'SSD', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2275, 'A Coruña', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2276, 'Álava', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2277, 'Albacete', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2278, 'Alicante', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2279, 'Almería', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2280, 'Asturias', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2281, 'Ávila', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2282, 'Badajoz', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2283, 'Balearic Islands', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2284, 'Barcelona', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2285, 'Biscay', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2286, 'Burgos', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2287, 'Cáceres', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2288, 'Cádiz', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2289, 'Cantabria', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2290, 'Castellón', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2291, 'Ciudad Real', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2292, 'Córdoba', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2293, 'Cuenca', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2294, 'Gipuzkoa', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2295, 'Girona', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2296, 'Granada', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2297, 'Guadalajara', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2298, 'Huelva', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2299, 'Huesca', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2300, 'Jaén', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2301, 'La Rioja', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2302, 'Las Palmas', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2303, 'León', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2304, 'Lleida', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2305, 'Lugo', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2306, 'Madrid', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2307, 'Málaga', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2308, 'Murcia', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2309, 'Navarre', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2310, 'Ourense', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2311, 'Palencia', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2312, 'Pontevedra', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2313, 'Salamanca', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2314, 'Santa Cruz de Tenerife', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2315, 'Segovia', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2316, 'Seville', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2317, 'Soria', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2318, 'Tarragona', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2319, 'Teruel', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2320, 'Toledo', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2321, 'Valencia', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2322, 'Valladolid', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2323, 'Zamora', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2324, 'Zaragoza', 'ESP', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2325, 'Ampara', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2326, 'Anuradhapura', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2327, 'Badulla', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2328, 'Batticaloa', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2329, 'Colombo', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2330, 'Galle', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2331, 'Gampaha', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2332, 'Hambantota', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2333, 'Jaffna', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2334, 'Kalutara', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2335, 'Kandy', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2336, 'Kegalle', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2337, 'Kilinochchi', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2338, 'Kurunegala', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2339, 'Mannar', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2340, 'Matale', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2341, 'Matara', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2342, 'Monaragala', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2343, 'Mullaitivu', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2344, 'Nuwara Eliya', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2345, 'Polonnaruwa', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2346, 'Puttalam', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2347, 'Ratnapura', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2348, 'Trincomalee', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2349, 'Vavuniya', 'LKA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2350, 'Al Jazirah', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2351, 'Al Qadarif', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2352, 'Blue Nile', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2353, 'Central Darfur', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2354, 'East Darfur', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2355, 'Kassala', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2356, 'Khartoum', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2357, 'North Darfur', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2358, 'North Kurdufan', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2359, 'Northern', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2360, 'Red Sea', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2361, 'River Nile', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2362, 'Sennar', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2363, 'South Darfur', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2364, 'South Kurdufan', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2365, 'West Darfur', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2366, 'West Kurdufan', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2367, 'White Nile', 'SDN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2368, 'Brokopondo', 'SUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2369, 'Commewijne', 'SUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2370, 'Coronie', 'SUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2371, 'Marowijne', 'SUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2372, 'Nickerie', 'SUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2373, 'Para', 'SUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2374, 'Paramaribo', 'SUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2375, 'Saramacca', 'SUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2376, 'Sipaliwini', 'SUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2377, 'Wanica', 'SUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2378, 'Hhohho', 'SWZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2379, 'Lubombo', 'SWZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2380, 'Manzini', 'SWZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2381, 'Shiselweni', 'SWZ', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2382, 'Blekinge', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2383, 'Dalarna', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2384, 'Gävleborg', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2385, 'Gotland', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2386, 'Halland', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2387, 'Jämtland', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2388, 'Jönköping', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2389, 'Kalmar', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2390, 'Kronoberg', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2391, 'Norrbotten', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2392, 'Örebro', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2393, 'Östergötland', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2394, 'Skåne', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2395, 'Södermanland', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2396, 'Stockholm', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2397, 'Uppsala', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2398, 'Värmland', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2399, 'Västerbotten', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2400, 'Västernorrland', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2401, 'Västmanland', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2402, 'Västra Götaland', 'SWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2403, 'Aargau', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2404, 'Appenzell Ausserrhoden', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2405, 'Appenzell Innerrhoden', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2406, 'Basel-Landschaft', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2407, 'Basel-Stadt', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2408, 'Bern', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2409, 'Fribourg', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2410, 'Geneva', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2411, 'Glarus', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2412, 'Graubünden', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2413, 'Jura', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2414, 'Luzern', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2415, 'Neuchâtel', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2416, 'Nidwalden', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2417, 'Obwalden', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2418, 'Schaffhausen', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2419, 'Schwyz', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2420, 'Solothurn', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2421, 'St. Gallen', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2422, 'Thurgau', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2423, 'Ticino', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2424, 'Uri', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2425, 'Valais', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2426, 'Vaud', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2427, 'Zug', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2428, 'Zürich', 'CHE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2429, 'Aleppo', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2430, 'Al-Hasakah', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2431, 'Ar-Raqqah', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2432, 'As-Suwayda', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2433, 'Damascus', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2434, 'Daraa', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2435, 'Deir ez-Zor', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2436, 'Hama', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2437, 'Homs', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2438, 'Idlib', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2439, 'Latakia', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2440, 'Quneitra', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2441, 'Rif Dimashq', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2442, 'Tartus', 'SYR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2443, 'Changhua County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2444, 'Chiayi City', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2445, 'Chiayi County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2446, 'Hsinchu City', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2447, 'Hsinchu County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2448, 'Hualien County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2449, 'Kaohsiung City', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2450, 'Keelung City', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2451, 'Kinmen County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2452, 'Lienchiang County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2453, 'Miaoli County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2454, 'Nantou County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2455, 'New Taipei City', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2456, 'Penghu County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2457, 'Pingtung County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2458, 'Taichung City', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2459, 'Tainan City', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2460, 'Taipei City', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2461, 'Taitung County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2462, 'Taoyuan City', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2463, 'Yilan County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2464, 'Yunlin County', 'TWN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2465, 'Dushanbe', 'TJK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2466, 'Gorno-Badakhshan', 'TJK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2467, 'Khatlon', 'TJK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2468, 'Republican Subordination', 'TJK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2469, 'Sughd', 'TJK', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2470, 'Arusha', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2471, 'Dar es Salaam', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2472, 'Dodoma', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2473, 'Geita', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2474, 'Iringa', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2475, 'Kagera', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2476, 'Katavi', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2477, 'Kigoma', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2478, 'Kilimanjaro', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2479, 'Lindi', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2480, 'Manyara', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2481, 'Mara', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2482, 'Mbeya', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2483, 'Mjini Magharibi', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2484, 'Morogoro', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2485, 'Mtwara', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2486, 'Mwanza', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2487, 'Njombe', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2488, 'Pemba North', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2489, 'Pemba South', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2490, 'Pwani', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2491, 'Rukwa', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2492, 'Ruvuma', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2493, 'Shinyanga', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2494, 'Simiyu', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2495, 'Singida', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2496, 'Tabora', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2497, 'Tanga', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2498, 'Zanzibar North', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2499, 'Zanzibar South', 'TZA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2500, 'Amnat Charoen', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2501, 'Mukdahan', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2502, 'Phitsanulok', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2503, 'Sa Kaeo', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2504, 'Ang Thong', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2505, 'Phra Nakhon Si Ayutthaya', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2506, 'Bangkok', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2507, 'Bueng Kan', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2508, 'Buriram', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2509, 'Chachoengsao', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2510, 'Chainat', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2511, 'Chaiyaphum', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2512, 'Chanthaburi', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2513, 'Chiang Mai', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2514, 'Chiang Rai', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2515, 'Chonburi', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2516, 'Chumphon', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2517, 'Kalasin', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2518, 'Kamphaeng Phet', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2519, 'Kanchanaburi', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2520, 'Khon Kaen', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2521, 'Krabi', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2522, 'Lampang', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2523, 'Lamphun', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2524, 'Loei Province', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2525, 'Lopburi Province', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2526, 'Mae Hong Son', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2527, 'Maha Sarakham', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2528, 'Nakhon Nayok', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2529, 'Nakhon Pathom', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2530, 'Nakhon Phanom', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2531, 'Nakhon Ratchasima', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2532, 'Nakhon Sawan', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2533, 'Nakhon Si Thammarat', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2534, 'Nan', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2535, 'Narathiwat', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2536, 'Nong Bua Lamphu', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2537, 'Nong Khai', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2538, 'Nonthaburi', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2539, 'Pathum Thani', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2540, 'Pattani', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2541, 'Phang Nga', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2542, 'Phatthalung', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2543, 'Phayao', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2544, 'Phetchabun', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2545, 'Phetchaburi', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2546, 'Phichit', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2547, 'Phrae', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2548, 'Phuket', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2549, 'Prachinburi', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2550, 'Prachuap Khiri Khan', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2551, 'Ranong', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2552, 'Ratchaburi', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2553, 'Rayong', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2554, 'Roi Et', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2555, 'Sakon Nakhon', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2556, 'Samut Prakan', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2557, 'Samut Sakhon', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2558, 'Samut Songkhram', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2559, 'Saraburi', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2560, 'Satun', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2561, 'Sing Buri', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2562, 'Sisaket', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2563, 'Songkhla', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2564, 'Sukhothai', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2565, 'Suphan Buri', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2566, 'Surat Thani', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2567, 'Surin', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2568, 'Tak', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2569, 'Trang', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2570, 'Trat', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2571, 'Ubon Ratchathani', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2572, 'Udon Thani', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2573, 'Uttaradit', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2574, 'Yala', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2575, 'Uthai Thani', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2576, 'Yasothon', 'THA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2577, 'Centrale', 'TGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2578, 'Kara', 'TGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2579, 'Maritime', 'TGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2580, 'Plateaux', 'TGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2581, 'Savanes', 'TGO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2582, 'Caroni', 'TTO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2583, 'Mayaro', 'TTO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2584, 'Nariva', 'TTO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2585, 'Saint Andrew', 'TTO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2586, 'Saint David', 'TTO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2587, 'Saint George', 'TTO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2588, 'Saint Patrick', 'TTO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2589, 'Victoria', 'TTO', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2590, 'Ariana', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2591, 'Ben Arous', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2592, 'Bizerte', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2593, 'Béja', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2594, 'Gabès', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2595, 'Gafsa', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2596, 'Jendouba', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2597, 'Kairouan', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2598, 'Kasserine', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2599, 'Kebili', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2600, 'Kef', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2601, 'Mahdia', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2602, 'Manouba', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2603, 'Medenine', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2604, 'Monastir', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2605, 'Nabeul', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2606, 'Sfax', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2607, 'Sidi Bouzid', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2608, 'Siliana', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2609, 'Sousse', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2610, 'Tataouine', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2611, 'Tozeur', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2612, 'Tunis', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2613, 'Zaghouan', 'TUN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2614, 'Adana', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2615, 'Adiyaman', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2616, 'Afyonkarahisar', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2617, 'Agri', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2618, 'Aksaray', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2619, 'Amasya', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2620, 'Ankara', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2621, 'Antalya', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2622, 'Ardahan', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2623, 'Artvin', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2624, 'Aydin', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2625, 'Balikesir', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2626, 'Bartin', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2627, 'Batman', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2628, 'Bayburt', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2629, 'Bilecik', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2630, 'Bingöl', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2631, 'Bitlis', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2632, 'Bolu', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2633, 'Burdur', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2634, 'Bursa', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2635, 'Çanakkale', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2636, 'Çankiri', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2637, 'Çorum', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2638, 'Denizli', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2639, 'Diyarbakir', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2640, 'Düzce', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2641, 'Edirne', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2642, 'Elazig', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2643, 'Erzincan', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2644, 'Erzurum', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2645, 'Eskisehir', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2646, 'Gaziantep', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2647, 'Giresun', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2648, 'Gümüshane', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2649, 'Hakkâri', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2650, 'Hatay', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2651, 'Igdir', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2652, 'Isparta', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2653, 'Istanbul', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2654, 'Izmir', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2655, 'Kahramanmaras', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2656, 'Karabük', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2657, 'Karaman', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2658, 'Kars', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2659, 'Kastamonu', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2660, 'Kayseri', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2661, 'Kilis', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33');
INSERT INTO `states` (`id`, `name`, `country_code`, `enabled`, `date_modified`, `date_added`) VALUES
(2662, 'Kirikkale', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2663, 'Kirklareli', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2664, 'Kirsehir', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2665, 'Kocaeli', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2666, 'Konya', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2667, 'Kütahya', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2668, 'Malatya', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2669, 'Manisa', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2670, 'Mardin', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2671, 'Mersin', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2672, 'Mugla', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2673, 'Mus', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2674, 'Nevsehir', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2675, 'Nigde', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2676, 'Ordu', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2677, 'Osmaniye', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2678, 'Rize', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2679, 'Sakarya', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2680, 'Samsun', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2681, 'Sanliurfa', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2682, 'Siirt', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2683, 'Sinop', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2684, 'Sirnak', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2685, 'Sivas', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2686, 'Tekirdag', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2687, 'Tokat', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2688, 'Trabzon', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2689, 'Tunceli', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2690, 'Usak', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2691, 'Van', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2692, 'Yalova', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2693, 'Yozgat', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2694, 'Zonguldak', 'TUR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2695, 'Ahal', 'TKM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2696, 'Asgabat', 'TKM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2697, 'Balkan', 'TKM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2698, 'Dasoguz', 'TKM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2699, 'Lebap', 'TKM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2700, 'Mary', 'TKM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2701, 'Central', 'UGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2702, 'Eastern', 'UGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2703, 'Northern', 'UGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2704, 'Western', 'UGA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2705, 'Cherkasy', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2706, 'Chernihiv', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2707, 'Chernivtsi', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2708, 'Dnipropetrovsk', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2709, 'Donetsk', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2710, 'Ivano-Frankivsk', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2711, 'Kharkiv', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2712, 'Kherson', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2713, 'Khmelnytskyi', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2714, 'Kiev', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2715, 'Kirovohrad', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2716, 'Luhansk', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2717, 'Lviv', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2718, 'Mykolaiv', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2719, 'Odessa', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2720, 'Poltava', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2721, 'Rivne', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2722, 'Sumy', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2723, 'Ternopil', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2724, 'Vinnytsia', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2725, 'Volyn', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2726, 'Zakarpattia', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2727, 'Zaporizhia', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2728, 'Zhytomyr', 'UKR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2729, 'Abu Dhabi', 'ARE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2730, 'Ajman', 'ARE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2731, 'Dubai', 'ARE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2732, 'Fujairah', 'ARE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2733, 'Ras Al Khaimah', 'ARE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2734, 'Sharjah', 'ARE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2735, 'Umm Al Quwain', 'ARE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2736, 'Aberdeen City', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2737, 'Aberdeenshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2738, 'Anglesey', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2739, 'Angus', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2740, 'Argyll and Bute', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2741, 'Bedfordshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2742, 'Berkshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2743, 'Blaenau Gwent', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2744, 'Bridgend', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2745, 'Bristol', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2746, 'Buckinghamshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2747, 'Caerphilly', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2748, 'Cambridgeshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2749, 'Cardiff', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2750, 'Carmarthenshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2751, 'Ceredigion', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2752, 'Cheshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2753, 'Clackmannanshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2754, 'Conwy', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2755, 'Cornwall', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2756, 'County Antrim', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2757, 'County Armagh', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2758, 'County Down', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2759, 'County Fermanagh', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2760, 'County Londonderry', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2761, 'County Tyrone', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2762, 'Cumbria', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2763, 'Denbighshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2764, 'Derbyshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2765, 'Devon', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2766, 'Dorset', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2767, 'Dumfries and Galloway', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2768, 'Dundee', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2769, 'Durham', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2770, 'East Ayrshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2771, 'East Dunbartonshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2772, 'East Lothian', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2773, 'East Renfrewshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2774, 'East Sussex', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2775, 'East Yorkshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2776, 'Edinburgh', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2777, 'Essex', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2778, 'Falkirk', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2779, 'Fife', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2780, 'Flintshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2781, 'Glasgow', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2782, 'Gloucestershire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2783, 'Greater London', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2784, 'Greater Manchester', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2785, 'Gwynedd', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2786, 'Hampshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2787, 'Herefordshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2788, 'Hertfordshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2789, 'Highlands', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2790, 'Inverclyde', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2791, 'Isle of Wight', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2792, 'Kent', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2793, 'Lancashire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2794, 'Leicestershire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2795, 'Lincolnshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2796, 'Merseyside', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2797, 'Merthyr Tydfil', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2798, 'Midlothian', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2799, 'Monmouthshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2800, 'Moray', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2801, 'Neath Port Talbot', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2802, 'Newport', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2803, 'Norfolk', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2804, 'North Ayrshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2805, 'North Lanarkshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2806, 'North Yorkshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2807, 'Northamptonshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2808, 'Northumberland', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2809, 'Nottinghamshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2810, 'Orkney Islands', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2811, 'Outer Hebrides', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2812, 'Oxfordshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2813, 'Pembrokeshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2814, 'Perth and Kinross', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2815, 'Renfrewshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2816, 'Rhondda Cynon Taff', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2817, 'Rutland', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2818, 'Scottish Borders', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2819, 'Shetland Islands', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2820, 'Shropshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2821, 'Somerset', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2822, 'South Ayrshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2823, 'South Lanarkshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2824, 'South Yorkshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2825, 'Staffordshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2826, 'Stirling', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2827, 'Suffolk', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2828, 'Surrey', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2829, 'Swansea', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2830, 'Torfaen', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2831, 'Tyne and Wear', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2832, 'Vale of Glamorgan', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2833, 'Warwickshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2834, 'West Dunbartonshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2835, 'West Lothian', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2836, 'West Midlands', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2837, 'West Sussex', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2838, 'West Yorkshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2839, 'Western Isles', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2840, 'Wiltshire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2841, 'Worcestershire', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2842, 'Wrexham', 'GBR', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2843, 'Alabama', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2844, 'Alaska', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2845, 'Arizona', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2846, 'Arkansas', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2847, 'California', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2848, 'Colorado', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2849, 'Connecticut', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2850, 'Delaware', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2851, 'Florida', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2852, 'Georgia', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2853, 'Hawaii', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2854, 'Idaho', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2855, 'Illinois', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2856, 'Indiana', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2857, 'Iowa', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2858, 'Kansas', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2859, 'Kentucky', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2860, 'Louisiana', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2861, 'Maine', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2862, 'Maryland', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2863, 'Massachusetts', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2864, 'Michigan', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2865, 'Minnesota', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2866, 'Mississippi', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2867, 'Missouri', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2868, 'Montana', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2869, 'Nebraska', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2870, 'Nevada', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2871, 'New Hampshire', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2872, 'New Jersey', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2873, 'New Mexico', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2874, 'New York', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2875, 'North Carolina', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2876, 'North Dakota', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2877, 'Ohio', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2878, 'Oklahoma', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2879, 'Oregon', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2880, 'Pennsylvania', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2881, 'Rhode Island', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2882, 'South Carolina', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2883, 'South Dakota', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2884, 'Tennessee', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2885, 'Texas', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2886, 'Utah', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2887, 'Vermont', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2888, 'Virginia', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2889, 'Washington', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2890, 'West Virginia', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2891, 'Wisconsin', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2892, 'Wyoming', 'USA', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2893, 'Artigas', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2894, 'Canelones', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2895, 'Cerro Largo', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2896, 'Colonia', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2897, 'Durazno', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2898, 'Flores', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2899, 'Florida', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2900, 'Lavalleja', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2901, 'Maldonado', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2902, 'Montevideo', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2903, 'Paysandú', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2904, 'Rivera', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2905, 'Rocha', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2906, 'Río Negro', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2907, 'Salto', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2908, 'San José', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2909, 'Soriano', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2910, 'Tacuarembó', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2911, 'Treinta y Tres', 'URY', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2912, 'Andijan', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2913, 'Bukhara', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2914, 'Fergana', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2915, 'Jizzakh', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2916, 'Karakalpakstan', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2917, 'Namangan', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2918, 'Navoiy', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2919, 'Qashqadaryo', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2920, 'Samarqand', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2921, 'Sirdaryo', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2922, 'Surxondaryo', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2923, 'Tashkent', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2924, 'Xorazm', 'UZB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2925, 'Andean', 'VEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2926, 'Capital', 'VEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2927, 'Central', 'VEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2928, 'Central-Western', 'VEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2929, 'Eastern', 'VEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2930, 'Guayana', 'VEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2931, 'Insular', 'VEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2932, 'Llanos', 'VEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2933, 'South-Western', 'VEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2934, 'Zulian', 'VEN', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2935, 'Central Highlands', 'VNM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2936, 'Mekong River Delta', 'VNM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2937, 'North Central Coast', 'VNM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2938, 'Northeast', 'VNM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2939, 'Northwest', 'VNM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2940, 'Red River Delta', 'VNM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2941, 'South Central Coast', 'VNM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2942, 'Southeast', 'VNM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2943, 'Aousserd', 'ESH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2944, 'Assa-Zag', 'ESH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2945, 'Boujdour', 'ESH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2946, 'Es Semara', 'ESH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2947, 'Laâyoune', 'ESH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2948, 'Oued Eddahab', 'ESH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2949, 'Tarfaya', 'ESH', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2950, '''Adan', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2951, '''Amran', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2952, 'Abyan', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2953, 'Ad Dali', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2954, 'Al Bayda''', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2955, 'Al Hudaydah', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2956, 'Al Jawf', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2957, 'Al Mahrah', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2958, 'Al Mahwit', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2959, 'Amanat Al Asimah', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2960, 'Dhamar', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2961, 'Hadramaut', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2962, 'Hajjah', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2963, 'Ibb', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2964, 'Lahij', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2965, 'Ma''rib', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2966, 'Raymah', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2967, 'Sa''dah', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2968, 'Sana''a', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2969, 'Shabwah', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2970, 'Socotra', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2971, 'Ta''izz', 'YEM', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2972, 'Central', 'ZMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2973, 'Copperbelt', 'ZMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2974, 'Eastern', 'ZMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2975, 'Luapula', 'ZMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2976, 'Lusaka', 'ZMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2977, 'Muchinga', 'ZMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2978, 'North-Western', 'ZMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2979, 'Northern', 'ZMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2980, 'Southern', 'ZMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2981, 'Western', 'ZMB', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2982, 'Bulawayo', 'ZWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2983, 'Harare', 'ZWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2984, 'Manicaland', 'ZWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2985, 'Mashonaland Central', 'ZWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2986, 'Mashonaland East', 'ZWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2987, 'Mashonaland West', 'ZWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2988, 'Masvingo', 'ZWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2989, 'Matabeleland North', 'ZWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2990, 'Matabeleland South', 'ZWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33'),
(2991, 'Midlands', 'ZWE', 1, '2017-06-11 04:22:33', '2017-06-11 04:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE `subscriptions` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(20) NOT NULL DEFAULT '',
  `is_confirmed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `folder` varchar(10) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `extension` varchar(10) NOT NULL DEFAULT '',
  `mime_type` varchar(250) NOT NULL DEFAULT '',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `moderate` varchar(250) NOT NULL DEFAULT 'default',
  `token` varchar(20) NOT NULL DEFAULT '',
  `to_all` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `to_admin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `to_reply` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `to_approve` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `format` varchar(250) NOT NULL DEFAULT 'html',
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `moderate`, `token`, `to_all`, `to_admin`, `to_reply`, `to_approve`, `format`, `ip_address`, `date_modified`, `date_added`) VALUES
(1, 'Jose Lopez', 'joselopez@gmail.com', 'default', 'sGvUDuqPON4ZEUmXAUAm', 1, 1, 1, 1, 'html', '::1', '2017-06-10 22:04:47', '2017-06-10 22:04:47'),
(2, 'Miguel Perez', 'miguel@gmail.com', 'default', 'HOdjlxZKDfOkxifaFNJZ', 1, 1, 1, 1, 'html', '::1', '2017-06-10 22:09:39', '2017-06-10 22:09:39'),
(3, 'Michelle Lopez', 'mlopez@gmail.com', 'default', 'eOPIv6Q1tpnaD6Jimuge', 1, 1, 1, 1, 'html', '::1', '2017-06-11 07:16:19', '2017-06-11 07:16:19'),
(4, 'Tes MgGee', 'tes@gmail.com', 'default', 'nb2ZFIoICBUHlvnG1Kce', 1, 1, 1, 1, 'html', '::1', '2017-06-11 10:59:51', '2017-06-11 10:59:51'),
(5, 'Jose Miguel', 'jmloh@gmail.com', 'default', 'MhPVDcQHBklVyDRCKEgw', 1, 1, 1, 1, 'html', '::1', '2017-06-11 11:34:45', '2017-06-11 11:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
`id` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '',
  `type` varchar(250) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`id`, `version`, `type`, `date_added`) VALUES
(1, '3.2', 'Installation', '2017-06-11 04:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `viewers`
--

DROP TABLE IF EXISTS `viewers`;
CREATE TABLE `viewers` (
`id` int(10) unsigned NOT NULL,
  `viewer` varchar(250) NOT NULL DEFAULT '',
  `type` varchar(250) NOT NULL DEFAULT '',
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `page_reference` varchar(250) NOT NULL DEFAULT '',
  `page_url` varchar(1000) NOT NULL DEFAULT '',
  `time_added` int(50) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `viewers`
--

INSERT INTO `viewers` (`id`, `viewer`, `type`, `ip_address`, `page_reference`, `page_url`, `time_added`) VALUES
(66, 'person.png', 'Person', '::1', 'Content 5', 'http://localhost:8887/chimehack4/showContent.php?cID=5', 1497206058);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
CREATE TABLE `voters` (
`id` int(10) unsigned NOT NULL,
  `comment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(250) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attempts`
--
ALTER TABLE `attempts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reporters`
--
ALTER TABLE `reporters`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `version`
--
ALTER TABLE `version`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `viewers`
--
ALTER TABLE `viewers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attempts`
--
ALTER TABLE `attempts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reporters`
--
ALTER TABLE `reporters`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=364;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2992;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `version`
--
ALTER TABLE `version`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `viewers`
--
ALTER TABLE `viewers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `chime_qa`
--
DROP DATABASE `chime_qa`;
CREATE DATABASE IF NOT EXISTS `chime_qa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chime_qa`;

-- --------------------------------------------------------

--
-- Table structure for table `qa_blobs`
--

DROP TABLE IF EXISTS `qa_blobs`;
CREATE TABLE `qa_blobs` (
  `blobid` bigint(20) unsigned NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `content` mediumblob,
  `filename` varchar(255) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `cookieid` bigint(20) unsigned DEFAULT NULL,
  `createip` int(10) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_cache`
--

DROP TABLE IF EXISTS `qa_cache`;
CREATE TABLE `qa_cache` (
  `type` char(8) CHARACTER SET ascii NOT NULL,
  `cacheid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob NOT NULL,
  `created` datetime NOT NULL,
  `lastread` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_categories`
--

DROP TABLE IF EXISTS `qa_categories`;
CREATE TABLE `qa_categories` (
`categoryid` int(10) unsigned NOT NULL,
  `parentid` int(10) unsigned DEFAULT NULL,
  `title` varchar(80) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `content` varchar(800) NOT NULL DEFAULT '',
  `qcount` int(10) unsigned NOT NULL DEFAULT '0',
  `position` smallint(5) unsigned NOT NULL,
  `backpath` varchar(804) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_categorymetas`
--

DROP TABLE IF EXISTS `qa_categorymetas`;
CREATE TABLE `qa_categorymetas` (
  `categoryid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_contentwords`
--

DROP TABLE IF EXISTS `qa_contentwords`;
CREATE TABLE `qa_contentwords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  `count` tinyint(3) unsigned NOT NULL,
  `type` enum('Q','A','C','NOTE') NOT NULL,
  `questionid` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_contentwords`
--

INSERT INTO `qa_contentwords` (`postid`, `wordid`, `count`, `type`, `questionid`) VALUES
(4, 10, 1, 'A', 3),
(4, 11, 1, 'A', 3),
(4, 12, 1, 'A', 3),
(4, 13, 1, 'A', 3),
(4, 14, 1, 'A', 3),
(4, 15, 1, 'A', 3),
(4, 16, 1, 'A', 3);

-- --------------------------------------------------------

--
-- Table structure for table `qa_cookies`
--

DROP TABLE IF EXISTS `qa_cookies`;
CREATE TABLE `qa_cookies` (
  `cookieid` bigint(20) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `createip` int(10) unsigned NOT NULL,
  `written` datetime DEFAULT NULL,
  `writeip` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_cookies`
--

INSERT INTO `qa_cookies` (`cookieid`, `created`, `createip`, `written`, `writeip`) VALUES
(15097103389490766603, '2017-06-11 09:26:18', 0, '2017-06-11 09:59:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_iplimits`
--

DROP TABLE IF EXISTS `qa_iplimits`;
CREATE TABLE `qa_iplimits` (
  `ip` int(10) unsigned NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_iplimits`
--

INSERT INTO `qa_iplimits` (`ip`, `action`, `period`, `count`) VALUES
(0, 'A', 415888, 1),
(0, 'L', 415889, 1),
(0, 'Q', 415888, 3);

-- --------------------------------------------------------

--
-- Table structure for table `qa_messages`
--

DROP TABLE IF EXISTS `qa_messages`;
CREATE TABLE `qa_messages` (
`messageid` int(10) unsigned NOT NULL,
  `type` enum('PUBLIC','PRIVATE') NOT NULL DEFAULT 'PRIVATE',
  `fromuserid` int(10) unsigned NOT NULL,
  `touserid` int(10) unsigned NOT NULL,
  `fromhidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tohidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content` varchar(8000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_options`
--

DROP TABLE IF EXISTS `qa_options`;
CREATE TABLE `qa_options` (
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_options`
--

INSERT INTO `qa_options` (`title`, `content`) VALUES
('allow_close_questions', '1'),
('allow_login_email_only', ''),
('allow_multi_answers', '1'),
('allow_private_messages', '1'),
('allow_self_answer', '1'),
('allow_user_walls', '1'),
('avatar_allow_gravatar', '1'),
('avatar_allow_upload', '1'),
('avatar_default_show', ''),
('avatar_profile_size', '200'),
('avatar_q_list_size', '0'),
('avatar_q_page_a_size', '40'),
('avatar_q_page_q_size', '50'),
('avatar_users_size', '30'),
('block_bad_words', ''),
('block_ips_write', ''),
('cache_acount', '1'),
('cache_ccount', ''),
('cache_flaggedcount', ''),
('cache_qcount', '3'),
('cache_queuedcount', ''),
('cache_tagcount', '0'),
('cache_uapprovecount', '0'),
('cache_unaqcount', '2'),
('cache_unselqcount', '3'),
('cache_unupaqcount', '3'),
('cache_userpointscount', '1'),
('captcha_module', 'reCAPTCHA'),
('captcha_on_anon_post', '1'),
('columns_tags', '3'),
('columns_users', '2'),
('comment_on_as', '1'),
('comment_on_qs', '0'),
('confirm_user_emails', '1'),
('custom_footer', ''),
('custom_header', ''),
('custom_in_head', ''),
('db_version', '59'),
('do_ask_check_qs', '0'),
('do_complete_tags', '1'),
('do_count_q_views', '1'),
('do_example_tags', '1'),
('editor_for_as', 'WYSIWYG Editor'),
('editor_for_qs', 'WYSIWYG Editor'),
('event_logger_to_database', ''),
('event_logger_to_files', ''),
('extra_field_active', ''),
('facebook_app_id', ''),
('feedback_email', 'bandazagorath@gmail.com'),
('feedback_enabled', '1'),
('feed_for_qa', '1'),
('feed_for_questions', '1'),
('feed_for_unanswered', '1'),
('feed_per_category', '1'),
('flagging_of_posts', '1'),
('follow_on_as', '1'),
('form_security_salt', 'u2gbplj0q6yefcmqbxadwxgekmxezqtz'),
('from_email', 'no-reply@example.com'),
('home_description', ''),
('hot_weight_answers', '100'),
('hot_weight_a_age', '100'),
('hot_weight_q_age', '100'),
('hot_weight_views', '100'),
('hot_weight_votes', '100'),
('links_in_new_window', ''),
('logo_height', ''),
('logo_show', ''),
('logo_url', ''),
('logo_width', ''),
('match_example_tags', '3'),
('max_len_q_title', '120'),
('max_num_q_tags', '5'),
('max_rate_ip_as', '50'),
('max_rate_ip_logins', '20'),
('max_rate_ip_messages', '10'),
('max_rate_ip_qs', '20'),
('max_rate_user_as', '25'),
('max_rate_user_messages', '5'),
('max_rate_user_qs', '10'),
('max_store_user_updates', '50'),
('min_len_a_content', '12'),
('min_len_q_content', '0'),
('min_len_q_title', '12'),
('min_num_q_tags', '0'),
('moderate_anon_post', ''),
('moderate_users', ''),
('mouseover_content_on', ''),
('nav_activity', ''),
('nav_ask', '1'),
('nav_categories', ''),
('nav_home', ''),
('nav_hot', ''),
('nav_qa_is_home', ''),
('nav_questions', '1'),
('nav_tags', '1'),
('nav_unanswered', '1'),
('nav_users', '1'),
('neat_urls', '5'),
('notify_admin_q_post', ''),
('notify_users_default', '1'),
('pages_prev_next', '3'),
('page_size_ask_tags', '5'),
('page_size_home', '20'),
('page_size_qs', '20'),
('page_size_q_as', '10'),
('page_size_tags', '30'),
('page_size_una_qs', '20'),
('page_size_users', '30'),
('page_size_wall', '10'),
('permit_anon_view_ips', '70'),
('permit_close_q', '70'),
('permit_delete_hidden', '40'),
('permit_edit_a', '100'),
('permit_edit_c', '70'),
('permit_edit_q', '70'),
('permit_edit_silent', '40'),
('permit_flag', '110'),
('permit_hide_show', '70'),
('permit_moderate', '100'),
('permit_post_a', '150'),
('permit_post_c', '150'),
('permit_post_q', '150'),
('permit_post_wall', '110'),
('permit_retag_cat', '70'),
('permit_select_a', '100'),
('permit_view_q_page', '150'),
('permit_view_voters_flaggers', '20'),
('permit_vote_a', '120'),
('permit_vote_down', '120'),
('permit_vote_q', '120'),
('points_a_selected', '30'),
('points_a_voted_max_gain', '20'),
('points_a_voted_max_loss', '5'),
('points_base', '100'),
('points_multiple', '10'),
('points_per_a_voted', ''),
('points_per_a_voted_down', '2'),
('points_per_a_voted_up', '2'),
('points_per_q_voted', ''),
('points_per_q_voted_down', '1'),
('points_per_q_voted_up', '1'),
('points_post_a', '4'),
('points_post_q', '2'),
('points_q_voted_max_gain', '10'),
('points_q_voted_max_loss', '3'),
('points_select_a', '3'),
('points_to_titles', ''),
('points_vote_down_a', '1'),
('points_vote_down_q', '1'),
('points_vote_on_a', ''),
('points_vote_on_q', ''),
('points_vote_up_a', '1'),
('points_vote_up_q', '1'),
('q_urls_remove_accents', ''),
('q_urls_title_length', '50'),
('recaptcha_private_key', ''),
('recaptcha_public_key', ''),
('register_notify_admin', ''),
('show_a_c_links', '1'),
('show_a_form_immediate', 'if_no_as'),
('show_custom_answer', ''),
('show_custom_ask', ''),
('show_custom_footer', ''),
('show_custom_header', ''),
('show_custom_home', ''),
('show_custom_in_head', ''),
('show_custom_sidebar', '1'),
('show_custom_sidepanel', ''),
('show_custom_welcome', '0'),
('show_fewer_cs_from', '10'),
('show_full_date_days', '7'),
('show_message_history', '1'),
('show_notice_visitor', ''),
('show_notice_welcome', ''),
('show_post_update_meta', '1'),
('show_url_links', '1'),
('show_user_points', '1'),
('show_user_titles', '1'),
('show_view_counts', ''),
('show_view_count_q_page', ''),
('show_when_created', '1'),
('site_language', ''),
('site_maintenance', '0'),
('site_text_direction', 'ltr'),
('site_theme', 'SnowFlat'),
('site_theme_mobile', 'SnowFlat'),
('site_title', ''),
('site_url', 'http://localhost:8887/chimehack4/qa/'),
('smtp_active', ''),
('sort_answers_by', 'created'),
('tags_or_categories', 'tc'),
('tag_separator_comma', ''),
('votes_separated', ''),
('voting_on_as', '1'),
('voting_on_qs', '1'),
('voting_on_q_page_only', ''),
('wysiwyg_editor_upload_images', '');

-- --------------------------------------------------------

--
-- Table structure for table `qa_pages`
--

DROP TABLE IF EXISTS `qa_pages`;
CREATE TABLE `qa_pages` (
`pageid` smallint(5) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `nav` char(1) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  `permit` tinyint(3) unsigned DEFAULT NULL,
  `tags` varchar(200) NOT NULL,
  `heading` varchar(800) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_postmetas`
--

DROP TABLE IF EXISTS `qa_postmetas`;
CREATE TABLE `qa_postmetas` (
  `postid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_posts`
--

DROP TABLE IF EXISTS `qa_posts`;
CREATE TABLE `qa_posts` (
`postid` int(10) unsigned NOT NULL,
  `type` enum('Q','A','C','Q_HIDDEN','A_HIDDEN','C_HIDDEN','Q_QUEUED','A_QUEUED','C_QUEUED','NOTE') NOT NULL,
  `parentid` int(10) unsigned DEFAULT NULL,
  `categoryid` int(10) unsigned DEFAULT NULL,
  `catidpath1` int(10) unsigned DEFAULT NULL,
  `catidpath2` int(10) unsigned DEFAULT NULL,
  `catidpath3` int(10) unsigned DEFAULT NULL,
  `acount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amaxvote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `selchildid` int(10) unsigned DEFAULT NULL,
  `closedbyid` int(10) unsigned DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `cookieid` bigint(20) unsigned DEFAULT NULL,
  `createip` int(10) unsigned DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `lastip` int(10) unsigned DEFAULT NULL,
  `upvotes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `downvotes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `netvotes` smallint(6) NOT NULL DEFAULT '0',
  `lastviewip` int(10) unsigned DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `hotness` float DEFAULT NULL,
  `flagcount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `format` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `title` varchar(800) DEFAULT NULL,
  `content` varchar(8000) DEFAULT NULL,
  `tags` varchar(800) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `notify` varchar(80) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_posts`
--

INSERT INTO `qa_posts` (`postid`, `type`, `parentid`, `categoryid`, `catidpath1`, `catidpath2`, `catidpath3`, `acount`, `amaxvote`, `selchildid`, `closedbyid`, `userid`, `cookieid`, `createip`, `lastuserid`, `lastip`, `upvotes`, `downvotes`, `netvotes`, `lastviewip`, `views`, `hotness`, `flagcount`, `format`, `created`, `updated`, `updatetype`, `title`, `content`, `tags`, `name`, `notify`) VALUES
(1, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1, 46974200000, 0, '', '2017-06-11 09:24:45', NULL, NULL, 'Why are watermelons green outside?', '', '', NULL, NULL),
(2, 'Q', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 15097103389490766603, NULL, NULL, NULL, 0, 0, 0, NULL, 1, 46974200000, 0, '', '2017-06-11 09:26:18', NULL, NULL, 'How do birds fly?', '', '', '', NULL),
(3, 'Q', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 2, 46991000000, 0, '', '2017-06-11 09:58:47', NULL, NULL, 'How do magnets work?', '', '', NULL, NULL),
(4, 'A', 3, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 15097103389490766603, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, '', '2017-06-11 09:59:45', NULL, NULL, NULL, 'Magnets work on the principle of magic!', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qa_posttags`
--

DROP TABLE IF EXISTS `qa_posttags`;
CREATE TABLE `qa_posttags` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  `postcreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_sharedevents`
--

DROP TABLE IF EXISTS `qa_sharedevents`;
CREATE TABLE `qa_sharedevents` (
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  `lastpostid` int(10) unsigned NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_sharedevents`
--

INSERT INTO `qa_sharedevents` (`entitytype`, `entityid`, `questionid`, `lastpostid`, `updatetype`, `lastuserid`, `updated`) VALUES
('Q', 1, 1, 1, NULL, 1, '2017-06-11 09:24:45'),
('U', 1, 1, 1, NULL, 1, '2017-06-11 09:24:45'),
('Q', 2, 2, 2, NULL, NULL, '2017-06-11 09:26:18'),
('Q', 3, 3, 3, NULL, 1, '2017-06-11 09:58:47'),
('U', 1, 3, 3, NULL, 1, '2017-06-11 09:58:47'),
('Q', 3, 3, 4, NULL, NULL, '2017-06-11 09:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `qa_tagmetas`
--

DROP TABLE IF EXISTS `qa_tagmetas`;
CREATE TABLE `qa_tagmetas` (
  `tag` varchar(80) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_tagwords`
--

DROP TABLE IF EXISTS `qa_tagwords`;
CREATE TABLE `qa_tagwords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_titlewords`
--

DROP TABLE IF EXISTS `qa_titlewords`;
CREATE TABLE `qa_titlewords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_titlewords`
--

INSERT INTO `qa_titlewords` (`postid`, `wordid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 6),
(3, 7),
(3, 10),
(3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `qa_userevents`
--

DROP TABLE IF EXISTS `qa_userevents`;
CREATE TABLE `qa_userevents` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  `lastpostid` int(10) unsigned NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_userevents`
--

INSERT INTO `qa_userevents` (`userid`, `entitytype`, `entityid`, `questionid`, `lastpostid`, `updatetype`, `lastuserid`, `updated`) VALUES
(1, '-', 0, 3, 4, NULL, NULL, '2017-06-11 09:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `qa_userfavorites`
--

DROP TABLE IF EXISTS `qa_userfavorites`;
CREATE TABLE `qa_userfavorites` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `nouserevents` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_userfields`
--

DROP TABLE IF EXISTS `qa_userfields`;
CREATE TABLE `qa_userfields` (
`fieldid` smallint(5) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(40) DEFAULT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  `permit` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_userfields`
--

INSERT INTO `qa_userfields` (`fieldid`, `title`, `content`, `position`, `flags`, `permit`) VALUES
(1, 'name', NULL, 1, 0, NULL),
(2, 'location', NULL, 2, 0, NULL),
(3, 'website', NULL, 3, 2, NULL),
(4, 'about', NULL, 4, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qa_userlevels`
--

DROP TABLE IF EXISTS `qa_userlevels`;
CREATE TABLE `qa_userlevels` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_userlimits`
--

DROP TABLE IF EXISTS `qa_userlimits`;
CREATE TABLE `qa_userlimits` (
  `userid` int(10) unsigned NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_userlimits`
--

INSERT INTO `qa_userlimits` (`userid`, `action`, `period`, `count`) VALUES
(1, 'Q', 415888, 2);

-- --------------------------------------------------------

--
-- Table structure for table `qa_userlogins`
--

DROP TABLE IF EXISTS `qa_userlogins`;
CREATE TABLE `qa_userlogins` (
  `userid` int(10) unsigned NOT NULL,
  `source` varchar(16) CHARACTER SET ascii NOT NULL,
  `identifier` varbinary(1024) NOT NULL,
  `identifiermd5` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_usermetas`
--

DROP TABLE IF EXISTS `qa_usermetas`;
CREATE TABLE `qa_usermetas` (
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_usernotices`
--

DROP TABLE IF EXISTS `qa_usernotices`;
CREATE TABLE `qa_usernotices` (
`noticeid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `content` varchar(8000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_userpoints`
--

DROP TABLE IF EXISTS `qa_userpoints`;
CREATE TABLE `qa_userpoints` (
  `userid` int(10) unsigned NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `qposts` mediumint(9) NOT NULL DEFAULT '0',
  `aposts` mediumint(9) NOT NULL DEFAULT '0',
  `cposts` mediumint(9) NOT NULL DEFAULT '0',
  `aselects` mediumint(9) NOT NULL DEFAULT '0',
  `aselecteds` mediumint(9) NOT NULL DEFAULT '0',
  `qupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `aupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `adownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qvoteds` int(11) NOT NULL DEFAULT '0',
  `avoteds` int(11) NOT NULL DEFAULT '0',
  `upvoteds` int(11) NOT NULL DEFAULT '0',
  `downvoteds` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_userpoints`
--

INSERT INTO `qa_userpoints` (`userid`, `points`, `qposts`, `aposts`, `cposts`, `aselects`, `aselecteds`, `qupvotes`, `qdownvotes`, `aupvotes`, `adownvotes`, `qvoteds`, `avoteds`, `upvoteds`, `downvoteds`, `bonus`) VALUES
(1, 140, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_userprofile`
--

DROP TABLE IF EXISTS `qa_userprofile`;
CREATE TABLE `qa_userprofile` (
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_users`
--

DROP TABLE IF EXISTS `qa_users`;
CREATE TABLE `qa_users` (
`userid` int(10) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `createip` int(10) unsigned NOT NULL,
  `email` varchar(80) NOT NULL,
  `handle` varchar(20) NOT NULL,
  `avatarblobid` bigint(20) unsigned DEFAULT NULL,
  `avatarwidth` smallint(5) unsigned DEFAULT NULL,
  `avatarheight` smallint(5) unsigned DEFAULT NULL,
  `passsalt` binary(16) DEFAULT NULL,
  `passcheck` binary(20) DEFAULT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `loggedin` datetime NOT NULL,
  `loginip` int(10) unsigned NOT NULL,
  `written` datetime DEFAULT NULL,
  `writeip` int(10) unsigned DEFAULT NULL,
  `emailcode` char(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sessioncode` char(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sessionsource` varchar(16) CHARACTER SET ascii DEFAULT '',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wallposts` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_users`
--

INSERT INTO `qa_users` (`userid`, `created`, `createip`, `email`, `handle`, `avatarblobid`, `avatarwidth`, `avatarheight`, `passsalt`, `passcheck`, `level`, `loggedin`, `loginip`, `written`, `writeip`, `emailcode`, `sessioncode`, `sessionsource`, `flags`, `wallposts`) VALUES
(1, '2017-06-11 09:23:50', 0, 'bandazagorath@gmail.com', 'admin', NULL, NULL, NULL, 0x6f7471767234337a6c316465647a6874, 0xdf94b8a59e6ba8a0e332b15116f8f591a15cccbb, 120, '2017-06-11 10:00:06', 0, '2017-06-11 09:58:47', 0, '', '6mti92p6', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_uservotes`
--

DROP TABLE IF EXISTS `qa_uservotes`;
CREATE TABLE `qa_uservotes` (
  `postid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `flag` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_widgets`
--

DROP TABLE IF EXISTS `qa_widgets`;
CREATE TABLE `qa_widgets` (
`widgetid` smallint(5) unsigned NOT NULL,
  `place` char(2) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `tags` varchar(800) CHARACTER SET ascii NOT NULL,
  `title` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_words`
--

DROP TABLE IF EXISTS `qa_words`;
CREATE TABLE `qa_words` (
`wordid` int(10) unsigned NOT NULL,
  `word` varchar(80) NOT NULL,
  `titlecount` int(10) unsigned NOT NULL DEFAULT '0',
  `contentcount` int(10) unsigned NOT NULL DEFAULT '0',
  `tagwordcount` int(10) unsigned NOT NULL DEFAULT '0',
  `tagcount` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_words`
--

INSERT INTO `qa_words` (`wordid`, `word`, `titlecount`, `contentcount`, `tagwordcount`, `tagcount`) VALUES
(1, 'why', 1, 0, 0, 0),
(2, 'are', 1, 0, 0, 0),
(3, 'watermelons', 1, 0, 0, 0),
(4, 'green', 1, 0, 0, 0),
(5, 'outside', 1, 0, 0, 0),
(6, 'how', 2, 0, 0, 0),
(7, 'do', 2, 0, 0, 0),
(8, 'birds', 1, 0, 0, 0),
(9, 'fly', 1, 0, 0, 0),
(10, 'magnets', 1, 1, 0, 0),
(11, 'work', 1, 1, 0, 0),
(12, 'on', 0, 1, 0, 0),
(13, 'the', 0, 1, 0, 0),
(14, 'principle', 0, 1, 0, 0),
(15, 'of', 0, 1, 0, 0),
(16, 'magic', 0, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qa_blobs`
--
ALTER TABLE `qa_blobs`
 ADD PRIMARY KEY (`blobid`);

--
-- Indexes for table `qa_cache`
--
ALTER TABLE `qa_cache`
 ADD PRIMARY KEY (`type`,`cacheid`), ADD KEY `lastread` (`lastread`);

--
-- Indexes for table `qa_categories`
--
ALTER TABLE `qa_categories`
 ADD PRIMARY KEY (`categoryid`), ADD UNIQUE KEY `parentid` (`parentid`,`tags`), ADD UNIQUE KEY `parentid_2` (`parentid`,`position`), ADD KEY `backpath` (`backpath`(200));

--
-- Indexes for table `qa_categorymetas`
--
ALTER TABLE `qa_categorymetas`
 ADD PRIMARY KEY (`categoryid`,`title`);

--
-- Indexes for table `qa_contentwords`
--
ALTER TABLE `qa_contentwords`
 ADD KEY `postid` (`postid`), ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_cookies`
--
ALTER TABLE `qa_cookies`
 ADD PRIMARY KEY (`cookieid`);

--
-- Indexes for table `qa_iplimits`
--
ALTER TABLE `qa_iplimits`
 ADD UNIQUE KEY `ip` (`ip`,`action`);

--
-- Indexes for table `qa_messages`
--
ALTER TABLE `qa_messages`
 ADD PRIMARY KEY (`messageid`), ADD KEY `type` (`type`,`fromuserid`,`touserid`,`created`), ADD KEY `touserid` (`touserid`,`type`,`created`), ADD KEY `fromhidden` (`fromhidden`), ADD KEY `tohidden` (`tohidden`);

--
-- Indexes for table `qa_options`
--
ALTER TABLE `qa_options`
 ADD PRIMARY KEY (`title`);

--
-- Indexes for table `qa_pages`
--
ALTER TABLE `qa_pages`
 ADD PRIMARY KEY (`pageid`), ADD UNIQUE KEY `position` (`position`), ADD KEY `tags` (`tags`);

--
-- Indexes for table `qa_postmetas`
--
ALTER TABLE `qa_postmetas`
 ADD PRIMARY KEY (`postid`,`title`);

--
-- Indexes for table `qa_posts`
--
ALTER TABLE `qa_posts`
 ADD PRIMARY KEY (`postid`), ADD KEY `type` (`type`,`created`), ADD KEY `type_2` (`type`,`acount`,`created`), ADD KEY `type_4` (`type`,`netvotes`,`created`), ADD KEY `type_5` (`type`,`views`,`created`), ADD KEY `type_6` (`type`,`hotness`), ADD KEY `type_7` (`type`,`amaxvote`,`created`), ADD KEY `parentid` (`parentid`,`type`), ADD KEY `userid` (`userid`,`type`,`created`), ADD KEY `selchildid` (`selchildid`,`type`,`created`), ADD KEY `closedbyid` (`closedbyid`), ADD KEY `catidpath1` (`catidpath1`,`type`,`created`), ADD KEY `catidpath2` (`catidpath2`,`type`,`created`), ADD KEY `catidpath3` (`catidpath3`,`type`,`created`), ADD KEY `categoryid` (`categoryid`,`type`,`created`), ADD KEY `createip` (`createip`,`created`), ADD KEY `updated` (`updated`,`type`), ADD KEY `flagcount` (`flagcount`,`created`,`type`), ADD KEY `catidpath1_2` (`catidpath1`,`updated`,`type`), ADD KEY `catidpath2_2` (`catidpath2`,`updated`,`type`), ADD KEY `catidpath3_2` (`catidpath3`,`updated`,`type`), ADD KEY `categoryid_2` (`categoryid`,`updated`,`type`), ADD KEY `lastuserid` (`lastuserid`,`updated`,`type`), ADD KEY `lastip` (`lastip`,`updated`,`type`);

--
-- Indexes for table `qa_posttags`
--
ALTER TABLE `qa_posttags`
 ADD KEY `postid` (`postid`), ADD KEY `wordid` (`wordid`,`postcreated`);

--
-- Indexes for table `qa_sharedevents`
--
ALTER TABLE `qa_sharedevents`
 ADD KEY `entitytype` (`entitytype`,`entityid`,`updated`), ADD KEY `questionid` (`questionid`,`entitytype`,`entityid`);

--
-- Indexes for table `qa_tagmetas`
--
ALTER TABLE `qa_tagmetas`
 ADD PRIMARY KEY (`tag`,`title`);

--
-- Indexes for table `qa_tagwords`
--
ALTER TABLE `qa_tagwords`
 ADD KEY `postid` (`postid`), ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_titlewords`
--
ALTER TABLE `qa_titlewords`
 ADD KEY `postid` (`postid`), ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_userevents`
--
ALTER TABLE `qa_userevents`
 ADD KEY `userid` (`userid`,`updated`), ADD KEY `questionid` (`questionid`,`userid`);

--
-- Indexes for table `qa_userfavorites`
--
ALTER TABLE `qa_userfavorites`
 ADD PRIMARY KEY (`userid`,`entitytype`,`entityid`), ADD KEY `userid` (`userid`,`nouserevents`), ADD KEY `entitytype` (`entitytype`,`entityid`,`nouserevents`);

--
-- Indexes for table `qa_userfields`
--
ALTER TABLE `qa_userfields`
 ADD PRIMARY KEY (`fieldid`);

--
-- Indexes for table `qa_userlevels`
--
ALTER TABLE `qa_userlevels`
 ADD UNIQUE KEY `userid` (`userid`,`entitytype`,`entityid`), ADD KEY `entitytype` (`entitytype`,`entityid`);

--
-- Indexes for table `qa_userlimits`
--
ALTER TABLE `qa_userlimits`
 ADD UNIQUE KEY `userid` (`userid`,`action`);

--
-- Indexes for table `qa_userlogins`
--
ALTER TABLE `qa_userlogins`
 ADD KEY `source` (`source`,`identifiermd5`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `qa_usermetas`
--
ALTER TABLE `qa_usermetas`
 ADD PRIMARY KEY (`userid`,`title`);

--
-- Indexes for table `qa_usernotices`
--
ALTER TABLE `qa_usernotices`
 ADD PRIMARY KEY (`noticeid`), ADD KEY `userid` (`userid`,`created`);

--
-- Indexes for table `qa_userpoints`
--
ALTER TABLE `qa_userpoints`
 ADD PRIMARY KEY (`userid`), ADD KEY `points` (`points`);

--
-- Indexes for table `qa_userprofile`
--
ALTER TABLE `qa_userprofile`
 ADD UNIQUE KEY `userid` (`userid`,`title`);

--
-- Indexes for table `qa_users`
--
ALTER TABLE `qa_users`
 ADD PRIMARY KEY (`userid`), ADD KEY `email` (`email`), ADD KEY `handle` (`handle`), ADD KEY `level` (`level`), ADD KEY `created` (`created`,`level`,`flags`);

--
-- Indexes for table `qa_uservotes`
--
ALTER TABLE `qa_uservotes`
 ADD UNIQUE KEY `userid` (`userid`,`postid`), ADD KEY `postid` (`postid`);

--
-- Indexes for table `qa_widgets`
--
ALTER TABLE `qa_widgets`
 ADD PRIMARY KEY (`widgetid`), ADD UNIQUE KEY `position` (`position`);

--
-- Indexes for table `qa_words`
--
ALTER TABLE `qa_words`
 ADD PRIMARY KEY (`wordid`), ADD KEY `word` (`word`), ADD KEY `tagcount` (`tagcount`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qa_categories`
--
ALTER TABLE `qa_categories`
MODIFY `categoryid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qa_messages`
--
ALTER TABLE `qa_messages`
MODIFY `messageid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qa_pages`
--
ALTER TABLE `qa_pages`
MODIFY `pageid` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qa_posts`
--
ALTER TABLE `qa_posts`
MODIFY `postid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `qa_userfields`
--
ALTER TABLE `qa_userfields`
MODIFY `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `qa_usernotices`
--
ALTER TABLE `qa_usernotices`
MODIFY `noticeid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qa_users`
--
ALTER TABLE `qa_users`
MODIFY `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `qa_widgets`
--
ALTER TABLE `qa_widgets`
MODIFY `widgetid` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qa_words`
--
ALTER TABLE `qa_words`
MODIFY `wordid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `qa_categorymetas`
--
ALTER TABLE `qa_categorymetas`
ADD CONSTRAINT `qa_categorymetas_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `qa_categories` (`categoryid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_contentwords`
--
ALTER TABLE `qa_contentwords`
ADD CONSTRAINT `qa_contentwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
ADD CONSTRAINT `qa_contentwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_postmetas`
--
ALTER TABLE `qa_postmetas`
ADD CONSTRAINT `qa_postmetas_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_posts`
--
ALTER TABLE `qa_posts`
ADD CONSTRAINT `qa_posts_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `qa_posts` (`postid`),
ADD CONSTRAINT `qa_posts_ibfk_3` FOREIGN KEY (`categoryid`) REFERENCES `qa_categories` (`categoryid`) ON DELETE SET NULL,
ADD CONSTRAINT `qa_posts_ibfk_4` FOREIGN KEY (`closedbyid`) REFERENCES `qa_posts` (`postid`),
ADD CONSTRAINT `qa_posts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE SET NULL;

--
-- Constraints for table `qa_posttags`
--
ALTER TABLE `qa_posttags`
ADD CONSTRAINT `qa_posttags_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
ADD CONSTRAINT `qa_posttags_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_tagwords`
--
ALTER TABLE `qa_tagwords`
ADD CONSTRAINT `qa_tagwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
ADD CONSTRAINT `qa_tagwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_titlewords`
--
ALTER TABLE `qa_titlewords`
ADD CONSTRAINT `qa_titlewords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
ADD CONSTRAINT `qa_titlewords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_userevents`
--
ALTER TABLE `qa_userevents`
ADD CONSTRAINT `qa_userevents_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userfavorites`
--
ALTER TABLE `qa_userfavorites`
ADD CONSTRAINT `qa_userfavorites_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userlevels`
--
ALTER TABLE `qa_userlevels`
ADD CONSTRAINT `qa_userlevels_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userlimits`
--
ALTER TABLE `qa_userlimits`
ADD CONSTRAINT `qa_userlimits_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userlogins`
--
ALTER TABLE `qa_userlogins`
ADD CONSTRAINT `qa_userlogins_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_usermetas`
--
ALTER TABLE `qa_usermetas`
ADD CONSTRAINT `qa_usermetas_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_usernotices`
--
ALTER TABLE `qa_usernotices`
ADD CONSTRAINT `qa_usernotices_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userprofile`
--
ALTER TABLE `qa_userprofile`
ADD CONSTRAINT `qa_userprofile_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_uservotes`
--
ALTER TABLE `qa_uservotes`
ADD CONSTRAINT `qa_uservotes_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
ADD CONSTRAINT `qa_uservotes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
