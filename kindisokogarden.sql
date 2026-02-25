-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 09:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kindisokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(1, 'nike airmax', 'White blue stripes size 43', 5300, 'nike.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'John Tom', '10537', '@johntom.gmail.com', '0701234567'),
(2, 'Mary Jane', '123019', '@maryjane.gmail.com', '0725698679'),
(3, 'Daniel Joshua', '98363', '@danieljoshua.gmail.com', '0794738304'),
(4, 'Jay', '123pas', 'jay@gmail.com', '0771838361'),
(5, 'Ann', '3560yg', 'ann@gmail.com', '0734567281'),
(6, 'Mercy', '876gud', 'mercy@gmail.com', '0756874321'),
(7, 'Leah', '274gyt', 'leah@gmail.com', '0724567118'),
(8, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(9, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(10, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(11, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(12, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(13, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(14, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(15, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(16, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(17, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(18, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(19, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(20, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(21, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(22, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(23, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(24, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(25, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(26, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(27, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(28, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(29, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(30, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(31, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(32, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(33, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(34, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(35, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(36, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(37, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452'),
(38, 'Jacob', '0953tfd', 'jacob@gmail.com', '0718976452');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
