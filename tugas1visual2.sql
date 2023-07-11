-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 11, 2023 at 06:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas1visual2`
--

-- --------------------------------------------------------

--
-- Table structure for table `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) DEFAULT NULL,
  `ortu_id` int(8) DEFAULT NULL,
  `status_hub_anak` varchar(30) DEFAULT NULL,
  `keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hubungan`
--

INSERT INTO `hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub_anak`, `keterangan`) VALUES
(1, 1, 1, 'Kandung', 'ayah'),
(2, 1, 2, 'Kandung', 'ibu'),
(3, 2, 3, 'Tiri', 'ayah'),
(4, 2, 4, 'Kandung', 'ibu'),
(5, 3, 5, 'Kandung', 'ayah'),
(6, 3, 6, 'Kandung', 'ibu'),
(7, 4, 7, 'Kandung', 'ayah'),
(8, 4, 8, 'Tiri', 'ibu'),
(9, 5, 9, 'Tiri', 'ayah'),
(10, 5, 10, 'Tiri', 'ibu');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(8) NOT NULL,
  `nama_kelas` varchar(40) DEFAULT NULL,
  `jenis` varchar(40) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `jenis`, `jurusan`) VALUES
(1, '4', 'A', 'Teknik Informatika'),
(2, '4', 'B', 'Teknik Informatika'),
(3, '4', 'C', 'Teknik Informatika'),
(4, '4', 'F', 'Teknik Informatika'),
(5, '2', 'B', 'Hukum');

-- --------------------------------------------------------

--
-- Table structure for table `orang_tua`
--

CREATE TABLE `orang_tua` (
  `id` int(8) NOT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `nama_ortu` varchar(100) DEFAULT NULL,
  `pendidikan` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `jenis_kelamin` enum('P','L') DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `status` enum('hidup','almarhum') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orang_tua`
--

INSERT INTO `orang_tua` (`id`, `nik`, `nama_ortu`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jenis_kelamin`, `agama`, `status`) VALUES
(1, '6248910489174619', 'Siti', 'SMA', 'Wirausaha', '0812345678901', 'Banjarbaru', 'P', 'Islam', 'hidup'),
(2, '6248910489178971', 'Andi', 'S2', 'Dosen', '0812345678902', 'Banjarmasin', 'L', 'Islam', 'hidup'),
(3, '6248910489178972', 'Fahry', 'S1', 'Pegawai Swasta', '0812345678903', 'Banjarmasin', 'P', 'Islam', 'hidup'),
(4, '6248910489178973', 'Melati', 'S1', 'Guru', '0812345678904', 'Banjarbaru', 'P', 'Islam', 'hidup'),
(5, '6248910489178979', 'Herman', 'SMA', 'Wiraswasta', '0812345678905', 'Banjarbaru', 'L', 'Islam', 'hidup'),
(6, '6248910489174674', 'Dayah', 'SMA', 'Wiraswasta', '0812345678906', 'Banjarbaru', 'P', 'Islam', 'hidup'),
(7, '6248910489174675', 'Tomi', 'S1', 'PNS', '0812345678907', 'Banjarmasin', 'L', 'Islam', 'hidup'),
(8, '6248910489174678', 'Wati', 'S1', 'PNS Guru', '0812345678908', 'Banjarmasin', 'P', 'Islam', 'hidup'),
(9, '6248910489174679', 'Ato', 'SMA', 'Wirausaha', '0812345678909', 'Banjarbaru', 'L', 'Islam', 'hidup'),
(10, '6248910489174680', 'Ati', 'SMA', 'Wirausaha', '0812345678910', 'Banjarbaru', 'P', 'Islam', 'almarhum');

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `id` int(8) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bobot` int(5) DEFAULT NULL,
  `jenis` enum('prestasi','pelanggaran') DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poin`
--

