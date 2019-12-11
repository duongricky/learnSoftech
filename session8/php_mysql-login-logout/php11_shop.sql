-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2018 at 08:57 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

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
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin'),
(2, 'customer', 'customer'),
(3, 'shop', 'shop');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '1',
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

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `password`, `avatar`, `phone`, `email`, `description`) VALUES
(17, 1, 'sua', 'hoaicanh', 'e10adc3949ba59abbe56e057f20f883e', 'avatar.jpg', '0998997788111111111', 'suar2@joinhandsnails.com', 'I like PHP'),
(20, 2, 'JUNIORWORKS new edit thu', 'chad', 'e10adc3949ba59abbe56e057f20f883e', 'avatar.jpg', '09887946071', 'admin@admin.comnew', 'mota'),
(21, 2, 'JUNIORWORKS', 'luong', 'e10adc3949ba59abbe56e057f20f883e', 'avatar.jpg', '0988794607', 'admin@admin.com', 'aaaaaaaaaa'),
(22, 1, 'JUNIORWORKS', 'username', 'e10adc3949ba59abbe56e057f20f883e', 'avatar.jpg', 'a', 'admin@admin.com', 'a'),
(23, 1, 'Canh', 'username', 'e10adc3949ba59abbe56e057f20f883e', 'avatar.jpg', '0988794607', 'admin@joinhandsnails.com', 'a'),
(26, 1, 'add moi', '1', 'e10adc3949ba59abbe56e057f20f883e', '5ab39551d6fd8newcastle-0-0-mu-quy-do-ep-san-h1.jpg', '111111', 'admin@admin.com', ''),
(27, 1, 'JUNIORWORKS moi', '1', 'e10adc3949ba59abbe56e057f20f883e', 'default.jpg', '0988794607', 'apple.luong1905@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
