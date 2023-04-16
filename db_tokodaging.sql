-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2023 pada 16.50
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokodaging`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_daging`
--

CREATE TABLE `tb_daging` (
  `Id_Daging` varchar(10) NOT NULL,
  `Id_Pegawai` varchar(7) NOT NULL,
  `Kode_daging` varchar(10) NOT NULL,
  `Harga` varchar(15) NOT NULL,
  `Merk` varchar(15) NOT NULL,
  `Masuk` varchar(15) NOT NULL,
  `Keluar` varchar(15) NOT NULL,
  `Total` varchar(20) NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_distributor`
--

CREATE TABLE `tb_distributor` (
  `Id_Distributor` varchar(7) NOT NULL,
  `Nama_Dis` varchar(20) NOT NULL,
  `No_Telp` varchar(15) NOT NULL,
  `Jumlah_Stok` int(15) NOT NULL,
  `Email` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `Id_Konsumen` varchar(7) NOT NULL,
  `Id_User` varchar(7) NOT NULL,
  `Nama_Konsumen` varchar(15) NOT NULL,
  `No_Telp` varchar(15) NOT NULL,
  `Alamat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `Id_Pegawai` varchar(7) NOT NULL,
  `Id_User` varchar(7) NOT NULL,
  `Nama_Pegawai` varchar(15) NOT NULL,
  `Alamat` varchar(15) NOT NULL,
  `No_Telp` varchar(15) NOT NULL,
  `Email` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `Id_Pelanggan` varchar(7) NOT NULL,
  `Id_User` varchar(7) NOT NULL,
  `Nama_Pelanggan` varchar(15) NOT NULL,
  `Alamat` varchar(10) NOT NULL,
  `No-Telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemasukan`
--

CREATE TABLE `tb_pemasukan` (
  `Id_Pemasukan` varchar(7) NOT NULL,
  `Id_Pegawai` varchar(7) NOT NULL,
  `Id_Distributor` varchar(7) NOT NULL,
  `Jumlah_Stok` varchar(15) NOT NULL,
  `Merk` varchar(15) NOT NULL,
  `Kas_masuk` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengeluaran`
--

CREATE TABLE `tb_pengeluaran` (
  `Id_Pengeluaran` varchar(7) NOT NULL,
  `Id_Pegawai` varchar(7) NOT NULL,
  `Id_Suplier` varchar(7) NOT NULL,
  `Merk` varchar(15) NOT NULL,
  `Kas_keluar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penukaranpoin`
--

CREATE TABLE `tb_penukaranpoin` (
  `Id_penukaran` varchar(7) NOT NULL,
  `Id_Poin` varchar(7) NOT NULL,
  `Id_Pelanggan` varchar(7) NOT NULL,
  `Id_Konsumen` varchar(7) NOT NULL,
  `Jumlah_Transaksi` int(15) NOT NULL,
  `Total_Poin` int(15) NOT NULL,
  `Hadiah` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_poin`
--

CREATE TABLE `tb_poin` (
  `Id_Poin` varchar(7) NOT NULL,
  `Id_Pelanggan` varchar(7) NOT NULL,
  `Id_Konsumen` varchar(7) NOT NULL,
  `Jumlah_Transaksi` int(15) NOT NULL,
  `Total_Poin` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayattransaksi`
--

CREATE TABLE `tb_riwayattransaksi` (
  `Id_RiwayatTransaksi` varchar(7) NOT NULL,
  `Id_Pelanggan` varchar(7) NOT NULL,
  `Id_Konsumen` varchar(7) NOT NULL,
  `Jumlah_barang` int(15) NOT NULL,
  `Tanggal_Transaksi` date NOT NULL,
  `Merk` varchar(10) NOT NULL,
  `Total` varchar(20) NOT NULL,
  `Metode_bayar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_saran_kritik`
--

CREATE TABLE `tb_saran_kritik` (
  `Id_Saran` varchar(7) NOT NULL,
  `Id_Pelanggan` varchar(7) NOT NULL,
  `Id_Konsumen` varchar(7) NOT NULL,
  `Kritik` varchar(20) NOT NULL,
  `Tanggal` varchar(15) NOT NULL,
  `Email` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suplier`
--

CREATE TABLE `tb_suplier` (
  `Id_Suplier` varchar(7) NOT NULL,
  `Nama_Suplier` varchar(20) NOT NULL,
  `No_Telp` varchar(15) NOT NULL,
  `Perusahaan` varchar(20) NOT NULL,
  `Alamat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi_penjualan`
--

CREATE TABLE `tb_transaksi_penjualan` (
  `Id_TransaksiPen` varchar(7) NOT NULL,
  `Id_RiwayatTransaksi` varchar(7) NOT NULL,
  `Id_Daging` varchar(7) NOT NULL,
  `Jumlah_Transaksi` int(15) NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `Id_User` varchar(7) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Email` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_daging`
--
ALTER TABLE `tb_daging`
  ADD PRIMARY KEY (`Id_Daging`),
  ADD UNIQUE KEY `Tanggal` (`Id_Daging`),
  ADD KEY `Id_Pegawai` (`Id_Pegawai`);

--
-- Indeks untuk tabel `tb_distributor`
--
ALTER TABLE `tb_distributor`
  ADD PRIMARY KEY (`Id_Distributor`);

--
-- Indeks untuk tabel `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`Id_Konsumen`),
  ADD KEY `Id_User` (`Id_User`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`Id_Pegawai`),
  ADD KEY `Id_User` (`Id_User`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`Id_Pelanggan`),
  ADD KEY `Id_User` (`Id_User`);

--
-- Indeks untuk tabel `tb_pemasukan`
--
ALTER TABLE `tb_pemasukan`
  ADD PRIMARY KEY (`Id_Pemasukan`),
  ADD KEY `Id_Pegawai` (`Id_Pegawai`),
  ADD KEY `Id_Distributor` (`Id_Distributor`);

--
-- Indeks untuk tabel `tb_pengeluaran`
--
ALTER TABLE `tb_pengeluaran`
  ADD PRIMARY KEY (`Id_Pengeluaran`),
  ADD KEY `Id_Pegawai` (`Id_Pegawai`),
  ADD KEY `Id_Suplier` (`Id_Suplier`);

--
-- Indeks untuk tabel `tb_penukaranpoin`
--
ALTER TABLE `tb_penukaranpoin`
  ADD PRIMARY KEY (`Id_penukaran`),
  ADD KEY `Id_Poin` (`Id_Poin`),
  ADD KEY `Id_Pelanggan` (`Id_Pelanggan`),
  ADD KEY `Id_Konsumen` (`Id_Konsumen`);

--
-- Indeks untuk tabel `tb_poin`
--
ALTER TABLE `tb_poin`
  ADD PRIMARY KEY (`Id_Poin`),
  ADD KEY `Id_Pelanggan` (`Id_Pelanggan`),
  ADD KEY `Id_Konsumen` (`Id_Konsumen`);

--
-- Indeks untuk tabel `tb_riwayattransaksi`
--
ALTER TABLE `tb_riwayattransaksi`
  ADD PRIMARY KEY (`Id_RiwayatTransaksi`),
  ADD KEY `Id_Pelanggan` (`Id_Pelanggan`),
  ADD KEY `Id_Konsumen` (`Id_Konsumen`);

--
-- Indeks untuk tabel `tb_saran_kritik`
--
ALTER TABLE `tb_saran_kritik`
  ADD PRIMARY KEY (`Id_Saran`),
  ADD KEY `Id_Pelanggan` (`Id_Pelanggan`),
  ADD KEY `Id_Konsumen` (`Id_Konsumen`);

--
-- Indeks untuk tabel `tb_suplier`
--
ALTER TABLE `tb_suplier`
  ADD PRIMARY KEY (`Id_Suplier`);

--
-- Indeks untuk tabel `tb_transaksi_penjualan`
--
ALTER TABLE `tb_transaksi_penjualan`
  ADD PRIMARY KEY (`Id_TransaksiPen`),
  ADD KEY `Id_Daging` (`Id_Daging`),
  ADD KEY `Id_RiwayatTransaksi` (`Id_RiwayatTransaksi`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`Id_User`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_daging`
--
ALTER TABLE `tb_daging`
  ADD CONSTRAINT `tb_daging_ibfk_1` FOREIGN KEY (`Id_Pegawai`) REFERENCES `tb_pegawai` (`Id_Pegawai`);

--
-- Ketidakleluasaan untuk tabel `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD CONSTRAINT `tb_konsumen_ibfk_1` FOREIGN KEY (`Id_Konsumen`) REFERENCES `tb_riwayattransaksi` (`Id_Konsumen`),
  ADD CONSTRAINT `tb_konsumen_ibfk_2` FOREIGN KEY (`Id_User`) REFERENCES `tb_user` (`Id_User`);

--
-- Ketidakleluasaan untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD CONSTRAINT `tb_pegawai_ibfk_1` FOREIGN KEY (`Id_User`) REFERENCES `tb_user` (`Id_User`);

--
-- Ketidakleluasaan untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD CONSTRAINT `tb_pelanggan_ibfk_1` FOREIGN KEY (`Id_Pelanggan`) REFERENCES `tb_riwayattransaksi` (`Id_Pelanggan`),
  ADD CONSTRAINT `tb_pelanggan_ibfk_2` FOREIGN KEY (`Id_User`) REFERENCES `tb_user` (`Id_User`);

--
-- Ketidakleluasaan untuk tabel `tb_pemasukan`
--
ALTER TABLE `tb_pemasukan`
  ADD CONSTRAINT `tb_pemasukan_ibfk_1` FOREIGN KEY (`Id_Pegawai`) REFERENCES `tb_pegawai` (`Id_Pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pemasukan_ibfk_2` FOREIGN KEY (`Id_Distributor`) REFERENCES `tb_distributor` (`Id_Distributor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pengeluaran`
--
ALTER TABLE `tb_pengeluaran`
  ADD CONSTRAINT `tb_pengeluaran_ibfk_1` FOREIGN KEY (`Id_Pegawai`) REFERENCES `tb_pegawai` (`Id_Pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pengeluaran_ibfk_2` FOREIGN KEY (`Id_Suplier`) REFERENCES `tb_suplier` (`Id_Suplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_penukaranpoin`
--
ALTER TABLE `tb_penukaranpoin`
  ADD CONSTRAINT `tb_penukaranpoin_ibfk_1` FOREIGN KEY (`Id_Poin`) REFERENCES `tb_poin` (`Id_Poin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_penukaranpoin_ibfk_3` FOREIGN KEY (`Id_Konsumen`) REFERENCES `tb_konsumen` (`Id_Konsumen`),
  ADD CONSTRAINT `tb_penukaranpoin_ibfk_4` FOREIGN KEY (`Id_Pelanggan`) REFERENCES `tb_pelanggan` (`Id_Pelanggan`);

--
-- Ketidakleluasaan untuk tabel `tb_poin`
--
ALTER TABLE `tb_poin`
  ADD CONSTRAINT `tb_poin_ibfk_1` FOREIGN KEY (`Id_Pelanggan`) REFERENCES `tb_pelanggan` (`Id_Pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_poin_ibfk_2` FOREIGN KEY (`Id_Konsumen`) REFERENCES `tb_konsumen` (`Id_Konsumen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_riwayattransaksi`
--
ALTER TABLE `tb_riwayattransaksi`
  ADD CONSTRAINT `tb_riwayattransaksi_ibfk_1` FOREIGN KEY (`Id_Pelanggan`) REFERENCES `tb_pelanggan` (`Id_Pelanggan`);

--
-- Ketidakleluasaan untuk tabel `tb_saran_kritik`
--
ALTER TABLE `tb_saran_kritik`
  ADD CONSTRAINT `tb_saran_kritik_ibfk_1` FOREIGN KEY (`Id_Pelanggan`) REFERENCES `tb_pelanggan` (`Id_Pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_saran_kritik_ibfk_2` FOREIGN KEY (`Id_Konsumen`) REFERENCES `tb_konsumen` (`Id_Konsumen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_transaksi_penjualan`
--
ALTER TABLE `tb_transaksi_penjualan`
  ADD CONSTRAINT `tb_transaksi_penjualan_ibfk_2` FOREIGN KEY (`Id_Daging`) REFERENCES `tb_daging` (`Id_Daging`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_transaksi_penjualan_ibfk_3` FOREIGN KEY (`Id_RiwayatTransaksi`) REFERENCES `tb_riwayattransaksi` (`Id_RiwayatTransaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
