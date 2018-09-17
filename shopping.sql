-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2018 at 11:53 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `parent_cat` varchar(255) DEFAULT NULL,
  `cat_description` longtext,
  `cat_image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `parent_cat`, `cat_description`, `cat_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SPORTSWEAR', 'SPORTSWEAR', '<p>new test&nbsp;<a href="http://localhost/onlineshopping/#sportswear">SPORTSWEAR</a></p>', '1537120161_2320.png', 'on', '2018-09-16 12:19:21', '2018-09-17 17:08:49'),
(2, 'MENS', 'SPORTSWEAR', '<p>test&nbsp;<a href="http://localhost/onlineshopping/#mens">MENSMENSMENSMENSMENSMENS</a></p>', '1537120188_4334.jpg', 'on', '2018-09-16 12:19:48', '2018-09-17 16:08:47'),
(3, 'Womens', 'Self', '<p>Womens Test Caterory</p>', '1537121461_7297.png', 'on', '2018-09-16 12:20:26', '2018-09-16 18:11:01'),
(4, 'Nike', 'SPORTSWEAR', '<p>Nike Test Sub Category</p>', '1537121475_2447.jpg', 'on', '2018-09-16 12:20:59', '2018-09-16 18:11:15'),
(5, 'VALENTINO', 'MENS', '<ul>\r\n	<li><a href="http://localhost/onlineshopping/#">VALENTINO</a>&nbsp; Tets Sub Caterory</li>\r\n</ul>', '1537120322_6519.jpg', 'on', '2018-09-16 12:22:02', '2018-09-16 17:52:02'),
(6, 'testcdasdasd', 'MENS', '<p>hjhghjghjbvbcbcvbcvdasdadasdasdsadasdsa</p>', '1537121433_7573.png', 'on', '2018-09-16 12:25:12', '2018-09-16 18:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'http://localhost/onlineshopping/test_url', 'home', '2018-07-11 11:55:03', '2018-07-11 17:25:03'),
(2, 'aboutus', 'http://localhost/onlineshopping/aboutus', 'aboutus', '2018-07-11 11:55:26', '2018-07-11 17:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rajat@gmail.com', '$2y$10$CX4.WItV3Z/TSdt.pIy6EOoZpg7o9ODaDoGuJTwR23C1kxC.cC/im', '2018-06-22 12:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `description` longtext,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_type`, `description`, `image`, `price`, `stock`, `category`, `sub_category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'Test', '<p>sdfsdf</p>', '1537111824_5627.png', '500', 2, 'SPORTSWEAR', 'MENS', 'on', '2018-09-16 00:39:03', '2018-09-17 17:34:15'),
(2, 'Live', 'live test', '<p>hello this is test</p>', '1537109804_7710.jpg', '200', 2, 'Womens', 'MENS', 'on', '2018-09-16 09:26:44', '2018-09-17 17:34:31'),
(6, 'Basen Gatta', 'Tets', '<p>sdasdasd</p>', '1537205750_1222.jpg', '321', 2, 'Nike', 'MENS', 'on', '2018-09-17 12:05:50', '2018-09-17 17:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `image`, `content`, `created_at`, `updated_at`) VALUES
(8, 'First Slide d', '1536861270_4072.jpg', '<h1><span>E</span>-SHOPPER</h1>\r\n                                    <h2>100% Responsive Design</h2>\r\n                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                                    <button type="button" class="btn btn-default get">Get it now</button>', '2018-07-03 05:45:18', '2018-09-13 17:54:30'),
(9, 'Second Slide', '1530892640_3955.jpg', '<h1><span>E</span>-SHOPPER</h1> <h2>100% Responsive Design</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p> <button type="button" class="btn btn-default get">Get it now</button>', '2018-07-05 10:57:47', '2018-09-13 17:58:09'),
(10, 'Thaird  Slider', '1530892712_2538.jpg', '<h1><span>E</span>-SHOPPER</h1> <h2>100% Responsive Design</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p> <button type="button" class="btn btn-default get">Get it now</button>', '2018-07-05 11:03:29', '2018-09-13 17:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `menu_id`, `name`, `url`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'HOME_sub', 'http://localhost/onlineshopping/home_sub', 'home_sub', '2018-07-11 11:56:22', '2018-07-11 17:26:22'),
(2, 2, 'about_sub', 'http://localhost/onlineshopping/aboutus_sub', 'about_sub', '2018-07-11 11:57:44', '2018-07-11 17:27:44'),
(4, 1, 'rajat', 'http://localhost/onlineshopping/test_url', 'test', '2018-09-13 12:08:11', '2018-09-13 17:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'rajat', 'rajat@gmail.com', '$2y$10$iPABnPUzsj/PdILGJHgtoO6YyyyYJUjAinr2z3FjpGrPYJgrED.fe', 'Q9fBqRyg05jxNmQ71RA1YvttogwfgCFpmnZpsoPVln0X4suBQSELRxsIW8cw', 1, '2018-06-21 01:31:14', '2018-06-21 01:31:14'),
(2, 'pankaj', 'pankaj@gmail.com', '$2y$10$u94VWwz2ljZqi8kFdbXJDeY7h6GYSUmmZrWUr.vN.kcIZguw3YLSe', 'TKOzm3NXqLT6MVHv3ryZXn9eFOwtBcuxxilL0jQgMNp9Yy3qiAlDD5RnhRd0', 0, '2018-06-28 11:08:18', '2018-06-28 11:08:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
