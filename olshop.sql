-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Des 2019 pada 19.26
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aksesoris`
--

CREATE TABLE `aksesoris` (
  `Id_produk` int(15) NOT NULL,
  `Nm_toko` varchar(35) DEFAULT NULL,
  `Harga` varchar(25) DEFAULT NULL,
  `Nm_produk` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aksesoris`
--

INSERT INTO `aksesoris` (`Id_produk`, `Nm_toko`, `Harga`, `Nm_produk`) VALUES
(1111, 'distributoraksesoris', 'Rp11.500-Rp15.000', 'Kalung Titanium Anti Karat Crystal KT45'),
(1112, 'distributoraksesoris', 'Rp9.950', 'Cincin Titanium ANTI KARAT SELAMANYA CT65'),
(1113, 'distributoraksesoris', 'Rp1.500 - Rp8.999', 'Jepit Rambut Korea Mutiara Korean Hairclip Hairpin L11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beauty`
--

CREATE TABLE `beauty` (
  `Id_produk` int(20) NOT NULL,
  `Nm_toko` varchar(35) DEFAULT NULL,
  `Harga` varchar(25) DEFAULT NULL,
  `Nm_produk` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beauty`
--

INSERT INTO `beauty` (`Id_produk`, `Nm_toko`, `Harga`, `Nm_produk`) VALUES
(3331, 'Boss Juragan online', 'Rp24.205', 'Alat Facial Wajah 5 in 1'),
(3332, 'Boss Juragan online', 'Rp13.390', 'Catok Mini Haidi'),
(3333, 'Boss Juragan online', 'Rp3.090', 'Jepitan Bulu Mata'),
(3334, 'Boss Juragan online', 'Rp22.660', 'Cermin Kaca Rias Led'),
(3335, 'Boss Juragan online', 'Rp4.635', 'Spons Beauty Blender'),
(3336, 'Boss Juragan online', 'Rp23.175', 'Kuas set tabung Make Up');

-- --------------------------------------------------------

--
-- Struktur dari tabel `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759);

-- --------------------------------------------------------

--
-- Struktur dari tabel `home`
--

CREATE TABLE `home` (
  `Id-toko` int(10) NOT NULL,
  `Nm_toko` varchar(50) NOT NULL,
  `Jenis_produk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `home`
--

INSERT INTO `home` (`Id-toko`, `Nm_toko`, `Jenis_produk`) VALUES
(1234, 'Boss Juragan Online', 'Alat Kecantikan'),
(1235, 'Belia Cosmetic', 'Kosmetik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `Nm_lengkap` varchar(30) NOT NULL,
  `Alamat` varchar(25) DEFAULT NULL,
  `Komentar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`Nm_lengkap`, `Alamat`, `Komentar`) VALUES
('Ega Agustina', 'Jl.Singa', 'order parfum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kosmetik`
--

CREATE TABLE `kosmetik` (
  `Id_produk` int(6) NOT NULL,
  `Nm_toko` varchar(25) NOT NULL,
  `Harga` varchar(20) NOT NULL,
  `Nm_produk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kosmetik`
--

INSERT INTO `kosmetik` (`Id_produk`, `Nm_toko`, `Harga`, `Nm_produk`) VALUES
(4441, 'Belia Cosmetic', 'Rp70.000 - Rp', 'Maybelline Conc'),
(4442, 'Belia Cosmetic', 'Rp39.000', 'Maybelline Powder Mattes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `parfume`
--

CREATE TABLE `parfume` (
  `Id_produk` int(6) NOT NULL,
  `Nm_toko` varchar(35) DEFAULT NULL,
  `Harga` varchar(20) DEFAULT NULL,
  `Nm_produk` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `parfume`
--

INSERT INTO `parfume` (`Id_produk`, `Nm_toko`, `Harga`, `Nm_produk`) VALUES
(2220, 'toko Parfume', 'Rp72.000', 'Bioaqua Encounter The Parfume Art'),
(2221, 'toko Parfume', 'Rp195.000', 'Baccarat Rouge 540 Edp 2MI'),
(2222, 'toko Parfume', 'Rp167.000', 'Bodyshop Roject Bowhanti 50ml Edp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perawatan`
--

CREATE TABLE `perawatan` (
  `Id_produk` int(16) NOT NULL,
  `Nm_toko` varchar(30) DEFAULT NULL,
  `Harga` varchar(20) DEFAULT NULL,
  `Nm_produk` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perawatan`
--

INSERT INTO `perawatan` (`Id_produk`, `Nm_toko`, `Harga`, `Nm_produk`) VALUES
(5551, 'Avo store Beauty', 'Rp49.557', 'Cethapil pembersih wajah'),
(5552, 'Avo Store Beauty', 'Rp24.700', 'Garnier micellar water'),
(5553, 'Avo Store Beauty', 'Rp169.000', 'Avoskin miraculous refining toner'),
(5554, 'Avo store Beauty', 'Rp28.615', 'Emina sun Protection'),
(5555, 'Avo store Beauty', 'Rp250.000', 'Avoskin basic kit'),
(5556, 'Avo store Beauty', 'Rp80.000', 'Dove deeply nourishing body wash'),
(5557, 'Avo store Beauty', 'Rp5.000', 'gunting kuku karakter'),
(5558, 'Avo store Beauty', 'Rp3.500', 'Rorec natural skin care sheet mask');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aksesoris`
--
ALTER TABLE `aksesoris`
  ADD PRIMARY KEY (`Id_produk`);

--
-- Indeks untuk tabel `beauty`
--
ALTER TABLE `beauty`
  ADD PRIMARY KEY (`Id_produk`);

--
-- Indeks untuk tabel `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indeks untuk tabel `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`Id-toko`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`Nm_lengkap`);

--
-- Indeks untuk tabel `kosmetik`
--
ALTER TABLE `kosmetik`
  ADD PRIMARY KEY (`Id_produk`);

--
-- Indeks untuk tabel `parfume`
--
ALTER TABLE `parfume`
  ADD PRIMARY KEY (`Id_produk`);

--
-- Indeks untuk tabel `perawatan`
--
ALTER TABLE `perawatan`
  ADD PRIMARY KEY (`Id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `home`
--
ALTER TABLE `home`
  MODIFY `Id-toko` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1236;

--
-- AUTO_INCREMENT untuk tabel `kosmetik`
--
ALTER TABLE `kosmetik`
  MODIFY `Id_produk` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4443;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
