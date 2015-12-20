-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 24, 2013 at 01:53 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama`, `id`) VALUES
('admin', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `company`, `url`) VALUES
(1, 'mailChimp.jpg', 'Mail Chimp', 'http://www.mailchimp.com/'),
(2, 'psd2html.jpg', 'PSD to HTML', 'http://www.psd2html.com/'),
(3, 'themeForest.jpg', 'Theme Forest', 'http://themeforest.net/'),
(4, 'gomedia.jpg', 'Go Media', 'http://www.gomedia.us/'),
(5, 'siteGrinder.jpg', 'Seni Bergembira', 'detail.php?id=5'),
(6, 'bestDesigns.jpg', 'The Best Designs', 'http://www.thebestdesigns.com/'),
(7, 'rapidHTML.jpg', 'Rapid HTML', 'http://www.rapidxhtml.com/'),
(8, 'themeLayouts.jpg', 'Theme Layouts', 'http://www.themelayouts.com/'),
(9, '1.jpg', 'uin', 'detail.php?id=9');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(20) NOT NULL AUTO_INCREMENT,
  `no_buku` varchar(20) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `judul_buku` varchar(200) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `kota_terbit` varchar(50) NOT NULL,
  `tahun_terbit` varchar(20) NOT NULL,
  `lokasi_rak` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=284 ;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `no_buku`, `id_kategori`, `pengarang`, `judul_buku`, `penerbit`, `kota_terbit`, `tahun_terbit`, `lokasi_rak`, `status`) VALUES
(277, '323.615 9 GAU t', '100', 'Sudargo Gautama', 'Tafsir Undang-undang kewarganegaraan Republik Indonesia', 'Alumni', 'Bandung', '1983', 'Politik', '1'),
(278, '297.12 ALQ', '200', 'Yudhie.R. Haryono, May Raghmawatie', 'Buku yang menyesatkan dan buku yang mencercahkan', 'Gugus Press ', 'Bekasi', '2004', 'Agama', '1'),
(279, '650.6 GAS c', '100', 'Vincent Gaspersz', 'Contoh Soal dan Penyelesaian Ekonomi Manajerial', 'Gramedia Pustaka Utama', 'Jakarta', '2005', 'Manajemen', '1'),
(280, '297 GHO p', '200', 'GHOFAR, Asyhari Abd', 'Pandangan Islam Tentang Zina Dan Perkawinan Sesudah Hamil', 'Citra Harta Prima', 'Jakarta', '2001', 'Agama', '1'),
(281, '959.8 GER', '600', 'Sekretariat Negara Republik Indonesia', 'Gerakan 30 september partai komunis indonesia', 'Cet.2', 'Jakarta', '1994', 'Pemerintahan', '1'),
(282, '346.04 GAU t', '100', 'Gautama, S', 'Hukum Agraria', 'Alumni', 'Bandung', '1973', 'Hukum', '1'),
(283, '155.6 GOR m', '300', 'Sands, Yudith Gordon III. Widodo, Alex Tri Kantjono', 'Psikologi Orang Dewasa', 'Gramedia Pustaka Utama', 'Jakarta', '1994', 'Sosial', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` varchar(20) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
('000', 'Karya Umum'),
('100', 'Pemerintahan'),
('200', 'Agama'),
('300', 'Ilmu Sosial'),
('400', 'Bahasa'),
('500', 'Ilmu Alam dan Matematika'),
('600', 'Teknologi dan Ilmu Terapan'),
('700', 'Kesenian, Hiburan, Olahraga'),
('800', 'Kesusastraan'),
('900', 'Geografi dan Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id_member` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `tlp` int(15) NOT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `alamat`, `jk`, `agama`, `pekerjaan`, `tlp`) VALUES
(32, 'Ayi Ruhiyat', 'Cianjur', 'L', 'Islam', 'Mahasiswa', 2147483647),
(31, 'Anggi Majid Abdullah', 'Sumedang', 'L', 'Islam', 'Mahasiswa', 2147483647),
(33, 'Agus', 'Cicaheum', 'L', 'Islam', 'Mahasiswa', 2147483647),
(22, 'Harun Yahya', 'Jln.Manisi No.24 Bandung', 'L', 'Islam', 'Mahasiswa', 87233545);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT,
  `nama_peminjam` varchar(20) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_hrskembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `denda` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_oprator` int(2) NOT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `nama_peminjam`, `tgl_pinjam`, `tgl_hrskembali`, `tgl_pengembalian`, `denda`, `status`, `id_oprator`) VALUES
(184, 'Ayi Ruhiyat', '2013-12-05', '2013-12-12', '0000-00-00', 0, 'belum_kembali', 0),
(186, 'Agus', '2013-12-05', '2013-12-12', '0000-00-00', 0, 'belum_kembali', 0),
(185, 'Anggi Majid Abdullah', '2013-12-05', '2013-12-12', '0000-00-00', 0, 'belum_kembali', 0),
(188, 'Harun Yahya', '2013-12-06', '2013-12-13', '0000-00-00', 0, 'belum_kembali', 0);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_buku`
--

CREATE TABLE IF NOT EXISTS `peminjaman_buku` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` int(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman_buku`
--

INSERT INTO `peminjaman_buku` (`id_peminjaman`, `id_buku`, `status`) VALUES
(183, 278, 'belum_kembali'),
(185, 283, 'belum_kembali'),
(186, 279, 'belum_kembali'),
(0, 280, 'belum_kembali'),
(0, 280, 'belum_kembali'),
(188, 280, 'belum_kembali');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE IF NOT EXISTS `poling` (
  `no` int(50) NOT NULL AUTO_INCREMENT,
  `bagus` int(50) NOT NULL,
  `biasa` int(50) NOT NULL,
  `jelek` int(50) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`no`, `bagus`, `biasa`, `jelek`) VALUES
(1, 69, 30, 31);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
