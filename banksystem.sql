-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 08, 2021 at 09:22 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Alex', 'Dave', 300, '2021-09-1 16:55:18'),
(2, 'Ross', 'Harry', 100, '2021-09-02 00:40:29'),
(3, 'Nick', 'Nate', 100, '2021-09-03 12:30:24'),
(4, 'Harvey', 'Josh', 500, '2021-09-03 12:08:20'),
(5, 'Hobbs', 'Dave', 200, '2021-09-03 14:09:00'),
(6, 'Alex', 'Shaw', 600, '2021-09-03 14:10:52'),
(7, 'Nate', 'Ross', 700, '2021-09-04 22:38:46'),
(8, 'Shaw', 'Dave', 350, '2021-09-04 22:39:22'),
(9, 'Josh', 'Harry', 120, '2021-09-04 24:39:44'),
(10, 'Harry', 'Alex', 440, '2021-09-06 24:40:43'),
(11, 'Nick', 'Alex', 500, '2021-09-10 02:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1011, 'Ross', 'rossg@gmail.com', 60000),
(2011, 'Shaw', 'shawt@gmail.com', 45000),
(3011, 'Harry', 'harryh@gmail.com', 40010),
(4011, 'Nick', 'nickd@gmail.com', 65090),
(5011, 'Dave', 'daves@gmail.com', 90900),
(5022, 'Hobbs', 'hobbsj@gmail.com', 56000),
(6011, 'Josh', 'joshk@gmail.com', 40000),
(7011, 'Harvey', 'harveyd@gmail.com',60000),
(8011, 'Nate', 'nated@gmail.com', 41000),
(9011, 'Alex', 'alexg@gmail.com', 36000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
