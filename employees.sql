-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2023 at 03:06 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `givemywish-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EMP_ID` bigint(20) UNSIGNED NOT NULL,
  `Nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prénom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Naissance` date NOT NULL,
  `EtatCivil` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EMP_ID`, `Nom`, `Prénom`, `Naissance`, `EtatCivil`, `Email`, `Phone`, `Image`) VALUES
(1, 'Martin', 'Lucie', '1990-07-07', 'mariage', 'lucie.martin@yahoo.com', '0782456789', 'https://www.linkedin.com/in/lucie-martin-3b087a168/'),
(2, 'Bertrand', 'Olivier', '1993-10-21', 'single', 'olivier.berthand@gmail.com', '0624357865', NULL),
(4, 'Dubois', 'Phillippes', '1975-10-07', 'mariage', 'phillippes.dubois@gmail.com', '0620986527', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Professeur_Philippe_Dubois.jpg/1024px-Professeur_Philippe_Dubois.jpg'),
(5, 'Robert', 'Susan', '1993-01-20', 'single', 'susan.robert@gmail.com', '0728355865', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD UNIQUE KEY `employees_email_unique` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EMP_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
