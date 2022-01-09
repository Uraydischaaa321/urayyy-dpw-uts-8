-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 03:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts-urayyy`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `id_user`, `title`, `write`, `description`, `created_at`, `updated_at`) VALUES
(28, 10, 'Punya Warna Indah, Begini Cara Menanam Bunga Clarkia', 'Uray Discha', 'Clarkia flower menjadi salah satu bunga liar yang tumbuh subur di dekat pantai. Mengingat bunga yang satu ini termasuk tanaman liar, maka jangan heran jika bunga Clarkia bisa bertahan di segala musim, seperti panas, dingin, dan iklim ringan.', '2021-12-26 19:34:57', '2021-12-28 07:43:07'),
(29, 10, 'Bunga Cyclamen, Bunga Indah dengan Warna Pink Menggoda', 'Uray Discha', 'Bunga Cyclamen adalah salah satu jenis bunga yang memiliki warna sangat cantik. Bentuknya yang unik layaknya sayap kupu kupu ini ternyata juga memiliki makna yang indah dibalik bentuk yang apik tersebut. \r\n\r\nJika kamu ingin mengetahui apa makna dari bunga cyclamen dan cara merawatnya, cari tahu dalam ulasan berikut ini.', '2021-12-28 06:18:01', '2021-12-28 06:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `coment`
--

CREATE TABLE `coment` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coment`
--

INSERT INTO `coment` (`id`, `isi`, `nama`, `created_at`, `updated_at`) VALUES
(22, 'request bunga edelweis donggg', 'rehan', '2021-12-26 19:39:53', '2021-12-26 19:39:53'),
(24, 'bunga mawar dong kakkkkk', 'putrii', '2021-12-28 06:19:36', '2021-12-28 06:19:36'),
(25, 'apa aja dehhh', 'dini', '2021-12-28 07:31:59', '2021-12-28 07:31:59'),
(26, 'bagus jugaa blog nya', 'tiara', '2021-12-28 07:43:43', '2021-12-28 07:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'uraydischa', 'discha@gmail.com', 'uray discha', '$2y$10$2kmysypCQyIbLwhy6FUZKeiMWsWj/PqyKmk/z8WU.mp9ZdIOr8ucq', NULL, '2021-12-25 20:59:55', '2021-12-25 20:59:55'),
(11, 'urayyy', 'uray@gmail.com', 'urayyy', '$2y$10$iHAc7peDohkNSRtQjldOrexXJKTALXIZBimx.WqabbjK0R9T0dPf.', NULL, '2021-12-26 19:56:37', '2021-12-26 19:56:37'),
(14, 'uraydischadewntie_', 'uraybolot@gmail.com', 'urayyyybolot', '$2y$10$P8xNputS9y3z7gph.YOqB.pKim5Wo3GoAnoPOtMCW8NPo9qF1UZTO', NULL, '2021-12-28 07:56:22', '2021-12-28 07:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(6, 8, '081290034449', '2021-12-11 22:09:30', '2021-12-11 22:09:30'),
(7, 9, '081290033449', '2021-12-24 10:07:29', '2021-12-24 10:07:29'),
(8, 10, '081290034449', '2021-12-25 20:59:55', '2021-12-25 20:59:55'),
(9, 11, '087738049909', '2021-12-26 19:56:37', '2021-12-26 19:56:37'),
(10, 12, '081270170599', '2021-12-28 06:58:22', '2021-12-28 06:58:22'),
(11, 13, '081270170599', '2021-12-28 07:14:26', '2021-12-28 07:14:26'),
(12, 14, '081270170599', '2021-12-28 07:56:22', '2021-12-28 07:56:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `coment`
--
ALTER TABLE `coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
