-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2018 at 06:56 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.27-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php11_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `avatar`, `phone`, `email`, `description`) VALUES
(17, '55555zen', 'hoaicanh', 'b2ca678b4c936f905fb82f2733f5297f', '5aa3c5929499fimage003.jpg', '0998997788', 'supplier2@joinhandsnails.com', 'I like PHP'),
(18, 'bb', 'hoaicanh', 'b2ca678b4c936f905fb82f2733f5297f', '5aa3c59cc3ec9image003.jpg', '0998997788', 'supplibber2@joinhandsnails.com', 'I like PHP'),
(19, 'bb', 'hoaicanh', 'b2ca678b4c936f905fb82f2733f5297f', '5aa3c5a317a1cnewcastle-0-0-mu-quy-do-ep-san-h1.jpg', '0998997788', 'supplibber2@joinhandsnails.com', 'I like PHP'),
(20, 'JUNIORWORKS new', 'chadnew', 'b2ca678b4c936f905fb82f2733f5297f', '5aa3c75809dfcScreenshot from 2018-02-06 14-00-50.png', '09887946071', 'admin@admin.comnew', 'mota'),
(21, 'JUNIORWORKS new', 'chadnew', 'b2ca678b4c936f905fb82f2733f5297f', '5aa3c79a9fac4accounting-manager-e1469723098470.jpg', '09887946071', 'admin@admin.comnew', 'qqq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
