-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2014 at 07:57 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clippings`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(3) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_created` date NOT NULL,
  `cat_updated` date NOT NULL,
  `cat_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_creator` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_name` (`cat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paper_name` varchar(56) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(56) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(56) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Apu-20140602' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `newsitems`
--

CREATE TABLE IF NOT EXISTS `newsitems` (
  `news_id` int(6) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_date` date NOT NULL,
  `news_posting` date NOT NULL,
  `news_source` int(11) NOT NULL,
  `news_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_category` int(11) NOT NULL,
  `news_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_filesize` int(11) NOT NULL,
  `news_created` date NOT NULL,
  `news_updated` date NOT NULL,
  `news_creator` date NOT NULL,
  `news_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_status` int(3) NOT NULL,
  `news_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`news_id`)
  KEY `news_title` (`news_title`),
  KEY `news_date` (`news_date`),
  KEY `news_category` (`news_category`),
  KEY `news_keywords` (`news_keywords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE IF NOT EXISTS `source` (
  `source_id` int(6) NOT NULL AUTO_INCREMENT,
  `source_name` varchar(56) COLLATE utf8_unicode_ci NOT NULL,
  `source_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source_country` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `source_language` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `source_publisher` varchar(56) COLLATE utf8_unicode_ci NOT NULL,
  `source_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source_phone` int(11) NOT NULL,
  `source_fax` int(11) NOT NULL,
  `source_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source_created` date NOT NULL,
  `source_updated` date NOT NULL,
  `source_creator` int(3) NOT NULL,
  `source_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`source_id`)
  KEY `source_name` (`source_name`),
  KEY `source_country` (`source_country`),
  KEY `source_language` (`source_language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_loginname` int(11) NOT NULL,
  `user_realname` int(11) NOT NULL,
  `user_designation` int(11) NOT NULL,
  `user_institution` int(11) NOT NULL,
  `user_email` int(11) NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_address` int(11) NOT NULL,
  `user_created` int(11) NOT NULL,
  `user_updated` int(11) NOT NULL,
  `user_level` int(11) NOT NULL,
  `user_note` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
