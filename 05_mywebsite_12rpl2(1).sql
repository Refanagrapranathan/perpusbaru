-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jan 2022 pada 04.49
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `05_mywebsite_12rpl2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nis` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(9) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nis`, `nama`, `jk`, `tempat_lahir`, `tanggal_lahir`, `id_kelas`, `id_jurusan`, `nomor_telepon`, `alamat`) VALUES
(9, 3245, 'super', 'P', 'jakarta', '2022-01-05', 112, 111, '0852456', 'dafasf'),
(10, 123, 'rikoooo', 'L', 'jakart', '2022-01-21', 112, 112, '08524564', 'b'),
(11, 1232412, 'aris', 'XIIRPL1', 'jakarta', '2022-01-06', 221, 112, '08524564', 'ghh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_buku` char(5) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` char(4) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul_buku`, `penulis`, `penerbit`, `tahun_terbit`, `id_rak`, `stok`) VALUES
(1111, '01012', 'Sangkuriang', 'Ucup', 'PT. JAYA ABADI', '2005', 768, 5),
(645456, '54574', 'gdfdvbd', 'dfddbdf', 'dhdhdfhd', '7655', 645, 64645);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(111, 'TKR'),
(112, 'RPL'),
(645, 'TAV');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(111, 'IPA 1'),
(112, 'IPA 2'),
(221, 'IPS 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `denda` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama`, `jabatan`, `nomor_telepon`, `alamat`) VALUES
(111, 'Lolan', 'Boss', '089574863453', 'Bekasi'),
(112, 'Adam', 'HRD', '089573823654', 'Bekasi'),
(114, 'Dudung fsfsf', 'Staff', '089574863453', 'Bogor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(50) NOT NULL,
  `lokasi_rak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id_rak`, `nama_rak`, `lokasi_rak`) VALUES
(543, 'gii', 'gerd'),
(645, 'aaaaa', 'Belakang'),
(768, 'ini rak', 'depan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `id_kelas` (`id_kelas`,`id_jurusan`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_rak` (`id_rak`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_anggota` (`id_anggota`,`id_petugas`),
  ADD KEY `id_petugas2` (`id_petugas`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_anggota` (`id_anggota`,`id_petugas`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=646;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `id_jurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `id_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
