-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2023 pada 08.29
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_informasi_samsat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `no_registrasikendaraan`
--

CREATE TABLE `no_registrasikendaraan` (
  `No_Registrasi` int(15) NOT NULL,
  `NomorPolisi` varchar(10) NOT NULL,
  `JenisKendaraan` varchar(20) NOT NULL,
  `Merek` varchar(15) NOT NULL,
  `TahunPembuatan` int(5) NOT NULL,
  `KapasitasMesin` varchar(6) NOT NULL,
  `Warna` varchar(10) NOT NULL,
  `NomorRangka` varchar(12) NOT NULL,
  `NomorMesin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak`
--

CREATE TABLE `pajak` (
  `NoPajak` int(20) NOT NULL,
  `NoRegistrasiKendaraan` varchar(20) NOT NULL,
  `TanggalPajak` varchar(20) NOT NULL,
  `JumlahPajak` varchar(25) NOT NULL,
  `StatusPembayaran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pajak`
--

INSERT INTO `pajak` (`NoPajak`, `NoRegistrasiKendaraan`, `TanggalPajak`, `JumlahPajak`, `StatusPembayaran`) VALUES
(1, 'adaa', 'ada', 'ada', 'ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik`
--

CREATE TABLE `pemilik` (
  `NoKTP` int(25) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Alamat` varchar(25) NOT NULL,
  `NomorTelepon` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `JenisKelamin` varchar(25) NOT NULL,
  `TanggalLahir` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `NoPetugas` int(20) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `NomorTelepon` varchar(20) NOT NULL,
  `Jabatan` varchar(25) NOT NULL,
  `Gaji` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `NoTransaksi` int(20) NOT NULL,
  `NoPajak` int(20) NOT NULL,
  `NoKTPPemilik` varchar(25) NOT NULL,
  `TanggalTransaksi` varchar(25) NOT NULL,
  `JenisTransaksi` varchar(30) NOT NULL,
  `JumlahBayar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` char(10) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id`, `username`, `password`, `level`, `status`) VALUES
(1, 'admin', 'admin', 'admin', 'true');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pajak`
--
ALTER TABLE `pajak`
  ADD PRIMARY KEY (`NoPajak`);

--
-- Indeks untuk tabel `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`NoKTP`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pajak`
--
ALTER TABLE `pajak`
  MODIFY `NoPajak` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pemilik`
--
ALTER TABLE `pemilik`
  MODIFY `NoKTP` int(25) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
