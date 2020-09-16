-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:47 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoneshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(6, 9, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Apple', 'laptops'),
(2, 'Sumsung', 'desktop-pc'),
(3, 'Other', 'tablets'),
(4, 'Nokia', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 1, 1, 1),
(22, 2, 13, 1),
(23, 4, 8, 1),
(24, 5, 21, 1),
(25, 6, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `color` varchar(20) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `color`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'APPLE	 IPHONE 7', '<p>Apple iPhone 7 smartphone. Announced Sep 2016.</p>\r\n\r\n<p>Features 4.7&Prime; LED-backlit IPS LCD display, Apple A10 Fusion chipset, 12 MP primary camera, 7 MP front camera, 1960 mAh battery, 256 GB storage, 2 GB RAM, IP67 certified, Ion-strengthened glass.</p>\r\n', 'apple-iphone-7', 103000, '', 'apple-iphone-7.jpg', '2020-04-19', 1),
(2, 1, 'APPLE	 IPHONE 6S', '<p>Apple iPhone 6s smartphone. Announced Sep 2015.</p>\r\n\r\n<p>Features 4.7&Prime; LED-backlit IPS LCD display, Apple A9 chipset, 12 MP primary camera, 5 MP front camera, 1715 mAh battery, 128 GB storage, 2 GB RAM, Ion-strengthened glass.</p>\r\n', 'apple-iphone-6s', 64000, '', 'apple-iphone-6s.jpg', '2020-04-18', 18),
(3, 1, ' iPhone XS', '<p>Apple iPhone x&nbsp;smartphone.&nbsp;</p>\r\n\r\n<p>Features 6.2&Prime; LED-backlit IPS LCD display, Apple A10 Fusion chipset, 16&nbsp;MP primary camera, 12&nbsp;MP front camera, 3600&nbsp;mAh battery, 256 GB storage, 3&nbsp;GB RAM, IP67 certified, Ion-strengthened glass.</p>\r\n', 'iphone-xs', 170500, '', 'iphone-xs.jpg', '0000-00-00', 0),
(4, 1, 'iPhone 11', '<p>Apple iPhone 11&nbsp;smartphone.&nbsp;</p>\r\n\r\n<p>Features 6.4&Prime; LED-backlit IPS LCD display, Apple A10 Fusion chipset, 16&nbsp;MP primary camera, 12&nbsp;MP front camera, 3600&nbsp;mAh battery, 512&nbsp;GB storage, 3&nbsp;GB RAM, IP67 certified, Ion-strengthened glass.</p>\r\n', 'iphone-11', 139900, '', 'iphone-11.jpg', '0000-00-00', 0),
(5, 4, 'Nokia 2.3', '<p>&nbsp;Dual Sim</p>\r\n\r\n<p>&nbsp;LTE 4G</p>\r\n\r\n<p>&nbsp;32 GB&nbsp;</p>\r\n\r\n<p>&nbsp;2GB RAM</p>\r\n', 'nokia-2-3', 17200, '', '', '0000-00-00', 0),
(6, 4, 'nokia12', '', 'nokia12', 1200, '', '', '0000-00-00', 0),
(7, 4, 'Nokia 216', '<p><em><strong>Nokia 216 phone</strong></em></p>\r\n\r\n<p><em><strong>&nbsp;Announced Sep 2016</strong></em></p>\r\n\r\n<p><em><strong>&nbsp;Features 2.4&Prime; display</strong></em></p>\r\n\r\n<p><em><strong>1020 mAh battery</strong></em></p>\r\n\r\n<p><em><strong>16 MB RAM.</strong></em></p>\r\n\r\n<p><em><strong>Lower Price Best Phone.</strong></em></p>\r\n', 'nokia-216', 5900, '', '', '0000-00-00', 0),
(8, 4, 'Nokia 150', '<p>Dual sim.</p>\r\n\r\n<p>RAM 512mb</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'nokia-150', 5200, '', 'nokia-150.jpg', '2020-04-18', 2),
(9, 4, 'Nokia 4.2', '<h3>RAM:&nbsp;3GB</h3>\r\n\r\n<h3>SIM:&nbsp;Dualsim</h3>\r\n\r\n<p>ROM: 3Gb&nbsp;</p>\r\n', 'nokia-4-2', 24500, '', 'nokia-4-2.jpg', '2020-04-19', 1),
(10, 4, 'Nokia 1 plus', '<h3>RAM:&nbsp;1GB</h3>\r\n\r\n<h3>SIM:&nbsp;Dualsim</h3>\r\n\r\n<p>ROM: 8GB</p>\r\n', 'nokia-1-plus', 11500, '', 'nokia-1-plus.jpg', '0000-00-00', 0),
(11, 4, 'Nokia 2.2', '<p>16 GB memory &amp; 2GB ram</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'nokia-2-2', 11400, '', 'nokia-2-2.jpg', '2020-04-19', 1),
(12, 2, 'Samsung Galaxy A50', '<h3>RAM:&nbsp;4GB</h3>\r\n\r\n<h3>SIM:&nbsp;Dualsim</h3>\r\n\r\n<p>ROM: 4GB</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'samsung-galaxy-a50', 40500, '', 'samsung-galaxy-a50.jpg', '2020-04-19', 1),
(13, 2, 'Sumsung galaxy j5', '<h3>RAM: 3GB</h3>\r\n\r\n<h3>SIM:&nbsp;Dualsim</h3>\r\n\r\n<p>ROM:32GB</p>\r\n', 'sumsung-galaxy-j5', 15000, '', 'sumsung-galaxy-j5.png', '2020-04-19', 1),
(14, 2, 'Samsung Galaxy A30s', '<h3>RAM:&nbsp;4GB</h3>\r\n\r\n<h3>SIM:&nbsp;Dualsim</h3>\r\n\r\n<p>ROM:64GB</p>\r\n', 'samsung-galaxy-a30s', 37000, '', 'samsung-galaxy-a30s.jpg', '2020-04-18', 1),
(15, 2, 'Samsung Galaxy  s9', '<p>Samsung Galaxy &nbsp;s9</p>\r\n\r\n<p>RAM: 2GB</p>\r\n\r\n<p>ROM:16GB</p>\r\n', 'samsung-galaxy-s9', 17000, '', 'samsung-galaxy-s9.jpg', '0000-00-00', 0),
(16, 2, 'Samsung Galaxy A80s', '<p>RAM: 8GB</p>\r\n\r\n<p>ROM: 8GB</p>\r\n\r\n<p>CAMERA IS TRIPLE FUNCTIONS&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'samsung-galaxy-a80s', 95000, '', 'samsung-galaxy-a80s.jpg', '0000-00-00', 0),
(17, 2, 'Samsung Galaxy A01', '<h3>RAM:&nbsp;2GB</h3>\r\n\r\n<h3>SIM:&nbsp;Dualsim</h3>\r\n\r\n<p>ROM: 2GB</p>\r\n', 'samsung-galaxy-a01', 18000, '', 'samsung-galaxy-a01.jpg', '0000-00-00', 0),
(18, 2, 'Samsung Galaxy Note 10 PLUS', '<h3>RAM:&nbsp;12GB</h3>\r\n\r\n<h3>SIM:&nbsp;N/A</h3>\r\n\r\n<p>ROM: 128GB</p>\r\n', 'samsung-galaxy-note-10-plus', 120000, '', 'samsung-galaxy-note-10-plus.jpg', '0000-00-00', 0),
(19, 2, 's', '<h3>RAM: 4GB</h3>\r\n\r\n<h3>SIM:&nbsp;N/A</h3>\r\n', 's', 12000, '', 's.jpg', '2020-04-20', 1),
(20, 2, 'Samsung Galaxy  C9pro', '<p>Samsung Galaxy C7 Pro</p>\r\n\r\n<p>Android smartphone.</p>\r\n\r\n<p>Announced Jan 2017.</p>\r\n\r\n<p>Features 5.7&Prime; Super AMOLED display</p>\r\n\r\n<p>, Snapdragon 626 chipset,</p>\r\n\r\n<p>16 MP primary camera,</p>\r\n\r\n<p>16 MP front camera,</p>\r\n\r\n<p>3300 mAh battery,</p>\r\n\r\n<p>64 GB storage,</p>\r\n\r\n<p>4 GB RAM</p>\r\n', 'samsung-galaxy-c9pro', 42000, '', 'samsung-galaxy-c9pro.jpg', '2020-04-20', 19),
(21, 3, 'VIVO y15', '<h3>RAM:&nbsp;4GB</h3>\r\n\r\n<p>&nbsp;</p>\r\n', 'vivo-y15', 32800, '', 'vivo-y15.jpg', '2020-04-19', 14),
(22, 3, ' Huawei Y7 Pro', '<p>The&nbsp;<strong>best price of Huawei Y7 Pro 2019 64GB ROM AND 3GB ROM&nbsp;</strong></p>\r\n\r\n<p><strong>in Sri Lanka</strong>&nbsp;is&nbsp;<strong>Rs. 22,850 sold at Smart Mobile&nbsp;</strong></p>\r\n\r\n<p>with 1 Year Hardware and Software Warranty</p>\r\n', 'huawei-y7-pro', 26850, '', 'huawei-y7-pro.jpg', '0000-00-00', 0),
(23, 3, 'Huawei Y6 Pro', '<p>&nbsp;</p>\r\n\r\n<p>Huawei Huawei Y6 Pro 2019</p>\r\n\r\n<p><strong>&nbsp;32GB ROM </strong></p>\r\n\r\n<p><strong>3GB RAM</strong></p>\r\n\r\n<p>&nbsp;One Year <strong>Singer</strong> Warranty</p>\r\n', 'huawei-y6-pro', 21500, '', 'huawei-y6-pro.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(1, 13, 'PAY', '2020-04-19'),
(2, 13, '', '2020-04-19'),
(3, 13, '', '2020-04-19'),
(4, 14, '', '2020-04-19'),
(5, 13, '', '2020-04-19'),
(6, 14, '', '2020-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@fazal.com', '$2y$10$sk41jXU1y3yWOvavQfeL5uJv.WU4vOdLZ3t9AAvgHmz1rlhSEknZW', 1, 'fazal', 'admin', '', '', 'download.jpg', 1, '', '', '2020-04-14'),
(9, 'faz@gmail.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'faz', 'min', '24/5,mawanella.', '9475443747', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(13, 'fazalm432@gmail.com', '$2y$10$/II98yWaqgemAtBJrzUyCOGEyQnGeYSEMzWVj84fAVcUAQRjk/Z6K', 0, 'faz', 'MHD', '24/3 samithiya road murthawela mawanella.', '0754453069', '', 1, '', 'YPsr3xpcADdygMj', '2020-04-15'),
(14, 'faro1@gmail.com', '$2y$10$V2s.R2YJsEeew5iEYuhyLuKA4ojLKIsMIV1gQm9pMvOqNmNXvqS4y', 0, 'faro', 'sa', '', '', '', 0, '', '', '2020-04-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