INSERT INTO `poin` (`id`, `nama`, `bobot`, `jenis`, `status`) VALUES
(1, 'keluar kelas tanpa izin', 5, 'pelanggaran', 'aktif'),
(2, 'mengacau sekolah/kelas', 10, 'pelanggaran', 'aktif'),
(3, 'Juara Umum', 30, 'prestasi', 'aktif'),
(4, 'Juara Kelas Peringkat I', 20, 'prestasi', 'aktif'),
(5, 'Juara Kelas Peringkat III', 10, 'prestasi', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_poin`
--

CREATE TABLE `riwayat_poin` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) DEFAULT NULL,
  `poin_id` int(8) DEFAULT NULL,
  `wali_id` int(8) DEFAULT NULL,
  `ortu_id` int(8) DEFAULT NULL,
  `kelas_id` int(8) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` varchar(8) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_poin`
--

INSERT INTO `riwayat_poin` (`id`, `siswa_id`, `poin_id`, `wali_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`) VALUES
(1, 1, 1, 1, 1, 1, '2022-09-12', 'Ganjil', 'aktif'),
(2, 2, 2, 2, 3, 2, '2022-09-11', 'Ganjil', 'aktif'),
(3, 3, 3, 3, 5, 3, '2022-09-10', 'Ganjil', 'aktif'),
(4, 4, 4, 4, 7, 4, '2023-01-10', 'Genap', 'aktif'),
(5, 5, 5, 5, 9, 5, '2023-01-11', 'Genap', 'tidak aktif');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(8) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `nama_siswa` varchar(50) DEFAULT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `tingkat_kelas` varchar(15) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `wali_kelas` varchar(100) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, '66612', '1122334455', 'Syifa', '1234567891011121', 'Martapura', '2004-01-22', 'P', 'XI', 'Bahasa', 'Aida', 'Banjarbaru', '0812345678', '082134567891', 'aktif'),
(2, '6662', '2122334455', 'Rasid', '1234567891011122', 'Barabai', '2004-01-01', 'L', 'XII', 'IPA', 'Yusuf', 'Banjarmasin', '0822345678', '082134567892', 'aktif'),
(3, '6663', '3122334455', 'Raihan', '1234567891011123', 'Balangan', '2004-11-03', 'L', 'X', 'IPS', 'Laila', 'Banjarmasin', '0821345678', '082134567893', 'aktif'),
(4, '6664', '4122334455', 'Santi', '1234567891011124', 'Banjarbaru', '2004-12-03', 'P', 'XII', 'Bahasa', 'Dwi', 'Banjarbaru', '0822445678', '082134567894', 'aktif'),
(5, '6665', '5122334455', 'Fikri', '1234567891011125', 'Banjarmasin', '2003-12-05', 'P', '4', 'Teknik Informatika', 'Firman', 'Banjarmasin', '0812445670', '082134567895', 'tidak aktif'),
(6, '65434', '34566765676', 'Rizky', '12323453545', 'PasarLama', '2023-07-03', 'L', '4', 'Teknik Informatika', 'Aida', 'Banjarbaru', '08343434332', '095656453434', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(8) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` enum('admin','user') DEFAULT NULL,
  `status` enum('TRUE','FALSE') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `password`, `level`, `status`) VALUES
(1, 'Rizky', '1', 'admin', 'TRUE'),
(2, 'Adi', 'abcd1236', 'user', 'FALSE'),
(3, 'Ali', 'abcd1237', 'user', 'TRUE'),
(4, 'Ami', 'abcd1250', 'user', 'FALSE'),
(5, 'Ari', 'abcd1234', 'user', 'TRUE'),
(6, 'rizky', '1', 'admin', 'TRUE'),
(7, 'kalvin', '123456', 'admin', 'TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` int(8) NOT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `nama_wali` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `pendidikan` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `mata_pelajaran` varchar(50) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `nik`, `nama_wali`, `jenis_kelamin`, `pendidikan`, `telp`, `alamat`, `mata_pelajaran`, `status`) VALUES
(1, '7280912895108411', 'Aida', 'P', 'S1', '081209234721', 'Banjarbaru', 'Sejarah', 'aktif'),
(2, '7280912895108412', 'Yusuf', 'L', 'S1', '081209234722', 'Banjarmasin', 'Matematika Wajib', 'aktif'),
(3, '7280912895108413', 'Laila', 'P', 'S2', '081209234723', 'Martapura', 'Seni Budaya', 'aktif'),
(4, '7280912895108414', 'Firman', 'L', 'S2', '081209234724', 'Banjarmasin', 'Kimia', 'aktif'),
(5, '7280912895108415', 'Dwi', 'P', 'S1', '081209234725', 'Banjarmasin', 'Bahasa Indonesia', 'tidak aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hubungan_ibfk_3` (`ortu_id`),
  ADD KEY `hubungan_ibfk_4` (`siswa_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_poin_ibfk_1` (`kelas_id`),
  ADD KEY `riwayat_poin_ibfk_3` (`poin_id`),
  ADD KEY `riwayat_poin_ibfk_6` (`ortu_id`),
  ADD KEY `riwayat_poin_ibfk_7` (`siswa_id`),
  ADD KEY `riwayat_poin_ibfk_8` (`wali_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7006;

--
-- AUTO_INCREMENT for table `orang_tua`
--
ALTER TABLE `orang_tua`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5006;

--
-- AUTO_INCREMENT for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3006;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD CONSTRAINT `hubungan_ibfk_3` FOREIGN KEY (`ortu_id`) REFERENCES `orang_tua` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hubungan_ibfk_4` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD CONSTRAINT `riwayat_poin_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_3` FOREIGN KEY (`poin_id`) REFERENCES `poin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_6` FOREIGN KEY (`ortu_id`) REFERENCES `orang_tua` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_7` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_8` FOREIGN KEY (`wali_id`) REFERENCES `wali_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
