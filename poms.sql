-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2016 at 08:05 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poms`
--

-- --------------------------------------------------------

--
-- Table structure for table `fakulteti`
--

CREATE TABLE `fakulteti` (
  `id` int(11) NOT NULL,
  `fakulteti` varchar(60) COLLATE utf8_bin NOT NULL,
  `departamenti` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `fakulteti`
--

INSERT INTO `fakulteti` (`id`, `fakulteti`, `departamenti`) VALUES
(1, 'FSHK', 'SD'),
(2, 'FSHK', 'TIT');

-- --------------------------------------------------------

--
-- Table structure for table `lenda`
--

CREATE TABLE `lenda` (
  `id` int(11) NOT NULL,
  `emri` varchar(50) COLLATE utf8_bin NOT NULL,
  `ects` smallint(6) NOT NULL,
  `fakulteti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ligjeratat`
--

CREATE TABLE `ligjeratat` (
  `id` int(11) NOT NULL,
  `lenda` int(11) NOT NULL,
  `profesori` int(11) NOT NULL,
  `fakulteti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `profesori`
--

CREATE TABLE `profesori` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `emri` varchar(30) COLLATE utf8_bin NOT NULL,
  `mbiemri` varchar(30) COLLATE utf8_bin NOT NULL,
  `titulli` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `fakulteti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `profesori`
--

INSERT INTO `profesori` (`id`, `user_id`, `emri`, `mbiemri`, `titulli`, `fakulteti`) VALUES
(1, 1, 'Filan', 'Fisteku', 'Dr.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profi_fk`
--

