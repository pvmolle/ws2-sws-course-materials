-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2013 at 04:30 PM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `todo`
--

DROP DATABASE IF EXISTS todo;
CREATE DATABASE todo;
USE todo;

-- --------------------------------------------------------

--
-- Table structure for table `todolist`
--

CREATE TABLE `todolist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `what` varchar(255) NOT NULL,
  `priority` enum('high','normal','low') NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `todolist`
--

INSERT INTO `todolist` (`id`, `user_id`, `what`, `priority`, `added_on`) VALUES
(1, 1, 'ksat tnegru yrev A', 'high', '2012-12-03 13:56:08'),
(2, 1, 'A normal priority task', 'normal', '2012-12-03 13:56:08'),
(3, 1, 'A low priority task', 'low', '2013-02-07 16:18:37'),
(4, 2, 'A very urgent task', 'high', '2012-12-19 13:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'bramus', '548b443423c74becf92a5091bd63a80f058f38fc'),
(2, 'rogier', '548b443423c74becf92a5091bd63a80f058f38fc'),
(3, 'davy', '548b443423c74becf92a5091bd63a80f058f38fc');