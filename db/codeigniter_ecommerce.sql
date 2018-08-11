-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 08:17 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(2) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `access_label` tinyint(1) NOT NULL COMMENT 'access_label=1 Super Admin and  access_label=2 Admin',
  `activation_status` tinyint(4) NOT NULL COMMENT 'activation_status=1 Active,activation_status=0 Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `email_address`, `password`, `access_label`, `activation_status`) VALUES
(1, 'MD. Halim', 'halimpzs911@gmail.com', '96e79218965eb72c92a549dd5a330112', 1, 1),
(2, 'Md. Halon', 'halimzs91@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`) VALUES
(5, 'Man\'s Fasion', '', 1),
(6, 'Women\'s Fasion', '', 1),
(10, 'Laptop', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(11) NOT NULL,
  `manufacture_name` varchar(255) NOT NULL,
  `manufacture_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`) VALUES
(2, 'Jeans', '', 1),
(3, 'wallet', '', 1),
(4, 'Hp', 'Smart laptop', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(3) NOT NULL,
  `category_id` int(3) NOT NULL,
  `manufacture_id` int(3) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_long_description` text NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_new_price` float(10,2) NOT NULL,
  `product_quantity` int(5) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `pic1` varchar(255) NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `category_id`, `manufacture_id`, `product_name`, `product_short_description`, `product_long_description`, `product_price`, `product_new_price`, `product_quantity`, `is_featured`, `product_image`, `pic1`, `publication_status`) VALUES
(12, 5, 2, 'dfref', 'zxdsc', 'sdd', 45, 450.00, 5, 1, 'product_images/Koala1.jpg', 'product_images/Jellyfish.jpg', 1),
(13, 5, 2, 'felo', 'dfgreg', 'edgtg', 45, 450.00, 5, 1, 'product_images/Lighthouse3.jpg', 'product_images/Chrysanthemum1.jpg', 1),
(14, 5, 2, 'Man\'s', 'sfdrvf', 'প্রথম রমজান থেকে ঈদের দিন পর্যন্ত যেকোনো আজকেরডিল কেনাকাটায় বিকাশ পেমেন্ট করলে ২০% ইনস্ট্যান্ট ক্যাশব্যাক।ক) একজন ক্রেতা এই অফার চলাকালীন সময়ে প্রতি লেনদেনে \"সর্বোচ্চ ৩০০ টাকা\" ক্যাশব্যাক পাবে।খ) একটি বিকাশ ওয়ালেট নম্বর এ \"সর্বোচ্চ ৫০০ টাকা\" পর্যন্ত ক্যাশব্যাক পাওয়া যাবে।গ) ক্যাশব্যাক শুধুমাত্র সফল ডেলিভারীর ক্ষেত্রে প্রযোজ্য। (অগ্রিম মূল্য পরিশোধের ক্ষেত্রে মার্চেন্ট যদি অনিবার্য ', 600, 500.00, 5, 1, 'product_images/11.jpg', 'product_images/Penguins4.jpg', 1),
(15, 6, 3, 'zczdx', 'xzv cx', 'cxvx ', 45, 450.00, 6, 1, 'product_images/Tulips4.jpg', 'product_images/Penguins5.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
