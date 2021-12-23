-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Okt 2021 pada 13.53
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokopekita_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(10, '15wKVT0nej25Y', 2, '2020-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Cart'),
(12, '15PzF03ejd8W2', 1, '2020-05-13 02:40:48', 'Confirmed'),
(13, '16cwPJNnCRgXA', 4, '2021-09-03 04:09:14', 'Confirmed'),
(14, '16lUhyRfRSXIs', 4, '2021-09-03 08:02:35', 'Confirmed'),
(15, '16kJY8LJfmv2o', 6, '2021-09-06 07:05:52', 'Confirmed'),
(16, '16YeN/S.6klBg', 6, '2021-09-06 07:09:53', 'Confirmed'),
(17, '16vQUk0NmMJfU', 9, '2021-10-24 13:25:23', 'Payment'),
(18, '16toLX/Kf/25w', 9, '2021-10-24 13:31:52', 'Confirmed'),
(19, '16jHozrDLl6Qw', 10, '2021-10-26 09:55:24', 'Confirmed'),
(20, '16A8NrabjICeY', 1, '2021-10-26 09:58:23', 'Confirmed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(13, '15wKVT0nej25Y', 1, 100),
(14, '15PzF03ejd8W2', 2, 1),
(15, '16cwPJNnCRgXA', 1, 3),
(16, '16lUhyRfRSXIs', 1, 3),
(17, '16kJY8LJfmv2o', 6, 1),
(18, '16kJY8LJfmv2o', 2, 1),
(19, '16YeN/S.6klBg', 3, 1),
(20, '16lUhyRfRSXIs', 3, 1),
(21, '16vQUk0NmMJfU', 1, 1),
(22, '16toLX/Kf/25w', 1, 2),
(23, '16jHozrDLl6Qw', 1, 1),
(24, '16A8NrabjICeY', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(1, 'T-shirt', '2019-12-20 07:28:34'),
(2, 'Hoodie', '2019-12-20 07:34:17'),
(3, 'Shoes', '2020-03-16 12:15:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`) VALUES
(1, '15PzF03ejd8W2', 1, 'Bank BCA', 'Admin', '2020-05-16', '2020-05-13 02:41:51'),
(2, '16cwPJNnCRgXA', 4, 'Bank BCA', 'AN LARE  TAFNA FARUQ', '2021-12-21', '2021-09-06 07:03:49'),
(3, '16kJY8LJfmv2o', 6, 'Bank BCA', 'AN ALIF FADILLAH', '2003-12-13', '2021-09-06 07:09:11'),
(4, '16YeN/S.6klBg', 6, 'Bank Mandi', 'AN ALIF FADILLAH', '2021-12-31', '2021-09-06 15:57:53'),
(5, '16lUhyRfRSXIs', 4, 'DANA', 'LARE TAFNA FARUQ', '2021-12-10', '2021-10-13 01:00:54'),
(6, '16toLX/Kf/25w', 9, 'Bank BCA', 'aji', '2021-12-20', '2021-10-24 13:35:32'),
(7, '16jHozrDLl6Qw', 10, 'DANA', 'KEVIN', '2021-10-26', '2021-10-26 09:56:40'),
(8, '16A8NrabjICeY', 1, 'Bank BCA', 'ADMIN', '2021-10-26', '2021-10-26 09:59:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(1, 'Admin', 'admin', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '01234567890', 'Indonesia', '2020-03-16 11:31:17', 'Admin', NULL),
(2, 'Guest', 'guest', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2020-03-16 11:30:40', 'Member', NULL),
(3, 'Mochammad Fazhri Akbari', 'mhmmdfazhri@gmail.com', '$2y$10$osZY9JaHqdZ90yiMgC9tN./4fxJu8wGMs/y749U2DQomByeYRddl.', '08970674135', 'Gunung Putri Selatan', '2021-09-02 14:06:30', 'Member', NULL),
(4, 'lare tafna faruq', 'lare@gmail.com', '$2y$10$4rrNupF2PXFsrpZXnzUTKOW2JEyCFcEPltW8kW/SVsCEEdnTFFKmC', '0897123214', 'Griya', '2021-09-03 04:07:38', 'Member', NULL),
(5, 'Lare Tafna Faruq', 'lare@gmail.com', '$2y$10$SNyx9xgAh5YZP10IDa7kO.apIdvWoWLI3EGAERup3VaZqZK3/Tpiq', '08175144112', 'Griya', '2021-09-03 08:02:00', 'Member', NULL),
(6, 'alip', 'alip@gmail.com', '$2y$10$MaHJ4pCASW67wWtUjs7Q7OdjPwajjFeCcv22mhl1NubhQwHbKFN5.', '086028432', 'griya', '2021-09-06 07:05:35', 'Member', NULL),
(7, 'Faqih kamil', 'fukmil@gmail.com', '$2y$10$PGwA1MOSibJghCL3ePD9HuYR/oWWHboFjJpuyS7W988hhafDFrxjK', '0879371393', 'Griya', '2021-09-23 05:34:02', 'Member', NULL),
(8, 'aswd', 'aswd@gmail.com', '$2y$10$6Lv6WqzYUn3ARSxuJU8xoe9Hv/JRMquQjSb0bLH.cT7IagbjYAhc6', '09888809-9', 'griya', '2021-09-23 05:38:47', 'Member', NULL),
(9, 'aji', 'aji@gmail.com', '$2y$10$nuzbhfawYIsBnqmy6RD4kOlxHufrA.E2QSVZTVGxredNATDzJolZa', '081313113', 'gunung putri', '2021-10-24 13:25:06', 'Member', NULL),
(10, 'kevin', 'kevin@gmail.com', '$2y$10$Dk6hqJgRTZnqY8Gd5BF9fOtUezosUYrtkXniAZbQMTruMiUqvNSua', '0801823182312', 'Citeureup', '2021-10-26 09:54:50', 'Member', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '13131231231', 'images/bca.jpg', 'DreamStore'),
(2, 'Bank Mandiri', '943248844843', 'images/mandiri.jpg', 'DreamStore'),
(3, 'DANA', '0882313132123', 'images/dana.png', 'DreamStore');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(1, 1, 'T-shirt Thrasher Black', 'produk/thrasher.png', 'Ukuran Size L\r\nOriginal 100%', 5, 400000, 350000, '2019-12-20 09:10:26'),
(2, 2, 'Hoddie Thrasher Black', 'produk/hoddie.png', 'Ukuran Size L\r\nOrignal 100%', 4, 700000, 600000, '2019-12-20 09:24:13'),
(3, 3, 'Slipon Checkerboard Black Whit', 'produk/cheker.png', 'Us 42 Man\r\nBlack White', 5, 800000, 750000, '2020-03-16 12:16:53'),
(5, 3, 'SK8 Hi Black/White', 'produk/vans.png', 'Us 42 Man\r\nBlack White', 5, 850000, 800000, '2020-03-16 12:16:53'),
(6, 3, 'Converse Hi Black/White', 'produk/converse.png', 'Us 42 Man\r\nBlack White', 5, 800000, 750000, '2020-03-16 12:16:53'),
(7, 1, 'T-shirt Thrasher Navy', 'produk/navy.png', 'Ukuran Size L\r\nOriginal 100%', 5, 400000, 350000, '2020-03-16 12:16:53'),
(8, 1, 'T-shirt Thrasher White', 'produk/white.png', 'Ukuran Size L\r\nOriginal 100%', 5, 400000, 350000, '2019-12-20 09:10:26'),
(9, 2, 'Hoddie Thrasher Navy', 'produk/biru.png', 'Ukuran Size L\r\nOrignal 100%', 4, 700000, 600000, '2019-12-20 09:24:13'),
(10, 2, 'Hoodie Thrasher White', 'produk/jaket putih.png', 'Ukuran Size L\r\nOriginal 100%', 4, 700000, 550000, '2019-12-20 09:10:26'),
(11, 1, 'T-shirt Kevin Glasses Black', 'produk/baju 2.png', 'Ukuran Size L\r\nOriginal 100%', 4, 200000, 150000, '2019-12-20 09:10:26'),
(12, 1, 'T-shirt Kevin Glasses White', 'produk/baju 1.png', 'Ukuran Size L\r\nOriginal 100%', 4, 200000, 150000, '2019-12-20 09:10:26'),
(13, 1, 'T-shirt Avatar Udin Black', 'produk/avatar.png', 'Ukuran Size L\r\nOriginal 100%', 3, 200000, 150000, '2019-12-20 09:10:26'),
(14, 1, 'T-shirt Kevin Stars White', 'produk/kevin.png', 'Ukuran Size L\r\nOriginal 100%', 4, 200000, 150000, '2019-12-20 09:10:26'),
(15, 1, 'T-shirt ZCN X Thanos Black', 'produk/jhong.png', 'Ukuran Size L\r\nOriginal 100%', 3, 200000, 150000, '2019-12-20 09:10:26'),
(16, 1, 'T-shirt Zhong China Black', 'produk/broolee.png', 'Ukuran Size L\r\nOriginal 100%', 3, 200000, 150000, '2019-12-20 09:10:26'),
(17, 1, 'T-shirt Broole White', 'produk/sponsor.png', 'Ukuran Size L\r\nOriginal 100%', 3, 200000, 150000, '2019-12-20 09:10:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indeks untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
