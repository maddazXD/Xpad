-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 26, 2021 at 11:32 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `velixsnime`
--

-- --------------------------------------------------------

--
-- Table structure for table `anime_genre`
--

CREATE TABLE `anime_genre` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_slug` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anime_genre`
--

INSERT INTO `anime_genre` (`id`, `title`, `seo_slug`, `created_at`) VALUES
(1, 'Aksi', 'aksi', '2021-12-25 08:46:59'),
(2, 'Anak-Anak', 'anak-anak', '2021-12-25 08:47:13'),
(3, 'Antariksa', 'antariksa', '2021-12-25 08:47:42'),
(4, 'Boys Love', 'boys-love', '2021-12-25 08:47:53'),
(5, 'Dementia', 'dementia', '2021-12-25 08:48:04'),
(6, 'Donghua', 'donghua', '2021-12-25 08:48:18'),
(7, 'Drama', 'drama', '2021-12-25 08:48:26'),
(8, 'Ecchi', 'ecchi', '2021-12-25 08:48:38'),
(9, 'Erotica', 'erotica', '2021-12-25 08:48:49'),
(10, 'Fantasi', 'fantasi', '2021-12-25 08:49:05'),
(11, 'Fantasi Urban', 'fantasi-urban', '2021-12-25 08:49:17'),
(12, 'Game', 'game', '2021-12-25 08:49:35'),
(13, 'Grils Love', 'girls-love', '2021-12-25 08:49:45'),
(14, 'Grourmet', 'grourmet', '2021-12-25 08:50:01'),
(15, 'Harem', 'harem', '2021-12-25 08:50:08'),
(16, 'Horror', 'horror', '2021-12-25 08:50:15'),
(17, 'Iblis', 'iblis', '2021-12-25 08:50:24'),
(18, 'Isekai', 'isekai', '2021-12-25 08:50:32'),
(19, 'Josei', 'josei', '2021-12-25 08:50:41'),
(20, 'Komedi', 'komedi', '2021-12-25 08:50:48'),
(21, 'Makanan', 'makanan', '2021-12-25 08:50:55'),
(22, 'Martial Arts', 'martial-arts', '2021-12-25 08:51:04'),
(23, 'Mecha', 'mecha', '2021-12-25 08:51:11'),
(24, 'Militer', 'militer', '2021-12-25 08:51:26'),
(25, 'Misteri', 'misteri', '2021-12-25 08:51:33'),
(26, 'Mobil', 'mobil', '2021-12-25 08:51:41'),
(27, 'Musik', 'musik', '2021-12-25 08:51:48'),
(28, 'Olahraga', 'olahraga', '2021-12-25 08:51:57'),
(29, 'Parodi', 'parodi', '2021-12-25 08:52:07'),
(30, 'Perang', 'perang', '2021-12-25 08:52:15'),
(31, 'Petualangan', 'petualangan', '2021-12-25 08:52:23'),
(32, 'Romansa', 'romansa', '2021-12-25 08:52:40'),
(33, 'Psikologis', 'psikologis', '2021-12-25 08:52:50'),
(34, 'Sci-Fi', 'sci-fi', '2021-12-25 08:53:04'),
(35, 'Sejarah', 'sejarah', '2021-12-25 08:53:13'),
(36, 'Sekolah', 'sekolah', '2021-12-25 08:53:23'),
(37, 'Sihir', 'sihir', '2021-12-25 08:53:34'),
(38, 'Slice of Life', 'slice-of-life', '2021-12-25 08:53:45'),
(39, 'Super Power', 'super-power', '2021-12-25 08:53:57'),
(40, 'Vampir', 'vampir', '2021-12-25 08:54:03'),
(41, 'Thriller', 'thriller', '2021-12-25 08:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `anime_list`
--

CREATE TABLE `anime_list` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `description` longtext CHARACTER SET utf8 NOT NULL,
  `type` int(11) NOT NULL,
  `genre` text NOT NULL,
  `status` enum('selesai','sedang','segera') NOT NULL,
  `trailer` text,
  `uploader` int(11) NOT NULL,
  `seo_slug` varchar(255) NOT NULL,
  `seo_description` text NOT NULL,
  `seo_keywords` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anime_list`
--

INSERT INTO `anime_list` (`id`, `title`, `thumb`, `description`, `type`, `genre`, `status`, `trailer`, `uploader`, `seo_slug`, `seo_description`, `seo_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Komi-san wa, Comyushou desu. Sub Indo', '77885d9939a806b1b30b570a713f281b.jpg', 'Komi Can’t Communicate – Ini adalah hari pertama Shouko Komi di Sekolah Menengah Swasta Itan yang bergengsi, dan dia telah naik ke status Madonna sekolah. Dengan rambut hitam panjang dan penampilan yang tinggi dan anggun, dia menarik perhatian siapa pun yang bertemu dengannya. Hanya ada satu masalah—terlepas dari popularitasnya, Shouko sangat buruk dalam berkomunikasi dengan orang lain.', 1, 'komedi,romansa,slice-of-life', 'selesai', '3snByVaQUF0', 1, 'komi-san-wa-comyushou-desu', 'Komi Can’t Communicate – Ini adalah hari pertama Shouko Komi di Sekolah Menengah Swasta Itan yang bergengsi, dan dia telah naik ke status Madonna sekolah. Dengan rambut hitam panjang dan penampilan yang tinggi dan anggun, dia menarik perhatian siapa pun yang bertemu dengannya. Hanya ada satu masalah—terlepas dari popularitasnya, Shouko sangat buruk dalam berkomunikasi dengan orang lain.', 'komisan, komisna sub indo,nonton komisan, komisan anime', '2021-12-25 09:22:59', '2021-12-13 11:17:00'),
(2, 'Sekai Saikou no Ansatsusha, Isekai Kizoku ni Tensei suru Sub Indo', '76a0875e1e7ecfc0082b6f1d38eaba3b.jpg', 'Sekai Saikou no Ansatsusha, Isekai Kizoku ni Tensei suru – “Aku akan hidup untuk diriku sendiri!”\r\n\r\nPembunuh terhebat di Bumi hanya tahu bagaimana hidup sebagai alat bagi majikannya—sampai mereka berhenti membiarkannya hidup. Dilahirkan kembali oleh anugerah seorang dewi ke dunia pedang dan sihir, dia ditawari kesempatan untuk melakukan hal-hal yang berbeda kali ini, tapi ada masalah… Dia harus melenyapkan pahlawan super kuat yang akan membawa akhir dunia kecuali dia dihentikan.\r\n\r\nSekarang dikenal sebagai Lugh Tuatha Dé, master assassin itu pasti sangat sibuk, terutama karena semua gadis cantik yang terus-menerus mengelilinginya. Lugh mungkin adalah pembunuh yang tak tertandingi, tetapi bagaimana dia akan melawan musuh dengan sihir yang kuat?', 1, 'aksi,fantasi,romansa', 'selesai', '4ftVLBguuYc', 1, 'sekai-saikou-no-ansatsusha-isekai-kizoku-ni-tensei-suru', 'Sekai Saikou no Ansatsusha, Isekai Kizoku ni Tensei suru – “Aku akan hidup untuk diriku sendiri!”\r\n\r\nPembunuh terhebat di Bumi hanya tahu bagaimana hidup sebagai alat bagi majikannya—sampai mereka berhenti membiarkannya hidup. Dilahirkan kembali oleh anugerah seorang dewi ke dunia pedang dan sihir, dia ditawari kesempatan untuk melakukan hal-hal yang berbeda kali ini, tapi ada masalah… Dia harus melenyapkan pahlawan super kuat yang akan membawa akhir dunia kecuali dia dihentikan.\r\n\r\nSekarang dikenal sebagai Lugh Tuatha Dé, master assassin itu pasti sangat sibuk, terutama karena semua gadis cantik yang terus-menerus mengelilinginya. Lugh mungkin adalah pembunuh yang tak tertandingi, tetapi bagaimana dia akan melawan musuh dengan sihir yang kuat?', 'Sekai Saikou no Ansatsusha, nonton Sekai Saikou no Ansatsusha sub indo, anime Sekai Saikou no Ansatsusha', '2021-12-25 09:22:51', '2021-12-13 11:17:06'),
(3, 'Shinka no Mi: Shiranai Uchi ni Kachigumi Jinsei Sub Indo', '648049ebcadcaf0a569ef07b20cbb8ab.jpg', 'Shinka no Mi: Shiranai Uchi ni Kachigumi Jinsei – “Seiichi Hiiragi adalah orang gemuk yang jelek, menjijikkan, kotor, bau”—ini adalah hinaan yang dilontarkan kepadanya satu demi satu tentang penampilannya. Begitulah kehidupan sekolah Seiichi yang menyedihkan.\r\n\r\nSuatu hari, sebuah suara yang mengaku sebagai Dewa mengumumkan melalui sistem alamat publik untuk bersiap diangkut ke dunia lain. Seluruh sekolah, termasuk Seiichi, dikirim ke dunia fantasi yang menampilkan elemen seperti game seperti level, statistik, dan keterampilan. Namun, Dewa masih memiliki persiapan yang harus diselesaikan untuk transfer, dan akan mengirim mereka segera setelah ritual pemanggilan pahlawan siap. Semua kelas membentuk kelompok untuk menunggu transfer, tetapi Seiichi sendiri dikecualikan, dan karena itu dipanggil ke area yang berbeda. Setelah diangkut, hal pertama yang Seiichi makan adalah “Buah Evolusi,” yang akan sangat mengubah hidupnya…\r\n\r\nKisah ini mengikuti Seiichi dari diintimidasi oleh teman-teman sekelasnya, diabaikan sebagai pendamping, hingga kerja kerasnya, sikap positifnya, dan bertahan di dunia baru ini. Alhasil, dia menjadi salah satu juara sebelum dia menyadarinya.', 1, 'fantasi,petualangan,romansa', 'selesai', 'KQiNjpDo29o', 1, 'shinka-no-mi-shiranai-uchi-ni-kachigumi-jinsei', 'Shinka no Mi: Shiranai Uchi ni Kachigumi Jinsei – “Seiichi Hiiragi adalah orang gemuk yang jelek, menjijikkan, kotor, bau”—ini adalah hinaan yang dilontarkan kepadanya satu demi satu tentang penampilannya. Begitulah kehidupan sekolah Seiichi yang menyedihkan.\r\n\r\nSuatu hari, sebuah suara yang mengaku sebagai Dewa mengumumkan melalui sistem alamat publik untuk bersiap diangkut ke dunia lain. Seluruh sekolah, termasuk Seiichi, dikirim ke dunia fantasi yang menampilkan elemen seperti game seperti level, statistik, dan keterampilan. Namun, Dewa masih memiliki persiapan yang harus diselesaikan untuk transfer, dan akan mengirim mereka segera setelah ritual pemanggilan pahlawan siap. Semua kelas membentuk kelompok untuk menunggu transfer, tetapi Seiichi sendiri dikecualikan, dan karena itu dipanggil ke area yang berbeda. Setelah diangkut, hal pertama yang Seiichi makan adalah “Buah Evolusi,” yang akan sangat mengubah hidupnya…\r\n\r\nKisah ini mengikuti Seiichi dari diintimidasi oleh teman-teman sekelasnya, diabaikan sebagai pendamping, hingga kerja kerasnya, sikap positifnya, dan bertahan di dunia baru ini. Alhasil, dia menjadi salah satu juara sebelum dia menyadarinya.', '', '2021-12-25 09:22:40', '2021-12-06 11:17:09'),
(4, 'Shin no Nakama ja Nai to Yuusha no Party wo Oidasareta node, Henkyou de Slow Life suru Koto ni Shimashita Sub Indo', '55c4dcd8b049b889f160891e1ddb4452.jpg', 'Shin no Nakama ja Nai to Yuusha no Party wo Oidasareta node,Seorang petualang yang heroik dan perkasa bermimpi…membuka apotek?\r\n\r\nRed pernah menjadi anggota kelompok Pahlawan, kelompok kuat yang ditakdirkan untuk menyelamatkan dunia dari kekuatan jahat Taraxon, Raja Iblis yang Mengamuk. Begitulah, sampai salah satu rekannya mengusirnya. Berharap untuk menjalani kehidupan yang mudah di perbatasan, tujuan baru Red adalah membuka apotek. Namun, menjaga rahasia kehidupan sebelumnya mungkin tidak sesederhana yang dia pikirkan. Terutama ketika Rit yang cantik, seorang petualang dari masa lalunya, muncul dan meminta untuk tinggal bersamanya! Henkyou de Slow Life suru Koto ni Shimashita', 1, 'fantasi,petualangan,romansa,slice-of-life', 'sedang', 'Q-WDh396OEg', 1, 'shin-no-nakama-ja-nai-to-yuusha-no-party-wo-oidasareta-node-henkyou-de-slow-life-suru-koto-ni-shimashita-sub-indo', 'Shin no Nakama ja Nai to Yuusha no Party wo Oidasareta node,Seorang petualang yang heroik dan perkasa bermimpi…membuka apotek?\r\n\r\nRed pernah menjadi anggota kelompok Pahlawan, kelompok kuat yang ditakdirkan untuk menyelamatkan dunia dari kekuatan jahat Taraxon, Raja Iblis yang Mengamuk. Begitulah, sampai salah satu rekannya mengusirnya. Berharap untuk menjalani kehidupan yang mudah di perbatasan, tujuan baru Red adalah membuka apotek. Namun, menjaga rahasia kehidupan sebelumnya mungkin tidak sesederhana yang dia pikirkan. Terutama ketika Rit yang cantik, seorang petualang dari masa lalunya, muncul dan meminta untuk tinggal bersamanya! Henkyou de Slow Life suru Koto ni Shimashita', '', '2021-12-25 09:31:24', '2021-12-20 11:17:15'),
(5, 'Horimiya Sub Indo', '88f94e88b2b59332d4ed6f89c7a9429b.jpg', 'Horimiya – Meskipun dikagumi di sekolah karena keramahan dan kehebatan akademisnya, siswa SMA Kyouko Hori telah menyembunyikan sisi lain dari dirinya. Karena orang tuanya sering pergi dari rumah karena pekerjaan, Hori harus menjaga adik laki-lakinya dan melakukan pekerjaan rumah, tidak menyisakan kesempatan untuk bersosialisasi jauh dari sekolah.', 1, 'komedi,romansa,sekolah,slice-of-life', 'selesai', '', 1, 'horimiya-sub-indo', 'Horimiya – Meskipun dikagumi di sekolah karena keramahan dan kehebatan akademisnya, siswa SMA Kyouko Hori telah menyembunyikan sisi lain dari dirinya. Karena orang tuanya sering pergi dari rumah karena pekerjaan, Hori harus menjaga adik laki-lakinya dan melakukan pekerjaan rumah, tidak menyisakan kesempatan untuk bersosialisasi jauh dari sekolah.', '', '2021-12-25 09:44:01', '2021-12-13 11:17:18'),
(6, 'Noblesse: Awakening Sub Indo', 'f8102b8ea910446da28b0941d912d8cc.jpg', 'Noblesse: Awakening – Dahulu kala hidup “bangsawan,” ras kuno makhluk gaib abadi. Mereka dihormati sebagai penguasa dan dewa. Di antara para bangsawan adalah “Noblesse,” seorang individu yang kuat diselimuti misteri bernama Cadis Etrama di Raizel, atau “Rai.” Setelah bangun di Korea Selatan setelah tidur selama 820 tahun, Rai menetapkan untuk menemukan pelayannya yang setia dan berbakti, Frankenstein, yang ia temukan untuk menjadi direktur Sekolah Menengah Ye Ran saat ini. Dalam keinginannya untuk belajar lebih banyak tentang peradaban modern, Rai mendaftar sebagai siswa untuk mengalami kehidupan yang lebih baik di dunia modern. Noblesse: Kebangkitan merinci awal kehidupan baru Rai sebagai siswa sekolah menengah saat ia menghabiskan waktu dengan teman-teman dan berjuang melawan manusia. dan supernatural untuk mencegah skema mereka dari merusak Korea. [Ditulis oleh Animasu Menulis Ulang]', 4, 'aksi,sekolah,super-power,vampir', 'selesai', 'IrqT0Ur4Jss', 1, 'noblesse-awakening-sub-indo', 'Noblesse: Awakening – Dahulu kala hidup “bangsawan,” ras kuno makhluk gaib abadi. Mereka dihormati sebagai penguasa dan dewa. Di antara para bangsawan adalah “Noblesse,” seorang individu yang kuat diselimuti misteri bernama Cadis Etrama di Raizel, atau “Rai.” Setelah bangun di Korea Selatan setelah tidur selama 820 tahun, Rai menetapkan untuk menemukan pelayannya yang setia dan berbakti, Frankenstein, yang ia temukan untuk menjadi direktur Sekolah Menengah Ye Ran saat ini. Dalam keinginannya untuk belajar lebih banyak tentang peradaban modern, Rai mendaftar sebagai siswa untuk mengalami kehidupan yang lebih baik di dunia modern. Noblesse: Kebangkitan merinci awal kehidupan baru Rai sebagai siswa sekolah menengah saat ia menghabiskan waktu dengan teman-teman dan berjuang melawan manusia. dan supernatural untuk mencegah skema mereka dari merusak Korea. [Ditulis oleh Animasu Menulis Ulang]', '', '2021-12-25 09:51:12', '2021-12-06 11:17:20'),
(7, 'Noblesse: Pamyeol-ui Sijak Sub Indo', 'bb2f943553bf82f27e634066004026b1.jpg', 'Noblesse: Pamyeol-ui Sijak – Manusia menjalani kehidupan mereka didorong oleh ambisi dan keserakahan, siap untuk membunuh jenis mereka sendiri tanpa ragu-ragu. Sejak awal umat manusia, perang telah berkecamuk di seluruh dunia manusia, dengan berlomba-lomba lainnya menyaksikan. Seorang korban satu perang dan yatim piatu, Ashleen diselamatkan oleh penguasa manusia serigala, Muzaka. Muzaka telah meninggalkan tugasnya sebagai tuan dan meninggalkan klan manusia serigala, bepergian dengan Ashleen untuk mengamankan kebahagiaannya. Namun, selama ketidakhadirannya, anggota spesies Muzaka mulai mengatur perang lebih lanjut pada manusia, jijik oleh kasih sayang Muzaka. Sebuah organisasi rahasia dan kuat memantapkan dirinya di ranah manusia, berniat untuk memanipulasi Muzaka. Ketika dia salah informasi oleh Union, Muzaka mulai mengarahkan kemarahannya kepada manusia. Bisakah satu-satunya sahabatnya, Cadis Etrama Di Raizel, Noblesse, menghentikan kegilaan Muzuka? Ditetapkan 820 tahun sebelum peristiwa Noblesse, Noblesse: Pamyeol-ui Sija menggambarkan sejarah tragis Muzaka, dan bagaimana hal itu menyebabkan tidur nyenyak yang tak terbatas. [ Ditulis oleh Animasu Menulis Ulang]', 3, 'aksi,petualangan,super-power,vampir', 'selesai', '', 1, 'noblesse-pamyeol-ui-sijak-sub-indo', 'Noblesse: Pamyeol-ui Sijak – Manusia menjalani kehidupan mereka didorong oleh ambisi dan keserakahan, siap untuk membunuh jenis mereka sendiri tanpa ragu-ragu. Sejak awal umat manusia, perang telah berkecamuk di seluruh dunia manusia, dengan berlomba-lomba lainnya menyaksikan. Seorang korban satu perang dan yatim piatu, Ashleen diselamatkan oleh penguasa manusia serigala, Muzaka. Muzaka telah meninggalkan tugasnya sebagai tuan dan meninggalkan klan manusia serigala, bepergian dengan Ashleen untuk mengamankan kebahagiaannya. Namun, selama ketidakhadirannya, anggota spesies Muzaka mulai mengatur perang lebih lanjut pada manusia, jijik oleh kasih sayang Muzaka. Sebuah organisasi rahasia dan kuat memantapkan dirinya di ranah manusia, berniat untuk memanipulasi Muzaka. Ketika dia salah informasi oleh Union, Muzaka mulai mengarahkan kemarahannya kepada manusia. Bisakah satu-satunya sahabatnya, Cadis Etrama Di Raizel, Noblesse, menghentikan kegilaan Muzuka? Ditetapkan 820 tahun sebelum peristiwa Noblesse, Noblesse: Pamyeol-ui Sija menggambarkan sejarah tragis Muzaka, dan bagaimana hal itu menyebabkan tidur nyenyak yang tak terbatas. [ Ditulis oleh Animasu Menulis Ulang]', '', '2021-12-26 11:32:32', '2021-12-26 11:36:20'),
(8, 'Noblesse Sub Indo', 'baae93b452ff98e99ea348dcfdd7110d.jpg', 'Noblesse – Raizel terbangun dari tidurnya selama 820 tahun. Dia memegang gelar khusus Noblesse yang merupakan Bangsawan berdarah murni dan pelindung semua Bangsawan lainnya. Dalam upaya untuk melindungi Raizel, pelayannya Frankenstein mendaftarkannya di Sekolah Menengah Ye-Ran, di mana Raizel mempelajari rutinitas sederhana dan dunia manusia melalui teman-teman sekelasnya. Namun, Union — organisasi rahasia yang perkasa dengan ikatan di seluruh dunia dan tujuan untuk menguasai dunia — mengirim manusia yang dimodifikasi dan secara bertahap mengganggu kehidupan Raizel secara progresif — yang menyebabkan dia menggunakan kekuatannya yang besar untuk melindungi orang-orang di sekitarnya. Setelah 820 tahun intrik, rahasia di balik tidurnya akhirnya terungkap dan perlindungan mutlak Raizel saat Noblesse dimulai. (Sumber: Crunchyroll)', 1, 'aksi,sekolah,super-power,vampir', 'selesai', 'qJnCjstyPjI', 1, 'noblesse-sub-indo', 'Noblesse – Raizel terbangun dari tidurnya selama 820 tahun. Dia memegang gelar khusus Noblesse yang merupakan Bangsawan berdarah murni dan pelindung semua Bangsawan lainnya. Dalam upaya untuk melindungi Raizel, pelayannya Frankenstein mendaftarkannya di Sekolah Menengah Ye-Ran, di mana Raizel mempelajari rutinitas sederhana dan dunia manusia melalui teman-teman sekelasnya. Namun, Union — organisasi rahasia yang perkasa dengan ikatan di seluruh dunia dan tujuan untuk menguasai dunia — mengirim manusia yang dimodifikasi dan secara bertahap mengganggu kehidupan Raizel secara progresif — yang menyebabkan dia menggunakan kekuatannya yang besar untuk melindungi orang-orang di sekitarnya. Setelah 820 tahun intrik, rahasia di balik tidurnya akhirnya terungkap dan perlindungan mutlak Raizel saat Noblesse dimulai. (Sumber: Crunchyroll)', '', '2021-12-26 11:38:06', '2021-12-26 11:43:15'),
(9, 'The Daily Life of the Immortal King [Xian Wang de Richang Shenghuo] Season 1 Sub Indo', 'f2d19c7d89f4d72cb006e03c5806a437.jpg', 'The Daily Life of the Immortal King – Sebagai seorang jenius kultivasi yang telah mencapai ranah baru setiap dua tahun sejak ia berusia satu tahun, Wang Ling adalah kehidupan yang nyaris tak terkalahkan dengan kecakapan yang jauh di luar kendalinya. Tapi sekarang setelah dia berusia enam belas tahun, dia masih menghadapi pertempuran terbesarnya – SMA. Dengan satu tantangan demi satu bermunculan, rencananya untuk kehidupan sekolah menengah rendah tampaknya semakin jauh … (Sumber: Novel Updates)', 4, 'fantasi,iblis,komedi,petualangan,sekolah,slice-of-life', 'selesai', '7ANfp-ibOs0', 1, 'the-daily-life-of-the-immortal-king-xian-wang-de-richang-shenghuo-season-1-sub-indo', 'The Daily Life of the Immortal King – Sebagai seorang jenius kultivasi yang telah mencapai ranah baru setiap dua tahun sejak ia berusia satu tahun, Wang Ling adalah kehidupan yang nyaris tak terkalahkan dengan kecakapan yang jauh di luar kendalinya. Tapi sekarang setelah dia berusia enam belas tahun, dia masih menghadapi pertempuran terbesarnya – SMA. Dengan satu tantangan demi satu bermunculan, rencananya untuk kehidupan sekolah menengah rendah tampaknya semakin jauh … (Sumber: Novel Updates)', '', '2021-12-26 11:45:15', '2021-12-26 11:52:46'),
(10, 'Sword Art Online: Progressive Movie – Hoshi Naki Yoru no Aria Sub Indo', '5aa234382144e586f18db2dd7a34a321.jpg', 'Sword Art Online the Movie: Progressive – Aria of a Starless Night – “Tidak ada cara untuk mengalahkan game ini. Satu-satunya perbedaan adalah kapan dan di mana kamu mati…”\r\n\r\nSatu bulan telah berlalu sejak permainan mematikan Akihiko Kayaba dimulai, dan jumlah tubuh terus meningkat. Dua ribu pemain sudah mati.\r\n\r\nKirito dan Asuna adalah dua orang yang sangat berbeda, tetapi mereka berdua ingin bertarung sendirian. Meskipun demikian, mereka menemukan diri mereka ditarik bersama untuk menghadapi tantangan baik dari dalam maupun dari luar. Mengingat bahwa seluruh dunia virtual yang mereka tinggali sekarang telah dibuat sebagai perangkap kematian, para pemain Sword Art Online yang masih hidup mulai putus asa, dan keputusasaan membuat mereka berbahaya bagi penyendiri seperti Kirito dan Asuna. Ketika menjadi jelas bahwa kesendirian sama dengan bunuh diri, akankah keduanya dapat mengatasi perbedaan mereka untuk menemukan kekuatan untuk saling percaya, dan dengan demikian bertahan?\r\n\r\nSword Art Online: Progressive adalah versi baru dari kisah Sword Art Online yang dimulai pada awal petualangan epik Kirito dan Asuna—di tingkat pertama dunia mematikan Aincrad!', 2, 'aksi,fantasi,isekai,romansa', 'segera', 'XvJRE6Sm-lM', 1, 'sword-art-online-progressive-movie-hoshi-naki-yoru-no-aria-sub-indo', 'Sword Art Online the Movie: Progressive – Aria of a Starless Night – “Tidak ada cara untuk mengalahkan game ini. Satu-satunya perbedaan adalah kapan dan di mana kamu mati…”\r\n\r\nSatu bulan telah berlalu sejak permainan mematikan Akihiko Kayaba dimulai, dan jumlah tubuh terus meningkat. Dua ribu pemain sudah mati.\r\n\r\nKirito dan Asuna adalah dua orang yang sangat berbeda, tetapi mereka berdua ingin bertarung sendirian. Meskipun demikian, mereka menemukan diri mereka ditarik bersama untuk menghadapi tantangan baik dari dalam maupun dari luar. Mengingat bahwa seluruh dunia virtual yang mereka tinggali sekarang telah dibuat sebagai perangkap kematian, para pemain Sword Art Online yang masih hidup mulai putus asa, dan keputusasaan membuat mereka berbahaya bagi penyendiri seperti Kirito dan Asuna. Ketika menjadi jelas bahwa kesendirian sama dengan bunuh diri, akankah keduanya dapat mengatasi perbedaan mereka untuk menemukan kekuatan untuk saling percaya, dan dengan demikian bertahan?\r\n\r\nSword Art Online: Progressive adalah versi baru dari kisah Sword Art Online yang dimulai pada awal petualangan epik&#8230;', '', '2021-12-26 05:34:06', '2021-12-26 05:34:06'),
(11, 'Kimetsu no Yaiba: Yuukaku-hen Season 2 Sub Indo', '11d3db96c4b9b3d5ab5a129f16c9a75c.jpg', 'Demon Slayer: Kimetsu no Yaiba Entertainment District Arc – Tanjirou, Zenitsu, dan Inosuke, dibantu oleh Sound Hashhira Tengen Uzui, melakukan perjalanan ke distrik lampu merah Yoshiwara untuk memburu iblis yang telah meneror kota.SuntingLatar BelakangTidak ada informasi latar belakang yang ditambahkan ke judul ini. Bantu tingkatkan basis data kami dengan menambahkan informasi latar belakang di sini.', 1, 'aksi,iblis,perang,petualangan', 'sedang', 'QwvWdnd2Ktg', 1, 'kimetsu-no-yaiba-yuukaku-hen-season-2-sub-indo', 'Demon Slayer: Kimetsu no Yaiba Entertainment District Arc – Tanjirou, Zenitsu, dan Inosuke, dibantu oleh Sound Hashhira Tengen Uzui, melakukan perjalanan ke distrik lampu merah Yoshiwara untuk memburu iblis yang telah meneror kota.SuntingLatar BelakangTidak ada informasi latar belakang yang ditambahkan ke judul ini. Bantu tingkatkan basis data kami dengan menambahkan informasi latar belakang di sini.', '', '2021-12-26 05:47:34', '2021-12-26 05:53:15'),
(12, 'The Daily Life of the Immortal King [Xian Wang de Richang Shenghuo] Season 2 Sub Indo', '8d66936da01f0d24cc858ec9f3a5f4f1.jpg', 'The Daily Life of the Immortal King 2nd Season – Musim Kedua The Daily Life of the Immortal King .', 4, 'fantasi,komedi,petualangan,sekolah,sihir,slice-of-life', 'sedang', '', 1, 'the-daily-life-of-the-immortal-season-2', 'The Daily Life of the Immortal King 2nd Season – Musim Kedua The Daily Life of the Immortal King .', '', '2021-12-26 05:56:23', '2021-12-26 06:03:36'),
(13, 'Senpai ga Uzai Kouhai no Hanashi Sub Indo', 'acfb8e7f1e685b8e0bf5fccfb263c09d.jpg', 'Senpai ga Uzai Kouhai no Hanashi – Pekerjaan baru Igarashi Futuba akan sangat bagus jika senpainya, Takeda Harumi, tidak terlalu menyebalkan! Futuba membenci tawanya, dia membenci seberapa besar dia, dan dia benar-benar benci bahwa dia memperlakukannya seperti anak kecil. Hanya karena Futuba pendek dan terlihat muda tidak membuatnya seperti anak kecil, dan hanya karena dia menghabiskan begitu banyak waktu dengan Takeda bukan berarti dia menganggapnya sebagai senpai yang menyebalkan…atau dia?!', 1, 'komedi,romansa,slice-of-life', 'sedang', '6jHQlaQXQSs', 1, 'senpai-ga-uzai-kouhai-no-hanashi-sub-indo', 'Senpai ga Uzai Kouhai no Hanashi – Pekerjaan baru Igarashi Futuba akan sangat bagus jika senpainya, Takeda Harumi, tidak terlalu menyebalkan! Futuba membenci tawanya, dia membenci seberapa besar dia, dan dia benar-benar benci bahwa dia memperlakukannya seperti anak kecil. Hanya karena Futuba pendek dan terlihat muda tidak membuatnya seperti anak kecil, dan hanya karena dia menghabiskan begitu banyak waktu dengan Takeda bukan berarti dia menganggapnya sebagai senpai yang menyebalkan…atau dia?!', '', '2021-12-26 06:06:52', '2021-12-26 06:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `anime_type`
--

CREATE TABLE `anime_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_slug` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anime_type`
--

INSERT INTO `anime_type` (`id`, `title`, `seo_slug`, `created_at`) VALUES
(1, 'TV', 'tv', '2021-12-18 14:45:54'),
(2, 'Movie', 'movie', '2021-12-18 14:45:54'),
(3, 'OVA', 'ova', '2021-12-18 14:50:13'),
(4, 'ONA', 'ona', '2021-12-18 14:50:13'),
(5, 'Special', 'special', '2021-12-19 09:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `anime_video`
--

CREATE TABLE `anime_video` (
  `id` int(11) NOT NULL,
  `id_anime` int(11) NOT NULL,
  `type` enum('movie','series') NOT NULL,
  `eps` int(11) NOT NULL,
  `video` longtext NOT NULL,
  `download` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anime_video`
--

INSERT INTO `anime_video` (`id`, `id_anime`, `type`, `eps`, `video`, `download`, `created_at`) VALUES
(1, 1, 'series', 1, 'https://uservideo.xyz/file/nanime.biz.komi.san.wa.comyushou.desu.e00.720p.sub.indo.mp4?embed=true', '', '2021-12-25 08:58:00'),
(2, 1, 'series', 2, 'https://uservideo.xyz/file/nanime.kkd.02.480p.mp4?embed=true', '', '2021-12-25 08:58:59'),
(3, 1, 'series', 3, 'https://uservideo.xyz/file/nanime.kkd.03.480p.mp4?embed=true', '', '2021-12-25 08:59:59'),
(4, 1, 'series', 4, 'https://uservideo.xyz/file/nanime.kkd.04.480p.mp4?embed=true', '', '2021-12-25 09:00:28'),
(5, 1, 'series', 5, 'https://uservideo.xyz/file/nanime.kkd.05.480p.mp4?embed=true', '', '2021-12-25 09:00:47'),
(6, 1, 'series', 6, 'https://uservideo.xyz/file/nanime.biz.komi.san.wa.comyushou.desu.e06.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:02:06'),
(7, 1, 'series', 7, 'https://uservideo.xyz/file/nanime.mbak.komi.susah.ngomong.07.480p.mp4?embed=true', '', '2021-12-25 09:03:04'),
(8, 1, 'series', 8, 'https://uservideo.xyz/file/nanime.biz.komi.san.wa.comyushou.desu.e08.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:03:42'),
(9, 1, 'series', 9, 'https://uservideo.xyz/file/nanime.mbak.komi.susah.ngomong.09.720p.mp4?embed=true', '', '2021-12-25 09:04:26'),
(10, 1, 'series', 10, 'https://www.blogger.com/video.g?token=AD6v5dx9PknasPi4hrj7Ci2wnmLRy87qoklh-WTrqJFZsUTrJ0MlrT9Jay1mRcM7h4-vTG4Tzpzus0eSOZneFGZk-jBp55xly9DhiFQcGAmpm9vJn9cvXaTI1MUS4_t68TzUOFnctgc{{==}}//gdriveplayer.to/embed2.php?link=zdQRY0pNMMXwukbnJzeHdw0aNRhsMsTS0dfblE2mUOAKEzOGcKrsH4GAOHkVtrTHNwTzoDtXBPh4UUyZNforwDrJdG0NZb9C7ontJHFxCJdpJlTGpaHyxNz%252FW67GCY9qr90Bp7Qp4f8anZ1etG8501SEVO8bzTSt6g3IHqaJwg8Uzmv%252BfMiaZ9QAAv6ZtxbN9WNzWQQgunpYnneRYbFVd8oCaxseBNprPMjsCjAEYlyRTar2h2144y0%252BATNML0ywg%253D', '', '2021-12-25 09:05:27'),
(11, 1, 'series', 11, 'https://uservideo.xyz/file/nanime.mbak.komi.susah.ngomong.11.720p.mp4?embed=true', '', '2021-12-25 09:07:07'),
(12, 1, 'series', 12, 'https://uservideo.xyz/file/nanime.mbak.komi.susah.ngomong.12.720p.mp4?embed=true', '', '2021-12-25 09:07:34'),
(13, 2, 'series', 1, 'https://uservideo.xyz/file/nanime.ansatsu.kizoku.01.480p.mp4?embed=true', '', '2021-12-25 09:11:25'),
(14, 2, 'series', 2, 'https://uservideo.xyz/file/nanime.ansatsu.kizoku.02.480p.mp4?embed=true', '', '2021-12-25 09:11:51'),
(15, 2, 'series', 3, 'https://uservideo.xyz/file/nanime.biz.sekai.saikou.no.ansatsusha.isekai.kizoku.ni.tensei.suru.e03.480p.sub.indo.mp4?embed=true', '', '2021-12-25 09:12:06'),
(16, 2, 'series', 4, 'https://uservideo.xyz/file/nanime.ansatsu.kizoku.04.480p.mp4?embed=true', '', '2021-12-25 09:12:21'),
(17, 2, 'series', 5, 'https://uservideo.xyz/file/nanime.biz.sekai.saikou.no.ansatsusha.isekai.kizoku.ni.tensei.suru.e05.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:12:36'),
(18, 2, 'series', 6, 'https://uservideo.xyz/file/nanime.ansatsu.kizoku.06.720p.mp4?embed=true', '', '2021-12-25 09:13:13'),
(19, 2, 'series', 7, 'https://uservideo.xyz/file/nanime.biz.sekai.saikou.no.ansatsusha.isekai.kizoku.ni.tensei.suru.e07.480p.sub.indo.mp4?embed=true', '', '2021-12-25 09:13:51'),
(20, 2, 'series', 8, 'https://uservideo.xyz/file/nanime.ansatsu.kizoku.08.720p.mp4?embed=true', '', '2021-12-25 09:14:25'),
(21, 2, 'series', 9, 'https://uservideo.xyz/file/nanime.biz.sekai.saikou.no.ansatsusha.isekai.kizoku.ni.tensei.suru.e09.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:17:56'),
(22, 2, 'series', 10, 'https://uservideo.xyz/file/nanime.biz.sekai.saikou.no.ansatsusha.isekai.kizoku.ni.tensei.suru.e10.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:18:20'),
(23, 2, 'series', 11, 'https://uservideo.xyz/file/nanime.ansatsu.kizoku.11.720p.mp4?embed=true', '', '2021-12-25 09:18:36'),
(24, 2, 'series', 12, 'https://uservideo.xyz/file/nanime.biz.sekai.saikou.no.ansatsusha.isekai.kizoku.ni.tensei.suru.e12.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:18:59'),
(25, 3, 'series', 1, 'https://uservideo.xyz/file/nanime.shinka.no.mi.01.480p.mp4?embed=true', '', '2021-12-25 09:23:47'),
(26, 3, 'series', 2, 'https://uservideo.xyz/file/nanime.snm.02.480p.mp4?embed=true', '', '2021-12-25 09:24:04'),
(27, 3, 'series', 3, 'https://uservideo.xyz/file/nanime.biz.shinka.no.mi.shiranai.uchi.ni.kachigumi.jinsei.e03.480p.sub.indo.mp4?embed=true', '', '2021-12-25 09:24:21'),
(28, 3, 'series', 4, 'https://uservideo.xyz/file/nanime.biz.shinka.no.mi.shiranai.uchi.ni.kachigumi.jinsei.v2.e04.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:24:38'),
(29, 3, 'series', 5, 'https://uservideo.xyz/file/nanime.biz.shinka.no.mi.shiranai.uchi.ni.kachigumi.jinsei.e05.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:24:56'),
(30, 3, 'series', 6, 'https://uservideo.xyz/file/nanime.biz.shinka.no.mi.shiranai.uchi.ni.kachigumi.jinsei.e06.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:25:30'),
(31, 3, 'series', 7, 'https://uservideo.xyz/file/nanime.snm.07.720p.mp4?embed=true', '', '2021-12-25 09:25:55'),
(32, 3, 'series', 8, 'https://kotakanimeid.com/video-embed/?vid=NwlS+IjzgFv+BM1Fq0GUsJr5lzhyhxGbNojbDN+qkiG+dycIA62lLF+2NGmJKgWyNBrW1gN1+BRfxV/SZfQ+mGCqC20S5RyGJ6lCQB1eVZlQycD2AWMThh2jJwPbFG2pH755vC2WdQ=={{==}}https://www.blogger.com/video.g?token=AD6v5dzM0l0kq-IvrJYkvvu_8YgIENnXxJFp3dz6vw-Zmlm6W9RcpKz9lanYKHuHLPpfzklgq4VJMu1ReuIJLenXnqg-1KWq9wJTe0KixIaReqn32TOVcH4mTvUlCqB6bxZpgyLnU9KJ{{==}}https://www.yourupload.com/embed/63f5008Nu78u', '', '2021-12-25 09:26:54'),
(33, 3, 'series', 9, 'https://uservideo.xyz/file/nanime.snm.09.720p.mp4?embed=true', '', '2021-12-25 09:27:22'),
(34, 3, 'series', 10, 'https://uservideo.xyz/file/nanime.snm.10.720p.mp4?embed=true', '', '2021-12-25 09:27:55'),
(35, 3, 'series', 11, 'https://uservideo.xyz/file/nanime.biz.shinka.no.mi.shiranai.uchi.ni.kachigumi.jinsei.e11.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:28:13'),
(36, 3, 'series', 12, 'https://uservideo.xyz/file/nanime.biz.shinka.no.mi.shiranai.uchi.ni.kachigumi.jinsei.e12.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:28:32'),
(38, 4, 'series', 1, '//ok.ru/videoembed/2786385857049{{==}}//gdriveplayer.to/embed2.php?link=Pup2J7wFO4oeNAwNj4VVEAm%252B688zgXshs34gk6GbEZ996OE8f7mrAckzIYAa8wHCWmn4xbo9mbi9NwORaTKb5VFmtCqndL5Z1HKzvrUyaS2%252BsxDhPy22oWhA7%252Ffk2TjnNfemV92YfFBYa02kPpuH2K%252BJF%252F8qqd69T%252FzXSsh7Y4rsDHORrUFkxdnj%252BhBLbGJJcE6u7F5SKUwQo%252FGfrP%252FV8xHBwVVDam5G1I%252FHwPi8yD6ZUuibsRzNOcNLnaaxJEbE8%253D{{==}}https://www.yourupload.com/embed/M5OK7OfW588L/', '', '2021-12-25 09:34:17'),
(39, 4, 'series', 2, 'https://uservideo.xyz/file/nanime.biz.shin.no.nakama.ja.nai.to.yuusha.no.party.wo.oidasareta.node.e02.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:34:40'),
(40, 4, 'series', 3, 'https://uservideo.xyz/file/nanime.biz.shin.no.nakama.ja.nai.to.yuusha.no.party.wo.oidasareta.node.e03.480p.sub.indo.mp4?embed=true', '', '2021-12-25 09:35:05'),
(41, 4, 'series', 4, '//gdriveplayer.to/embed2.php?link=6MTSk%252FYgdoLBh9UXLfqj5QxwXI2sAe86Wxxmc9R1A78M%252Fa72JkuweFMmoYnkJUi35lMHm8kdj2WzY%252Frpac4w3rF2J9d0glJ3o02RHT404WQNZDNjjI47rUTTT4wEwv2Nu99%252FUfJd%252BNSi8VuHoJFJJ4yku8NHNhr37x7Qk0MnWuIjhtPSsiZEFhjb6dM0rlfX%252FMwDQRllXveiXrVOXNQvjDBWyq8rg94l6grQCDKRbJgZmmzA%252Fs8CUI6RcecRq7%252BIwI0lOKMQQf35kitdbxq40e7ir2pltFiLgrhdazjf77SV1Ghylhvkb9%252Bf4ZDBVEVFGmNnslAGcAzSlS7HRUQyZk27FARoZ5VXrQvlV30AuEhCLiS1q8C6XQYPJ7EUz845xujzNNitkoc6Mm2qXF%252BYRx&no_adult=yes{{==}}https://draft.blogger.com/video.g?token=AD6v5dz3V5uBHVVxh7bSlDNo9MVxyvfth7Niw3yQQnKY1DqvdN07aJCQCG05mgCEL5ZiNuK2lOcmFKwOhCFINXOaJWrg4TkVD_m9IZQm9UeliLYrNvJF4GXqYzOQbTc7A6NbtNXybB5w{{==}}https://sdefc.icu/1fuFO-wE', '', '2021-12-25 09:35:50'),
(42, 4, 'series', 5, 'https://uservideo.xyz/file/nanime.shin.no.nakama.05.720p.mp4?embed=true', '', '2021-12-25 09:36:17'),
(43, 4, 'series', 6, 'https://uservideo.xyz/file/nanime.biz.shin.no.nakama.ja.nai.to.yuusha.no.party.wo.oidasareta.node.e06.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:36:44'),
(44, 4, 'series', 7, 'https://uservideo.xyz/file/nanime.biz.shin.no.nakama.ja.nai.to.yuusha.no.party.wo.oidasareta.node.e07.1080p.sub.indo.mp4?embed=true', '', '2021-12-25 09:37:59'),
(45, 4, 'series', 8, 'https://uservideo.xyz/file/nanime.shinnonakama.08.720p.mp4?embed=true', '', '2021-12-25 09:39:32'),
(46, 4, 'series', 9, 'https://uservideo.xyz/file/nanime.biz.shin.no.nakama.ja.nai.to.yuusha.no.party.wo.oidasareta.node.e09.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:40:06'),
(47, 4, 'series', 10, 'https://uservideo.xyz/file/nanime.biz.shin.no.nakama.ja.nai.to.yuusha.no.party.wo.oidasareta.node.e10.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:40:55'),
(48, 4, 'series', 11, 'https://uservideo.xyz/file/nanime.biz.shin.no.nakama.ja.nai.to.yuusha.no.party.wo.oidasareta.node.e11.720p.sub.indo.mp4?embed=true', '', '2021-12-25 09:41:13'),
(49, 4, 'series', 12, 'https://www.blogger.com/video.g?token=AD6v5dyU9f7UZVjP82iwc5ZGHXHwCVM7ChlGY8qDVmCUCEk1zLYl_d3quT9nJ3vnCba0U6QkaSBcEWu7K7CdePMwGcoSH_c44e9fSuDmDORqDenBJuJkv-oYFfazVJRE5TMKb0umvmU{{==}}https://kotakanimeid.com/video-embed/?vid=NwlS+IjzgFv+BM1Fq0GUsJr5lzhyhxGbNojbDN+qkiG+dycIA62lLF+2NGmJKgWyNBrW1gN1+BdfxV/SZvQ3hCa2Emxc6xLUOLVFUQoOTYFQx862FmITnRzvPxvbGmP4Gak5pEyQVS4=', '', '2021-12-25 09:42:00'),
(50, 5, 'series', 1, 'https://uservideo.xyz/file/nanime.in.horimiya.e01.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-25 09:44:56'),
(51, 5, 'series', 2, 'https://uservideo.xyz/file/nanime.in.horimiya.e02.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-25 09:45:13'),
(52, 5, 'series', 3, 'https://uservideo.xyz/file/nanime.in.horimiya.e03.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-25 09:45:25'),
(53, 5, 'series', 4, 'https://uservideo.xyz/file/nanime.in.horimiya.e04.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-25 09:45:47'),
(54, 5, 'series', 5, 'https://uservideo.xyz/file/nanime.hmy.05.480p.mp4?embed=true&autoplay=true', '', '2021-12-25 09:46:10'),
(55, 5, 'series', 6, 'https://uservideo.xyz/file/nanime.hmy.06.480p.mp4?embed=true&autoplay=true', '', '2021-12-25 09:46:47'),
(56, 5, 'series', 7, 'https://uservideo.xyz/file/nanime.biz.horimiya.e07.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-25 09:47:22'),
(57, 5, 'series', 8, 'https://uservideo.xyz/file/nanime.biz.horimiya.e08.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-25 09:47:51'),
(58, 5, 'series', 9, 'https://uservideo.xyz/file/nanime.biz.horimiya.e09.480p.sub.indo.mp4?embed=true&amp;autoplay=true', '', '2021-12-25 09:48:17'),
(59, 5, 'series', 10, 'https://uservideo.xyz/file/nanime.hrmy.10.480p.mkv?embed=true&amp;autoplay=true', '', '2021-12-25 09:48:34'),
(60, 5, 'series', 11, 'https://uservideo.xyz/file/nanime.biz.horimiya.e11.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-25 09:48:49'),
(61, 5, 'series', 12, 'https://uservideo.xyz/file/nanime.biz.horimiya.e12.720p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-25 09:49:02'),
(62, 6, 'series', 1, 'https://uservideo.xyz/file/nanime.noblesse.awakening.2016.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-26 10:17:51'),
(63, 7, 'series', 1, 'https://uservideo.xyz/file/nanime.in.noblesse.the.beginning.of.destruction.480p.sub.indo.mp4?embed=true', '', '2021-12-26 11:36:20'),
(64, 8, 'series', 1, 'https://uservideo.xyz/file/nanime.in.noblesse.e01.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-26 11:39:17'),
(65, 8, 'series', 2, 'https://uservideo.xyz/file/nanine.nbs.02.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:39:31'),
(66, 8, 'series', 3, 'https://uservideo.xyz/file/nanime.nbs.03.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:39:56'),
(67, 8, 'series', 4, 'https://uservideo.xyz/file/nanime.in.noblesse.e04.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-26 11:40:14'),
(68, 8, 'series', 5, 'https://uservideo.xyz/file/nanime.in.noblesse.e05.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-26 11:40:29'),
(69, 8, 'series', 6, 'https://uservideo.xyz/file/nanime.nbs.06.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:40:47'),
(70, 8, 'series', 7, 'https://www.naniplay.com/v/ry71ruez17621gd?embed=true&autoplay=true', '', '2021-12-26 11:41:07'),
(71, 8, 'series', 8, 'https://uservideo.xyz/file/nanime.nbs.08.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:41:34'),
(72, 8, 'series', 9, 'https://uservideo.xyz/file/nanime.nbs.09.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:41:49'),
(73, 8, 'series', 10, 'https://uservideo.xyz/file/nanime.nbs.10.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:42:02'),
(74, 8, 'series', 11, 'https://uservideo.xyz/file/nanime.nbs.11.720p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:42:15'),
(75, 8, 'series', 12, 'https://uservideo.xyz/file/nanime.nbs.12.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:42:38'),
(76, 8, 'series', 13, 'https://uservideo.xyz/file/nanime.nbs.13.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:43:15'),
(77, 9, 'series', 1, 'https://uservideo.xyz/file/nanime.yt.tdlotik.e01.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-26 11:46:29'),
(78, 9, 'series', 2, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e02.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:46:46'),
(79, 9, 'series', 3, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e03.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:47:16'),
(80, 9, 'series', 4, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e04.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:47:34'),
(81, 9, 'series', 5, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e05.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:47:49'),
(82, 9, 'series', 6, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e06.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:50:43'),
(83, 9, 'series', 7, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e07.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:50:54'),
(84, 9, 'series', 8, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e08.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:51:02'),
(85, 9, 'series', 9, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e09.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:51:09'),
(86, 9, 'series', 10, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e10.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:51:18'),
(87, 9, 'series', 11, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e11.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:51:25'),
(88, 9, 'series', 12, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e12.480p.sub.indo.mp4?embed=true&autoplay=true', '', '2021-12-26 11:51:31'),
(89, 9, 'series', 13, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e13.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:52:28'),
(90, 9, 'series', 14, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e14.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:52:38'),
(91, 9, 'series', 15, 'https://uservideo.xyz/file/nanime.the.daily.life.of.the.immortal.king.e15.end.sub.indo.480p.mp4?embed=true&autoplay=true', '', '2021-12-26 11:52:46'),
(92, 11, 'series', 1, 'https://uservideo.xyz/file/nanime.knys2.01.720p.mp4?embed=true', '', '2021-12-26 05:50:57'),
(93, 11, 'series', 2, 'https://uservideo.xyz/file/nanime.biz.kimetsu.no.yaiba.yuukaku.hen.e02.720p.sub.indo.mp4?embed=true', '', '2021-12-26 05:52:22'),
(94, 11, 'series', 3, 'https://uservideo.xyz/file/nanime.biz.kimetsu.no.yaiba.yuukaku.hen.e03.720p.sub.indo.mp4?embed=true', '', '2021-12-26 05:53:15'),
(95, 12, 'series', 1, 'https://sdefc.icu/1gKX-2Vu{{==}}https://sdefc.icu/1gNc-16o', '', '2021-12-26 05:58:20'),
(96, 12, 'series', 2, 'https://sdefc.icu/1h49-2A2{{==}}https://sdefc.icu/1h4w-zi', '', '2021-12-26 05:58:56'),
(97, 12, 'series', 3, '//ok.ru/videoembed/3225090067122{{==}}https://sdefc.icu/1lvvf-2Zr', '', '2021-12-26 05:59:26'),
(98, 12, 'series', 4, '//ok.ru/videoembed/3246060079794{{==}}https://sdefc.icu/1lvl9-Zb', '', '2021-12-26 06:00:13'),
(99, 12, 'series', 5, '//ok.ru/videoembed/3274902670002{{==}}https://www.yourupload.com/embed/bf061F12JlYd{{==}}https://sdefc.icu/1oYDZ-sd', '', '2021-12-26 06:00:57'),
(100, 12, 'series', 6, '//ok.ru/videoembed/3314715921074{{==}}https://www.yourupload.com/embed/2Xw3G8F8r6J1', '', '2021-12-26 06:01:28'),
(101, 12, 'series', 7, '//ok.ru/videoembed/3357634464434{{==}}https://www.yourupload.com/embed/7BySA4tdLgsr', '', '2021-12-26 06:02:02'),
(102, 12, 'series', 8, '//gdriveplayer.to/embed2.php?link=ZOt%252B6sl1XlkxDv2%252FF9pmtQPvIqTPNOVihJx9DIyDeiIB5QzIY2mGrI40hXT8kieTAexRGm0mEVuLPbzvNMM2CYclSYVQhhPmuj6E3rJoV7D3x3aytBhHnaYtYizza9tMMwsbf9mcB6ggVokt8gWPlIPf5zkx7nmnoVKEieAau%252Bw7nyYfRq85lp35DOWy%252FTgKs4fb78iVdk%252FoN2iZWDYUCs5oi18krD%252BAcvPTdWdloeRHgcgsnQGpu%252BAaWW1MSoBJTep7C4Waf5HF%252Bl7U90ssost3eHQsfRJhH1c9sVOXbl4j4vQAdfKcEymsdERcrG1ZRaeySKjmGtz%252BsOhgiEqsP%252Fl04MBSpi0b6ZTVe78h7FTBMTUfPZQq6rcnliWb7oC%252F2VBxYfAoOwt3v%252BD00Da3d%252B{{==}}//ok.ru/videoembed/3446245362354', '', '2021-12-26 06:02:36'),
(103, 12, 'series', 9, '//ok.ru/videoembed/3514059131570{{==}}https://sdefc.icu/1yaO-H', '', '2021-12-26 06:03:11'),
(104, 12, 'series', 10, '//ok.ru/videoembed/3561006828210', '', '2021-12-26 06:03:36'),
(105, 13, 'series', 1, 'https://uservideo.xyz/file/nanime.biz.senpai.ga.uzai.kouhai.no.hanashi.01.480p.sub.indo.mp4?embed=true{{==}}//gdriveplayer.to/embed2.php?link=CJJhd8JxD6Of0%252BI6JXop7A7jaH4LhGe1cp6n5X6K1hZw5EG%252FZW4e2IjxuyXjUHOTUOqQYn93K6INfxVjeDoJ31fvI08Y26BVAq4mPypCvooh%252BUh6v%252Bxb3RY0btjZAowKoUGTwdchYP0AzW%252BlKuZmyhy%252Fje211ah7CX8bAPIsy9Hlmk0NFk4HLKTAVI9p3SZ%252BrJ4ZKIB1EQ%252B23V4asO5EZCQLMVMQcRnuKxqLLHh1DB3g%253D%253D{{==}}https://www.blogger.com/video.g?token=AD6v5dygrWKA7QKjchzTfWOFBkYM_OjHlOA_8dinZ9q64wTwAgWdyMoMMigMY4kNoesDM0ebL6V57LK-GhS5SJsFqVN58yK8Rf0Ol6_k0guRP53I85TCpcRhXHjAS5x5oF2ayVOltRc', '', '2021-12-26 06:08:14'),
(106, 13, 'series', 2, 'https://uservideo.xyz/file/nanime.biz.senpai.ga.uzai.kouhai.no.hanashi.e02.480p.sub.indo.mp4?embed=true', '', '2021-12-26 06:09:32'),
(107, 13, 'series', 3, 'https://uservideo.xyz/file/nanime.sukh.3.480p.mp4?embed=true', '', '2021-12-26 06:09:57'),
(108, 13, 'series', 4, 'https://uservideo.xyz/file/nanime.sukh.04.480p.mp4?embed=true', '', '2021-12-26 06:10:25'),
(109, 13, 'series', 5, 'https://www.blogger.com/video.g?token=AD6v5dyTuVIsPQ3LC13qeL3NvDvpu0yqHej4O0RLu83F2tcgUuGzsfylz18njBrt_e2NYeuggGJvdn1PirvtTkDiqe4gmw6i0wRv_yWPsBls2Lf-5PlbT1vB7einvdLHKEJcaVr1zuHC{{==}}https://uservideo.xyz/file/nanime.biz.senpai.ga.uzai.kouhai.no.hanashi.e05.720p.sub.indo.mp4?embed=true', '', '2021-12-26 06:11:12'),
(110, 13, 'series', 6, 'https://uservideo.xyz/file/nanime.biz.senpai.ga.uzai.kouhai.no.hanashi.e06.720p.sub.indo.mp4?embed=true', '', '2021-12-26 06:11:44'),
(111, 13, 'series', 7, 'https://gdriveplayer.io/embed2.php?link=https://drive.google.com/file/d/1DZRNzuW_ykePJwI9pplGaj7bsA-GKgpF/view?usp=sharing{{==}}https://www.blogger.com/video.g?token=AD6v5dzMhHu_mved-NCVitI9zPNx5v7gf7pFgdLyoXM6g941wbSXM5qaeo1BC5tVKnMpaQZe0qewXfhChj4OlFGtJqh64iSg0QYAR95yabYt23z3Leww3rIR_y1dcaEXueE1SdGoqfc', '', '2021-12-26 06:12:16'),
(112, 13, 'series', 8, 'https://uservideo.xyz/file/nanime.biz.senpai.ga.uzai.kouhai.no.hanashi.e08.720p.sub.indo.mp4?embed=true', '', '2021-12-26 06:12:48'),
(113, 13, 'series', 9, 'https://uservideo.xyz/file/nanime.uzai.09.720p.mp4?embed=true', '', '2021-12-26 06:13:14'),
(114, 13, 'series', 10, 'https://uservideo.xyz/file/nanime.biz.senpai.ga.uzai.kouhai.no.hanashi.e10.1080p.sub.indo.mp4?embed=true', '', '2021-12-26 06:13:36'),
(115, 13, 'series', 11, 'https://www.yourupload.com/embed/kdW78hVkn8Dn{{==}}https://www.blogger.com/video.g?token=AD6v5dz69sXYIIw8nbgHJlGIawzs0Fi-El-D7JHkYzE79yDPwup4G0c2P660wkjUUhV8qYf8Ml_nUeyuud6SwJgSiqQW7AM5yHfrqMdzPpIukWLT6-TiX1r9036-hujhAS-1kubuzvg', '', '2021-12-26 06:14:15'),
(116, 13, 'series', 12, 'https://uservideo.xyz/file/nanime.sukh.12.end.720p.mp4?embed=true', '', '2021-12-26 06:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_menus`
--

CREATE TABLE `site_menus` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('direct','dropdown','submenu') NOT NULL,
  `link` varchar(255) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_menus`
--

INSERT INTO `site_menus` (`id`, `title`, `type`, `link`, `sub_id`, `status`) VALUES
(1, 'Home', 'direct', '/', 0, 1),
(5, 'Daftar Anime', 'direct', 'list', 0, 1),
(7, 'Movie', 'direct', 'list?type=2', 0, 1),
(8, 'Request', 'direct', 'request', 0, 1),
(9, 'Rekomendasi', 'dropdown', 'javascript:void(0)', 0, 1),
(10, 'Segera Tayang', 'submenu', 'list?status=segera', 9, 1),
(11, 'Sedang Tayang', 'submenu', 'list?status=sedang', 9, 1),
(12, 'Selesai Tayang', 'submenu', 'list?status=selesai', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_pages`
--

CREATE TABLE `site_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `seo_slug` varchar(255) NOT NULL,
  `seo_description` text CHARACTER SET utf8 NOT NULL,
  `seo_keywords` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sk_stats`
--

CREATE TABLE `sk_stats` (
  `id` int(11) NOT NULL,
  `by_page` enum('site_pages','page_master','anime_list','anime_video') NOT NULL,
  `by_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `ip` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_stats`
--

INSERT INTO `sk_stats` (`id`, `by_page`, `by_id`, `created_at`, `ip`) VALUES
(1, 'page_master', 0, '2021-12-25 08:46:26', '::1'),
(2, 'anime_list', 1, '2021-12-25 08:59:27', '::1'),
(3, 'anime_video', 1, '2021-12-25 08:59:33', '::1'),
(4, 'anime_video', 2, '2021-12-25 08:59:40', '::1'),
(5, 'anime_video', 10, '2021-12-25 09:05:41', '::1'),
(6, 'anime_list', 2, '2021-12-25 09:09:58', '::1'),
(7, 'anime_list', 3, '2021-12-25 09:28:47', '::1'),
(8, 'anime_list', 5, '2021-12-25 09:44:08', '::1'),
(9, 'anime_list', 6, '2021-12-25 09:52:06', '::1'),
(10, 'anime_video', 62, '2021-12-26 10:18:02', '::1'),
(11, 'anime_video', 50, '2021-12-26 10:59:54', '::1'),
(12, 'anime_video', 38, '2021-12-26 11:11:20', '::1'),
(13, 'anime_video', 45, '2021-12-26 11:21:55', '::1'),
(14, 'anime_list', 8, '2021-12-26 11:43:03', '::1'),
(15, 'anime_list', 10, '2021-12-26 05:35:10', '::1'),
(16, 'anime_video', 49, '2021-12-26 05:38:15', '::1'),
(17, 'anime_list', 4, '2021-12-26 05:42:05', '::1'),
(18, 'anime_list', 9, '2021-12-26 05:42:11', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `theme_dark` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `role` enum('admin','moderator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `theme_dark`, `avatar`, `role`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$NjpdJW33mGbGph8SE5Eh.uJ8kpBuHCwkcEFi.x2SaewgYZN0hfXu2', 'true', 'default.jpg', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `webmaster`
--

CREATE TABLE `webmaster` (
  `id` int(11) NOT NULL,
  `script_head` longtext NOT NULL,
  `script_body` longtext NOT NULL,
  `mail_driver` varchar(255) NOT NULL,
  `mail_host` varchar(255) NOT NULL,
  `mail_port` int(11) NOT NULL,
  `mail_username` varchar(255) NOT NULL,
  `mail_password` varchar(255) NOT NULL,
  `mail_encryption` varchar(255) NOT NULL,
  `mail_from` varchar(255) NOT NULL,
  `src_comment` text CHARACTER SET utf8 NOT NULL,
  `plugin_comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webmaster`
--

INSERT INTO `webmaster` (`id`, `script_head`, `script_body`, `mail_driver`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `mail_from`, `src_comment`, `plugin_comment`) VALUES
(1, '<!-------head-------->\r\n<style>\r\n   \r\n</style>\r\n', '<!-------/body-------->\r\n', 'smtp', 'gmail.com', 0, 'root', 'root', 'ssl', 'noreply@site.com', 'https://demo-esghmhyzgx.disqus.com/embed.js', 'disqus');

-- --------------------------------------------------------

--
-- Table structure for table `websettings`
--

CREATE TABLE `websettings` (
  `id` int(11) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `seo_keywords` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `seo_favicon` varchar(255) NOT NULL,
  `seo_thumbnail` varchar(255) NOT NULL,
  `social_facebook` varchar(255) NOT NULL,
  `social_twitter` varchar(255) NOT NULL,
  `social_linkedin` varchar(255) NOT NULL,
  `social_instagram` varchar(255) NOT NULL,
  `social_whatsapp` varchar(255) NOT NULL,
  `social_youtube` varchar(255) NOT NULL,
  `social_github` varchar(255) NOT NULL,
  `showathome` varchar(255) NOT NULL,
  `content_perpage` int(11) NOT NULL,
  `maintenance` enum('on','off') NOT NULL,
  `theme_active` varchar(225) NOT NULL,
  `highlight_theme` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `websettings`
--

INSERT INTO `websettings` (`id`, `seo_title`, `seo_description`, `seo_keywords`, `site_logo`, `seo_favicon`, `seo_thumbnail`, `social_facebook`, `social_twitter`, `social_linkedin`, `social_instagram`, `social_whatsapp`, `social_youtube`, `social_github`, `showathome`, `content_perpage`, `maintenance`, `theme_active`, `highlight_theme`) VALUES
(1, 'VELIXSNIME | STREMING ANIME INDO', 'Streaming anime sub indonesai gratis disini, berbagai anime movie series HD gratis tanpa iklan.', 'velixscms,cms,phpscript,velixs,velixsnime, anime velixs', '88553a08f8ab3b0a467b04ed388ca627.png', '34ca458d8fb1762b811e1cb17e5dd3d7.png', '8ad14a9bc403b581e4e23e34c2ba6eb0.jpg', '//facebook.com/velixscms', '#', '#', '//instagram.com/velixscms', '//wa.me/6281331350829', '#', '#', '', 12, '', 'velixsnime', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anime_genre`
--
ALTER TABLE `anime_genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anime_list`
--
ALTER TABLE `anime_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anime_type`
--
ALTER TABLE `anime_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anime_video`
--
ALTER TABLE `anime_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_menus`
--
ALTER TABLE `site_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_pages`
--
ALTER TABLE `site_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sk_stats`
--
ALTER TABLE `sk_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webmaster`
--
ALTER TABLE `webmaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websettings`
--
ALTER TABLE `websettings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anime_genre`
--
ALTER TABLE `anime_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `anime_list`
--
ALTER TABLE `anime_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `anime_type`
--
ALTER TABLE `anime_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `anime_video`
--
ALTER TABLE `anime_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_menus`
--
ALTER TABLE `site_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `site_pages`
--
ALTER TABLE `site_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sk_stats`
--
ALTER TABLE `sk_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `webmaster`
--
ALTER TABLE `webmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `websettings`
--
ALTER TABLE `websettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
