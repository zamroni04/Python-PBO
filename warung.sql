-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jul 2021 pada 08.09
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(8) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kuantitas` int(8) NOT NULL,
  `harga_beli` int(8) NOT NULL,
  `harga_jual` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `kuantitas`, `harga_beli`, `harga_jual`) VALUES
(2, 'Mie Sedap Bakso', 125, 2000, 2500),
(6, 'Mie Sedap Soto', 100, 2000, 2500),
(7, 'Mie Sedap Soto', 100, 2000, 2500),
(8, 'Mie Sedap Soto', 100, 2000, 2500),
(9, 'Mie Sedap Soto', 100, 2000, 2500),
(10, 'Bango 750 mL', 125, 1000, 1500),
(11, 'Mie Sedap Soto', 100, 2000, 2500),
(12, 'Mie Sedap Soto', 100, 2000, 2500),
(16, 'Mie Sedap Soto', 100, 2000, 2500),
(17, 'Oskadon', 125, 1000, 1500),
(19, 'Oskadon', 125, 1000, 1500),
(20, 'Oskadon', 125, 1000, 1500),
(21, 'Oskadon', 125, 1000, 1500),
(22, 'Oskadon', 125, 1000, 1500),
(23, 'Wipol Lantai 1 Liter', 125, 1000, 1500),
(24, 'Oskadon', 125, 1000, 1500),
(25, 'Oskadon', 125, 1000, 1500),
(26, 'Mie Sedap Rawon', 125, 1000, 1500),
(27, 'Bango 750 mL', 125, 1000, 1500),
(28, 'Mie Sedap Soto Madura', 125, 1000, 1500),
(29, 'Mie Sedap Soto Madura', 125, 1000, 1500),
(30, 'Mie Sedap Soto Madura', 125, 1000, 1500),
(32, 'Mie Sedap Soto Madura', 125, 1000, 1500),
(33, 'Mie Sedap Soto Madura', 125, 1000, 1500),
(34, 'Mie Sedap Soto Madura', 125, 1000, 1500),
(35, 'Mie Sedap Soto Madura', 125, 1000, 1500),
(37, 'Oskadon', 125, 1000, 1500),
(38, 'Mie Sedap Soto Spesial', 125, 1000, 1500),
(39, 'Panadol', 500, 7500, 12000),
(40, 'Mie Sedap Soto Madura', 125, 1000, 1500),
(41, 'Mie Sedap Soto Madura', 125, 1000, 1500),
(42, 'Mie Sedap Soto Madura', 125, 1000, 1500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(8) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `no_hp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `no_hp`) VALUES
(1, 'Naruto', 123456789),
(2, 'Sasuke', 123456789);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(8) NOT NULL,
  `id_pegawai` int(8) NOT NULL,
  `id_barang` int(8) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `kuantitas` int(11) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pegawai`, `id_barang`, `waktu`, `kuantitas`, `harga_satuan`, `jumlah`) VALUES
(8, 2, 2, '2021-07-07 06:32:21', 125, 2000, 250000),
(9, 1, 20, '2021-07-07 06:32:41', 125, 1000, 125000),
(10, 1, 20, '2021-07-07 06:37:06', 125, 1000, 125000),
(11, 1, 20, '2021-07-08 06:07:15', 125, 1000, 125000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(8) NOT NULL,
  `id_pegawai` int(8) NOT NULL,
  `id_barang` int(8) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kuantitas` int(11) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_pegawai`, `id_barang`, `waktu`, `kuantitas`, `harga_satuan`, `jumlah`) VALUES
(1, 2, 10, '2021-07-06 02:03:15', 12, 1000, 12000),
(2, 1, 20, '2021-07-07 07:38:42', 10, 1500, 15000),
(3, 1, 2, '2021-07-07 07:38:58', 10, 2500, 25000),
(4, 1, 21, '2021-07-07 07:39:07', 10, 1500, 15000),
(5, 1, 21, '2021-07-08 06:07:18', 10, 1500, 15000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `barang_beli` (`id_barang`),
  ADD KEY `pegawai_beli` (`id_pegawai`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `barang_jual` (`id_barang`),
  ADD KEY `pegawai_jual` (`id_pegawai`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `barang_beli` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `pegawai_beli` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `barang_jual` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `pegawai_jual` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
