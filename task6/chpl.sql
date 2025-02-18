-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2025 at 12:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_data`
--

CREATE TABLE `about_data` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_data`
--

INSERT INTO `about_data` (`id`, `description`) VALUES
(1, 'Food is essential for human survival.'),
(2, 'A balanced diet provides the necessary nutrients for growth and development.'),
(3, 'Eating a variety of foods promotes good health and well-being.');

-- --------------------------------------------------------

--
-- Table structure for table `contact_data`
--

CREATE TABLE `contact_data` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_data`
--

INSERT INTO `contact_data` (`id`, `address`, `phone`, `email`, `website`, `facebook_link`, `twitter_link`, `instagram_link`) VALUES
(1, '123, Main Street, New York', '123-456-7890', 'info@example.com', 'www.example.com', 'https://www.facebook.com/example', 'https://twitter.com/example', 'https://www.instagram.com/example'),
(2, '456, Wall Street, New York', '987-654-3210', 'contact@example.com', 'www.example2.com', 'https://www.facebook.com/example2', 'https://twitter.com/example2', 'https://www.instagram.com/example2'),
(3, '789, Broadway, New York', '555-123-4567', 'support@example.com', 'www.example3.com', 'https://www.facebook.com/example3', 'https://twitter.com/example3', 'https://www.instagram.com/example3');

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `logo_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `logo_path`) VALUES
(1, 'logo.png'),
(2, 'logo2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `menu_image` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `menu_image`, `name`, `description`, `price`) VALUES
(1, 'pizza.jpg', 'pizza', 'Delicious cheese pizza', 250.00),
(2, 'pasta.jpg', 'pasta', 'Creamy pasta with fresh herbs', 150.00),
(3, 'food3jpg.jpg', 'burger', 'Delicious cheese burger', 130.00),
(4, 'salad.jpg', 'salad', 'healthy salad.', 100.00),
(5, 'gujaratithali.jpg', 'gujarati food', 'Gujarati food is a colorful, flavorful, and vegetarian. ', 50.00),
(6, 'southindianthali.jpg', 'south food', 'healthy food.', 80.00);

-- --------------------------------------------------------


-- --------------------------------------------------------


-- --------------------------------------------------------


-- Indexes for dumped tables
--

--
-- Indexes for table `about_data`
--
ALTER TABLE `about_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_data`
--
ALTER TABLE `contact_data`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdata`
--
ALTER TABLE `orderdata`
  ADD PRIMARY KEY (`order_id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_data`
--
ALTER TABLE `about_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_data`
--
ALTER TABLE `contact_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
