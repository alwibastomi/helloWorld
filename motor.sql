-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2018 at 01:21 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motor`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Id_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(20) NOT NULL,
  `Jenis_Barang` varchar(10) NOT NULL,
  `Satuan` varchar(10) NOT NULL,
  `Harga_Jual` double(8,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`Id_Barang`, `Nama_Barang`, `Jenis_Barang`, `Satuan`, `Harga_Jual`) VALUES
('M-HD-001', 'Honda', 'Beat', 'biji', 10000000),
('M-HD-002', 'Honda', 'Vario', 'pcs', 190000),
('M-HD-003', 'bhjj', 'bjbj', 'bjbj', 10000),
('M-HD-005', 'honda', 'yvuyvh', 'hjv', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `detailpemb`
--

CREATE TABLE `detailpemb` (
  `Nota_Transaksi` varchar(12) NOT NULL,
  `Id_Barang` varchar(5) NOT NULL,
  `Qty` int(5) NOT NULL,
  `Harga_Beli` double(8,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailpemb`
--

INSERT INTO `detailpemb` (`Nota_Transaksi`, `Id_Barang`, `Qty`, `Harga_Beli`) VALUES
('NP/18-07/002', 'SGM01', 200, 350000),
('NP/18-07/002', 'SGM02', 200, 350000),
('NP/18-07/002', 'SGM03', 200, 400000),
('NP/18-07/003', 'SGM01', 200, 350000),
('NP/18-07/003', 'SGM02', 200, 350000),
('NP/18-07/003', 'SGM03', 200, 400000),
('NP/18-07/003', 'SGM04', 200, 400000),
('NP/18-07/003', 'SGM05', 200, 300000),
('NP/18-07/003', 'SGM06', 200, 300000),
('NP/18-07/004', 'SGM01', 100, 350000),
('NP/18-07/004', 'SGM03', 5, 400000),
('NP/18-07/005', 'SGM02', 15, 350000),
('NP/18-07/005', 'SGM03', 25, 400000),
('NP/18-07/007', 'iyu', 20, 7877),
('NP/18-07/007', 'iyu', 30, 7877),
('NP/18-07/008', 'M-HD-', 5, 10000000),
('NP/18-07/008', 'M-HD-', 5, 10000000),
('NP/18-07/008', 'M-HD-', 5, 10000000),
('NP/18-07/008', 'M-HD-', 5, 10000000),
('NP/18-07/008', 'M-HD-', 5, 10000000),
('NP/18-07/008', 'M-HD-', 5, 10000000),
('NP/18-07/008', 'M-HD-', 5, 10000000),
('NP/18-07/008', 'M-HD-', 5, 10000000),
('NP/18-07/008', 'M-HD-', 5, 10000000),
('NP/18-07/008', 'M-HD-', 8, 10000),
('NP/18-07/009', 'M-HD-', 5, 10000),
('NP/18-07/009', 'M-HD-', 1, 100000),
('NP/18-07/010', 'M-HD-', 5, 10000),
('NP/18-07/010', 'M-HD-', 1, 100000),
('NP/18-07/010', 'M-HD-', 5, 10000000),
('NP/18-07/011', 'M-HD-', 1, 100000),
('NP/18-07/012', 'M-HD-', 3, 10000000),
('NP/18-07/013', 'M-HD-', 2, 10000000),
('NP/18-07/014', 'SGM01', 1, 350000),
('NP/18-07/015', 'SGM01', 1, 350000),
('NP/18-07/015', 'M-HD-', 5, 10000000),
('NP/18-07/001', 'M-HD-', 5, 190000),
('NP/18-07/001', 'M-HD-', 5, 190000);

-- --------------------------------------------------------

--
-- Table structure for table `detailtrnsfr`
--

