-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 03:01 PM
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
-- Database: `nda_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id_department` int(11) NOT NULL,
  `nama_department` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id_department`, `nama_department`) VALUES
(2, 'Pengembangan');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id_employee` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `tgl_lahir` datetime(3) NOT NULL,
  `tempat_lahir` varchar(191) NOT NULL,
  `jenis_kelamin` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `no_hp` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `alamat` varchar(191) NOT NULL,
  `keterangan` varchar(191) NOT NULL,
  `departemenId` int(11) DEFAULT NULL,
  `jabatanId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id_employee`, `nama`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `email`, `no_hp`, `status`, `alamat`, `keterangan`, `departemenId`, `jabatanId`) VALUES
(5, 'Lumban Tobing Updated Coba', '2007-12-23 18:25:43.511', 'Pemalang', 'Laki-laki', 'alifzulfan@gmail.com', '087654868877', 'active', 'Pedurungan Asri, Pemalang', 'sering bolos nih...', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `historykerusakan`
--

CREATE TABLE `historykerusakan` (
  `id_kerusakan` int(11) NOT NULL,
  `problemscwsId` int(11) DEFAULT NULL,
  `mesinId` int(11) DEFAULT NULL,
  `lokasiId` int(11) DEFAULT NULL,
  `start_time` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `end_time` datetime(3) DEFAULT NULL,
  `picId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `historykerusakan`
--

INSERT INTO `historykerusakan` (`id_kerusakan`, `problemscwsId`, `mesinId`, `lokasiId`, `start_time`, `end_time`, `picId`) VALUES
(3, 3, 3, 3, '2023-05-23 20:58:38.000', '2023-05-18 11:53:59.000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(2, 'Ketua');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`) VALUES
(3, 'Kantor Pusat');

-- --------------------------------------------------------

--
-- Table structure for table `mesin`
--

CREATE TABLE `mesin` (
  `id_mesin` int(11) NOT NULL,
  `nama_mesin` varchar(191) NOT NULL,
  `tipe_mesin` varchar(191) NOT NULL,
  `deskripsi_mesin` varchar(191) NOT NULL,
  `status_mesins` int(11) DEFAULT NULL,
  `employeeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mesin`
--

INSERT INTO `mesin` (`id_mesin`, `nama_mesin`, `tipe_mesin`, `deskripsi_mesin`, `status_mesins`, `employeeId`) VALUES
(3, 'Mesin MPX5O', 'Mesin Tetap', 'Mesin tahun 2020', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `problemscw`
--

CREATE TABLE `problemscw` (
  `id_scw` int(11) NOT NULL,
  `jenis_scw` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `problemscw`
--

INSERT INTO `problemscw` (`id_scw`, `jenis_scw`) VALUES
(3, 'Kerusakan mesin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `tgl_buat` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `tgl_update` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `status`, `tgl_buat`, `tgl_update`) VALUES
(2, 'andori bekham updated', 'awwAndoriUpdated', '$2b$10$waYaZ0MWa1IBkEJcVrE/feJ7CFh09aGp2DvXQ/qpDHTn1AGT3TO2S', 1, '2023-05-24 12:34:56.688', '2023-05-24 12:34:57.132'),
(3, 'andori bekham updated', 'awwAndoriUpdated', '$2b$10$Bxc.g4u3AtrmsMTDkCn8/.eMdUEzuYAziQt8HW3vRZuYyUaG3l07O', 1, '2023-05-24 13:00:57.242', '2023-05-24 13:00:57.697');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('1eba9345-2924-4708-ab56-e2b5bbf080b8', 'd516d24cbd5070033f7ddf956ff7bda8ea7e46e2dd12a11f6266dba7b0389b85', '2023-05-24 12:23:36.868', '20230520181420_5', NULL, NULL, '2023-05-24 12:23:36.845', 1),
('2b5c195c-a854-46ac-b307-d430797ec262', 'b9780e6e7b52e998b13ab6eddaa77bd35fb339eeb5c54314554772031601e097', '2023-05-24 12:23:36.992', '20230520184233_7', NULL, NULL, '2023-05-24 12:23:36.946', 1),
('728b7d72-c991-429a-ab98-7ff0d1f8dbe1', 'd516d24cbd5070033f7ddf956ff7bda8ea7e46e2dd12a11f6266dba7b0389b85', '2023-05-24 12:23:51.476', '20230524122351_first', NULL, NULL, '2023-05-24 12:23:51.459', 1),
('75715b8a-85dd-4f8f-a701-2bdadf67bb63', '6d7590a61dd1a84bacc21aa0f759b82c3aaa468760c2a073e11017c40405e88a', '2023-05-24 12:23:36.841', '20230520175634_4', NULL, NULL, '2023-05-24 12:23:36.817', 1),
('9fd54d98-f500-4f2e-93f7-1ee1c26a5796', 'dfa7b47317d32ebdbc390d538e6e9b9b9cbcbef667f735551cdb5a89b15080d0', '2023-05-24 12:23:36.813', '20230520155521_3', NULL, NULL, '2023-05-24 12:23:36.693', 1),
('a798e3f2-6d09-4a34-a979-f9eaadcd7623', 'd0196dfe472e6d400c0a515e6227a45bb4468f27a297e127527d35cdfea16be6', '2023-05-24 12:23:37.257', '20230520230023_8', NULL, NULL, '2023-05-24 12:23:36.995', 1),
('bf4cd46a-3a49-402f-b41e-f62e2af3abe3', 'e7f141622a7772ce98a3e6e27c531f8a18c7ee57c666a705c176df136f0a20ff', '2023-05-24 12:23:37.642', '20230520234348_10', NULL, NULL, '2023-05-24 12:23:37.355', 1),
('d5ade4d8-895e-442b-817b-c0a84c89d43a', '82013197979926e922a15992e1d1f5af31e1932f7ca14812e90ddfdcbd957e88', '2023-05-24 12:23:36.688', '20230520152644_2', NULL, NULL, '2023-05-24 12:23:36.593', 1),
('e4b0ad98-7674-46f3-856a-370af95d0819', '8f114595a0e1bcd6b8848fb059b11e38e0627e91dfcd5d370a8ededb0a3e4b4e', '2023-05-24 12:23:36.941', '20230520183204_6', NULL, NULL, '2023-05-24 12:23:36.873', 1),
('e6b01080-e17b-4809-a87c-a49e38319844', '7f2fc7a601ea86c1b519f325c78d5d18aa015a54382b8252364698f65bfc27ef', '2023-05-24 12:23:36.590', '20230520035649_1', NULL, NULL, '2023-05-24 12:23:35.949', 1),
('ec0909f5-6779-4760-b817-a510e7a6d5da', 'c3354bf7e8f59ce7a25e555d1b6d272e17fb1bbc3894a6678d7a8119f8e0c26b', '2023-05-24 12:23:37.759', '20230521004802_11', NULL, NULL, '2023-05-24 12:23:37.647', 1),
('fb7ce2aa-bdb1-4c3d-a095-ab45f91d1ea8', 'd28326bf2827ba818026b0103d466d6cb228b605555ba73fd31792262f2c43c6', '2023-05-24 12:23:37.351', '20230520230956_9', NULL, NULL, '2023-05-24 12:23:37.262', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id_department`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `Employee_departemenId_fkey` (`departemenId`),
  ADD KEY `Employee_jabatanId_fkey` (`jabatanId`);

--
-- Indexes for table `historykerusakan`
--
ALTER TABLE `historykerusakan`
  ADD PRIMARY KEY (`id_kerusakan`),
  ADD KEY `HistoryKerusakan_problemscwsId_fkey` (`problemscwsId`),
  ADD KEY `HistoryKerusakan_mesinId_fkey` (`mesinId`),
  ADD KEY `HistoryKerusakan_lokasiId_fkey` (`lokasiId`),
  ADD KEY `HistoryKerusakan_picId_fkey` (`picId`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `mesin`
--
ALTER TABLE `mesin`
  ADD PRIMARY KEY (`id_mesin`),
  ADD KEY `Mesin_status_mesins_fkey` (`status_mesins`),
  ADD KEY `Mesin_employeeId_fkey` (`employeeId`);

--
-- Indexes for table `problemscw`
--
ALTER TABLE `problemscw`
  ADD PRIMARY KEY (`id_scw`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id_department` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `historykerusakan`
--
ALTER TABLE `historykerusakan`
  MODIFY `id_kerusakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mesin`
--
ALTER TABLE `mesin`
  MODIFY `id_mesin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `problemscw`
--
ALTER TABLE `problemscw`
  MODIFY `id_scw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `Employee_departemenId_fkey` FOREIGN KEY (`departemenId`) REFERENCES `departemen` (`id_department`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Employee_jabatanId_fkey` FOREIGN KEY (`jabatanId`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `historykerusakan`
--
ALTER TABLE `historykerusakan`
  ADD CONSTRAINT `HistoryKerusakan_lokasiId_fkey` FOREIGN KEY (`lokasiId`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `HistoryKerusakan_mesinId_fkey` FOREIGN KEY (`mesinId`) REFERENCES `mesin` (`id_mesin`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `HistoryKerusakan_picId_fkey` FOREIGN KEY (`picId`) REFERENCES `employee` (`id_employee`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `HistoryKerusakan_problemscwsId_fkey` FOREIGN KEY (`problemscwsId`) REFERENCES `problemscw` (`id_scw`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mesin`
--
ALTER TABLE `mesin`
  ADD CONSTRAINT `Mesin_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`id_employee`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Mesin_status_mesins_fkey` FOREIGN KEY (`status_mesins`) REFERENCES `problemscw` (`id_scw`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
