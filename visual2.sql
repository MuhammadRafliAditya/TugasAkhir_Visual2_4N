-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 06:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visual2`
--

-- --------------------------------------------------------

--
-- Table structure for table `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `ortu_id` int(10) DEFAULT NULL,
  `status_hub_anak` char(25) DEFAULT NULL,
  `keterangan` char(60) DEFAULT NULL,
  `status_ortu` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) NOT NULL,
  `nama` char(60) DEFAULT NULL,
  `jurusan` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `jurusan`) VALUES
(1, 'Shika', 'TI');

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id` int(10) NOT NULL,
  `nik` char(20) DEFAULT NULL,
  `nama` char(60) DEFAULT NULL,
  `pendidikan` char(50) DEFAULT NULL,
  `pekerjaan` char(50) DEFAULT NULL,
  `telp` char(15) DEFAULT NULL,
  `alamat` varchar(90) DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `agama` char(20) DEFAULT NULL,
  `status` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jk`, `agama`, `status`) VALUES
(1, '211123', 'Shika', 'S2 Komputer', 'Dosen', '082132174123', 'A.yani', 'P', 'Islam', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `id` int(10) NOT NULL,
  `nama_poin` char(60) DEFAULT NULL,
  `bobot` char(20) DEFAULT NULL,
  `jenis` char(20) DEFAULT NULL,
  `status` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poin`
--

INSERT INTO `poin` (`id`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(1, 'Prestasi', 'Umum', 'Sekolah', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `poin_id` int(10) DEFAULT NULL,
  `walikelas_id` int(10) DEFAULT NULL,
  `ortu_id` int(10) DEFAULT NULL,
  `kelas_id` int(10) DEFAULT NULL,
  `tanggal` char(25) DEFAULT NULL,
  `semester` char(20) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  `tinggat_kelas` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `siswa_id`, `poin_id`, `walikelas_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`, `tinggat_kelas`) VALUES
(4, 1, 1, 1, 1, 1, '090120', '4', 'Aktif', '5');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) NOT NULL,
  `nis` char(20) DEFAULT NULL,
  `nisn` char(20) DEFAULT NULL,
  `nama` char(60) DEFAULT NULL,
  `nik` char(20) DEFAULT NULL,
  `tempat_lahir` char(50) DEFAULT NULL,
  `tanggal_lahir` char(20) DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `alamat` varchar(90) DEFAULT NULL,
  `telp` char(15) DEFAULT NULL,
  `hp` char(15) DEFAULT NULL,
  `status` char(5) DEFAULT NULL,
  `id_walikelas` int(10) DEFAULT NULL,
  `id_ortu` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nisn`, `nama`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jk`, `alamat`, `telp`, `hp`, `status`, `id_walikelas`, `id_ortu`) VALUES
(1, '823751', '123552', 'Muna', '23512', 'Ngawi', '150298', 'P', 'Ngawi', '0869696969', '086927734', 'Menik', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` int(10) DEFAULT NULL,
  `password` int(10) DEFAULT NULL,
  `level` char(20) DEFAULT NULL,
  `status` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `status`) VALUES
(1, 0, 0, '69', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `id` int(10) NOT NULL,
  `nik` char(20) DEFAULT NULL,
  `nama` char(60) DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `pendidikan` char(50) DEFAULT NULL,
  `telp` char(15) DEFAULT NULL,
  `matpel` char(50) DEFAULT NULL,
  `alamat` varchar(90) DEFAULT NULL,
  `status` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`id`, `nik`, `nama`, `jk`, `pendidikan`, `telp`, `matpel`, `alamat`, `status`) VALUES
(1, '2387214', 'Jared', 'L', 'S2 Hukum', '0829212341', 'Hukum Pancasila', 'Banjarmasin', 'Menik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_id` (`siswa_id`,`ortu_id`),
  ADD KEY `ortu_id` (`ortu_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_id` (`siswa_id`,`poin_id`,`walikelas_id`,`ortu_id`,`kelas_id`),
  ADD KEY `walikelas_id` (`walikelas_id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `poin_id` (`poin_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_walikelas` (`id_walikelas`,`id_ortu`),
  ADD KEY `id_ortu` (`id_ortu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ortu`
--
ALTER TABLE `ortu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `walikelas`
--
ALTER TABLE `walikelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD CONSTRAINT `hubungan_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `hubungan_ibfk_2` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`);

--
-- Constraints for table `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `semester_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `semester_ibfk_2` FOREIGN KEY (`walikelas_id`) REFERENCES `walikelas` (`id`),
  ADD CONSTRAINT `semester_ibfk_3` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`),
  ADD CONSTRAINT `semester_ibfk_4` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `semester_ibfk_5` FOREIGN KEY (`poin_id`) REFERENCES `poin` (`id`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_walikelas`) REFERENCES `walikelas` (`id`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_ortu`) REFERENCES `ortu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
