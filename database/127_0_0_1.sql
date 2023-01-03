-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 04:05 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--
CREATE DATABASE IF NOT EXISTS `akademik` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `akademik`;

-- --------------------------------------------------------

--
-- Table structure for table `nama mahasiswa`
--

CREATE TABLE `nama mahasiswa` (
  `rudi` int(178) DEFAULT NULL,
  `ami` int(11) NOT NULL,
  `rio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `dbweb1`
--
CREATE DATABASE IF NOT EXISTS `dbweb1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbweb1`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kodebarang` varchar(5) NOT NULL,
  `namabarang` varchar(50) NOT NULL,
  `satuanterbesar` varchar(5) NOT NULL,
  `satuanterkecil` varchar(5) NOT NULL,
  `konversi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kodebarang`, `namabarang`, `satuanterbesar`, `satuanterkecil`, `konversi`) VALUES
(' bg66', 'aza', '112', '12', 0),
('B001', 'BOTOL', 'DUS', 'PCS', 24),
('B002', 'INDOMIE', 'DUS', 'PCS', 24),
('B003', 'KOPI', 'DUS', 'PCS', 12),
('B004', 'ROTI', 'DUS', 'PCS', 12),
('B005', 'Susu', 'DUS', 'PCS', 12),
('B006', 'BUKU', 'DUS', 'PCS', 11);

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `nomordokumen` varchar(20) NOT NULL,
  `namastore` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `totalqty` double NOT NULL,
  `totalamount` double NOT NULL,
  `deskripsi` text NOT NULL,
  `inputdate` datetime NOT NULL,
  `inputuser` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`nomordokumen`, `namastore`, `tanggal`, `totalqty`, `totalamount`, `deskripsi`, `inputdate`, `inputuser`) VALUES
('1s12s', 'asax233', '2009-03-23', 12, 13, 'KNXAN', '2008-02-12 00:00:00', 'QA'),
('A02', 'Budi', '2022-05-04', 10, 20, 'barang pinjam', '2022-05-01 00:00:00', 'ari'),
('a03', 'roda tunggal', '2022-06-07', 59, 78, 'barang sewa', '2022-05-21 00:00:00', 'ari'),
('a07', 'roda thua', '2022-06-20', 56, 78, 'barang sewa', '2022-06-29 00:00:00', 'ari'),
('A1', 'JAYA', '2022-05-12', 10, 20, 'BARANG SEWA', '2022-05-17 00:00:00', 'ari');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `nomorhp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `jabatan`, `divisi`, `nomorhp`) VALUES
(' 1212 ', 'muchtar', 'manager', 'produksi', '082112518638'),
(' 12313', 'wody', 'manager', 'GA', '0890809897'),
(' 213131', 'utari', 'manager', 'keuangan', '0876564664447'),
(' 2209', 'juned', 'manager', 'keuangan', '0812666666'),
(' 2334 ', 'diego ', 'manager', 'marketing', '085156749823'),
(' 24162890', 'guntara', 'SUPERVISOR', 'produksi', '0876342377251111'),
(' 31331', 'hari', 'manager', 'transport', '0856443232331'),
(' 3279991', 'yudha', 'supervisor', 'store', '087876787634'),
(' 45333', 'putri', 'manager', 'payroll', '0832466463788'),
('69927 ', 'agus H', 'supersivor', 'warehouse', '086855578589');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_dokumen`
--

