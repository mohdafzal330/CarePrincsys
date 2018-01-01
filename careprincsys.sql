-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2018 at 07:43 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `careprincsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `speaks`
--

CREATE TABLE `speaks` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `speaks` longtext NOT NULL,
  `TimeCurrent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speaks`
--

INSERT INTO `speaks` (`id`, `userid`, `speaks`, `TimeCurrent`) VALUES
(1, 8, 'It is immense pleasure that I am a part of such a beautiful platform.Congrats and best of luck Care Princsys for your efforts.', '2018-01-01 06:07:48'),
(2, 8, 'I am happy to have you Care Princsys.', '2018-01-01 06:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` char(2) NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `domain` text NOT NULL,
  `proimage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `password`, `gender`, `address`, `state`, `city`, `contact`, `occupation`, `type`, `domain`, `proimage`) VALUES
(8, 'Anchal Nigam', 'anchalnigamm@gmail.com', '643b33d20fbe52d48538f4cd7b24f593', 'F', '2/6,Kareli', 'Uttar Pradesh', 'Allahabad', 9026224948, 'Web Developer', 1, '', 'program-img6.jpg'),
(11, 'Sakshi Nigam', 'saknigam12@gmail.com', 'b73a3203047396075ccac51f92358f6e', 'F', '2/5,Kareli', 'Uttar Pradesh', 'Allahabad', 9026224945, 'Web Developer', 2, '', ''),
(13, 'Debjani Banerjee', 'debjani12@gmail.com', '55afb21cd8a852af644cffca40995792', 'F', '2/3,colnelganj', 'Uttar Pradesh', 'Allahabad', 9026224947, 'Phd Scholar', 4, 'Health ', ''),
(15, 'Moin Gadkari', 'gadmoin@gmail.com', '0b1e829c02623fe1e846b531b9b2a6c2', 'M', 'R.no : 02 Ayesha Mension,Rabodi', 'Maharastra', 'Thane', 9415367430, 'Full Stack Developer', 4, 'Health ', ''),
(17, 'Shinchan', 'shinchan@gmail.com', '7c9515c20d806973c6b7431bc8ffe070', 'M', 'block-2,colneganj', 'uttar pradesh', 'allahabad', 9026224948, 'web developer', 1, '', 'speakers-img2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `useremail`, `userip`, `logintime`, `logout`, `status`) VALUES
(1, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-26 18:14:46', '26-12-2017 11:56:39 PM', 1),
(2, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-26 18:28:44', '', 0),
(3, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-26 18:29:03', '27-12-2017 12:00:26AM', 1),
(4, 'anchalnigam@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-30 18:52:25', '', 0),
(5, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-30 18:52:40', '31-12-2017 12:26:58AM', 1),
(6, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-30 19:06:19', '31-12-2017 12:36:58AM', 1),
(7, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-30 19:07:12', '31-12-2017 12:57:41AM', 1),
(8, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-30 19:38:31', '31-12-2017 01:16:34AM', 1),
(9, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-30 19:57:57', '31-12-2017 01:30:56AM', 1),
(10, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-30 20:11:51', '31-12-2017 02:14:39AM', 1),
(11, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2017-12-31 17:53:48', '31-12-2017 11:47:52PM', 1),
(12, 'shinchan@gmail.com', 0x3a3a3100000000000000000000000000, '2018-01-01 04:08:57', '01-01-2018 09:39:02AM', 1),
(13, 'shinchan@gmail.com', 0x3a3a3100000000000000000000000000, '2018-01-01 04:16:58', '01-01-2018 09:49:28AM', 1),
(14, 'anchalnigamm@gmail.com', 0x3a3a3100000000000000000000000000, '2018-01-01 04:19:45', '01-01-2018 12:08:01PM', 1),
(15, 'shinchan@gmail.com', 0x3a3a3100000000000000000000000000, '2018-01-01 06:38:28', '01-01-2018 12:08:42PM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `speaks`
--
ALTER TABLE `speaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `speaks`
--
ALTER TABLE `speaks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