CREATE TABLE `detailtrnsfr` (
  `Nota_Transfer` varchar(12) NOT NULL,
  `Id_Barang` varchar(5) NOT NULL,
  `Qty` int(5) DEFAULT NULL,
  `Harga_Jual` double(8,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailtrnsfr`
--

INSERT INTO `detailtrnsfr` (`Nota_Transfer`, `Id_Barang`, `Qty`, `Harga_Jual`) VALUES
('NT/18-07/001', 'SGM01', 10, 350000),
('NT/18-07/001', 'SGM02', 10, 350000),
('NT/18-07/001', 'SGM03', 10, 400000),
('NT/18-07/002', 'SGM01', 10, 350000),
('NT/18-07/003', 'iyu', 22, 7877),
('NT/18-07/004', 'SGM01', 5, 350000),
('NT/18-07/005', 'SGM03', 5, 400000),
('NT/18-07/001', 'M-HD-', 10, 190000),
('NT/18-07/002', 'M-HD-', 15, 190000),
('NT/18-07/003', 'M-HD-', 5, 190000),
('NT/18-07/004', 'M-HD-', 2, 190000);

-- --------------------------------------------------------

--
-- Table structure for table `hisbarang`
--

CREATE TABLE `hisbarang` (
  `No_Urut` int(5) NOT NULL,
  `Id_Barang` varchar(10) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Keterangan` varchar(25) NOT NULL,
  `Nobukti` varchar(12) NOT NULL,
  `QtyMasuk` int(5) NOT NULL,
  `QtyKeluar` int(5) NOT NULL,
  `QtySisa` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hisbarang`
--

INSERT INTO `hisbarang` (`No_Urut`, `Id_Barang`, `Tanggal`, `Keterangan`, `Nobukti`, `QtyMasuk`, `QtyKeluar`, `QtySisa`) VALUES
(108, 'M-HD-002', '2018-07-29 16:50:16', 'Saldo Awal', '-', 50, 0, 50),
(109, 'M-HD-001', '2018-07-29 16:50:16', 'Saldo Awal', '-', 50, 0, 50),
(110, 'M-HD-003', '2018-07-29 16:50:16', 'Saldo Awal', '-', 30, 0, 30),
(111, 'M-HD-002', '2018-07-29 00:00:00', 'Pembelian', 'NP/18-07/001', 5, 0, 55),
(112, 'M-HD-002', '2018-07-29 00:00:00', 'Pembelian', 'NP/18-07/001', 5, 0, 60),
(113, 'M-HD-002', '2018-07-29 00:00:00', 'Transfer', 'NT/18-07/001', 0, 10, 50),
(114, 'M-HD-002', '2018-07-29 00:00:00', 'Transfer', 'NT/18-07/002', 0, 15, 35),
(115, 'M-HD-002', '2018-07-29 00:00:00', 'Transfer', 'NT/18-07/003', 0, 5, 30),
(116, 'M-HD-002', '2018-07-29 00:00:00', 'Transfer', 'NT/18-07/004', 0, 2, 28);

-- --------------------------------------------------------

--
-- Table structure for table `persediaan`
--

CREATE TABLE `persediaan` (
  `Tanggal` datetime NOT NULL,
  `No_Urut` int(11) NOT NULL,
  `Id_Barang` varchar(10) NOT NULL,
  `Stok_Awal` double(12,0) NOT NULL,
  `Stok_Minimal` double(12,0) NOT NULL,
  `Harga_Beli` double(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persediaan`
--

INSERT INTO `persediaan` (`Tanggal`, `No_Urut`, `Id_Barang`, `Stok_Awal`, `Stok_Minimal`, `Harga_Beli`) VALUES
('2018-07-26 08:07:36', 51, 'M-HD-005', 4, 5, 100000),
('2018-07-26 09:27:32', 52, 'M-HD-001', 10, 25, 10000000),
('2018-07-29 16:50:16', 53, 'M-HD-002', 50, 10, 150000),
('2018-07-29 16:50:16', 54, 'M-HD-001', 50, 10, 150000),
('2018-07-29 16:50:16', 55, 'M-HD-003', 30, 10, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Id_Supplier` varchar(5) NOT NULL,
  `Nama_Supplier` varchar(20) NOT NULL,
  `Alamat` varchar(15) NOT NULL,
  `No_Telp` varchar(12) NOT NULL,
  `Contact_Person` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Id_Supplier`, `Nama_Supplier`, `Alamat`, `No_Telp`, `Contact_Person`) VALUES
('SP01', 'PT Asri', 'Jombang', '05199881', 'Bp Karim'),
('SP02', 'PT Udel Buntu', 'Kediri', '065187777', 'Ibu Lala'),
('SP03', 'PT Surajaya', 'Gurah', '081', 'Bpk lala');

-- --------------------------------------------------------

--
-- Table structure for table `suratjalan`
--

CREATE TABLE `suratjalan` (
  `No_SJ` varchar(15) NOT NULL,
  `Nota_Transfer` varchar(15) NOT NULL,
  `No_Plat` varchar(8) NOT NULL,
  `Nama_Kendaraan` varchar(10) NOT NULL,
  `Nama_Supir` varchar(20) NOT NULL,
  `Tujuan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suratjalan`
--

INSERT INTO `suratjalan` (`No_SJ`, `Nota_Transfer`, `No_Plat`, `Nama_Kendaraan`, `Nama_Supir`, `Tujuan`) VALUES
('SJ/18-07/001', 'NT/18-07/002', 'ag001c', 'trek', 'llolo', 'kediri'),
('SJ/18-07/002', 'NT/18-07/003', 'd576f', 'gg', 'lili', 'kediri'),
('SJ/18-07/003', 'NT/18-07/001', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `Id_Toko` varchar(10) NOT NULL,
  `Nama_Toko` varchar(20) NOT NULL,
  `Alamat` varchar(15) NOT NULL,
  `No_Telp` varchar(12) NOT NULL,
  `Pemilik_Toko` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`Id_Toko`, `Nama_Toko`, `Alamat`, `No_Telp`, `Pemilik_Toko`) VALUES
('TK01', 'Toko Honda Lala', 'Kediri', '032176768', 'Bpk Sukses'),
('TK02', 'Toko Honda Lele', 'Mojokerto', '032176789', 'Ibu Salam'),
('TK05', 'Toko Honda Lili', 'Kediri', '0819991020', 'Ibu Sahara');

-- --------------------------------------------------------

--
-- Table structure for table `transpemb`
--

CREATE TABLE `transpemb` (
  `No_Transaksi` varchar(12) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Nama_Supplier` varchar(20) NOT NULL,
  `Gtotal` double(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transpemb`
--

INSERT INTO `transpemb` (`No_Transaksi`, `Tanggal`, `Nama_Supplier`, `Gtotal`) VALUES
('NP/18-07/001', '2018-07-29 00:00:00', 'PT Udel Buntu', 1900000);

-- --------------------------------------------------------

--
-- Table structure for table `trnsfrbrg`
--

CREATE TABLE `trnsfrbrg` (
  `Nota_Transfer` varchar(12) NOT NULL,
  `Tanggal` date NOT NULL,
  `Id_Toko` varchar(5) NOT NULL,
  `Gtotal` double(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trnsfrbrg`
--

INSERT INTO `trnsfrbrg` (`Nota_Transfer`, `Tanggal`, `Id_Toko`, `Gtotal`) VALUES
('NT/18-07/001', '2018-07-29', 'TK02', 1900000),
('NT/18-07/002', '2018-07-29', 'TK02', 1900000),
('NT/18-07/003', '2018-07-29', 'TK01', 950000),
('NT/18-07/004', '2018-07-29', 'TK05', 380000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Id_Barang`);

--
-- Indexes for table `hisbarang`
--
ALTER TABLE `hisbarang`
  ADD PRIMARY KEY (`No_Urut`);

--
-- Indexes for table `persediaan`
--
ALTER TABLE `persediaan`
  ADD PRIMARY KEY (`No_Urut`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Id_Supplier`);

--
-- Indexes for table `suratjalan`
--
ALTER TABLE `suratjalan`
  ADD PRIMARY KEY (`No_SJ`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`Id_Toko`);

--
-- Indexes for table `transpemb`
--
ALTER TABLE `transpemb`
  ADD PRIMARY KEY (`No_Transaksi`);

--
-- Indexes for table `trnsfrbrg`
--
ALTER TABLE `trnsfrbrg`
  ADD PRIMARY KEY (`Nota_Transfer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hisbarang`
--
ALTER TABLE `hisbarang`
  MODIFY `No_Urut` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `persediaan`
--
ALTER TABLE `persediaan`
  MODIFY `No_Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
