-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 06:28 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposisi`
--

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `statusd` varchar(50) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_disposisi`
--

INSERT INTO `tbl_disposisi` (`id_disposisi`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `statusd`, `pengirim`, `id_surat`, `id_user`) VALUES
(16, 'Seluruh Kaprodi Fakultas Teknik', 'Pengisian Jadwal Kuliah ke SIAK online oleh Program Studi', 'Biasa', '2021-01-30', 'Kordinasikan dengan TU dan Biro Akademik', 'Terlaksana', 'Dekan', 22, 1),
(17, 'Seluruh Kaprodi Fakultas Teknik', 'Persiapan Penyelenggaraan Ujian Akhir Semester Online', 'Penting', '2021-07-09', 'Kordinasikan dengan TU dan IT', 'Terlaksana', 'Dekan', 26, 1),
(18, 'Seluruh Kaprodi Fakultas Teknik', 'Batas Akhir Sidang Skripsi Sarjana, Tesis Pascasarjana dan Batas Akhir Laporan Praktek Kerja Lapangan Bagi Program D3 Genap 2020/2021', 'Segera', '2021-08-09', 'Kordinasikan dengan TU dan Biro Akademik', 'Belum Terlaksana', 'Dekan', 27, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepsek`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'Universitas Darma Persada', 'Sekretariat Fakultas Teknik', 'Terakreditasi B', 'Jl. Taman Malaka Selatan, RT.8/RW.6, Pd. Kelapa., Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450)', 'Ir. Agus Sun Sugiarto, MT.', '0324025403', 'https://sekretariatft.com', 'admin@gmail.com', 'logo.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`id_klasifikasi`, `kode`, `nama`, `uraian`, `id_user`) VALUES
(2, '1', 'Surat Biasa', 'Surat Rutin, Surat Harian', 1),
(3, '2', 'Surat Undangan', 'Surat Undangan', 1),
(4, '3', 'Surat Penting', 'Surat Penting, Surat bersifat segera', 1),
(5, '4', 'Surat Pemberitahuan', 'Surat Pemberitahuan, Surat Informasi', 1),
(6, '5', 'Surat Edaran', 'Surat Edaran', 1),
(7, '6', 'Surat Keterangan', 'Surat Keterangan', 1),
(8, '7', 'Surat Permohonan', 'Surat Permohonan, Surat Permintaan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 10, 10, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(5, 2, 'Seluruh Kaprodi Fakultas Teknik', 'DekanFT/2021/No.2', 'Pemberitahuan Pengisian Jadwal Kuliah Ke SIAK Online', 'Surat Biasa', '2021-01-04', '2021-01-04', '3803-Surat Keluar 1.docx', 'Kordinasikan dengan TU dan Biro Akademik', 1),
(6, 3, 'Seluruh Dosen Fakultas Teknik', 'DekanFT/2021/No.3', 'Pemberitahuan Batas Akhir Pengajuan Proposal Penelitian & Abdimas', 'Surat Biasa', '2021-01-05', '2021-08-04', '769-Surat Keluar 2.docx', 'Kordinasikan dengan TU', 1),
(8, 4, 'Seluruh Kaprodi Fakultas Teknik', 'DekanFT/2021/No.4', 'Batas Akhir Sidang Skripsi Sarjana, Tesis Pascasarjana dan Batas Akhir Laporan Praktek Kerja Lapangan Bagi Program D3 Genap 2020/2021', 'Surat Penting', '2021-08-02', '2021-08-04', '3324-Surat Keluar 4.docx', 'Kordinasikan dengan TU dan Biro Akademik', 1),
(9, 5, 'Kampus', '1231', 'WP', 'Surat Biasa', '2021-08-06', '2021-08-06', '', 'Dekan FT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `status` varchar(25) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `indeks`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `status`, `id_user`) VALUES
(21, 1, 'Rektorat/2021/No.1', 'Rektorat UNSADA', 'Pemberitahuan Cuti Bersama Natal dan Tahun Baru 2021', 'Surat Pemberitahuan', '4', '2021-01-01', '2021-01-01', '2984-Surat Masuk 1.docx', 'Dekan FT', 'Terbaca', 1),
(22, 2, 'Rektorat/2021/No.2', 'Rektorat UNSADA', 'Pemberitahuan Pengisian Jadwal Kuliah Ke SIAK Online', 'Surat Pemberitahuan', '4', '2021-01-04', '2021-01-04', '5384-Surat Masuk 2.docx', 'Dekan FT', 'Terbaca', 1),
(23, 3, 'Rektorat/2021/No.3', 'Rektorat UNSADA', 'Pemberitahuan Batas Akhir Pengajuan Proposal Penelitian & Abdimas', 'Surat Pemberitahuan', '4', '2021-02-05', '2021-02-05', '453-Surat Masuk 3.docx', 'Dekan FT', 'Terkirim', 1),
(24, 4, 'Rektorat/2021/No.4', 'Rektorat UNSADA', 'Pemberitahuan Pengisian Rencana Pembelajaran Semester (RPS) ke SIAKAD Online oleh Program Studi', 'Surat Pemberitahuan', '4', '2021-02-08', '2021-02-08', '9954-Surat Masuk 4.docx', 'Dekan FT', 'Terkirim', 1),
(25, 5, 'Rektorat/2021/No.5', 'Rektorat UNSADA', 'Pengurusan Cuti Akademik', 'Surat Undangan', '2', '2021-02-16', '2021-02-16', '263-Surat Masuk 5.docx', 'Kabag TU', 'Terbaca', 1),
(26, 6, 'Rektorat/2021/No.6', 'Rektorat UNSADA', 'Penyelenggaraan Ujian Akhir Semester Secara Online', 'Surat Penting', '2', '2021-07-05', '2021-07-05', '8725-Surat Keluar 6.docx', 'Dekan FT', 'Terbaca', 1),
(27, 7, 'Rektorat/2021/No.7', 'Rektorat UNSADA', 'Batas Akhir Sidang Skripsi Sarjana, Tesis Pascasarjana dan Batas Akhir Laporan Praktek Kerja Lapangan Bagi Program D3 Genap 2020/2021', 'Surat Penting', '2', '2021-08-02', '2021-08-04', '4667-Surat Masuk 7.docx', 'Dekan FT', 'Terkirim', 1),
(28, 8, '123', 'Kampus', 'GG', 'Surat Biasa', 'WP', '2021-08-06', '2021-08-06', '', 'Dekan FT', 'Terkirim', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '-', 1),
(5, 'dekan', '3da2f457ad7c0edf1c94e1ea87b0818d', 'Dekan FT', '-', 3),
(6, 'kabag', '1a50ef14d0d75cd795860935ee0918af', 'Kabag TU', '-', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`);

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  MODIFY `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