CREATE TABLE `tipe_dokumen` (
  `kodetipe` varchar(5) NOT NULL,
  `namatipe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe_dokumen`
--

INSERT INTO `tipe_dokumen` (`kodetipe`, `namatipe`) VALUES
('', ''),
(' A009', 'absen'),
(' A50', 'laporan harian'),
('A01', 'Dokumen'),
('AO2', 'Dokumentasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kodebarang`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`nomordokumen`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `tipe_dokumen`
--
ALTER TABLE `tipe_dokumen`
  ADD PRIMARY KEY (`kodetipe`);
--
-- Database: `db_bengkel`
--
CREATE DATABASE IF NOT EXISTS `db_bengkel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_bengkel`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_adm` int(11) NOT NULL,
  `nama_adm` varchar(50) NOT NULL,
  `telp_adm` varchar(15) NOT NULL,
  `user_adm` varchar(50) NOT NULL,
  `pass_adm` varchar(100) NOT NULL,
  `foto_adm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_adm`, `nama_adm`, `telp_adm`, `user_adm`, `pass_adm`, `foto_adm`) VALUES
(1, 'Administrator', '08962878534', 'admin', 'admin', 'user.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `barangjasa`
--

CREATE TABLE `barangjasa` (
  `id_brg` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `stok` varchar(10) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `id_adm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangjasa`
--

INSERT INTO `barangjasa` (`id_brg`, `nama`, `jenis`, `stok`, `harga`, `keterangan`, `id_adm`) VALUES
(1, 'Oli Yamalube 800cc', 'barang', '12', '35000', 'Oli Yamalube 800cc', 1),
(4, 'Paket Service Ekonomis', 'jasa', '1', '30000', 'Ekonomis', 1),
(5, 'Suspensi Matic', 'barang', '5', '175000', 'Suspensi matic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` int(11) NOT NULL,
  `nama_kasir` varchar(50) NOT NULL,
  `telp_kasir` varchar(20) NOT NULL,
  `user_kasir` varchar(50) NOT NULL,
  `pass_kasir` varchar(100) NOT NULL,
  `foto_kasir` text NOT NULL,
  `id_adm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nama_kasir`, `telp_kasir`, `user_kasir`, `pass_kasir`, `foto_kasir`, `id_adm`) VALUES
(1, 'Test Kasir', '0210181928', 'kasir', 'password', '06062019071454r.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `id_kon` int(11) NOT NULL,
  `nama_kon` varchar(50) NOT NULL,
  `telp_kon` varchar(20) NOT NULL,
  `alamat_kon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`id_kon`, `nama_kon`, `telp_kon`, `alamat_kon`) VALUES
(0, 'Umum', '0', '-'),
(3, 'Test Konsumen', '012391839', 'Bekasi');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_spl` int(11) NOT NULL,
  `nama_spl` varchar(50) NOT NULL,
  `telp_spl` varchar(20) NOT NULL,
  `alamat_spl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_spl`, `nama_spl`, `telp_spl`, `alamat_spl`) VALUES
(2, 'Test Supplier', '08129828919', 'Bekasi'),
(3, 'Supplier Oli', '012123910', 'Bekasi\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_trx`
--

CREATE TABLE `tmp_trx` (
  `id_tmp` int(11) NOT NULL,
  `id_trx` varchar(20) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `jml` int(11) NOT NULL,
  `id_kasir` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_trx`
--

INSERT INTO `tmp_trx` (`id_tmp`, `id_trx`, `id_brg`, `jml`, `id_kasir`, `status`) VALUES
(2, '02062019094643', 4, 1, 1, 'Done'),
(4, '02062019094643', 1, 2, 1, 'Done'),
(7, '02062019120923', 4, 1, 1, 'Done'),
(8, '02062019121127', 4, 1, 1, 'Done'),
(10, '06062019094346', 1, 1, 1, 'Done'),
(11, '06062019100803', 4, 1, 1, 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `trx`
--

CREATE TABLE `trx` (
  `id_trx` varchar(20) NOT NULL,
  `id_kon` int(11) NOT NULL,
  `tgl_trx` date NOT NULL,
  `total` varchar(20) NOT NULL,
  `id_kasir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trx`
--

INSERT INTO `trx` (`id_trx`, `id_kon`, `tgl_trx`, `total`, `id_kasir`) VALUES
('02062019094643', 0, '2019-06-02', '100000', 1),
('02062019120923', 3, '2019-06-02', '30000', 1),
('02062019121127', 0, '2019-06-02', '30000', 1),
('06062019094346', 0, '2019-06-06', '35000', 1),
('06062019100803', 3, '2019-06-06', '30000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trxbarang`
--

CREATE TABLE `trxbarang` (
  `id_trxbrg` varchar(20) NOT NULL,
  `tgl_trxbrg` date NOT NULL,
  `id_brg` int(11) NOT NULL,
  `id_spl` int(11) NOT NULL,
  `jml_brg` int(11) NOT NULL,
  `ket_trxbrg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trxbarang`
--

INSERT INTO `trxbarang` (`id_trxbrg`, `tgl_trxbrg`, `id_brg`, `id_spl`, `jml_brg`, `ket_trxbrg`) VALUES
('00365602062019', '2019-06-02', 1, 3, 10, 'Oli'),
('04184902062019', '2019-06-02', 5, 2, 5, 'suspensi'),
('04190502062019', '2019-06-02', 1, 3, 5, 'masuk lagi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_adm`);

--
-- Indexes for table `barangjasa`
--
ALTER TABLE `barangjasa`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id_kon`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_spl`);

--
-- Indexes for table `tmp_trx`
--
ALTER TABLE `tmp_trx`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indexes for table `trx`
--
ALTER TABLE `trx`
  ADD PRIMARY KEY (`id_trx`);

--
-- Indexes for table `trxbarang`
--
ALTER TABLE `trxbarang`
  ADD PRIMARY KEY (`id_trxbrg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barangjasa`
--
ALTER TABLE `barangjasa`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kasir`
--
ALTER TABLE `kasir`
  MODIFY `id_kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id_kon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_spl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tmp_trx`
--
ALTER TABLE `tmp_trx`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `db_muchtardwicahyo_d3mi`
--
CREATE DATABASE IF NOT EXISTS `db_muchtardwicahyo_d3mi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_muchtardwicahyo_d3mi`;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` char(5) NOT NULL,
  `dosen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `dosen`) VALUES
('D0022', 'Muchtar Dwi Cahyo A.Md.Kom'),
('D0504', 'Budi, S.kom., M.kom.'),
('D0607', 'M.Dedi Suryadi, S.kom., M.kom.'),
('D1022', 'Domo Pranowo, K., ST., MT.'),
('D1209', 'Subandri, S.kom., M.kom.'),
('D1501', 'Marisa, S.kom., M.kom.'),
('D1503', 'Zaenal Mutaqin S., S.kom., M.kom.'),
('D1611', 'Suhadi, ST., M.kom.'),
('D1809', 'Indry Ayu Lestari, S.kom., MT.'),
('D1812', 'Murntaz Muttakin, S.kom., M.kom.'),
('D2001', 'Sigit kurniawan, S.kom., M.kom.'),
('D2003', 'Sekar Wulandari, S. Kom., MMSI.'),
('D2004', 'M.Syahid Q, S.kom., M.kom.'),
('D2104', 'Aidah Hami,S.Kom.MMSI');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `jadwal` varchar(5) NOT NULL,
  `kode` int(11) DEFAULT NULL,
  `kode_dosen` varchar(7) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`jadwal`, `kode`, `kode_dosen`, `kelas`) VALUES
('J01', 1506111227, 'D2004', 'S1/TI/5/B/P'),
('J02', 1506122226, 'D1501', 'S1/TI/5/B/P'),
('J03', 1506122229, 'D1611', 'S1/TI/5/B/P'),
('J04', 1506122250, 'D0504', 'S1/TI/5/B/P'),
('J05', 1506122253, 'D1209', 'S1/TI/5/B/P'),
('J06', 1506122328, 'D1503', 'S1/TI/5/B/P'),
('J07', 1506122330, 'D0607', 'S1/TI/5/B/P'),
('J08', 1506111227, 'D1809', 'S1/TI/5/A/M'),
('J09', 1506122226, 'D1812', 'S1/TI/5/A/M'),
('J10', 1506122229, 'D1611', 'S1/TI/5/A/M'),
('J11', 1506122250, 'D1611', 'S1/TI/5/A/M'),
('J12', 1506122328, 'D1022', 'S1/TI/5/A/M'),
('J13', 1506122330, 'D2001', 'S1/TI/5/A/M'),
('J14', 1506122330, 'D0022', 'S1/TI/5/A/M');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` char(14) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenjang` char(3) DEFAULT NULL,
  `program_studi` varchar(50) DEFAULT NULL,
  `semester` int(1) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `waktu_kuliah` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `jenjang`, `program_studi`, `semester`, `kelas`, `waktu_kuliah`) VALUES
('', '', '', '', NULL, '', ''),
('43A87006190329', 'ALFI FAJAR DIANTAMA', 'S1', 'TEKNIK INFORMATIKA', 5, 'B', 'P'),
('43A87006190336', 'BUDIYONO', 'S1', 'TEKNIK INFORMATIKA', 5, 'B', 'P'),
('43A87008190331', 'NAUFAL', 'S1', 'TEKNIK INFORMATIKA', 5, 'B', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode` int(11) NOT NULL,
  `mata_kuliah` varchar(40) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode`, `mata_kuliah`, `sks`) VALUES
(1506111227, 'Interaksi Manusia dan Komputer', 3),
(1506122226, 'Aplikasi Basis Data', 3),
(1506122229, 'Sistem Cerdas', 3),
(1506122250, 'Analisis dan Spesifikasi Kebutuhan Softw', 3),
(1506122253, 'Jaringan Komputer 3', 3),
(1506122328, 'Keamanan Informasi dan Jaringan', 3),
(1506122330, 'Pemrograman Web 1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rencana_study`
--

CREATE TABLE `rencana_study` (
  `npm` char(14) NOT NULL,
  `jadwal` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rencana_study`
--

INSERT INTO `rencana_study` (`npm`, `jadwal`) VALUES
('43A87006190336', 'J01'),
('43A87006190336', 'J02'),
('43A87006190336', 'J02'),
('43A87006190336', 'J03'),
('43A87006190336', 'J04'),
('43A87006190336', 'J05'),
('43A87006190336', 'J06'),
('43A87008190331', 'J01'),
('43A87008190331', 'J02'),
('43A87008190331', 'J03'),
('43A87008190331', 'J04'),
('43A87008190331', 'J05'),
('43A87008190331', 'J06'),
('43A87008190331', 'J07'),
('43A87006190329', 'J08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`jadwal`),
  ADD KEY `kode_dosen` (`kode_dosen`),
  ADD KEY `kode` (`kode`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `rencana_study`
--
ALTER TABLE `rencana_study`
  ADD KEY `npm` (`npm`),
  ADD KEY `jadwal` (`jadwal`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`kode_dosen`) REFERENCES `dosen` (`kode_dosen`);

--
-- Constraints for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`kode`) REFERENCES `jadwal` (`kode`);

--
-- Constraints for table `rencana_study`
--
ALTER TABLE `rencana_study`
  ADD CONSTRAINT `rencana_study_ibfk_1` FOREIGN KEY (`jadwal`) REFERENCES `jadwal` (`jadwal`),
  ADD CONSTRAINT `rencana_study_ibfk_2` FOREIGN KEY (`npm`) REFERENCES `mahasiswa` (`npm`);
--
-- Database: `db_penjualan`
--
CREATE DATABASE IF NOT EXISTS `db_penjualan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_penjualan`;

-- --------------------------------------------------------

--
-- Table structure for table `ms_pelanggan`
--

CREATE TABLE `ms_pelanggan` (
  `no_urut` int(11) NOT NULL,
  `kode_pelanggan` char(30) NOT NULL,
  `nama_customer` varchar(20) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ms_pelanggan`
--

INSERT INTO `ms_pelanggan` (`no_urut`, `kode_pelanggan`, `nama_customer`, `alamat`) VALUES
(2, 'abcust02', 'HELDI GOH', 'villa sempilan no.11-kota b'),
(3, 'abcust03', 'Unang Handoko', 'villa sempilan no.1-kota B'),
(4, 'abcust04', 'JokoLono sukarman', 'villa permata intan berkilau, blok c5-7'),
(5, 'abcust05', 'tomu sinaga', 'villa permata intan berkilau, blok A1/2'),
(6, 'abcust06', 'irwan setianto', 'villa gunung seribu, blok o1- no.1'),
(7, 'abcust07', 'agus cahyono', 'villa gunung seribu, blok f4- no.8'),
(8, 'abcust08', 'maria sirait', 'villa bukit sagitarius,gang sawit no.3'),
(9, 'abcust09', 'Ir.ita nugraha', 'villa bukit sagitarius,gang kelapa no.3'),
(10, 'abcust10', 'Djoo Wardoyo,Drs', 'villa bukit sagitarius,blok A1 no.1'),
(11, 'abcust11', 'unang handoko', 'villa sempilan,no.1 kota b'),
(12, 'abcust12', 'tomy sinaga', 'villa permata intan berkilau,blok A1/2'),
(1, 'dqlabcust01', 'eva novianti s.h', 'villa sempilan no.67-kota b');

-- --------------------------------------------------------

--
-- Table structure for table `ms_penjualan`
--

CREATE TABLE `ms_penjualan` (
  `kode_transaksi` varchar(17) NOT NULL,
  `kode_pelanggan` char(15) NOT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `kode_produk` char(7) NOT NULL,
  `nama_produk` varchar(10) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ms_penjualan`
--

INSERT INTO `ms_penjualan` (`kode_transaksi`, `kode_pelanggan`, `no_urut`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
('tr-001', 'dqlabcust07', 2, 'prod-03', 'flashdisk ', 1, 100000),
('tr-001', 'dqlabcust07', 3, 'prod-09', 'buku plann', 3, 92000),
('tr-001', 'dqlabcust07', 4, 'prod-04', 'flashdisk ', 3, 40000),
('tr-002', 'dqlabcust01', 1, 'prod-03', 'gift vouch', 2, 100000),
('tr-002', 'dqlabcust01', 3, 'prod-07', 'tas travel', 1, 48000),
('tr-003', 'dqlabcust03', 1, 'prod-02', 'flashdisk ', 2, 55000),
('tr-004', 'dqlabcust03', 2, 'prod-04', 'flashdisk ', 4, 40000),
('tr-005', 'dqlabcust05', 1, 'prod-09', 'buku plann', 3, 92000),
('tr-005', 'dqlabcust05', 2, 'prod-01', 'Kotak Pens', 1, 62500),
('tr-005', 'dqlabcust05', 3, 'prod-04', 'flashdisk ', 2, 40000),
('tr-006', 'dqlabcust02', 1, 'prod-05', 'gift vouch', 4, 250000),
('tr-006', 'dqlabcust02', 2, 'prod-08', 'gantungan ', 2, 15800);

-- --------------------------------------------------------

--
-- Table structure for table `ms_produk`
--

CREATE TABLE `ms_produk` (
  `no_urut` int(11) NOT NULL,
  `kode_produk` char(7) NOT NULL,
  `nama_produk` varchar(30) NOT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ms_produk`
--

INSERT INTO `ms_produk` (`no_urut`, `kode_produk`, `nama_produk`, `harga`) VALUES
(1, 'prod-01', 'pensil dqlab', 62500),
(2, 'prod-02', 'flashdisk dqlab 64 gb', 550000),
(4, 'prod-04', 'flashdisk dqlab 32gb', 400000),
(5, 'prod-05', 'gift voucher dqlab 250rb', 400000),
(6, 'prod-06', 'pulpen multifunction + laser d', 92500),
(7, 'prod-07', 'tas travel organizer dqlab', 48000),
(8, 'prod-08', 'gantungan kunci dqlab', 15800),
(9, 'prod-09', 'bukuplanner agenda dqlab', 92000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ms_pelanggan`
--
ALTER TABLE `ms_pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- Indexes for table `ms_penjualan`
--
ALTER TABLE `ms_penjualan`
  ADD KEY `kode_transaksi` (`kode_transaksi`) USING BTREE;

--
-- Indexes for table `ms_produk`
--
ALTER TABLE `ms_produk`
  ADD PRIMARY KEY (`kode_produk`);
--
-- Database: `jasa`
--
CREATE DATABASE IF NOT EXISTS `jasa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jasa`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nomor_plat` varchar(10) NOT NULL,
  `type_mobil` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `no_hp`, `alamat`, `nomor_plat`, `type_mobil`) VALUES
(24, 'Elsa', '081222111222', 'Pucakwangi', 'K 445 QQ', 'SUV'),
(27, 'Karin', '081999777888', 'Ngagel', 'K 121 UY', 'Jazz'),
(28, 'Sinta', '089787767787', 'Pati', 'K 111 KL', 'Sedan'),
(29, 'Yudha', '089111222333', 'Dukuhseti', 'K 123 OP', 'Pickup'),
(31, 'Usman', '089789878987', 'Tayu', 'K 123 TT', 'MPV'),
(34, 'Rian', '089789111222', 'Kajen', 'K 876 FA', 'Pickup'),
(35, 'Yulia', '087777666555', 'Gunugwungkal', 'K 456 YU', 'SUV'),
(36, 'Toni', '08777766999', 'Dukuhseti', 'K 888 AA', 'Innova'),
(37, 'Omar', '089111222333', 'Kejen', 'K 251 YY', 'Innova'),
(38, 'Zahra', '089777666555', 'Solo', 'K 254 AS', 'Jazz'),
(39, 'Hamdan', '081222000111', 'Winong', 'K 232 QQ', 'MPV'),
(40, 'tata', '845632', 'bandung', 'b 1234 ff', 'Innova'),
(41, 'Dwi', '067853', 'bandung', 'b 1234 ff', 'Avanza'),
(42, 'Dwi', '234131', 'bandung', 'b 1234 ff', 'Avanza'),
(43, 'Dwi', '13113', 'bandung', 'b 1234 ff', 'Avanza'),
(44, 'Dwi', '24241', 'bandung', 'b 1234 ff', 'Avanza'),
(45, 'adi', '131314', 'bandung', 'b 1234 ff', 'Jazz'),
(46, 'Dwi', '067564', 'bandung', 'B 123 FF', 'Avanza'),
(47, 'tata', '478464', 'bandung', 'B 123 FF', 'Avanza'),
(48, 'Muc', '678998', 'dkadk', 'dv3212', 'Innova'),
(49, 'adi', '968675655', 'jakarta', 'b121212', 'Avanza'),
(50, 'jaya', '088113', 'bekasi', 'b121212gg', 'Avanza'),
(51, 'jaya', '088113', 'bekasi', 'b121212gg', 'Avanza'),
(52, 'agung', '091313', 'bekasi', 'b 45321 jj', 'Pilih Type Mobil'),
(53, 'agung', '091313', 'bekasi', 'b 45321 jj', 'Pilih Type Mobil'),
(54, 'adi', '735235', 'bekasi', 'b 45321 jj', 'Innova'),
(55, 'agung', '8546352', 'bekasi', 'b121212gg', 'SUV'),
(56, 'fsd', '3234', 'sefs', 'ffffffffff', 'Pilih Type Mobil'),
(57, 'agung', '8546352', 'bekasi', 'b121212gg', 'SUV'),
(58, 'Bpk Hendro', '08777777', 'bekasi', 'b 123 re', 'Jazz'),
(59, 'Pak Hendra', '082112518638', 'bekasi', 'b 123 re', 'Innova');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_service`
--

CREATE TABLE `jenis_service` (
  `id_jenis_service` int(1) NOT NULL,
  `jenis_service` varchar(50) NOT NULL,
  `biaya` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_service`
--

INSERT INTO `jenis_service` (`id_jenis_service`, `jenis_service`, `biaya`) VALUES
(2, 'service Body', 350000),
(5, 'service Menyeluruh', 345000),
(6, 'Ganti oli', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `no_antrian` varchar(20) NOT NULL,
  `id_customer` int(10) NOT NULL,
  `id_jenis_service` int(1) NOT NULL,
  `tgl_pendaftaran` date NOT NULL,
  `jam_pendaftaran` time NOT NULL,
  `total_biaya` int(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `no_antrian`, `id_customer`, `id_jenis_service`, `tgl_pendaftaran`, `jam_pendaftaran`, `total_biaya`, `status`) VALUES
(44, '2022-12-13/1', 45, 5, '2022-12-13', '12:00:00', 45000, 'Lunas'),
(45, '2022-12-14/1', 46, 5, '2022-12-14', '10:00:00', 45000, 'Lunas'),
(46, '2022-12-14/2', 47, 5, '2022-12-14', '15:00:00', 45000, 'Lunas'),
(47, '2022-12-15/1', 48, 5, '2022-12-29', '16:50:00', 45000, 'Lunas'),
(48, '2022-12-15/1', 49, 5, '2022-12-17', '09:08:00', 45000, 'Lunas'),
(49, '2022-12-15/1', 50, 5, '2022-12-16', '14:00:00', 45000, 'Lunas'),
(50, '2022-12-15/1', 51, 5, '2022-12-16', '16:00:00', 0, 'Lunas'),
(51, '2022-12-15/1', 52, 0, '2022-12-15', '10:30:00', 0, 'Pendaftaran'),
(52, '2022-12-15/2', 53, 0, '2022-12-15', '12:30:00', 0, 'Pendaftaran'),
(53, '2022-12-15/2', 53, 0, '2022-12-15', '12:30:00', 0, 'Pendaftaran'),
(54, '2022-12-15/4', 54, 2, '2022-12-22', '13:00:00', 35000, 'Pendaftaran'),
(55, '2022-12-15/4', 55, 2, '2022-12-20', '10:50:00', 35000, 'Pendaftaran'),
(56, '2022-12-15/4', 56, 0, '2022-12-15', '13:14:00', 0, 'Pendaftaran'),
(57, '2022-12-15/4', 56, 0, '2022-12-15', '13:14:00', 0, 'Pendaftaran'),
(58, '2022-12-15/6', 57, 2, '2022-12-15', '11:50:00', 0, 'Pendaftaran'),
(59, '2022-12-15/6', 57, 2, '2022-12-15', '11:50:00', 0, 'Lunas'),
(60, '2022-12-25/1', 58, 6, '2022-12-25', '13:55:00', 50000, 'Lunas'),
(61, '2022-12-25/2', 59, 2, '2022-12-25', '08:00:00', 350000, 'Pendaftaran');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `id_saran` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` varchar(150) NOT NULL,
  `kebersihan` int(3) NOT NULL,
  `keramahan` int(3) NOT NULL,
  `ketelitian` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id_saran`, `nama`, `email`, `pesan`, `kebersihan`, `keramahan`, `ketelitian`) VALUES
(1, 'Adit', 'aditwijaya@gmail.com', 'Pelayanannya sangat baik dan memuaskan', 90, 80, 90),
(2, 'erdiman', 'erdiman@gmail.com', 'sangat puas', 90, 90, 90);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `no_nota` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_user` tinyint(1) NOT NULL,
  `nama_mekanik` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pendaftaran`, `no_nota`, `tanggal`, `bayar`, `kembali`, `total`, `status`, `id_user`, `nama_mekanik`) VALUES
(1, 47, 'C001', '2022-12-15', 90000, 45000, 45000, 'Lunas', 1, 'har'),
(2, 44, 'C002', '2022-12-15', 80000, 35000, 45000, 'Lunas', 1, 'dafa'),
(3, 50, 'C003', '2022-12-15', 423131, 423131, 0, 'Lunas', 1, 'dafa'),
(4, 49, 'C004', '2022-12-15', 0, 0, 45000, 'Lunas', 1, ' '),
(5, 49, 'C004', '2022-12-15', 0, 0, 45000, 'Lunas', 1, ' '),
(6, 48, 'C005', '2022-12-15', 0, 0, 45000, 'Lunas', 1, ' '),
(7, 46, 'C006', '2022-12-15', 0, 0, 45000, 'Lunas', 1, '  '),
(8, 45, 'C007', '2022-12-15', 0, 0, 45000, 'Lunas', 1, '   '),
(9, 45, 'C007', '2022-12-15', 0, 0, 45000, 'Lunas', 1, '   '),
(10, 60, 'C008', '2022-12-25', 100000, 50000, 50000, 'Lunas', 1, 'jono'),
(11, 59, 'C009', '2022-12-25', 100000, 100000, 0, 'Lunas', 1, 'fuad');

-- --------------------------------------------------------

--
-- Table structure for table `type_mobil`
--

CREATE TABLE `type_mobil` (
  `id_type_mobil` int(2) NOT NULL,
  `type_mobil` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_mobil`
--

INSERT INTO `type_mobil` (`id_type_mobil`, `type_mobil`) VALUES
(1, 'Avanza'),
(2, 'Innova'),
(4, 'Jazz'),
(5, 'SUV'),
(6, 'MPV'),
(7, 'Sedan'),
(8, 'Off Road'),
(9, 'Pickup'),
(10, 'Sports Car');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(1) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `hp`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Jl. Bangau Sakti', '081111222333', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `jenis_service`
--
ALTER TABLE `jenis_service`
  ADD PRIMARY KEY (`id_jenis_service`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `type_mobil`
--
ALTER TABLE `type_mobil`
  ADD PRIMARY KEY (`id_type_mobil`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `jenis_service`
--
ALTER TABLE `jenis_service`
  MODIFY `id_jenis_service` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `type_mobil`
--
ALTER TABLE `type_mobil`
  MODIFY `id_type_mobil` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `mahasiswa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mahasiswa`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"small_big_all\":\">\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sekolah\",\"table\":\"migrations\"},{\"db\":\"jasa\",\"table\":\"transaksi\"},{\"db\":\"jasa\",\"table\":\"customer\"},{\"db\":\"jasa\",\"table\":\"jenis_service\"},{\"db\":\"jasa\",\"table\":\"saran\"},{\"db\":\"jasa\",\"table\":\"pendaftaran\"},{\"db\":\"jasa\",\"table\":\"type_mobil\"},{\"db\":\"jasa\",\"table\":\"user\"},{\"db\":\"jasa\",\"table\":\"jenis_cucian\"},{\"db\":\"ajc\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('db_muchtardwicahyo_d3mi', 'jadwal', 'kelas'),
('db_muchtardwicahyo_d3mi', 'rencana_study', 'npm');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'db_muchtardwicahyo_d3mi', 'mahasiswa', '{\"sorted_col\":\"`mahasiswa`.`npm` ASC\"}', '2022-08-05 07:44:59'),
('root', 'db_muchtardwicahyo_d3mi', 'rencana_study', '{\"sorted_col\":\"`rencana_study`.`npm` ASC\"}', '2022-08-05 07:24:31'),
('root', 'dbweb1', 'barang', '[]', '2022-07-17 10:34:00'),
('root', 'jasa', 'jenis_service', '[]', '2022-12-14 14:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-01-03 15:01:32', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sekolah`
--
CREATE DATABASE IF NOT EXISTS `sekolah` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sekolah`;

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8_unicode_ci,
  `tgl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jam_mulai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jam_selesai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_mulai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_selesai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `kategori_artikel_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btn_txt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_03_11_230713_create_pengumuman_table', 1),
(6, '2021_03_11_230723_create_agenda_table', 1),
(7, '2021_03_12_170942_create_artikel_table', 1),
(8, '2021_03_12_170959_create_kategori_artikel_table', 1),
(9, '2021_03_12_171751_create_banners_table', 1),
(10, '2021_03_12_172043_create_navbars_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navbars`
--

CREATE TABLE `navbars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8_unicode_ci,
  `tgl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rahmat Hidayatullah', 'rahmat@example.com', NULL, '$2y$10$vkulc7Fgq1v5R9RVDtsJAuW0zxls8YMkciUKx.Cwr/sCjuyKnfHiS', NULL, NULL, NULL, NULL, NULL),
(2, 'Sakuranomiya', 'sakuranomiya@example.com', NULL, '$2y$10$G7aQIn9ZHAfvwwAeSCRSFuKCA2zi99Fqu79uQmv99jURcCLzb9ZTi', NULL, NULL, NULL, NULL, NULL),
(3, 'Chika Fujiwara', 'chika@example.com', NULL, '$2y$10$0LdF.FyjSkWJt8dPOecRuOv2vMNLEFLOpShSb7YZvX.qrwQKXhkNa', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbars`
--
ALTER TABLE `navbars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `navbars`
--
ALTER TABLE `navbars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
