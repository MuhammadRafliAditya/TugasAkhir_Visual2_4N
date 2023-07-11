-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 11:33 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd99bjm`
--

-- --------------------------------------------------------

--
-- Table structure for table `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) NOT NULL,
  `ortu_id` int(10) NOT NULL,
  `status_hub_anak` char(25) NOT NULL,
  `keterangan` char(20) NOT NULL,
  `status_ortu` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hubungan`
--

INSERT INTO `hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub_anak`, `keterangan`, `status_ortu`) VALUES
(3, 3, 2, 'Kandung', 'Anak', 'Kandung');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) NOT NULL,
  `nama` char(60) NOT NULL,
  `jurusan` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `jurusan`) VALUES
(1, 'Teguh', 'TI'),
(2, 'Yoruka', 'SI');

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id` int(10) NOT NULL,
  `nik` char(20) NOT NULL,
  `nama` char(60) NOT NULL,
  `pendidikan` char(50) NOT NULL,
  `pekerjaan` char(50) NOT NULL,
  `telp` char(15) NOT NULL,
  `alamat` varchar(90) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `agama` char(20) NOT NULL,
  `status` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jk`, `agama`, `status`) VALUES
(2, '12345670', 'yosep', 's3', 'Dosen', '01236547890', 'kelayan', '', 'Islam', 'Aktif'),
(3, '12345600', 'Asep', 'S2', 'Dosen', '0221133665', 'bjm', 'L', 'Islam', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `id` int(10) NOT NULL,
  `nama_poin` char(60) NOT NULL,
  `bobot` char(20) NOT NULL,
  `jenis` char(20) NOT NULL,
  `status` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poin`
--

INSERT INTO `poin` (`id`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(3, 'Pelanggaran', 'Berat', 'Pencurian', 'Pencarian'),
(4, 'prestasi', 'umum', 'Sekolah', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `poin_id` int(10) NOT NULL,
  `walikelas_id` int(10) NOT NULL,
  `ortu_id` int(10) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `tanggal` char(25) NOT NULL,
  `semester` char(20) NOT NULL,
  `status` char(5) NOT NULL,
  `tinggat_kelas` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `siswa_id`, `poin_id`, `walikelas_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`, `tinggat_kelas`) VALUES
(10, 3, 4, 1, 2, 1, '17', '3', 'Aktif', '3');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) NOT NULL,
  `nis` char(20) NOT NULL,
  `nisn` char(20) NOT NULL,
  `nama` char(60) NOT NULL,
  `nik` char(20) NOT NULL,
  `tempat_lahir` char(50) NOT NULL,
  `tanggal_lahir` char(20) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamat` varchar(90) NOT NULL,
  `telp` char(15) NOT NULL,
  `hp` char(20) NOT NULL,
  `status` char(5) NOT NULL,
  `id_walikelas` int(10) NOT NULL,
  `id_ortu` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nisn`, `nama`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jk`, `alamat`, `telp`, `hp`, `status`, `id_walikelas`, `id_ortu`) VALUES
(3, '123456', '1234567', 'Teguh', '1234560', 'indo', '170703', '', 'Bjm', '085845529792', '085845529792', 'Aktif', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` int(10) NOT NULL,
  `password` int(10) NOT NULL,
  `level` char(20) NOT NULL,
  `status` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `status`) VALUES
(1, 2345, 5432, '1', 'aktif'),
(3, 1234, 4321, '2', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `id` int(10) NOT NULL,
  `nik` char(20) NOT NULL,
  `nama` char(60) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `pendidikan` char(50) NOT NULL,
  `telp` char(15) NOT NULL,
  `matpel` char(50) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `status` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`id`, `nik`, `nama`, `jk`, `pendidikan`, `telp`, `matpel`, `alamat`, `status`) VALUES
(1, '1234560', 'Jons', '', 'S1', '02131321213', 'Sejarah', 'Kelayan', 'Mahas'),
(2, '1234500', 'Rey', 'L', 'S1', '0111222333', 'Sejarah', 'Bjm', 'Aktif');

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
  ADD UNIQUE KEY `kelas_id` (`kelas_id`),
  ADD UNIQUE KEY `siswa_id` (`siswa_id`,`poin_id`,`walikelas_id`,`ortu_id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `poin_id` (`poin_id`),
  ADD KEY `walikelas_id` (`walikelas_id`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ortu`
--
ALTER TABLE `ortu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `walikelas`
--
ALTER TABLE `walikelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  ADD CONSTRAINT `semester_ibfk_2` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`),
  ADD CONSTRAINT `semester_ibfk_3` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `semester_ibfk_4` FOREIGN KEY (`poin_id`) REFERENCES `poin` (`id`),
  ADD CONSTRAINT `semester_ibfk_5` FOREIGN KEY (`walikelas_id`) REFERENCES `walikelas` (`id`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_ortu`) REFERENCES `ortu` (`id`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_walikelas`) REFERENCES `walikelas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
