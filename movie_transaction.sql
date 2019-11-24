-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2019 at 04:17 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_transaction`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transactionID` int(11) NOT NULL,
  `virtual_account` varchar(50) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `historyDate` date NOT NULL,
  `historyTime` varchar(11) NOT NULL,
  `scheduleID` int(11) NOT NULL,
  `chair` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` varchar(10) DEFAULT 'Pending',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transactionID`, `virtual_account`, `movie_id`, `historyDate`, `historyTime`, `scheduleID`, `chair`, `created_at`, `status`, `user_id`) VALUES
(41, 'djzU2ac0a7CXhT1ii5VA', 291867, '2020-10-10', '09.00 PM', 286, 26, '2019-11-21 09:46:45', 'Cancelled', 1),
(42, 'BCFwRNuT3CKaoBZBWdO0', 291867, '2020-10-10', '09.00 PM', 286, 17, '2019-11-21 09:49:14', 'Cancelled', 1),
(43, 'CYVcUuB0LBsgGNFp103b', 291867, '2020-10-10', '09.00 PM', 286, 29, '2019-11-23 11:26:52', 'Cancelled', 1),
(44, 'AsiYuckTz0U91zeRK1Gb', 291867, '2020-10-10', '09.00 PM', 286, 30, '2019-11-23 11:41:10', 'Cancelled', 1),
(45, 'ojJw0VHr1YyS25bBFTeF', 291867, '2020-10-10', '09.00 PM', 286, 19, '2019-11-23 11:42:36', 'Cancelled', 1),
(46, 'jTlm0chA61Xe9WM2XFgf', 291867, '2020-10-10', '09.00 PM', 286, 19, '2019-11-23 11:42:40', 'Cancelled', 1),
(47, 'kfdUoj8rYKYqE8b1lghU', 291867, '2020-10-10', '09.00 PM', 286, 16, '2019-11-23 11:52:13', 'Cancelled', 1),
(48, 'nR7oiOEnBAEz5H0b6qAn', 291867, '2020-10-10', '09.00 PM', 286, 7, '2019-11-23 11:52:40', 'Cancelled', 1),
(49, 'oH5naUKqKdDmupyr1LLS', 291867, '2020-10-10', '09.00 PM', 286, 8, '2019-11-23 11:56:52', 'Cancelled', 1),
(50, '1ZWxJocuuqWFbf62TokZ', 291867, '2020-10-10', '09.00 PM', 286, 13, '2019-11-23 11:58:22', 'Cancelled', 1),
(51, 'bPd8Yw7zcNhhPi4DH0wp', 291867, '2020-10-10', '09.00 PM', 286, 20, '2019-11-23 12:34:06', 'Cancelled', 1),
(52, 'X79YaojrFqsHlfifkV4A', 291867, '2020-10-10', '09.00 PM', 286, 22, '2019-11-23 12:41:59', 'Cancelled', 1),
(53, '98740661725363309922', 291867, '2020-10-10', '09.00 PM', 286, 5, '2019-11-24 00:54:27', 'Cancelled', 1),
(56, '10388816336486495625', 291867, '2020-10-10', '09.00 PM', 286, 17, '2019-11-24 07:14:06', 'Cancelled', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transactionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