CREATE TABLE `profi_fk` (
  `profi_id` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `publikimet`
--

CREATE TABLE `publikimet` (
  `id` int(11) NOT NULL,
  `lenda` int(11) NOT NULL,
  `profesori` int(11) NOT NULL,
  `fakulteti` int(11) NOT NULL,
  `permbajtja` varchar(500) COLLATE utf8_bin NOT NULL,
  `data_e_postimit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `referenti`
--

CREATE TABLE `referenti` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `emri` varchar(30) COLLATE utf8_bin NOT NULL,
  `mbiemri` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `referenti`
--

INSERT INTO `referenti` (`id`, `user_id`, `emri`, `mbiemri`) VALUES
(1, 2, 'Filan', 'Fisteku');

-- --------------------------------------------------------

--
-- Table structure for table `rezultatet`
--

CREATE TABLE `rezultatet` (
  `id` int(11) NOT NULL,
  `pershkrimi` varchar(100) COLLATE utf8_bin NOT NULL,
  `lenda` int(11) NOT NULL,
  `profesori` int(11) NOT NULL,
  `fakulteti` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `studenti`
--

CREATE TABLE `studenti` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nr_id` int(11) NOT NULL,
  `emri` varchar(30) COLLATE utf8_bin NOT NULL,
  `mbiemri` varchar(30) COLLATE utf8_bin NOT NULL,
  `datelindja` date NOT NULL,
  `fakulteti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `studenti`
--

INSERT INTO `studenti` (`id`, `user_id`, `nr_id`, `emri`, `mbiemri`, `datelindja`, `fakulteti`) VALUES
(1, 3, 12345678, 'Valon', 'Kito', '1995-10-23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` char(150) COLLATE utf8_bin NOT NULL,
  `salt` char(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `email`, `password`, `salt`) VALUES
(1, 2, 'p@g.com', '00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc', 'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef'),
(2, 1, 'r@g.com', '00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc', 'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef'),
(3, 3, 's@g.com', '00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc', 'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `name` char(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`) VALUES
(1, 'Referent'),
(2, 'Profesor'),
(3, 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakulteti`
--
ALTER TABLE `fakulteti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lenda`
--
ALTER TABLE `lenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fakultetild` (`fakulteti`);

--
-- Indexes for table `ligjeratat`
--
ALTER TABLE `ligjeratat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ligjeratat_lenda` (`lenda`),
  ADD KEY `ligjeratat_fakulteti` (`fakulteti`),
  ADD KEY `ligjeratat_profesori` (`profesori`);

--
-- Indexes for table `profesori`
--
ALTER TABLE `profesori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesori_user_id` (`user_id`),
  ADD KEY `profesori_fakulteti` (`fakulteti`);

--
-- Indexes for table `profi_fk`
--
ALTER TABLE `profi_fk`
  ADD UNIQUE KEY `profi_id` (`profi_id`),
  ADD KEY `fk_id` (`fk_id`);

--
-- Indexes for table `publikimet`
--
ALTER TABLE `publikimet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publikimet_fakulteti` (`fakulteti`),
  ADD KEY `publikimet_profesori` (`profesori`),
  ADD KEY `publikimet_lenda` (`lenda`);

--
-- Indexes for table `referenti`
--
ALTER TABLE `referenti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referenti_user_id` (`user_id`);

--
-- Indexes for table `rezultatet`
--
ALTER TABLE `rezultatet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rezultatet_lenda` (`lenda`),
  ADD KEY `rezultatet_fakulteti` (`fakulteti`),
  ADD KEY `rezultatet_profesori` (`profesori`);

--
-- Indexes for table `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nr_id` (`nr_id`),
  ADD KEY `studenti_user_id` (`user_id`),
  ADD KEY `studenti_fakulteti` (`fakulteti`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `users_type` (`type`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakulteti`
--
ALTER TABLE `fakulteti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lenda`
--
ALTER TABLE `lenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ligjeratat`
--
ALTER TABLE `ligjeratat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profesori`
--
ALTER TABLE `profesori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `publikimet`
--
ALTER TABLE `publikimet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `referenti`
--
ALTER TABLE `referenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rezultatet`
--
ALTER TABLE `rezultatet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studenti`
--
ALTER TABLE `studenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `lenda`
--
ALTER TABLE `lenda`
  ADD CONSTRAINT `fakultetild` FOREIGN KEY (`fakulteti`) REFERENCES `fakulteti` (`id`);

--
-- Constraints for table `ligjeratat`
--
ALTER TABLE `ligjeratat`
  ADD CONSTRAINT `ligjeratat_fakulteti` FOREIGN KEY (`fakulteti`) REFERENCES `fakulteti` (`id`),
  ADD CONSTRAINT `ligjeratat_lenda` FOREIGN KEY (`lenda`) REFERENCES `lenda` (`id`),
  ADD CONSTRAINT `ligjeratat_profesori` FOREIGN KEY (`profesori`) REFERENCES `profesori` (`id`);

--
-- Constraints for table `profesori`
--
ALTER TABLE `profesori`
  ADD CONSTRAINT `profesori_fakulteti` FOREIGN KEY (`fakulteti`) REFERENCES `fakulteti` (`id`),
  ADD CONSTRAINT `profesori_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `profi_fk`
--
ALTER TABLE `profi_fk`
  ADD CONSTRAINT `profi_fk_ibfk_1` FOREIGN KEY (`profi_id`) REFERENCES `profesori` (`id`),
  ADD CONSTRAINT `profi_fk_ibfk_2` FOREIGN KEY (`fk_id`) REFERENCES `fakulteti` (`id`);

--
-- Constraints for table `publikimet`
--
ALTER TABLE `publikimet`
  ADD CONSTRAINT `publikimet_fakulteti` FOREIGN KEY (`fakulteti`) REFERENCES `fakulteti` (`id`),
  ADD CONSTRAINT `publikimet_lenda` FOREIGN KEY (`lenda`) REFERENCES `lenda` (`id`),
  ADD CONSTRAINT `publikimet_profesori` FOREIGN KEY (`profesori`) REFERENCES `profesori` (`id`);

--
-- Constraints for table `referenti`
--
ALTER TABLE `referenti`
  ADD CONSTRAINT `referenti_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rezultatet`
--
ALTER TABLE `rezultatet`
  ADD CONSTRAINT `rezultatet_fakulteti` FOREIGN KEY (`fakulteti`) REFERENCES `fakulteti` (`id`),
  ADD CONSTRAINT `rezultatet_lenda` FOREIGN KEY (`lenda`) REFERENCES `lenda` (`id`),
  ADD CONSTRAINT `rezultatet_profesori` FOREIGN KEY (`profesori`) REFERENCES `profesori` (`id`);

--
-- Constraints for table `studenti`
--
ALTER TABLE `studenti`
  ADD CONSTRAINT `studenti_fakulteti` FOREIGN KEY (`fakulteti`) REFERENCES `fakulteti` (`id`),
  ADD CONSTRAINT `studenti_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_type` FOREIGN KEY (`type`) REFERENCES `user_types` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
