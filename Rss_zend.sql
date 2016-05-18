-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- المزود: localhost
-- أنشئ في: 17 مايو 2016 الساعة 12:37
-- إصدارة المزود: 5.5.46-0ubuntu0.14.04.2
-- PHP إصدارة: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- قاعدة البيانات: `Rss_zend`
--

-- --------------------------------------------------------

--
-- بنية الجدول `RSS`
--

CREATE TABLE IF NOT EXISTS `RSS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- إرجاع أو استيراد بيانات الجدول `RSS`
--

INSERT INTO `RSS` (`id`, `path`) VALUES
(3, 'http://rss.cnn.com/rss/edition.rss'),
(6, 'http://rss.cnn.com/rss/edition_world.rss'),
(7, 'http://rss.cnn.com/rss/edition_americas.rss');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
