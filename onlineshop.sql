-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 11:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(15) NOT NULL,
  `nama_admin` varchar(25) DEFAULT NULL,
  `password` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `password`) VALUES
(1, 'admin1', 'pass1234'),
(2, 'admin2', 'pass5678'),
(3, 'admin3', 'admin123'),
(4, 'admin4', 'adm56789'),
(5, 'admin5', 'abc12345'),
(6, 'admin6', 'qwe56789'),
(7, 'admin7', 'test1234'),
(8, 'admin8', 'abcd5678'),
(9, 'admin9', 'passabcd'),
(10, 'admin10', 'admin987'),
(11, 'admin11', 'pass5432'),
(12, 'admin12', 'xyz12345'),
(13, 'admin13', 'abc56789'),
(14, 'admin14', 'testabcd'),
(15, 'admin15', 'passx123'),
(16, 'admin16', 'pass567c'),
(17, 'admin17', 'qwerty12'),
(18, 'admin18', 'admin666'),
(19, 'admin19', 'passxyz7'),
(20, 'admin20', 'admin888');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id_kategori` int(10) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `deskripsi_kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori`, `nama_kategori`, `deskripsi_kategori`) VALUES
(1, 'Elektronik', 'Produk elektronik seperti smartphone dan laptop.'),
(2, 'Fashion', 'Pakaian dan aksesoris trendi.'),
(3, 'Makanan', 'Produk makanan ringan dan sehat.'),
(4, 'Minuman', 'Minuman segar dan botol.'),
(5, 'Peralatan Rumah Tangga', 'Alat-alat rumah tangga modern.'),
(6, 'Kecantikan', 'Produk kecantikan dan perawatan kulit.'),
(7, 'Olahraga', 'Perlengkapan olahraga dan kebugaran.'),
(8, 'Bayi dan Anak', 'Produk bayi dan mainan anak-anak.'),
(9, 'Otomotif', 'Spare part dan aksesoris kendaraan.'),
(10, 'Komputer', 'Komputer, printer, dan aksesorisnya.'),
(11, 'Buku', 'Beragam jenis buku dan komik.'),
(12, 'Musik', 'Instrumen musik dan aksesorisnya.'),
(13, 'Film dan Game', 'DVD film, game konsol, dan PC.'),
(14, 'Fotografi', 'Kamera dan perlengkapannya.'),
(15, 'Dekorasi Rumah', 'Barang dekorasi rumah.'),
(16, 'Perlengkapan Kantor', 'Alat tulis dan kebutuhan kantor.'),
(17, 'Kesehatan', 'Produk kesehatan dan obat-obatan.'),
(18, 'Hobi', 'Alat-alat untuk hobi dan kerajinan.'),
(19, 'Pertanian', 'Alat dan produk pertanian.'),
(20, 'Lain-lain', 'Produk lain di luar kategori utama.');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `jenis_pembayaran` varchar(15) NOT NULL,
  `status_pembayaran` varchar(25) NOT NULL,
  `tanggal_pembayaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_pembayaran`, `jenis_pembayaran`, `status_pembayaran`, `tanggal_pembayaran`) VALUES
(1, 'Transfer Bank', 'Sukses', '2024-01-01'),
(2, 'Kartu Kredit', 'Sukses', '2024-01-02'),
(3, 'COD', 'Sukses', '2024-01-03'),
(4, 'e-Wallet', 'Sukses', '2024-01-04'),
(5, 'Transfer Bank', 'Pending', '2024-01-05'),
(6, 'Kartu Kredit', 'Gagal', '2024-01-06'),
(7, 'COD', 'Pending', '2024-01-07'),
(8, 'e-Wallet', 'Sukses', '2024-01-08'),
(9, 'Transfer Bank', 'Sukses', '2024-01-09'),
(10, 'Kartu Kredit', 'Pending', '2024-01-10'),
(11, 'COD', 'Sukses', '2024-01-11'),
(12, 'e-Wallet', 'Pending', '2024-01-12'),
(13, 'Transfer Bank', 'Gagal', '2024-01-13'),
(14, 'Kartu Kredit', 'Sukses', '2024-01-14'),
(15, 'COD', 'Sukses', '2024-01-15'),
(16, 'e-Wallet', 'Pending', '2024-01-16'),
(17, 'Transfer Bank', 'Sukses', '2024-01-17'),
(18, 'Kartu Kredit', 'Pending', '2024-01-18'),
(19, 'COD', 'Sukses', '2024-01-19'),
(20, 'e-Wallet', 'Sukses', '2024-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(10) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `tanggal_bergabung` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `telepon`, `email`, `tanggal_bergabung`) VALUES
(1, 'John Doe', 'Jl. Mawar 123', '628123456789', 'john@example.com', '2023-01-01'),
(2, 'Jane Smith', 'Jl. Melati 456', '628987654321', 'jane@example.com', '2023-01-02'),
(3, 'Alice Brown', 'Jl. Anggrek 789', '628112233445', 'alice@example.com', '2023-01-03'),
(4, 'Bob White', 'Jl. Kenanga 101', '628556677889', 'bob@example.com', '2023-01-04'),
(5, 'Charlie Green', 'Jl. Cemara 202', '628998877665', 'charlie@example.com', '2023-01-05'),
(6, 'Daisy Blue', 'Jl. Tulip 303', '628667788990', 'daisy@example.com', '2023-01-06'),
(7, 'Eve Black', 'Jl. Flamboyan 404', '628778899001', 'eve@example.com', '2023-01-07'),
(8, 'Frank Yellow', 'Jl. Sakura 505', '628889900112', 'frank@example.com', '2023-01-08'),
(9, 'Grace Purple', 'Jl. Teratai 606', '628990011223', 'grace@example.com', '2023-01-09'),
(10, 'Hank Pink', 'Jl. Dahlia 707', '628101112334', 'hank@example.com', '2023-01-10'),
(11, 'Ivy Orange', 'Jl. Cempaka 808', '628211223344', 'ivy@example.com', '2023-01-11'),
(12, 'Jack Red', 'Jl. Jasmine 909', '628322334455', 'jack@example.com', '2023-01-12'),
(13, 'Karen Grey', 'Jl. Nusa Indah 010', '628433445566', 'karen@example.com', '2023-01-13'),
(14, 'Leo Cyan', 'Jl. Puspa 111', '628544556677', 'leo@example.com', '2023-01-14'),
(15, 'Maya Brown', 'Jl. Bakung 212', '628655667788', 'maya@example.com', '2023-01-15'),
(16, 'Nina Gold', 'Jl. Mawar Biru 313', '628766778899', 'nina@example.com', '2023-01-16'),
(17, 'Oscar Lime', 'Jl. Melati Kuning 414', '628877889900', 'oscar@example.com', '2023-01-17'),
(18, 'Pam Violet', 'Jl. Anggrek Putih 515', '628988990011', 'pam@example.com', '2023-01-18'),
(19, 'Quinn Aqua', 'Jl. Cemara Hijau 616', '628199011223', 'quinn@example.com', '2023-01-19'),
(20, 'Ruby Beige', 'Jl. Dahlia Merah 717', '628011122334', 'ruby@example.com', '2023-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` int(10) NOT NULL,
  `alamat_tujuan` varchar(50) NOT NULL,
  `tanggal_pengiriman` date NOT NULL,
  `status_pengiriman` varchar(25) NOT NULL,
  `kurir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `alamat_tujuan`, `tanggal_pengiriman`, `status_pengiriman`, `kurir`) VALUES
(1, 'Jl. Mawar 123', '2024-01-02', 'Dikirim', 'JNE'),
(2, 'Jl. Melati 456', '2024-01-03', 'Selesai', 'SiCepat'),
(3, 'Jl. Anggrek 789', '2024-01-04', 'Selesai', 'J&T'),
(4, 'Jl. Kenanga 101', '2024-01-05', 'Dikirim', 'GrabExpress'),
(5, 'Jl. Cemara 202', '2024-01-06', 'Pending', 'Gojek'),
(6, 'Jl. Tulip 303', '2024-01-07', 'Selesai', 'JNE'),
(7, 'Jl. Flamboyan 404', '2024-01-08', 'Dikirim', 'SiCepat'),
(8, 'Jl. Sakura 505', '2024-01-09', 'Pending', 'J&T'),
(9, 'Jl. Teratai 606', '2024-01-10', 'Selesai', 'GrabExpress'),
(10, 'Jl. Dahlia 707', '2024-01-11', 'Selesai', 'Gojek'),
(11, 'Jl. Cempaka 808', '2024-01-12', 'Dikirim', 'JNE'),
(12, 'Jl. Jasmine 909', '2024-01-13', 'Selesai', 'SiCepat'),
(13, 'Jl. Nusa Indah 010', '2024-01-14', 'Pending', 'J&T'),
(14, 'Jl. Puspa 111', '2024-01-15', 'Dikirim', 'GrabExpress'),
(15, 'Jl. Bakung 212', '2024-01-16', 'Selesai', 'Gojek'),
(16, 'Jl. Mawar Biru 313', '2024-01-17', 'Dikirim', 'JNE'),
(17, 'Jl. Melati Kuning 414', '2024-01-18', 'Pending', 'SiCepat'),
(18, 'Jl. Anggrek Putih 515', '2024-01-19', 'Selesai', 'J&T'),
(19, 'Jl. Cemara Hijau 616', '2024-01-20', 'Selesai', 'GrabExpress'),
(20, 'Jl. Dahlia Merah 717', '2024-01-21', 'Pending', 'Gojek');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(20) NOT NULL,
  `tanggal_pesanan` date DEFAULT NULL,
  `total_harga` float DEFAULT NULL,
  `status_pesanan` varchar(25) DEFAULT NULL,
  `metode_pembayaran` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `tanggal_pesanan`, `total_harga`, `status_pesanan`, `metode_pembayaran`) VALUES
(1, '2024-01-01', 7500000, 'Sukses', 'Transfer Bank'),
(2, '2024-01-02', 2500000, 'Sukses', 'COD'),
(3, '2024-01-03', 10000000, 'Pending', 'Kartu Kredit'),
(4, '2024-01-04', 5000000, 'Sukses', 'e-Wallet'),
(5, '2024-01-05', 300000, 'Sukses', 'Transfer Bank'),
(6, '2024-01-06', 15000000, 'Pending', 'Kartu Kredit'),
(7, '2024-01-07', 7000000, 'Gagal', 'Transfer Bank'),
(8, '2024-01-08', 2500000, 'Sukses', 'COD'),
(9, '2024-01-09', 500000, 'Pending', 'e-Wallet'),
(10, '2024-01-10', 300000, 'Sukses', 'Kartu Kredit'),
(11, '2024-01-11', 150000, 'Sukses', 'COD'),
(12, '2024-01-12', 10000000, 'Pending', 'Transfer Bank'),
(13, '2024-01-13', 800000, 'Sukses', 'e-Wallet'),
(14, '2024-01-14', 500000, 'Pending', 'Kartu Kredit'),
(15, '2024-01-15', 7000000, 'Sukses', 'COD'),
(16, '2024-01-16', 1200000, 'Pending', 'Transfer Bank'),
(17, '2024-01-17', 250000, 'Sukses', 'e-Wallet'),
(18, '2024-01-18', 1000000, 'Pending', 'Kartu Kredit'),
(19, '2024-01-19', 15000000, 'Sukses', 'Transfer Bank'),
(20, '2024-01-20', 5000000, 'Pending', 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` float NOT NULL,
  `stok` int(50) NOT NULL,
  `gambar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `deskripsi`, `harga`, `stok`, `gambar`) VALUES
(1, 1, 'Smartphone A1', 'Smartphone dengan RAM 8GB', 5000000, 50, 1),
(2, 1, 'Laptop Pro B2', 'Laptop high-end untuk gaming', 15000000, 20, 2),
(3, 1, 'TV Ultra HD', 'Televisi 4K 50 inch', 7000000, 15, 3),
(4, 5, 'Kipas Angin', 'Kipas angin listrik hemat energi', 300000, 100, 4),
(5, 1, 'Headset Gaming', 'Headset dengan suara surround', 500000, 30, 5),
(6, 1, 'Mouse Wireless', 'Mouse nirkabel ergonomis', 150000, 80, 6),
(7, 1, 'Keyboard Mechanical', 'Keyboard RGB dengan switch biru', 700000, 40, 7),
(8, 1, 'Smartwatch X', 'Jam tangan pintar dengan fitur kesehatan', 2500000, 35, 8),
(9, 1, 'Power Bank 20K', 'Power bank kapasitas besar', 300000, 60, 9),
(10, 14, 'Kamera DSLR', 'Kamera dengan resolusi tinggi', 10000000, 10, 10),
(11, 1, 'Printer C3', 'Printer multifungsi dengan scanner', 1200000, 25, 11),
(12, 5, 'Blender Z', 'Blender multifungsi', 500000, 70, 12),
(13, 5, 'Rice Cooker', 'Penanak nasi kapasitas besar', 800000, 50, 13),
(14, 7, 'Tenda Camping', 'Tenda 4 orang untuk camping', 1000000, 20, 14),
(15, 2, 'Sepatu Running', 'Sepatu olahraga ringan', 500000, 100, 15),
(16, 2, 'Tas Punggung', 'Tas multifungsi untuk kerja dan sekolah', 300000, 50, 16),
(17, 6, 'Cermin Makeup', 'Cermin LED dengan zoom', 200000, 60, 17),
(18, 11, 'Buku Novel', 'Novel fiksi terbaru', 100000, 120, 18),
(19, 8, 'Mainan Anak', 'Mainan edukatif untuk anak', 150000, 80, 19),
(20, 9, 'Sepeda Lipat', 'Sepeda lipat ringan dan praktis', 3000000, 15, 20);

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `jumlah_stok` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id_stok`, `id_produk`, `jumlah_stok`) VALUES
(1, 1, 50),
(2, 2, 20),
(3, 3, 15),
(4, 4, 100),
(5, 5, 30),
(6, 6, 80),
(7, 7, 40),
(8, 8, 35),
(9, 9, 60),
(10, 10, 10),
(11, 11, 25),
(12, 12, 70),
(13, 13, 50),
(14, 14, 20),
(15, 15, 100),
(16, 16, 50),
(17, 17, 60),
(18, 18, 120),
(19, 19, 80),
(20, 20, 15);

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` char(5) NOT NULL,
  `rating` int(10) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `tanggal_ulasan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `rating`, `komentar`, `tanggal_ulasan`) VALUES
