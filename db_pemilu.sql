-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2025 at 04:35 PM
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
-- Database: `db_pemilu`
--

-- --------------------------------------------------------

--
-- Table structure for table `paslon`
--

CREATE TABLE `paslon` (
  `id` int(11) NOT NULL,
  `nama_ketua` varchar(50) DEFAULT NULL,
  `nama_wakil` varchar(50) DEFAULT NULL,
  `visi` text DEFAULT NULL,
  `misi` text DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paslon`
--

INSERT INTO `paslon` (`id`, `nama_ketua`, `nama_wakil`, `visi`, `misi`, `foto`) VALUES
(3, 'Anies Baswedan', 'Muhaimin Iskandar', '“Indonesia Adil Makmur untuk Semua.”\r\nVisi ini menekankan cita-cita kemakmuran dan keadilan sosial yang merata bagi seluruh warga Indonesia, termasuk pemerataan akses terhadap layanan publik seperti kesehatan, pendidikan, perumahan, pangan, transportasi, energi, dan informasi.', '1. Memastikan ketersediaan kebutuhan pokok dan biaya hidup terjangkau melalui kemandirian pangan, ketahanan energi, dan kedaulatan air.\r\n2. Mengentaskan kemiskinan dengan memperluas kesempatan berusaha, menciptakan lapangan kerja, mewujudkan upah berkeadilan, dan pemerataan ekonomi berbasis kemandirian.\r\n3. Mewujudkan keadilan ekologis berkelanjutan untuk generasi mendatang.\r\n4. Membangun kota dan desa yang manusiawi dan berkeadilan.\r\n5. Mewujudkan manusia Indonesia yang sehat, cerdas, produktif, berakhlak, dan berbudaya.\r\n6. Mewujudkan keluarga Indonesia yang sejahtera dan bahagia sebagai fondasi kekuatan bangsa.\r\n7. Memperkuat sistem pertahanan dan keamanan negara serta peran Indonesia di kancah global.\r\n8. Memulihkan kualitas demokrasi, menegakkan hukum dan HAM, serta memberantas korupsi.', '694d4ee317c6f.jpg'),
(4, 'Prabowo Subianto', 'Gibran Rakabuming R', '“Bersama Indonesia Maju, Menuju Indonesia Emas 2045.”\r\nVisi ini menekankan persatuan bangsa untuk membawa Indonesia menjadi negara maju dan sejahtera dalam jangka panjang, menjelang ulang tahun ke-100 kemerdekaan RI di tahun 2045..', '1. Memperkokoh ideologi Pancasila, demokrasi, dan hak asasi manusia (HAM).\r\n2. Memantapkan sistem pertahanan keamanan negara dan mendorong kemandirian bangsa melalui swasembada pangan, energi, air serta pengembangan ekonomi kreatif, ekonomi hijau, dan ekonomi biru.\r\n3. Meningkatkan lapangan kerja berkualitas, mendorong kewirausahaan, mengembangkan industri kreatif, serta melanjutkan pembangunan infrastruktur.\r\n4. Memperkuat pembangunan sumber daya manusia (SDM) meliputi sains, teknologi, pendidikan, kesehatan, prestasi olahraga, serta kesetaraan gender dan pemberdayaan perempuan, pemuda, dan penyandang disabilitas.\r\n5. Melanjutkan hilirisasi dan industrialisasi untuk meningkatkan nilai tambah produk dalam negeri.\r\n6. Mendorong pembangunan dari desa dan dari bawah untuk pemerataan ekonomi dan pemberantasan kemiskinan.\r\n7. Memperkuat reformasi politik, hukum, dan birokrasi, serta pencegahan dan pemberantasan korupsi dan narkoba.\r\n8. Memperkuat hubungan yang harmonis dengan lingkungan, budaya, dan toleransi antarumat beragama demi masyarakat yang adil dan makmur.', '694d4e4023205.jpg'),
(5, 'Ganjar Pranowo', 'Mahfud MD', '“Menuju Indonesia Unggul: Gerak Cepat Mewujudkan Negara Maritim yang Adil dan Lestari.”\r\nVisi ini menekankan arah pembangunan nasional yang ingin menjadikan Indonesia lebih maju, kuat, kompetitif, dan unggul secara ekonomi, sosial, dan teknologi, sekaligus mengoptimalkan posisi Indonesia sebagai negara maritim yang berkeadilan dan berkelanjutan.', '1. Mempercepat pembangunan manusia Indonesia unggul yang berkualitas, produktif, dan berkepribadian.\r\n2. Mempercepat penguasaan sains dan teknologi melalui percepatan riset dan inovasi yang berdikari (mandiri).\r\n3. Mempercepat pembangunan ekonomi berdikari yang berbasis pengetahuan dan nilai tambah.\r\n4. Mempercepat pemerataan pembangunan ekonomi di seluruh wilayah Indonesia.\r\n5. Mempercepat pembangunan sistem digital nasional untuk modernisasi layanan publik dan pemerintahan.\r\n6. Mempercepat perwujudan lingkungan hidup yang berkelanjutan melalui pengembangan ekonomi hijau dan biru.\r\n7. Mempercepat pelaksanaan demokrasi substantif, penghormatan HAM, supremasi hukum yang berkeadilan, dan keamanan profesional.\r\n8. Mempercepat peningkatan peran Indonesia di kancah global melalui politik luar negeri bebas aktif dan penguatan pertahanan negara.', '694d4f633f950.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `inisial_nama` varchar(10) DEFAULT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT NULL,
  `sudah_vote` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `inisial_nama`, `nim`, `kelas`, `password`, `role`, `sudah_vote`) VALUES
(3, 'admin', 'admin', 'admin', '$2y$10$WvZAjHGJIwzFwcXtnokXs.y6gBsAB6cl0IKKBB6nETU4sgAPXRZO.', 'admin', 0),
(13, 'MH', '251351067', 'MALAM A', '$2y$10$3tMpZU49iSdqwQ8rxoZjo.ksndRD3TEd2g0pZGz7X0Ge8QDodM/Dy', 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `paslon_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `paslon_id`, `created_at`) VALUES
(7, 13, 4, '2025-12-25 15:28:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paslon`
--
ALTER TABLE `paslon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paslon`
--
ALTER TABLE `paslon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
