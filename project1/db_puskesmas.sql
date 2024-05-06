-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 03:46 AM
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
-- Database: `db_puskesmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` char(1) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kategori` enum('Umum','Spesialis','bidan','bedah','dokter gigi','anastesi','ginekologi') DEFAULT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `unit_kerja_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `gender`, `tmp_lahir`, `tgl_lahir`, `kategori`, `telepon`, `alamat`, `unit_kerja_id`) VALUES
(2, 'Dr. Johnann', 'L', 'Bogor', '1980-12-09', 'Spesialis', '085786537766', 'Jl.kartini', 6),
(3, 'Dr. Rifandra', 'L', 'Bogor', '1999-08-01', 'bidan', '0838976867', 'jl. sukabakti', 1),
(4, 'dr. Fira ayu', 'P', 'Bogor', '1988-09-08', 'bidan', '08578976565', 'Kp. babakan', 2),
(5, 'Dr. Mitha', 'P', 'Bandung', '1980-12-09', 'bidan', '0876548435', 'Kp. Jadianya kapan', 2),
(6, 'Dr. Alam', 'L', 'Bogor', '1990-12-09', 'dokter gigi', '08765467654', 'Kp. Beringin', 3),
(7, 'Dr. reta', 'P', 'Bogor', '1990-12-09', 'dokter gigi', '0876546', 'Kp. Beringin', 3),
(8, 'Dr. Dudi', 'L', 'Bogor', '1990-12-09', 'Umum', '0876546', 'Kp. Beringin', 1),
(9, 'Dr. Rifai', 'L', 'Bogor', '1980-12-09', 'bidan', '0838998766', 'Jl. Pusinh parah', 2),
(10, 'Dr. Firda', 'P', 'Jakarta', '1977-12-09', 'bidan', '083827658', 'Jl. Iya', 3),
(11, 'Dr. Linda', 'P', 'Jakarta', '1977-12-09', 'anastesi', '083827658', 'Jl. Iya', 8),
(12, 'dr. marsela', 'P', 'Jakarta', '1980-12-01', 'bidan', '087687265', 'Nambo', 6),
(13, 'dr. mega', 'P', 'Jakarta', '1980-12-01', 'ginekologi', '087687265', 'Nambo', 3),
(14, 'dr. Putra', 'L', 'bandung', '1998-11-03', 'dokter gigi', '09876678366', 'Cilebut', 9),
(16, 'dr. Sabrina', 'P', 'Bogor', '1990-02-02', 'Spesialis', '09876678366', 'Cilebut', 16),
(17, 'dr. Shafik', 'L', 'Bogor', '1990-12-03', 'Umum', '09876678366', 'Kelapa 07', 1),
(18, 'dr. euis', 'P', 'Bogor', '1990-02-02', 'Spesialis', '09876678366', 'Jl. Ciomas', 16),
(19, 'dr. Vina', 'P', 'Bogor', '1990-02-02', 'Spesialis', '09876678366', 'Jl.  Kreteg', 16),
(21, 'Dr. Ayu', 'P', 'Bogor', '1981-12-11', 'bedah', '08578378273', 'Jl. Ilah', 11),
(22, 'Dr. Irma', 'P', 'Bogor', '1982-09-08', 'bidan', '0857897653', 'Jl. Spontan', 3),
(23, 'Dr. Anisa', 'P', 'Bogor', '1981-12-06', 'bedah', '0838976546', 'Jl. Alamak', 16),
(24, 'Dr. Azrul', 'L', 'Lampung', '1870-02-09', 'Spesialis', '08347876777', 'Jl. Bojongsoang', 11),
(25, 'Dr. Kelvin', 'L', 'Bogor', '1970-03-02', 'anastesi', '0876543345', 'Jl. hahaha', 14),
(29, 'Dr. Idris', 'L', 'Bekasi', '1980-09-12', 'bedah', '086547976', 'Kp. Sholehah', 9),
(35, 'hfkjhed', 'L', 'dvds', '2222-02-22', 'Umum', '876567', 'f3', 8);

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kecamatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id`, `nama`, `kecamatan`) VALUES
(1, 'Bogor', 'dramaga'),
(2, 'jakarta selatan', 'tebet'),
(3, 'jakarta timur', 'cengkareng'),
(4, 'jakarta pusat', 'gambir'),
(5, 'jakarta barat', 'Karang Anyar');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kelurahan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `kode`, `nama`, `tmp_lahir`, `tgl_lahir`, `gender`, `email`, `alamat`, `kelurahan_id`) VALUES
(6, '5654', 'Ananda Fasya ', 'Bekasii', '2003-12-03', 'P', 'firaayu@gmail.com', 'Jl. jalanin dulu aja', 4),
(9, '566', 'Kiran', 'Bogor', '2007-12-09', 'P', 'kiran@gmail.com', 'Jl. Gamon', 4),
(10, '9987', 'Rida', 'Bekasi', '2013-02-08', 'P', 'rida@gamil.com', 'pritiwi', 2),
(11, '12334', 'Fitri', 'bekasi', '2015-12-09', 'P', 'fitri@gmail.com', 'Jl. Heyhey', 4),
(12, '3234', 'Amat', 'Bogor', '2003-12-09', 'L', 'amat@gmail.com', 'Jl. Dramaga', 2),
(20, '3333', 'indri', 'Bogor', '2003-11-03', 'P', '1234@gmail.com', 'Jl. Menuju surga', 1),
(21, '53456', 'Dimas', 'Jakarta', '2004-12-09', 'L', 'dimasoioi@gmail.com', 'jl. hts mulu', 1),
(22, '757755', 'firman', 'Bekasi', '2002-12-01', 'L', 'fiffff@gmail.com', 'merdeka', 2),
(23, '75637', 'Putri', 'Jakarta', '2001-12-08', 'P', 'puput@gmail.com', 'Jl. indigo', 1),
(24, '0123', 'Nurul', 'Semarang', '2003-01-02', 'P', 'nurul@gmial.com', 'jl. apaja', 3),
(27, '12346', 'Susi', 'Bogor', '2004-12-09', 'P', 'oishgvdhg@gmail.com', 'Jl. Berkah', 3),
(30, '6554', 'adam', 'Jakarta', '2012-12-12', 'L', 'adam@gmail.com', 'Jl. OiOi', 3),
(32, '667543', 'Zahra', 'Bogor', '2010-12-03', 'P', 'zahra@gmail.com', 'Jl. Prikiw', 1),
(40, '5565', 'abb', 'qd', '4532-12-31', 'L', 'amat@gmail.com', 'hgh', 5);

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `berat` double NOT NULL,
  `tinggi` double NOT NULL,
  `tensi` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `dokter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`id`, `tanggal`, `berat`, `tinggi`, `tensi`, `keterangan`, `pasien_id`, `dokter_id`) VALUES