('U001', 5, 'Produk sangat bagus, sesuai ekspektasi!', '2024-01-03'),
('U002', 4, 'Pengiriman cepat, tapi kemasan kurang rapi.', '2024-01-04'),
('U003', 3, 'Produk oke, tapi ada sedikit cacat.', '2024-01-05'),
('U004', 5, 'Harga sesuai dengan kualitas. Sangat puas!', '2024-01-06'),
('U005', 2, 'Produk tidak sesuai deskripsi.', '2024-01-07'),
('U006', 4, 'Cukup memuaskan, tapi masih bisa lebih baik.', '2024-01-08'),
('U007', 5, 'Layanan pelanggan sangat responsif.', '2024-01-09'),
('U008', 3, 'Pengiriman terlalu lama, produk oke.', '2024-01-10'),
('U009', 1, 'Sangat kecewa, produk rusak.', '2024-01-11'),
('U010', 4, 'Produk bagus, tapi stok terbatas.', '2024-01-12'),
('U011', 5, 'Belanja di sini sangat menyenangkan!', '2024-01-13'),
('U012', 3, 'Kurir tidak ramah, tapi produk oke.', '2024-01-14'),
('U013', 2, 'Harga terlalu mahal untuk kualitas ini.', '2024-01-15'),
('U014', 5, 'Kualitas terbaik, sangat direkomendasikan!', '2024-01-16'),
('U015', 4, 'Produk sesuai dengan deskripsi.', '2024-01-17'),
('U016', 5, 'Sangat puas dengan layanan dan produk!', '2024-01-18'),
('U017', 1, 'Pengalaman belanja buruk, tidak akan kembali.', '2024-01-19'),
('U018', 3, 'Produk biasa saja, harga agak mahal.', '2024-01-20'),
('U019', 5, 'Kualitas premium dengan harga terjangkau.', '2024-01-21'),
('U020', 4, 'Belanja mudah, produk memuaskan.', '2024-01-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
