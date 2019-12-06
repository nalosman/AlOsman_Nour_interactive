-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2019 at 12:42 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cancerstats`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancerinfo`
--

CREATE TABLE `cancerinfo` (
  `ID` int(11) NOT NULL,
  `type` text NOT NULL,
  `description` text NOT NULL,
  `incidencemen` int(11) NOT NULL,
  `incidencewomen` int(11) NOT NULL,
  `deathmen` int(11) NOT NULL,
  `deathwomen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cancerinfo`
--

INSERT INTO `cancerinfo` (`ID`, `type`, `description`, `incidencemen`, `incidencewomen`, `deathmen`, `deathwomen`) VALUES
(1, 'Lung', 'Lung cancer is the most commonly diagnosed cancer in Canada (excluding non-melanoma skin cancers). It is the leading cause of death from cancer for both men and women in Canada.', 14900, 14500, 10900, 14100),
(2, 'Breast', 'Breast cancer is the most common cancer among Canadian women (excluding non-melanoma skin cancers). It is the second leading cause of death from cancer in Canadian women. Breast cancer can also occur in men, but it is not common.\r\n\r\n', 230, 26900, 55, 5000),
(3, 'Colorectal', 'Colorectal cancer is expected to be the third most commonly diagnosed cancer in Canada in 2019 (excluding non-melanoma skin cancers). It is the second leading cause of death from cancer in men and the third leading cause of death from cancer in women in Canada.', 14600, 11700, 5200, 4400),
(4, 'Prostate', 'Prostate cancer is the most common cancer among Canadian men (excluding non-melanoma skin cancers). It is the third leading cause of death from cancer in men in Canada.', 22900, 0, 4100, 0),
(5, 'Bladder', 'Cells in the bladder sometimes change and no longer grow or behave normally. These changes may lead to non-cancerous (benign) tumours such as papillomas. They can also lead to non-cancerous conditions such as urinary tract infections (UTIs).', 9100, 2700, 1800, 700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cancerinfo`
--
ALTER TABLE `cancerinfo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cancerinfo`
--
ALTER TABLE `cancerinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
