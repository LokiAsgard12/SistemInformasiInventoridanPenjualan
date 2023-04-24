-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2022 pada 11.03
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konveksi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pel` int(15) NOT NULL,
  `no_pel` varchar(25) NOT NULL,
  `nama_pel` varchar(50) NOT NULL,
  `no_telp` varchar(25) NOT NULL,
  `alamat_pel` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pel`, `no_pel`, `nama_pel`, `no_telp`, `alamat_pel`, `tanggal`) VALUES
(2, 'PEL-001', 'abd', 'ase', 'asc', '2022-06-30'),
(4, 'PEL-004', 'Mursidi', '0819806752', 'Jl. Swadaya ', '2022-08-06'),
(5, 'PEL-005', 'Mahmud', '0813791092', 'Jl. Mahmudin', '2022-08-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pemb` int(15) NOT NULL,
  `no_struk_pemb` varchar(20) NOT NULL,
  `kd_brg_pemb` varchar(20) NOT NULL,
  `nama_brg_pemb` varchar(13) NOT NULL,
  `nama_sup_pemb` varchar(13) NOT NULL,
  `jumlah_pemb` int(25) NOT NULL,
  `harga_pemb` varchar(25) NOT NULL,
  `total_pemb` varchar(25) NOT NULL,
  `tgl_pemb` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pemb`, `no_struk_pemb`, `kd_brg_pemb`, `nama_brg_pemb`, `nama_sup_pemb`, `jumlah_pemb`, `harga_pemb`, `total_pemb`, `tgl_pemb`) VALUES
(14, 'NSPM-004', 'KDBM-002', 'Kancing Paski', 'Murd', 10, '10000', '100000', '2022-08-01'),
(16, 'NSPM-006', 'KDBM-004', 'Benang Putih', 'Toko Murd', 40, '1000', '40000', '2022-08-19'),
(18, 'NSPM-007', 'KDBM-004', 'Benang Putih', 'Toko Murd', 10, '1500', '15000', '2022-08-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penj` int(15) NOT NULL,
  `no_struk_penj` varchar(15) NOT NULL,
  `kd_brg_penj` varchar(15) NOT NULL,
  `nama_brg_penj` varchar(50) NOT NULL,
  `nama_plgn_penj` varchar(50) NOT NULL,
  `jumlah_penj` int(20) NOT NULL,
  `harga_penj` varchar(25) NOT NULL,
  `total_penj` varchar(25) NOT NULL,
  `tgl_penj` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penj`, `no_struk_penj`, `kd_brg_penj`, `nama_brg_penj`, `nama_plgn_penj`, `jumlah_penj`, `harga_penj`, `total_penj`, `tgl_penj`) VALUES
(3, 'NSPJ-001', 'KDBJ-001', 'Topi Pramuka', 'Mursidi', 1, '10000', '10000', '2022-08-06'),
(4, 'NSPJ-004', 'KDBJ-001', 'Topi Pramuka', 'Mursidi', 90, '10000', '900000', '2022-08-12'),
(5, 'NSPJ-005', 'KDBJ-004', 'Celana Pramuka', 'Murtono', 20, '50000', '1000000', '2022-08-11'),
(8, 'NSPJ-006', 'KDBJ-005', 'Baju Putih', 'Subhan', 20, '40000', '800000', '2022-08-17'),
(9, 'NSPJ-007', 'KDBJ-004', 'Celana Pramuka', 'Samsudin', 5, '50000', '250000', '2022-08-05'),
(11, 'NSPJ-008', 'KDBJ-004', 'Celana Pramuka', 'Irsyad', 10, '50000', '500000', '2022-08-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_sup` int(15) NOT NULL,
  `no_sup` varchar(15) NOT NULL,
  `nama_sup` varchar(50) NOT NULL,
  `no_telp` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_sup`, `no_sup`, `nama_sup`, `no_telp`, `alamat`, `tanggal`) VALUES
(2, 'SPL-001', 'Murd', '098312314', 'asdasdawd', '2022-07-08'),
(3, 'SPL-003', 'Mahmud', '0817635212', 'Jl. Tanah Bang', '2022-08-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_brg_jadi`
--

CREATE TABLE `tb_brg_jadi` (
  `id` int(15) NOT NULL,
  `kd_brg_jadi` varchar(15) NOT NULL,
  `nama_brg_jadi` varchar(100) NOT NULL,
  `jumlah_brg_jadi` varchar(50) NOT NULL,
  `harga_brg_jadi` varchar(50) NOT NULL,
  `ket_brg_jadi` varchar(100) NOT NULL,
  `tanggal_brg_jadi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_brg_jadi`
--

INSERT INTO `tb_brg_jadi` (`id`, `kd_brg_jadi`, `nama_brg_jadi`, `jumlah_brg_jadi`, `harga_brg_jadi`, `ket_brg_jadi`, `tanggal_brg_jadi`) VALUES
(22, 'KDBJ-001', 'Topi Pramuka', '50', '10000', '', '2022-08-13'),
(23, 'KDBJ-003', 'Baju Pramuka', '100', '40000', '', '2022-08-20'),
(24, 'KDBJ-004', 'Celana Pramuka', '50', '50000', '', '2022-08-19'),
(25, 'KDBJ-005', 'Baju Putih', '50', '40000', '', '2022-08-20'),
(26, 'KDBJ-006', 'Baju Batik', '20', '40000', '', '2022-08-12'),
(27, 'KDBJ-007', 'Baju Pramuka Siaga', '50', '65000', '', '2022-08-23'),
(29, 'KDBJ-008', 'Baju Putih Panjang', '50', '50000', '', '2022-08-18'),
(30, 'KDBJ-009', 'Baju Paskibra Panjang', '20', '40000', '', '2022-08-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_brg_jadi_keluar`
--

CREATE TABLE `tb_brg_jadi_keluar` (
  `id` int(15) NOT NULL,
  `id_brg_jadi_keluar` varchar(20) NOT NULL,
  `kd_brg_jadi` varchar(20) NOT NULL,
  `nama_brg_jadi` varchar(50) NOT NULL,
  `stok_brg_jadi_keluar` int(50) NOT NULL,
  `harga_brg_jadi` varchar(59) NOT NULL,
  `ket_brg_jadi` varchar(100) NOT NULL,
  `tanggal_brg_jadi_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_brg_jadi_keluar`
--

INSERT INTO `tb_brg_jadi_keluar` (`id`, `id_brg_jadi_keluar`, `kd_brg_jadi`, `nama_brg_jadi`, `stok_brg_jadi_keluar`, `harga_brg_jadi`, `ket_brg_jadi`, `tanggal_brg_jadi_keluar`) VALUES
(15, 'BJDK-003', 'KDBJ-003', 'Baju Pramuka', 90, '40000', '', '2022-08-18'),
(16, 'BJDK-004', 'KDBJ-001', 'Topi Pramuka', 40, '10000', '', '2022-08-10'),
(18, 'BJDK-005', 'KDBJ-008', 'Baju Putih Panjang', 30, '50000', '', '2022-08-07');

--
-- Trigger `tb_brg_jadi_keluar`
--
DELIMITER $$
CREATE TRIGGER `t_jadi_keluar` AFTER INSERT ON `tb_brg_jadi_keluar` FOR EACH ROW BEGIN
	UPDATE tb_brg_jadi SET jumlah_brg_jadi= jumlah_brg_jadi - NEW.stok_brg_jadi_keluar
    WHERE kd_brg_jadi = NEW.kd_brg_jadi;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_keluar_delete` AFTER DELETE ON `tb_brg_jadi_keluar` FOR EACH ROW BEGIN
	UPDATE tb_brg_jadi SET jumlah_brg_jadi
= jumlah_brg_jadi + OLD.stok_brg_jadi_keluar
    WHERE kd_brg_jadi = OLD.kd_brg_jadi;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_brg_jadi_masuk`
--

CREATE TABLE `tb_brg_jadi_masuk` (
  `id` int(15) NOT NULL,
  `id_brg_jadi_masuk` varchar(20) NOT NULL,
  `kd_brg_jadi` varchar(20) NOT NULL,
  `nama_brg_jadi` varchar(25) NOT NULL,
  `stok_brg_jadi_masuk` int(50) NOT NULL,
  `harga_jadi` varchar(50) NOT NULL,
  `ket_brg_jadi` varchar(100) NOT NULL,
  `tanggal_brg_jadi_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_brg_jadi_masuk`
--

INSERT INTO `tb_brg_jadi_masuk` (`id`, `id_brg_jadi_masuk`, `kd_brg_jadi`, `nama_brg_jadi`, `stok_brg_jadi_masuk`, `harga_jadi`, `ket_brg_jadi`, `tanggal_brg_jadi_masuk`) VALUES
(24, 'IDBJM-004', 'KDBJ-001', 'Topi Pramuka', 100, '10000', '', '2022-08-06'),
(25, 'IDBJM-005', 'KDBJ-003', 'Baju Pramuka', 50, '40000', '', '2022-08-18'),
(26, 'IDBJM-006', 'KDBJ-003', 'Baju Pramuka', 40, '40000', '', '2022-08-18');

--
-- Trigger `tb_brg_jadi_masuk`
--
DELIMITER $$
CREATE TRIGGER `auto_berkurang_jadi` AFTER DELETE ON `tb_brg_jadi_masuk` FOR EACH ROW BEGIN
	UPDATE tb_brg_jadi SET jumlah_brg_jadi= jumlah_brg_jadi - OLD.stok_brg_jadi_masuk
    WHERE kd_brg_jadi = OLD.kd_brg_jadi;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `auto_bertambah` AFTER INSERT ON `tb_brg_jadi_masuk` FOR EACH ROW BEGIN
	UPDATE tb_brg_jadi SET jumlah_brg_jadi = jumlah_brg_jadi + NEW.stok_brg_jadi_masuk
    WHERE kd_brg_jadi = NEW.kd_brg_jadi;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_brg_mth`
--

CREATE TABLE `tb_brg_mth` (
  `id` int(25) NOT NULL,
  `kd_brg_mth` varchar(20) NOT NULL,
  `nama_brg_mth` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `jumlah_brg_mth` int(50) NOT NULL,
  `ket_brg_mth` varchar(100) NOT NULL,
  `tanggal_brg_mth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_brg_mth`
--

INSERT INTO `tb_brg_mth` (`id`, `kd_brg_mth`, `nama_brg_mth`, `supplier`, `jumlah_brg_mth`, `ket_brg_mth`, `tanggal_brg_mth`) VALUES
(9, 'KDBM-002', 'Kancing Paskibra', 'Murd', 110, '', '2022-08-06'),
(32, 'KDBM-003', 'Benang', 'Toko Aci', 100, '', '2022-08-06'),
(34, 'KDBM-004', 'Benang Putih', 'Toko Murd', 100, '', '2022-08-06'),
(36, 'KDBM-005', 'Kancing', 'Toko Mantri', 100, '', '2022-08-13'),
(37, 'KDBM-006', 'Kain ', 'Toko Aci', 100, '', '2022-08-23'),
(38, 'KDBM-007', 'Kerah Baju', 'Toko Aci', 40, '', '2022-08-13'),
(39, 'KDBM-008', 'Kancing Pramuka', 'Toko Murdi', 100, '', '2022-08-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_brg_mth_keluar`
--

CREATE TABLE `tb_brg_mth_keluar` (
  `id` int(15) NOT NULL,
  `id_brg_mth_keluar` varchar(20) NOT NULL,
  `kd_brg_mth` varchar(20) NOT NULL,
  `nama_brg_mth` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `stok_brg_mth_keluar` int(50) NOT NULL,
  `ket_brg_mth` varchar(100) NOT NULL,
  `tanggal_brg_mth_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_brg_mth_keluar`
--

INSERT INTO `tb_brg_mth_keluar` (`id`, `id_brg_mth_keluar`, `kd_brg_mth`, `nama_brg_mth`, `supplier`, `stok_brg_mth_keluar`, `ket_brg_mth`, `tanggal_brg_mth_keluar`) VALUES
(2, 'IDBGK-001', 'KDBG-002', 'Karet', 'Murd', 20, '', '2022-08-06'),
(3, 'IDBGK-003', 'KDBG-002', 'Karet', 'Murd', 20, '', '2022-08-27'),
(8, 'IDBGK-007', 'KDBM-005', 'Kancing', 'Toko Mantri', 50, '', '2022-08-23'),
(10, 'IDBGK-008', 'KDBM-002', 'Karet', 'Murd', 10, '', '2022-08-13');

--
-- Trigger `tb_brg_mth_keluar`
--
DELIMITER $$
CREATE TRIGGER `t_keluar` AFTER INSERT ON `tb_brg_mth_keluar` FOR EACH ROW BEGIN
	UPDATE tb_brg_mth SET jumlah_brg_mth = jumlah_brg_mth - NEW.stok_brg_mth_keluar
    WHERE kd_brg_mth = NEW.kd_brg_mth;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tb_batal` AFTER DELETE ON `tb_brg_mth_keluar` FOR EACH ROW BEGIN
	UPDATE tb_brg_mth SET jumlah_brg_mth = jumlah_brg_mth + OLD.stok_brg_mth_keluar
    WHERE kd_brg_mth = OLD.kd_brg_mth;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_brg_mth_masuk`
--

CREATE TABLE `tb_brg_mth_masuk` (
  `id` int(15) NOT NULL,
  `id_brg_mth_masuk` varchar(20) NOT NULL,
  `kd_brg_mth` varchar(20) NOT NULL,
  `nama_brg_mth` varchar(25) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `stok_brg_mth_masuk` int(100) NOT NULL,
  `ket_brg_mth` varchar(100) NOT NULL,
  `tanggal_brg_mth_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_brg_mth_masuk`
--

INSERT INTO `tb_brg_mth_masuk` (`id`, `id_brg_mth_masuk`, `kd_brg_mth`, `nama_brg_mth`, `supplier`, `stok_brg_mth_masuk`, `ket_brg_mth`, `tanggal_brg_mth_masuk`) VALUES
(2, 'IDBGM-002', 'KDBG-002', 'Karet', 'Murd', 20, '', '2022-08-06'),
(14, 'IDBGM-005', 'KDBM-006', 'Kain ', 'Toko Aci', 30, '', '2022-08-23'),
(15, 'IDBGM-006', 'KDBM-006', 'Kain ', 'Toko Aci', 50, '', '2022-08-23'),
(17, 'IDBGM-007', 'KDBM-005', 'Kancing', 'Toko Mantri', 20, '', '2022-08-17'),
(18, 'IDBGM-008', 'KDBM-004', 'Benang Putih', 'Toko Murd', 20, '', '2022-08-19'),
(20, 'IDBGM-009', 'KDBM-002', 'Kancing Paskibra', 'Murd', 10, '', '2022-08-17');

--
-- Trigger `tb_brg_mth_masuk`
--
DELIMITER $$
CREATE TRIGGER `auto_berkurang_masuk` AFTER DELETE ON `tb_brg_mth_masuk` FOR EACH ROW BEGIN
	UPDATE tb_brg_mth SET jumlah_brg_mth = jumlah_brg_mth - OLD.stok_brg_mth_masuk
    WHERE kd_brg_mth = OLD.kd_brg_mth;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `auto_bertambah_mth` AFTER INSERT ON `tb_brg_mth_masuk` FOR EACH ROW BEGIN
	UPDATE tb_brg_mth SET jumlah_brg_mth = jumlah_brg_mth + NEW.stok_brg_mth_masuk
    WHERE kd_brg_mth = NEW.kd_brg_mth;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pel`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pemb`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penj`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_sup`);

--
-- Indeks untuk tabel `tb_brg_jadi`
--
ALTER TABLE `tb_brg_jadi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_brg_jadi_keluar`
--
ALTER TABLE `tb_brg_jadi_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_brg_jadi_masuk`
--
ALTER TABLE `tb_brg_jadi_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_brg_mth`
--
ALTER TABLE `tb_brg_mth`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_brg_mth_keluar`
--
ALTER TABLE `tb_brg_mth_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_brg_mth_masuk`
--
ALTER TABLE `tb_brg_mth_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pel` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pemb` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penj` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_sup` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_brg_jadi`
--
ALTER TABLE `tb_brg_jadi`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tb_brg_jadi_keluar`
--
ALTER TABLE `tb_brg_jadi_keluar`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_brg_jadi_masuk`
--
ALTER TABLE `tb_brg_jadi_masuk`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tb_brg_mth`
--
ALTER TABLE `tb_brg_mth`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `tb_brg_mth_keluar`
--
ALTER TABLE `tb_brg_mth_keluar`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_brg_mth_masuk`
--
ALTER TABLE `tb_brg_mth_masuk`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
