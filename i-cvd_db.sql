-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2021 at 03:55 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `i-cvd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Nomor` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Nomor`, `Nama`, `Username`, `Password`) VALUES
(1, 'Rangga', 'rangga', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `data_covid`
--

CREATE TABLE `data_covid` (
  `Nomor` int(11) NOT NULL,
  `Daerah` varchar(30) NOT NULL,
  `Meninggal` int(10) NOT NULL,
  `Sembuh` int(10) NOT NULL,
  `Kasus` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_covid`
--

INSERT INTO `data_covid` (`Nomor`, `Daerah`, `Meninggal`, `Sembuh`, `Kasus`) VALUES
(1, 'Jakarta', 5000, 7500, 12500),
(2, 'Bandung', 1500, 2000, 3500),
(3, 'Semarang', 2000, 3000, 5000),
(4, 'Yogyakarta', 1000, 1000, 2000),
(5, 'Surabaya', 1234, 6578, 8230),
(6, 'Bali', 2250, 3500, 5750);

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `Nomor` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Kota` varchar(30) NOT NULL,
  `Jenis Kelamin` char(1) NOT NULL,
  `Telepon` varchar(12) NOT NULL,
  `Keluhan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`Nomor`, `Nama`, `Alamat`, `Kota`, `Jenis Kelamin`, `Telepon`, `Keluhan`) VALUES
(1, 'Herwin', 'Jl. Mawar', 'Semarang', 'L', '081234506969', 'Demam, batuk'),
(2, 'Astin', 'Jl. Kenangan', 'Jakarta', 'P', '081234567890', 'Demam, pusing, batuk'),
(3, 'Aldi', 'Jl. Pahlawan', 'Surabaya', 'L', '082134567809', 'Demam, anosmia'),
(4, 'Ghozi', 'Jl. Segitiga', 'Bali', 'L', '082987654301', 'Anosmia, batuk'),
(5, 'Asep', 'Jl, Buah Batu', 'Bandung', 'L', '081987654321', 'Demam, mual'),
(6, 'Siti', 'Jl. Batu', 'Jakarta', 'P', '081234568678', 'Mual, pusing, demam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`Nomor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `Nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
