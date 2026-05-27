-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2026 at 02:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_admin` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username_admin` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_admin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `akses_level` enum('1','2','3') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_delete_admin` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username_admin`, `password_admin`, `akses_level`, `is_delete_admin`, `created_at`, `update_at`) VALUES
('', 'developer', 'developer', '$2y$10$BtHHWFXmLuhnP79ievN58O8EivCDmojcmNDivaVhmIlBQNSiqr9Ku', '1', '0', '2026-05-05 04:38:01', '2026-05-05 04:38:01'),
('000001', 'Administrator', 'admin', '$2y$10$FFUBbTOoIwWGQxS/YSmxoul7tSdxTr0Ga4lM2xlXtkn3FNrdBXAW6', '1', '0', '2026-05-05 03:08:03', '2026-05-05 03:08:03'),
('ADM002', 'kipli', 'kipli', '$2y$10$Ik1TVu.yb8sbJxeK51ljQ..lVfuYH6zEpgEUfS1It3Utxl0pyAISK', '1', '0', '2026-05-26 12:09:31', '2026-05-26 12:09:31'),
('ADM003', 'auosjdhja', 'ajshdjka', '$2y$10$ywgO1xDPcfbLtGltlYoLc.pNYA3/JCHFsX1RcU4x.lfcUPlfRhUcK', '2', '1', '2026-05-26 12:14:28', '2026-05-26 12:19:02'),
('ADM004', 'asjdeuiha', 'uoasdhuiashd', '$2y$10$7TLf9ysCbFifDI6Vjpbms.7zyKB9glY6EHDcw5OHy7IUTMahkBRKG', '3', '0', '2026-05-26 12:14:37', '2026-05-26 12:14:37'),
('ADM005', 'iaushd', 'uashda', '$2y$10$5D62GG0E3P5Pp86r6R2SXeBOVsUd8nkrtobXiM7rh7nMcbKuVVTCa', '2', '0', '2026-05-26 12:18:36', '2026-05-26 12:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `id_anggota` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_anggota` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_anggota` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_delete_anggota` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id_anggota`, `nama_anggota`, `jenis_kelamin`, `no_telp`, `alamat`, `email`, `password_anggota`, `is_delete_anggota`, `created_at`, `updated_at`) VALUES
('AGT001', 'nando', 'L', '089962516234', 'iuawhdiaugysduagsd', 'nando@gmail.com', '$2y$10$xkDtmFYfrwNt.n3Tgx0UDOr0ZC39eCHR73GG5q.T.7.99pEitwLom', '0', '2026-05-26 01:28:41', '2026-05-26 01:33:08'),
('AGT002', 'kipli', 'L', '0892672451276', 'depok', 'uiasjdh@gmail.com', '$2y$10$tS66.c8ZqpsmJb0o9OucUOmzVc7XsJeBFCX7vzgFID0Zf6/q4uPQG', '1', '2026-05-26 12:18:03', '2026-05-26 12:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_buku` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengarang` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penerbit` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah_eksemplar` int(3) NOT NULL,
  `id_kategori` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_rak` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cover_buku` varchar(30) NOT NULL,
  `e_book` varchar(30) NOT NULL,
  `is_delete_buku` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `judul_buku`, `pengarang`, `penerbit`, `tahun`, `jumlah_eksemplar`, `id_kategori`, `keterangan`, `id_rak`, `cover_buku`, `e_book`, `is_delete_buku`, `created_at`, `deleted_at`) VALUES
('BKU001', 'Shingeki No Kyojin Vol.21', 'Masashi Kishimoto', 'Shuiesha', '2023', 12, 'KTG001', 'PEAK ', 'RAK001', 'Cover-Buku-260526014849.jpeg', 'E-Book-260526014849.jpeg', '0', '2026-05-26 01:48:49', '2026-05-26 12:35:03'),
('BKU002', 'Naruto', 'Masashi Kishimoto', 'Shuiesha', '2021', 12, 'KTG001', 'ASELI PEAK', 'RAK001', 'Cover-Buku-260526021756.jpeg', 'E-Book-260526021756.pdf', '1', '2026-05-26 02:17:56', '2026-05-26 12:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_peminjaman`
--

CREATE TABLE `tbl_detail_peminjaman` (
  `no_peminjaman` varchar(12) NOT NULL,
  `id_buku` varchar(6) NOT NULL,
  `status_pinjam` enum('Sedang Dipinjam','Sudah Dikembalikan') NOT NULL,
  `perpanjangan` int(1) NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` varchar(6) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `id_delete_kategori` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `id_delete_kategori`, `created_at`, `updated_at`) VALUES
('KTG001', 'Peak', '0', '2026-05-26 01:39:00', '2026-05-26 01:39:00'),
('KTG002', 'Sepuh', '1', '2026-05-26 12:19:18', '2026-05-26 12:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peminjaman`
--

CREATE TABLE `tbl_peminjaman` (
  `no_peminjaman` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_anggota` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `total_pinjam` int(3) NOT NULL,
  `id_admin` varchar(6) NOT NULL,
  `status_transaksi` enum('Selesai','Berjalan') NOT NULL,
  `status_ambil_buku` enum('Belum Diambil','Sudah Diambil') NOT NULL,
  `qr_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengembalian`
--

CREATE TABLE `tbl_pengembalian` (
  `no_pengembalian` varchar(12) NOT NULL,
  `no_peminjaman` varchar(12) NOT NULL,
  `id_buku` varchar(6) NOT NULL,
  `denda` double NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `id_admin` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_rak` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_delete_rak` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`, `is_delete_rak`, `created_at`, `updated_at`) VALUES
('RAK001', 'Tier S', '0', '2026-05-26 01:39:16', '2026-05-26 01:39:16'),
('RAK002', 'Tier B', '1', '2026-05-26 12:20:32', '2026-05-26 12:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_peminjaman`
--

CREATE TABLE `tbl_temp_peminjaman` (
  `id_anggota` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_buku` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah_temp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_rak` (`id_rak`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  ADD PRIMARY KEY (`no_peminjaman`);

--
-- Indexes for table `tbl_pengembalian`
--
ALTER TABLE `tbl_pengembalian`
  ADD PRIMARY KEY (`no_pengembalian`);

--
-- Indexes for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