(3, '2024-04-03', 71, 180, '110/80', 'Normal', 9, 2),
(4, '2024-04-04', 55.8, 165, '125/80', 'Normal', 10, 2),
(6, '2024-12-04', 47, 150, '186/100', 'Hipertensi', 11, 3),
(7, '2010-09-07', 55, 165, '80/60', 'Rendah', 20, 2),
(9, '2024-12-04', 55, 160, '186/100', 'hipertensi', 30, 2),
(10, '2024-12-04', 59, 160, '80/90', 'Gigi bengkak', 24, 14),
(14, '2024-12-04', 55, 145, '100/80', 'cek kehamilan', 30, 22),
(16, '2024-01-04', 65, 170, '80/90', 'Demam', 32, 5);

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `nama`) VALUES
(1, 'unit gawat darurat'),
(2, 'poli umum'),
(3, 'poli kandungan'),
(4, 'Unit Gawat Darurat'),
(5, 'Unit Rawat Inap'),
(6, 'Unit Bedah'),
(7, 'Unit Radiologi'),
(8, 'Unit Laboratorium'),
(9, 'Unit Farmasi'),
(10, 'Unit Kesehatan Masyarakat'),
(11, 'Unit Keperawatan'),
(12, 'Unit Administrasi'),
(13, 'Unit Poliklinik'),
(14, 'Unit ICU (Unit Perawatan Intensif)'),
(15, 'Unit Bedah Jantung dan Pembuluh Darah'),
(16, 'Unit Penyakit Dalam'),
(18, 'Unit Pediatri'),
(19, 'Unit Orthopedi'),
(20, 'Unit Mata'),
(21, 'Unit THT (Telinga, Hidung, Tenggorokan)'),
(22, 'Unit Psikiatri'),
(23, 'Unit Rehabilitasi Medis');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`) VALUES
(1, 'admin123', 'password123', 'Admin'),
(2, 'rifafradita', 'password123', 'Rifa Fradita'),
(3, 'Rifa', '1234', 'Rifa12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_unit_kerja_id` (`unit_kerja_id`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kelurahan_id` (`kelurahan_id`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dokter_id` (`dokter_id`),
  ADD KEY `fk_pasien_id` (`pasien_id`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `fk_unit_kerja_id` FOREIGN KEY (`unit_kerja_id`) REFERENCES `unit_kerja` (`id`);

--
-- Constraints for table `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `fk_kelurahan_id` FOREIGN KEY (`kelurahan_id`) REFERENCES `kelurahan` (`id`);

--
-- Constraints for table `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `fk_dokter_id` FOREIGN KEY (`dokter_id`) REFERENCES `dokter` (`id`),
  ADD CONSTRAINT `fk_pasien_id` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
