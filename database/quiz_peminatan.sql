-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 11:56 AM
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
-- Database: `quiz_peminatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_peminatan` int(2) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `peminatan` varchar(30) NOT NULL,
  `total_skor` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(2) NOT NULL,
  `id_pertanyaan` int(2) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `skor` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `id_pertanyaan`, `jawaban`, `skor`) VALUES
(1, 1, 'Baca data, cari tahu masalah, dan nyusun rencana biar semuanya lancar!', 3),
(2, 1, 'Langsung eksekusi! Coding atau bikin sesuatu yang bisa dipakai', 2),
(3, 1, 'Pastikan semuanya aman dan nggak ada kesalahan fatal', 1),
(4, 1, 'Ngatur strategi biar semuanya sinkron antara tim dan tujuan kita', 4),
(5, 2, 'Pikirin dulu, cek semua informasi sebelum ambil keputusan', 3),
(6, 2, 'Langsung coba berbagai solusi praktis dan lihat yang mana yang berhasil', 2),
(7, 2, 'Pikirin risiko dulu, pastiin nggak ada yang bikin masalah makin parah', 1),
(8, 2, 'Lihat dari sisi besar, cari solusi yang nggak cuma beresin masalah sekarang tapi juga ke depannya', 4),
(9, 3, 'Analis data dan cari cara bikin sistem lebih efektif', 3),
(10, 3, 'Bikin aplikasi atau program yang langsung bisa dipakai', 2),
(11, 3, 'Pastikan sistem yang aman dan nggak gampang error', 1),
(12, 3, 'Merancang solusi teknologi yang bisa diterapkan buat banyak masalah', 4),
(13, 4, 'Cari pola dan solusi dari data yang rumit', 3),
(14, 4, 'Ngoding dan bikin aplikasi yang berfungsi', 2),
(15, 4, 'Belajar cara memastikan semua data dan sistem aman', 1),
(16, 4, 'Lihat bagaimana teknologi dan bisnis bisa nyambung dan saling bantu', 4),
(17, 5, 'Baca data dan cari cara supaya prosesnya lebih efisien', 3),
(18, 5, 'Langsung terjun bikin atau debugging aplikasi', 2),
(19, 5, 'Pastikan semuanya aman dan sesuai standar', 1),
(20, 5, 'Koordinasiin semua bagian project dan gimana cara kerjanya bareng', 4),
(21, 6, 'Pikirin masalah yang bisa diselesaikan dengan analisis data', 3),
(22, 6, 'Eksperimen bikin program atau aplikasi kecil', 2),
(23, 6, 'Baca tentang keamanan digital atau cara ngelindungin data', 1),
(24, 6, 'Nyusun ide-ide besar buat project atau bisnis di masa depan', 4),
(25, 7, 'Kamu bisa lihat solusi yang jelas dari data yang kamu analisis', 3),
(26, 7, 'Aplikasi atau hasil kerjaanmu jalan sesuai ekspektasi', 2),
(27, 7, 'Nggak ada kesalahan atau masalah keamanan di project kamu', 1),
(28, 7, 'Semua tujuan tercapai, dan hasilnya bisa dipakai buat jangka panjang', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int(2) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `pertanyaan`) VALUES
(1, 'Saat kamu lagi ngerjain tugas kelompok, kamu biasanya lebih suka ngapain?'),
(2, 'Kalau dapet masalah yang butuh cepat diselesaikan, apa reaksi pertamamu?'),
(3, 'Kalau kamu disuruh pilih topik buat proyek akhir, mana yang paling bikin kamu semangat?'),
(4, 'Di kelas, kamu paling excited kalau belajar apa?'),
(5, 'Kalau ada project besar yang harus diselesaikan, kamu lebih milih ngapain?'),
(6, 'Di waktu senggang, biasanya kamu lebih suka ngapain?'),
(7, 'Menurut kamu, apa sih arti berhasil dalam ngerjain tugas atau proyek kuliah?');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `program_studi` varchar(50) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `cita_cita` varchar(50) NOT NULL,
  `hasil_quiz` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nim`, `nama`, `program_studi`, `fakultas`, `cita_cita`, `hasil_quiz`) VALUES
('2310512007', 'Shilvia Diva Pertiwi', 'S1 Sistem Informasi', 'Ilmu Komputer', 'System Analyst', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_peminatan`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_peminatan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `nim` FOREIGN KEY (`nim`) REFERENCES `user` (`nim`);

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `id_pertanyaan` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan` (`id_pertanyaan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
