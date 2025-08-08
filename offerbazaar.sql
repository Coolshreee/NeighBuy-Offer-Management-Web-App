-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2025 at 06:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `offerbazaar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `advertiser`
--

CREATE TABLE `advertiser` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `businessName` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertiser`
--

INSERT INTO `advertiser` (`id`, `name`, `businessName`, `contact`, `email`, `password`, `city`, `status`) VALUES
(3, 'Kulashri', 'Clothing Business', '2345632145', 'kulashri@gmail.com', '1234', 'Dhule', 'approved'),
(4, 'Janhavi Patil', 'Footwear', '1234567892', 'janhavi@gmail.com', '1234', 'Shirpur', 'approved'),
(5, 'Neha Sane', 'Grocery', '1456982378', 'neha@gmail.com', '1234', 'Nardana', 'approved'),
(6, 'Rupesh Girase', 'Food & Restaurant ', '5698745632', 'rupesh@gmail.com', '1234', 'Nashik', 'approved'),
(7, 'Diu Mahtre', 'Salon & Beauty ', '4569823147', 'diu@gmail.com', '1234', 'Shirpur', 'approved'),
(8, 'Revati Patil', 'Education & Books', '9874563254', 'revati@gmail.com', '1234', 'Dhule', 'approved'),
(9, 'Om Rajput', 'Laundry Service', '458963214', 'om@gmail.com', '1234', 'Shirpur', 'approved'),
(10, 'Satyam', ' Local Services', '8963214587', 'satyam@gmail.com', '1234', 'Nashik', 'approved'),
(11, 'Laghvi', 'footwear', '4567891', 'laghvi@gmail.com', '1234', 'Nashik', 'pending'),
(12, 'Shrawani', 'Ecommerce', '4569321459', 'shrawani@gmail.com', '1234', 'Shirpur', 'pending'),
(13, 'ritu', 'Ecommerce', '4569321459', 'ritu@gmail.com', '1234', 'Shirpur', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(20) NOT NULL,
  `advertiseId` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `city` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `advertiseId`, `title`, `description`, `discount`, `startDate`, `endDate`, `city`, `category`) VALUES
(3, '3', 'Flat 30% Off on Summer Collection', 'Grab trendy summer clothes now at StyleZone!', '30%', '2025-07-17', '2025-08-14', 'Dhule', 'Fashion'),
(4, '8', '10% Off on Stationery', 'Back to school offer on notebooks & pens', '10%', '2025-07-02', '2025-07-30', 'Shirpur', 'Others'),
(5, '8', 'Enroll 1, Get 1 Course Free', 'SkillUp Academy Limited Period ', '20&', '2025-07-08', '2025-08-06', 'Dhule', 'Others'),
(6, '10', 'Home Cleaning Flat &#8377;300 Off', 'Full home deep cleaning', '10%', '2025-07-18', '2025-07-28', 'Nashik', 'Services'),
(7, '10', 'Laundry Service Offer', '15% off on first 3 orders', '15%', '2025-07-16', '2025-07-22', 'Shirpur', 'Services'),
(8, '3', 'Buy 2 Get 1 Free', 'Masoon Sale live!!', '40%', '2025-07-03', '2025-08-04', 'Dhule', 'Electronics'),
(9, '3', 'Buy 2 Get 1 Free', 'Exclusive Offer applied!', '75%', '2025-07-16', '2025-08-16', 'Dhule', 'Grocery');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `contact`, `address`, `email`, `password`, `city`) VALUES
(1, 'Darshana', '1234567894', '12B,Balaji nagar,Shirpur', 'darshana@gmail.com', '1234', 'Shirpur'),
(2, 'Nikhil Bari', '8523697412', '22 B, Sane Road, Dhule', 'nikhil@gmail.com', '1234', 'Dhule'),
(3, 'Harshali Mane', '7893652145', '44,Nimzari Naka,Shirpur', 'harshali@gmail.com', '1234', 'Nashik'),
(4, 'Madhavi ', '7896325632', '22,Karvand naka,shirpur', 'madhavi@gmail.com', '1234', 'Nardana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertiser`
--
ALTER TABLE `advertiser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertiser`
--
ALTER TABLE `advertiser`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
