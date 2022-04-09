-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 04:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping cart for a bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_ Id` int(10) NOT NULL,
  `Book_ Name` varchar(500) NOT NULL,
  `Author` varchar(500) NOT NULL,
  `Price` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_ Id`, `Book_ Name`, `Author`, `Price`) VALUES
(1, 'Let Us C', 'Yashavant P. Kanetkar', '200'),
(2, 'Thinking In Java', 'Thinking In Java', '300'),
(3, 'Computer Networking', 'James F. Kurose', '250'),
(4, 'Head First C#', 'Andrew Stellman', '400'),
(5, 'What Is HTML5?', 'Brett McLaughlin', '300'),
(6, 'HTML5 In Action', 'Joe Lennon', '569'),
(7, 'OOP with C++', 'Balagurusamy', '308'),
(8, 'C++ : The Complete Reference', 'Herbert Schildt', '532'),
(9, 'Head First SQL', 'Lynn Beighley', '450'),
(10, 'SQL : The Complete Reference', 'James Groff', '667');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `Order_Id` int(10) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone_ No` bigint(255) NOT NULL,
  `Cust_ Name` varchar(255) NOT NULL,
  `Order_Date` date NOT NULL,
  `Quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`Order_Id`, `Address`, `Phone_ No`, `Cust_ Name`, `Order_Date`, `Quantity`) VALUES
(1, 'Radhika Vihar', 9673960407, 'Amit', '2016-11-08', 3),
(2, 'Rakshak Nagar', 8754513950, 'Mona', '2016-11-08', 3),
(3, 'Rakshak Nagar Gold', 7845127845, 'Kavi', '2016-11-08', 2),
(4, 'Bangalore', 7845127880, 'Monalisa', '2016-11-08', 3),
(5, 'Wadganosheri', 7845782150, 'Amol', '2016-11-08', 3),
(6, 'Bangalore', 7852186801, 'Amit', '2016-11-08', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `address`, `email`, `uname`, `password`, `regdate`) VALUES
('Hari', 'Chandan Nagar', 'hari39@rediffmail.com', '7845127421', 'Adam99@', '2016-11-08'),
('Narendra', 'Rajpath', 'narendra17@pmo.nic.in', '8877990011', 'Delhi9%', '2016-11-08'),
('Amit', 'Wagholi', 'amit.mishra369@gmail.com', '9673960407', 'mona9Dutta', '2016-11-08'),
('Monalisa', 'Rakshak Nagar', 'mona9@gmail.com', '9878454503', 'pinaki9@', '2016-11-08'),
('Kavita', 'Rakshak Nagar Gold', 'kavi23@gmail.com', '9878521402', 'Alia8&', '2016-11-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_ Id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`Order_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
