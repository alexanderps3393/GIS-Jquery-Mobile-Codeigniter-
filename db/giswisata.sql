-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2016 at 04:17 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giswisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `foto_wisata`
--

CREATE TABLE `foto_wisata` (
  `id_foto` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `nama_foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(200) NOT NULL,
  `slug_wisata` varchar(200) NOT NULL,
  `alamat_wisata` text NOT NULL,
  `kota` enum('bangkalan','sampang','sumenep','pamekasan') NOT NULL,
  `tingkat_keamanan` int(11) NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `deskripsi_wisata` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `kategori` enum('pantai','air-terjun','pegunungan','wisata-kota','wisata-religi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `slug_wisata`, `alamat_wisata`, `kota`, `tingkat_keamanan`, `latitude`, `longitude`, `deskripsi_wisata`, `foto`, `kategori`) VALUES
(1, 'Universitas Trunojoyo Madura', 'utm', 'Jalan Raya Telang', 'bangkalan', 3, '-7.127736', '112.724148', 'Universitas Trunjoyo Madura merupakan salah satu Universitas Negeri yang berada di Madura. ', '700x300-UTM.jpg', 'wisata-kota'),
(2, 'Pantai Lombang', 'pantai-lombang', 'Desa Lombang, Kec. Batang Batang, Kab. Sumenep, Jawa Timur', 'sumenep', 5, '-6.9201687', '114.0633768', 'Pantai Lombang Sumenep di Madura mulai dikenal pada tahun 2000, yang kala itu banyak turis mancanegara yang turut serta meramaikan pantai ini. Di pantai ini ribuan pengunjung datang setiap harinya. Di Madura, Pantai Lombang adalah satu satunya pantai yang paling sering dikunjungi dan termasuk pantai yang paling favorit bagi masyarakat Madura. Bahkan pernah mencapai 50 ribu pengunjung pada saat musim libur tiba.', 'lombang.jpg', 'pantai'),
(3, 'Selamat Pagi Madura', 'selamat-pagi-madura', 'Lawangan Daya Kecamatan Pademawu Kabupaten Pamekasan', 'pamekasan', 5, '-7.149416', '113.499287', ' Sebagai salah satu pulau yang ada di Indonesia dengan jumlah populasi penduduk yang tidak sedikit maka tidak heran kalau Pulau Madura membutuhkan banyak objek wisata. Hal tersebut didukung dengan masih banyaknya penduduk asli Madura yang harus berbondong-bondong menyeberang ke Pulau Jawa dan tempat lainnya hanya untuk memenuhi hasrat â€œJalan-Jalanâ€ mereka. Selain banyaknya tempat wisata yang masih terhitung beberapa saja, di Madura perlu adanya varian objek wisata lainnya yang lebih menarik.  Beberapa waktu terakhir ini masyarakat Madura khususnya Pamekasan dibuat penasaran dengan adanya wisata edukasi dan permainan untuk keluarga, Selamat Pagi Madura (SPM). Wahana edu wisata Selamat Pagi Madura ini terletak di kawasan Lawangan Daya Kecamatan Pademawu Kabupaten Pamekasan. ', 'spg.png', 'wisata-kota'),
(4, 'Pantai Gili Labak', 'pantai-gili-labak', 'Pulau Gili labak, Desa Kombang, Talango, Kabupaten Sumenep, Jawa Timur 69481', 'sumenep', 5, '-7.202771', '114.045711', ' Pulau Gili Labak adalah pulau kecil yang mempunyai pasir putih, biru laut dan desiran ombak yang tenang. Ternyata yang mempunyai Gili bukan hanya Lombok, di Propinsi Jawa Timur tepatnya di Kabupaten Sumenep, Madura mempunyai beberapa Gili. Salah satunya adalah Gili Labak, pulau yang berada paling ujung timur pulau Madura dan tempat wisata di Jawa Timur ini belum banyak orang yang mengetahuinya sehingga pulau ini jarang dikunjungi oleh para wisatawan.  Sedikit para wisatawan yang tahu kalau sumenep madura memiliki pulau cantik nan jelita. Nama pulau ini dulunya adalah pulau tikus. Karena dulunya tempat ini adalah sarang tikus. Karena keindahan pulau ini melebihi nama aslinya (pulau tikus), Pulau ini diganti namanya menjadi Pulau Gili Labak, yang lebih enak disebut dengan dialek bahasa madura.', 'gili_labak.png', 'pantai'),
(5, 'Pantai Rongkang', 'pantai-rongkang', 'Desa Kwanyar Barat, Kecamatan Kwanyar, Kwanyar Bar., Bangkalan, Kabupaten Bangkalan, Jawa Timur 69163', 'bangkalan', 3, '-7.164417', '112.842414', 'Tempat Wisata Pantai Rongkang Bangkalan Madura terletak di Desa Kwanyar Barat Kecamatan Kwanyar Kabupaten Bangkalan, kira-kira 35 km di selatan kota Bangkalan. Kabupaten Bangkalan merupakan sebuah kabupaten di Pulau Madura, Provinsi Jawa Timur, Indonesia. Ibukotanya adalah Bangkalan. Kabupaten ini terletak di ujung paling barat Pulau Madura; berbatasan dengan Laut Jawa di utara, Kabupaten Sampang di timur serta Selat Madura di selatan dan barat.', 'Keindahan-Pantai-Rongkang.jpg', 'pantai'),
(6, 'Mercusuar Bangkalan', 'mercusuar-bangkalan', 'Jalan Sembilangan, Socah, Pernajuh, Kec. Bangkalan, Kabupaten Bangkalan, Jawa Timur 69161', 'bangkalan', 3, '-7.052869', '112.525471', 'Mercusuar merupakan peningggalan Belanda dan mercusuar ini masih eksis sampe saat ini. Mercusuar Sembilangan ini berdiri th 1879, terletak di Desa Tanjung Piring Bangkalan Madura Indonesia. Dibangun pada pemerintahan Belanda Z.M William III. Mercusuar ini terletak tidak jauh dari pusat Kota Bangkalan. Mercusuar ini berdiri di sebuah desa bernama Sembilangan di Kecamatan Socah, hanya sekitar 6 KM dari ibu kota kabupaten.', 'f-MERCUSUAR-4-copy.jpg', 'pantai'),
(7, 'Pantai Siring Kemuning', 'pantai-siring-kemuning', 'Macajah, Tanjungbumi, Kabupaten Bangkalan, Jawa Timur 69156', 'bangkalan', 4, '-6.885170', '113.055834', 'Para Penelusur, Di Pulau Madura, ada dua jalur jalan raya dapat dilalui dari ujung barat sampai ujung timur Pulau Madura, yaitu jalur tengah dan jalur utara. Bila anda melewati jalur tengah akan melintas kota-kota Bangkalan, Sampang, Pamekasan lalu sampai ke Sumenep. Namun bila anda melalui jalur utara, akan disuguhi sejumlah pemandangan yang banrangkali tak ingin mata berkedip, karena sepanjang jalur itu membentang pantai-pantai indah.', 'pantai-siring-kemuning-madura.jpeg', 'pantai'),
(8, 'Kampung Batik Tanjung Bumi', 'kampung-batik-tanjung-bumi', 'Paseseh, Tanjungbumi, Kabupaten Bangkalan, Jawa Timur 69156', 'bangkalan', 5, '-6.889430', '113.087934', 'Pusat kerajinan batik di Bangkalan Madura terletak di Tanjung Bumi. Tanjung Bumi berjarak 40 km dari kota Bangkalan atau ditempuh sekitar satu jam menggunakan kendaraan pribadi. Aksesnya cukup bagus dengan jalan beraspal walaupun tidak terlalu lebar. Pemandangan di kanan kiri jalannya dihiasi oleh rumah rumah mentereng yang dimiliki oleh para TKI kita dan ada beberapa hamparan sawah.', 'kampung-batik-2.jpg', 'wisata-kota'),
(9, 'Makam Syaikhona Kholil', 'makam-syaikhona-kholil', 'Jl. Martajasah No. 70, Mertajasah, Kec. Bangkalan, Kabupaten Bangkalan, Jawa Timur 69119', 'bangkalan', 5, '-7.042115', '112.725199', 'Muhammad Syaikhona Kholil lahir pada hari Selasa tanggal 11 Jumadil Akhir 1235 H atau 27 Januari 1820 M, Abdul Lathif seorang Kyai di Kampung Senenan, Desa Kemayoran, Kecamatan Bangkalan, Kabupaten Bangkalan, ujung Barat Pulau Madura, Jawa Timur. Muhammad Syaikhona Kholil kecil berasal dari keluarga ulama. Ayahnya, KH. Abdul Lathif, mempunyai pertalian darah dengan Sunan Gunung Jati. Ayah Abdul Lathif adalah Kyai Hamim, anak dari Kyai Abdul Karim. Yang disebut terakhir ini adalah anak dari Kyai Muharram bin Kyai Asror Karomah bin Kyai Abdullah bin Sayyid Sulaiman. Sayyid Sulaiman adalah cucu Sunan Gunung Jati. Maka tak salah kalau KH. Abdul Lathif mendambakan anaknya kelak bisa mengikuti jejak Sunan Gunung Jati karena memang dia masih terhitung keturunannya.', 'Masjid-Syaikhona-Kholil-globalindo.jpg', 'wisata-religi'),
(10, 'Air Terjun Toroan', 'air-terjun-toroan', 'Desa Ketapang Daya, Ketapang, Ketapang Daya, Ketapang, Kabupaten Sampang, Jawa Timur 69261', 'sampang', 3, '-6.892890', '113.312824', 'Air terjun Toroan merupakan sebuah keajaiban alam yang bisa ditemukan di Desa Ketapang Daya, Kecamatan Ketapang, Kabupaten Sampang. Keajaiban alam itu berupa sebuah pantai yang memiliki air terjun langsung jatuh ke laut. Air terjun yang berada di tebing sisi pantai dikelilingi oleh pepohonan hijau yang menyegarkan. Traveler dapat bermain-main di bawahnya tanpa takut terseret ombak sebab ada batu-batu besar yang berjajar sebagai penahan ombak alami sebelum sampai ke air terjun. Dari pantai ini traveler juga dapat menikmati sensasi sunset yang menawan.', 'Lokasi_Air_Terjun_Toroan_Sampang.jpg', 'air-terjun'),
(11, 'Pantai Camplong', 'pantai-camplong', 'Jl. Raya Camplong, Camplong, Kabupaten Sampang, Jawa Timur 69281', 'sampang', 5, '-7.218314', '113.319383', 'Kalau kamu mencari tempat mainstream dengan akses jalan yang mudah, Pantai Camplong menjadi jawabannya. Mudah sekali menemukan dan menjangkau pantai ini sebab lokasinya berada di jalur lintas kota yang menghubungkan Bangkalan-Sampang dan Pamekasan. Akses jalan yang mudah turut berpengaruh terhadap kunjungan wisata yang juga membludak di hari libur. Untuk itu pemerintah juga telah membangun fasilitas yang lengkap guna mengakomodasi kebutuhan wisatawan.', 'camplong.jpg', 'pantai'),
(12, 'Gua Lebar', 'gua-lebar', 'Rong Tengah, Sampang, Rong Tengah, Kec. Sampang, Kabupaten Sampang, Jawa Timur 69216', 'sampang', 3, '-7.195014', '113.255905', 'Kawasan Madura memang dipenuhi oleh bukit kapur dan tidak sedikit yang dijadikan bahan tambang. Kita telah mengenal Bukit Jaddih dan Arosbaya di Bangkalan yang juga merupakan area tambang batu kapur. Di Sampang ada yang namanya Gua Lebar yang berada di kelurahan Dalpenang, kecamatan Sampang. Berdasarkan informasi dari laman resmi pemkab Sampang, gua ini terbentuk dari bekas penambangan bahan galian C berupa kapur putih yang kemudian menyisakan terowongan yang menjorok ke dalam tanah sedalam 100 meter yang disebut dengan Gua Lebar.', 'gua_lebar.jpg', 'pegunungan'),
(13, 'Hutan Kera Nepa', 'hutan-kera-nepa', 'Batioh, Banyuates, Kabupaten Sampang, Jawa Timur 69263', 'sampang', 3, '-6.897600', '113.201204', 'Ada sebuah tempat yang bisa dikunjungi jika kepingin bertemu dengan â€œkembaranâ€ mu yaitu di Wisata Hutan Kera Nepa. Ini merupakan kawasan hutan bakau yang dihuni oleh sekumpulan kera. Menariknya lagi kera-kera ini seakan sudah jinak dan tidak takut dengan kedatangan para wisatawan. Letak tempat wisata ini berada sekitar 50 km dari pusat kota. Jadi traveler harus berkendara melewati rute Ketapang dan Banyuates. Secara administratif kawasan wisata ini terletak di desa Nepa, kecamatan Banyuates.', 'hutan_kera_nepa.jpg', 'wisata-kota'),
(14, 'Api Tak Kunjung Padam', 'api-tak-kunjung-padam', 'Larangan Tokol, Tlanakan, Larangan Tokol, Tlanakan, Kabupaten Pamekasan, Jawa Timur 69371', 'pamekasan', 5, '-7.204984', '113.461609', 'Api Tak Kunjung Padam. Mungkin ini adalah nama tempat wisata paling puitis di Indonesia. Nah, Wisata Api Tak Kunjung Padam berada di Desa Larangan, Tokol, Pamekasan. Lokasinya tidak jauh dari pusat kota Pamekasan, hanya berjarak sekitar 4-5 km saja. Tapi sayangnya akses menuju Desa Larangan belum teraspal jadi buat kamu yang datang dengan kendaraan roda dua, disarankan untuk berhati-hati ya guys.\r\n\r\nKok namanya Api Tak Kunjung Padam ya? Nama itu memang cocok dengan kondisi api di wisata ini yang bahkan tetap menyala meskipun diguyur hujan. Mungkin ini adalah api abadi. Keabadian api ini membuatnya menjadi tempat wisata paling hits di Pamekasan, bahkan menjadi salah satu ikon wisata terkenal di pulau Madura.\r\n\r\nTidak ada tiket masuk untuk melihat keajaiban Api Tak Kunjung Padam tapi kamu wajib membayar parkir ya guys. Cukup Rp. 2000 untuk motor, dan Rp. 5000 untuk mobil.', 'api_abadi.jpg', 'wisata-kota'),
(15, 'Pantai Jumiang ', 'pantai-jumiang ', 'Desa Tanjung, Pademawu, Pamekasan, Indonesia, Tanjung, Pademawu, Kabupaten Pamekasan, Jawa Timur 69323', 'pamekasan', 4, '-7.233643', '113.551862', 'Pantai di Pulau Madura rata-rata berpasir putih dan masih sangat alami. Salah satunya Pantai Jumiang ini. Pantai ini terletak di Desa Tanjung, Kecamatan Pademawu, Kabupaten Pamekasan. Hanya berjarak sekitar 12 km ke arah tenggara Kota Pamekasan.\r\n\r\nKabar gembiranya, kondisi jalan raya dari Kota Pameksan menuju Pantai Jumiang sudah sangat bagus. Bahkan sudah ada layanan saran transpotasi umum yang bisa membawamu menuju pantai.\r\n\r\nPantai Jumiang memiliki kontur yang berbeda dengan pantai-pantai di Pulau Madura pada umumnya. Pantai ini dihiasi tebing-tebing tinggi. Sunsetnya ciamik, dan gugusan karang yang memikat. Untuk menikmati pesona Pantai Jumiang, kamu cukup membayar Rp. 5000 saja.', 'pantai_jumiang.JPG', 'pantai'),
(16, 'Pantai Talang Siring ', 'pantai-talang-siring ', 'Montok, Larangan, Montok, Larangan, Kabupaten Pamekasan, Jawa Timur 69383', 'pamekasan', 4, '-7.138214', '113.589741', 'Pantai Talang Siring berada di Desa Montok Kecamatan Larangan atau berjarak sekitar 14 km dari Kota Pamekasan. Pantai ini bisa kamu capai dengan kendaraan pribadi maupun kendaraan umum yang sudah banyak tersedia.\r\n\r\nPantai ini menampilkan gugusan hutan mangrove yang menawan dan aktifitas para nelayan. Pantai berbatu karang ini sangat cocok buat kamu yang selama ini penat dengan hiruk-pikuk kehidupan kota. Ada fasilitas mushalla, toilet, kantor, lahan parkir, warung makan dan spot-spot untuk duduk santai menikmati pemandangan pantai yang asri.', 'talang_siring.jpg', 'pantai'),
(17, 'Vihara Avalokitesvara', 'vihara-avalokitesvara', 'Candi Pamekasan Madura, Jl. Teja Pamekasan, Montok, Larangan, Kabupaten Pamekasan, Jawa Timur 69382', 'pamekasan', 5, '-7.139664', '113.587379', 'Vihara Avalokitesvara atau Kelenteng Kwan Im Kiong berada tidak jauh dari Pantai Talang Siring. Jadi, setelah puas menikmati panorama pantai kamu bisa mampir sebentar mengagumi kemolekan arsitektur vihara ini.\r\n\r\nKonon vihara ini didirikan pada abad ke 18 berdiri di atas lahan seluas 3 ha. Vihara ini dikenal dengan nama Kelenteng Kwan Im Kiong karena terdapat patung Kwan Im Po Sat atau Dewi Welas Asih di dalamnya. Vihara ini unik dan menampilkan toleransi antar umat beragama di Pamekasan karena di dalam lingkungan viahar yang juga didirikan Mushola dan Pura.', 'Vihara_Avalokitesvara.jpg', 'wisata-religi'),
(18, 'Gua Blaban', 'gua-blaban', 'Blaban, Batu Marmar, Kabupaten Pamekasan, Jawa Timur 69354', 'pamekasan', 3, '-6.908784', '113.485479', 'Kemunculan gua ini sempat menghebohkan warga setempat bahkan warga Pamekasan secara umum. Soalnya penemuan gua ini terbilang unik loh guys. Jadi warga setempat pada tahun 2015 menggali sumur dan tiba-tiba penggalian itu berujung pada penemuan gua yang kemudian dinamai Gua Blaban. Gua Blaban berada di Dusun Rojing, Desa Blaban, Kecamatan Batu Marmar, Kabupaten Pamekasan.\r\n\r\nGua ini menampilkan pesona rongga bebatuan yang berkilau seperti emas. Tidak heran pada saat ditemukan, warga sekitar mengira gua ini adalah gua yang menyimpan harta karun. Tidak hanya rongga bebatuan yang berkilauan seperti emas, Gua Blaban juga akan menghipnotismu dengan stalaktit dan stalakmitnya yang ciamik banget.\r\n\r\nUntuk pecinta gua atau pecinta fotografi, Gua Blaban sangat direkomendasikan buat kamu guys. Kamu bisa puaskan hobbymu disini. Cukup merogoh uang sebesar Rp. 20.000, kamu sudah bisa masuk ke gua ini.', 'gua_blaban.jpeg', 'pegunungan'),
(19, 'Boekit Tinggi Daramist', 'boekit-tinggi-daramist', 'Daramesta, Lenteng, Kabupaten Sumenep, Jawa Timur 69461', 'sumenep', 5, '-7.018870', '113.800262', 'Obyek wisata Boekit Tinggi Daramista masih terbilang baru di Kabupaten Sumenep. Ya, kawasan ini resmi dibuka pada bulan September tahun lalu. Meskipun pembangunannya belum sepenuhnya selesai, tapi tempat ini sudah menyedot wisatawan dari berbagai daerahâ€”baik dari dalam maupun luar Kota Sumenep. Lokasinya terletak di sebuah desa bernama Daramista. Untuk mencapainya, kamu harus menempuh perjalanan selama 30 menit dari pusat Kota Sumenep.\r\n\r\nSetelah tiba di kawasan tersebut, kamu diwajibkan untuk membayar biaya parkir sebesar Rp. 2000,00. Setelah itu, kamu bisa melanjutkan perjalanan dengan menaiki beberapa anak tangga yang sudah tertata rapi. Nah, setibanya di puncak bukit, kamu akan disuguhi pemandangan yang memukau, lengkap dengan beberapa gubuk-gubuk kecil dan kolam-kolam yang terdapat di sekitar lokasi. Kalau malam hari, kamu juga bisa menikmati gemerlap lampu-lampu kecil yang dilekatkan di atas pepohonan. Suasana romantis yang langsung terasa begitu kamu sampai di sini. Tak hanya itu, kamu juga bisa memanfaatkan bukit ini untuk menunggu datangnya senja. Dan bila kamu mempunyai hobi fotografi, di sini juga disediakan beberapa spot yang kece.', 'bukit_drama.jpg', 'pegunungan'),
(20, 'Water Park Sumekar', 'water-park-sumekar', 'Kasengan Manding Kabupaten Sumenep Jawa Timur 69452', 'sumenep', 5, '-6.990527', '113.841391', 'Water Park Sumekar atau yang kita kenal dengan WPS adalah salah satu tempat wisata di Sumenep yang terletak di jalan Asta Tinggi Desa Kasengan Kecamatan Rubaru + 3 km dari pusat Kota. tempat wisata ini menjadi kebanggaan orang Sumenep diresmikan pada tanggal 28 Juli 2012 diatas lahan seluas Â± 2 hektar.', 'wps_sumenep.jpg', 'wisata-kota'),
(21, 'Pantai Slopeng', 'pantai-slopeng', 'Jalan Raya Ambunten No.34, Ambunten, Sema"an, Dasuk, Kabupaten Sumenep, Jawa Timur 69455', 'sumenep', 5, '-6.885540', '113.799741', 'Pantai Slopeng merupakan salah satu tempat wisata alam andalan Kabupaten Sumenep. Pantai yang terletak di Utara Sumenep ini masih berdekatan dengan Pantai Lombang. Lokasinya berada di 21 km dari pusat kota Sumenep, dan 197 km dari pusat kota Surabaya. Tepatnya berada di Jalan Ambunten km 17 Desa Samaan, Kecamatan Dasuk, Kabupaten Sumenep.', 'slopeng.jpg', 'pantai'),
(22, 'Pantai Siring Kemuning', 'pantai-siring-kemuning', 'Macajah, Tanjungbumi, Bangkalan Regency, East Java 69156', 'bangkalan', 3, '-6.885135\r\n', '113.055336', 'Pantai siring kemuning merupakan pantai yang masih cukup alami dengan pesona pemandangannya yang sungguh sangat luar biasa, tetapi masih belum di kembangkan secara profesional sehingga membuat pantainya seakan tersembunyi dari pandangan wisatawan luar.', 'pantai-siring-kemuning-madura.jpeg', 'pantai'),
(23, 'Masjid Agung Sumenep', 'masjid-agung-sumenep', 'Bangselok, Kotasumenep, Kabupaten Sumenep, Jawa Timur 69416', 'sumenep', 5, '-7.008175', '113.859744', 'Masjid jamik Panembahan Somala atau lebih dikenal dengan sebutan Masjid Jamik Sumenep merupakan salah satu bangunan 10 masjid tertua dan mempunyai arsitektur yang khas di Nusantara. Masjid Jamik Sumenep saat ini telah menjadi salah satu landmark di Pulau Madura. Dibangun Pada pemerintahan Panembahan Somala[1], Penguasa Negeri Sungenep XXXI, dibangun setelah pembangunan Kompleks Keraton Sumenep, dengan arsitek yang sama yakni Lauw Piango.\r\nMenurut catatan sejarah Sumenep, Pembangunan Masjid Jamik Sumenep dimulai pada tahun 1779 Masehi dan selesai 1787 Masehi. Bangunan ini merupakan salah satu bangunan pendukung Karaton, yakni sebagai tempat ibadah bagi keluarga Karaton dan Masyarakat, masjid ini adalah masjid kedua yang dibangun oleh keluarga keraton, di mana sebelumnya kompleks masjid berada tepat di belakang keraton yang lebih dikenal dengan nama Masjid laju yang dibangun oleh Kanjeng R. Tumenggung Ario Anggadipa, penguasa Sumenep XXI.', 'masjid_agungn.jpg', 'wisata-religi'),
(24, 'Museum Keraton Sumenep', 'museum-keraton-sumenep', 'Jl. Dr. Sutomo No.6, Pajagalan, Kotasumenep, Kabupaten Sumenep, Jawa Timur 69416', 'sumenep', 5, '-7.008961', '113.863015', 'Keraton Sumenep adalah tempat kediaman resmi para Adipati/Raja-Raja selain sebagai tempat untuk menjalankan roda pemerintahan. Kerajaan Sumenep sendiri bisa dibilang sifatnya sebagai kerajaan kecil (setingkat Kadipaten) kala itu, sebab sebelum wilayah Sumenep dikusai VOC wilayah Sumenep sendiri masih harus membayar upeti kepada kerajaan-kerajaan besar(Singhasari, Majapahit, dan Kasultanan Mataram).\r\n\r\nKeraton Sumenep sejatinya banyak jumlahnya, selain sebagai kediaman resmi adipati/raja yang berkuasa saat itu, karaton juga difungsikan sebagai tempat untuk mengatur segala urusan pemerintahan kerajaan. Saat ini Bangunan Karaton yang masih tersisa dan utuh adalah bangunan Karaton yang dibangun oleh Gusti Raden Ayu Tirtonegoro R. Rasmana dan Kanjeng Tumenggung Ario Tirtonegoro (Bindara Saod) beserta keturunannya yakni Panembahan Somala Asirudin Pakunataningrat dan Sri Sultan Abdurrahman Pakunataningrat I (Raden Ario Notonegoro). Sedangkan untuk bangunan karaton-karaton milik Adipati/Raja yang lainnya, seperti Karaton Pangeran Siding Puri di Parsanga, Karaton Tumenggung Kanduruan, Karaton Pangeran Lor dan Pangeran Wetan di Karangduak hanya tinggal sisa puing bangunannya saja yakni hanya berupa pintu gerbang dan umpak pondasi bangunan Keraton.', 'sumenep.jpg', 'wisata-kota'),
(25, 'Pantai Batu Kerbuy', 'pantai-batu-kerbuy', 'Jalan Raya Pasean, Pasean, Pamekasan, Kabupaten Pamekasan, Jawa Timur 69356', 'pamekasan', 3, '-6.891979\r\n', '113.576341', 'Pantai ini berada di Desa Batu Kerbuy Kecamatan Pasean, berjarak lebih kurang 45 km arah utara dari Kota pamekasan, Jawa Timur.Untuk mencapai kelokasi, sangat mudah dijangkau karena posisinya berdekatan dengan jalan raya pantura jurusan Sumenep â€“ Kamal. Dengan air pantainya yang biru dan bersih menarik Anda untuk melakukan berbagai kegiatan seperti, berenang, menyelam, memancing, dan sekedar berkeliling dengan menggunakan perahu motor yang terdapat dibibir pantai. Suasana alam yag terdapat akan membuat Anda mempesona dan merasakan kenyamanan yang tidak akan terlupakan.', 'batu_kerbuy.jpg', 'pantai'),
(26, 'Taman Bunga Nasional Adipura Sumenep', 'taman-bunga-nasional-adipura-sumenep', 'Pajagalan, Kotasumenep, Kabupaten Sumenep, Jawa Timur 69416', 'sumenep', 5, '-7.008961', '113.862972', 'Selain sebagai ikon kabupaten paling timur di Madura, taman ini juga mudah di kunjungi karena berada di jantung Kota Sumenep. Tiap hari di tempat ini selalu ramai pengunjung. Keberadaannya di pusat kota menjadi tempat yang pas untuk melepaskan lelah dari hiruk-pikuk kota. Ia menjadi taman rekreasi dengan konsep ruang terbuka hijau. Banyak pohon rindang yang akan menyegarkan suasana. Di situ juga tersedia kursi taman yang bisa dijadikan tempat bercengkerama bersama orang terdekat.', 'taman_adipura.JPG', 'wisata-kota'),
(27, 'Makam Raja Sumenep Asta Tinggi', 'makam-raja-sumenep-asta-tinggi', 'Jl. Asta Tinggi, Kebunagung, Kotasumenep, Kabupaten Sumenep, Jawa Timur 69413', 'sumenep', 5, '-6.996346', '113.845844', 'Asta Tinggi adalah kawasan pemakaman khusus para Pembesar/Raja/Kerabat Raja yang teletak di kawasan dataran tinggi bukit Kebon Agung Sumenep. Dalam Bahasa Madura, Asta Tinggi disebut juga sebagai Asta RajÃ¢ yang bermakna makam para PangradjÃ¢ (pembesar kerajaan) yang merupakan asta/makam para raja , anak keturunan beserta kerabat-kerabatnya yang dibangun sekitar tahun 1750M. Kawasan Pemakaman ini direncanakan awalnya oleh Panembahan Somala dan dilanjutkan pelaksanaanya oleh Sultan Abdurrahman Pakunataningrat I dan Panembahan Natakusuma II', 'asta_tinggi.jpg', 'wisata-religi'),
(28, 'Bukit Geger', 'bukit-geger', 'Geger, Kabupaten Bangkalan, Jawa Timur 69152', 'bangkalan', 3, ' -7.024756\r\n', '112.933184', 'Bukit Geger terletak kurang lebih 30 km arah tenggara kota Bangkalan, tepatnya berada di desa Geger, kecamatan Geger. Dari Kota Bangkalan lurus terus ke arah utara yaitu ke arah kecamatan Arosbaya, lalu ke timur kearah kecamatan geger. Disitulah bukit itu berada. Bukit tersebut mudah dijangkau karena letaknya tepat dipinggir jalan raya. Di Bukit Geger, Para Penelusur ga cuma wisata alam, tetapi juga berwisata purbakala.', 'Obyek_Wisata_Bukit_Geger.jpg', 'pegunungan'),
(29, 'Taman Kermata Sumenep', 'taman-kermata-sumenep', 'Saronggi, Kabupaten Sumenep, Jawa Timur', 'sumenep', 4, '-7.078913', '113.827958', 'Kirmata atau Kermata adalah sebuah bendungan, waduk dan danau yang terletak di Desa Saronggi, Kecamatan Saronggi Kabupaten Sumenep, sekitar 7 km dari utara pusat kota, jika anda berkunjung ke Sumenep pasti anda akan melewati yang namanya Kecamatan Saronggi lebih tepatnya sebelum areal tambak atau Desa Nambakor. Di Kirmata atau Kermata ini bisa disebut juga dengan waduk atau danau ini terbentuk sejak dulu, sebenarnya awalnya adalah mata air tetapi di jaman Kolonial Belanda kermata ini dibuat indah dan bagus dengan dibangunnya berbagai fasilitas dan sebagainya. ternyata lambat laun Belanda mengubah Kermata menjadi danau buatan dan dibuatlah bendungan untuk sistem irigasi untuk sawah-sawah disekitar.', 'girmata.jpg', 'wisata-kota'),
(30, 'Pantai Batu Sulung', 'pantai-batu-sulung', 'Karduluk, Pragaan, Kabupaten Sumenep, Jawa Timur 69465', 'sumenep', 3, '-7.111100', '113.700730', 'Pantai Batu Sulung dan Desa Karduluk-Paduan antara objek wisata alam dan seni budaya mungkin bisa menjadi satu paket wisata menarik, apalagi bisa didapatkan sekaligus dalam satu kunjungan. Nah, objek wisata semacam itu tentu bisa anda dapatkan apabila sedang melancong ke Madura tepatnya ke Desa Karduluk dimana anda bisa menemukan karya seni kerajinan daerah yang cantik serta wisata alam berupa pantai yang tak kalah menarik.\r\nLokasi dan Transportasi Pantai Batu Sulung bisa anda temukan di salah satu desa yang sering menjadi tujuan wisata karena kerajinan khasnya yakni Desa Karduluk. Antara desa dan pantai hanya berjarak sekitar 100 meter saja apabila dihitung dari sekitar jalan raya desa. Desa dan pantai ini terletak pesisir selatan pulau Madura tepatnya di Kecamatan Pragaan, Kabupaten Sumenep, Madura, Jawa Timur. Jaraknya dari pusat kota Sumenep sekitar 20 kilometer atau sekitar 30 menit ditempuh dengan kendaraan bermotor. Jika anda belum tiba di Sumenep, maka kota ini bisa ditempuh dari Surabaya melalui Jembatan Tol Suramadu. Cukup membayar Rp 30.000*) untuk mobil dan Rp 3.000*) untuk motor, anda sudah bisa menyebrang hingga pulau Madura dan melanjutkan perjalanan anda menuju Sumenep.', 'Batu_Sulung.jpg', 'pantai'),
(31, 'Museum Cakraningrat\r\n\r\n', 'museum-cakraningrat\n', 'Jl. Soekarno Hatta No.35, Mlajah, Kec. Bangkalan, Kabupaten Bangkalan, Jawa Timur 69116\r\n', 'bangkalan', 5, '-7.048267\r\n', '112.736380\r\n', 'Museum Cakraningrat yang terletak di Jalan Soekarno Hatta no.40, Kabupaten Bangkalan, Madura. Persisnya berada di Kraton yang terletak berderet dengan kantor Pemerintahan Kabupaten Bangkalan.', 'Museum_1.JPG', 'wisata-kota'),
(32, 'Makam Sultan Abdul Kadirun \r\n', 'makam-sultan-abdul-kadirun \n', 'Demangan, Bangkalan Sub-District, Bangkalan Regency, East Java 69115\r\n', 'bangkalan', 5, '-7.028926\r\n', '112.746549\r\n', 'Makam Sultan Abdul Kadirun ini letaknya berada di Jl. Sultan Abdul Kadirun, di belakang Masjid Agung Kota Bangkalan. Makam ini selalu dipenuhi oleh para peziarah terutama dibulan Ramadhan, bahkan dari siang ampe malam alunan ayat-ayat Al-Qurâ€™an selalu berkumandang ditempat ini.', '33P5028588.jpg', 'wisata-religi'),
(33, 'Goa Payudan', 'goa-payudan', 'Payudan Daleman, Guluk Guluk, Payudan Daleman, Guluk Guluk, Kabupaten Sumenep, Jawa Timur', 'sumenep', 3, '-7.019105', '113.623096', 'Objek wisata ini berada di atas pegunungan yang bernama Gunung Payudan, tepatnya di Desa Payudan Daleman Kecamatan Guluk-Guluk Kabupaten Sumenep kurang lebih 30 Km ke Arah Barat Kota Sumenep. Bagi masyarakat Sumenep Khususnya, Gua Payudan mempunyai arti penting mengingat gua ini memiliki keterkaitan dengan sejarah raja-raja Sumenep abad 14 samapi 17. Gua ini tidak hanya bernilai sebuah obyek wisata Alam (goa) saja, tetapi juga mengandung makna religi dan sejarah didalamnya.', 'payudan.jpg', 'pegunungan'),
(34, 'Monumen Nasional Arek Lancor', 'monumen-nasional-arek-lancor', 'Barurambat Kota, Kec. Pamekasan, Kabupaten Pamekasan, Jawa Timur 69317', 'pamekasan', 5, '-7.160203', '113.485176', 'Monumen menjadi salah satu lambang kebanggaan berbentuk sebuah bangunan pada setiap daerah, tak terkecuali dengan Kabupaten Pamekasan. Kabupaten terbesar yang ada di Pulau Madura ini memiliki monumen khusus berbentuk tugu. Monumen yang bernama Monumen Arek Lancor ini merupakan simbol yang sengaja di bangun sebagai wujud penghargaan dan penghormatan bagi semua pejuang yang berjuang membebaskan Pamekasan dari penjajah Belanda kala itu.\r\n', 'arek_lancor.jpg', 'wisata-kota'),
(35, 'Taman Bunga Kota Sampang', 'taman-bunga-kota-sampang', 'Gunung Sekar, Sampang, Rong Tengah, Kec. Sampang, Kabupaten Sampang, Jawa Timur 69216', 'sampang', 5, '-7.195381', '113.251411', 'Taman Bunga Kota Sampang merupakan ikon kota Sampang yang memeliki keindahan tersendiri. Taman Ini dilengkapi dengan tanaman dan bunga -bunga yang sangat cantik dan menawan.', 'taman_bunga_sampang.jpg', 'wisata-kota'),
(36, 'Bukit Cinta \r\n', 'bukit-cinta\r\n', 'Sentol, Pademawu, Pamekasan Regency 69323\r\n', 'pamekasan', 5, '-7.149537\r\n', '113.499857\r\n', 'Bukit Cinta merupakan Sebuah bukit yang memiliki tangga berbentuk hati/love. Dari puncak bukit cinta, pengunjung  bisa terjun dari ketinggian menikmati permainan Flying Fox.', 'bukit_cinta.jpg', 'wisata-kota'),
(37, 'Bukit Kapur Arosbaya \r\n', 'bukit-kapur-arosbaya \n', 'Plalangan madura, Buduran, Arosbaya, Kabupaten Bangkalan, Jawa Timur 69151\r\n', 'bangkalan', 5, '-6.947370\r\n', '112.860231\r\n', 'Bukit Kapur ini biasa disebut Bukit Pelalangan dan terletak di Desa Berbeluk, Kecamatan Arosbaya. Untuk bisa mencapai lokasi bukit kapur arosbaya ini cukup mudah, terutama bagi mereka yang pernah datang ke wisata religi makam para Raja Bangkalan "Air Mata Ibu" karna letaknya yang sangat dekat dengan situs religi tersebut.', '12923088_1008118662603786_7025572391115049882_n.jpg', 'pegunungan'),
(38, 'Wisata Waduk Nipah Sampang', 'wisata-waduk-nipah-sampang', 'Montor, Banyuates, Kabupaten Sampang, Jawa Timur 69263', 'sampang', 4, '-6.934987', '113.193661', 'Objek wisata buatan juga menjadi pilihan terbaik untuk menghabiskan waktu liburan. Sejak diresmikan beberapa waktu yang lalu Waduk Nipah menjadi salah satu objek wisata buatan yang wajib untuk teman-teman kunjungi bila sedang berada di Madura. Selain itu dengan adanya Waduk Nipah ini secara tidak langsung menandakan bahwa Madura bukanlah pulau yang panas juga gersang. Sumber perairan dari Waduk Nipah yang ada disini mampu mengairi persawahan yang ada di sekitarnya.', 'Wisata_Waduk_Nipah_Sampang.jpg', 'wisata-kota'),
(39, 'Pantai Nepa', 'pantai-nepa', 'Batioh, Banyuates, Batioh, Banyuates, Kabupaten Sampang, Jawa Timur 69263', 'bangkalan', 4, '-6.897087', '113.201247', 'Pantai ini memiliki keindahan hampir sama dengan keindahan pantai Kuta yang berada di Pulau Dewata sana. Terletak di Kabupaten Sampang, tepatnya di desa Batioh Kecamatan Ketapang. Meskipun letaknya sedikit terpecil namun anda tidak perlu khawatir dengan akses jalan menuju arah pantai. Apalagi setelah anda membutikan sendiri keindahan Pantai ini.\r\n\r\nPantai Nepa biasa masyarakat sekitar menyebutnya, Pantai Nepa menjadi satu kawasan dengan Objek Wisata Hutan Kera Nepa. Untuk bisa sampai ke Pantai Nepa ada dua pilihan akses jalan yang bisa anda pilih, terutama bagi anda yang berasal dari luar Pulau Madura.', 'Obyek_Wisata Pantai_Nepa_di Sampang_-_Pulau_Madura.jpg', 'pantai'),
(40, 'Guweh Pote\r\n', 'guweh-pote\n', 'Parseh, Socah, Bangkalan Regency, East Java 69161\r\n', 'bangkalan', 4, '-7.080828\r\n\r\n', '112.759030\r\n', 'Pemandian Kolam Renang â€œAeng Ghuwa Poteâ€ di desa Jaddih kecamatan Socah kabupaten Bangkalan ini sangat unik. Wisata alam ini berada tepat di area sekitar penambangan batu kapur. Selain itu, konon tempat ini adalah satu-satunya di dunia, kolam renang yang disatukan dengan wisata kolam renang bukit kapur. Air kolam renang ini berasal dari sumber yang muncul di sekitar kolam renang tersebut.', 'Kolam_Guweh_ Pote_Jeddih Bangkalan.JPG', 'pegunungan'),
(41, 'Pantai Sembilan', 'pantai-sembilan', 'Giligenting, Giligenting Sub-District, Bringsang, Giligenteng, Kabupaten Sumenep, Jawa Timur 69482', 'sumenep', 3, '-7.175023', '113.924381', 'Pantai Sembilan adalah salah satu objek wisata yang terdapat di Kabupaten Sumenep, Pulau Madura, Jawa Timur. Lokasi Pantai Sembilan ini ada di Desa Bringsang, Kecamatan/Pulau Gili Genting.', 'pantai_sambilan.jpg', 'pantai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foto_wisata`
--
ALTER TABLE `foto_wisata`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foto_wisata`
--
ALTER TABLE `foto_wisata`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
