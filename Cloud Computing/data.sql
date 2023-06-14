instace_id: tripscout
pasword: Fahri8132
ip_public:34.101.130.90

CREATE TABLE `wisata` (
  `id` int(11) NOT NULL PRIMARY KEY,
  `nama_wisata` varchar(255) NOT NULL,
  `alamat_wisata` varchar(255) NOT NULL,
  `deskripsi_wisata` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `longitude` DECIMAL(18, 15) NOT NULL,
  `latitude` DECIMAL(18, 15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `wisata` (`id`, `nama_wisata`, `alamat_wisata`, `deskripsi_wisata`, `longitude`, `latitude`) VALUES
(1, 'Goa Kreo', 'Jl. Raya Goa Kreo, Kandri, Kec. Gn. Pati, Kota Semarang, Jawa Tengah 50222', 'Mendengar Goa Kreo tentu tidak lepas dari sejarah penamaannya. Berawal dari sebutan Mangreho atau ngreho yang diutarakan oleh Sunan Kalijaga kepada empat kera (kera tersebut berwarna merah, kuning, putih dan hitam). Peristiwanya bermula ketika Sunan Kalijaga hendak mengambil kayu jati untuk membangun masjid di Demak. Namun dalam proses pengambilan kayu tersebut terdapat kendala, kayu menyangkut di tebing sehingga mengharuskan Sunan Kalijaga untuk beristirahat.\r\n\r\nSeusai beristirahat sejenak Suna', -7.036961071619744, 110.3476432220896),
(2, 'Kampung Pelangi', 'Jl. DR. Sutomo No.89, Randusari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50244', 'Kampung Pelangi ini pada awalnya merupakan daerah kumuh dan tidak terawat dengan baik. Nama asli dari kampung ini adalah Kampung Wonosari yang berada di kecamatan Randusari Semarang.\r\n\r\nPerubahan kampung Wonosari yang kumuh menjadi Kampung Pelangi yang indah seperti sekarang tidak lepas dari peran Slamet Widodo. Beliau adalah warga kampung Wonosoari  yang berprofesi sebagai kepala sekolah.\r\n\r\nIde ini muncul setelah beliau melihat keindahan kampung wisata Jodipan yang ada di Malang dan juga kampu', -6.9886735421475725, 110.40835127791038),
(3, 'Kota Lama', 'Jl. Letjen Suprapto No.31, Tj. Mas, Kec. Semarang Utara, Kota Semarang, Jawa Tengah 50137', 'Kota Lama sudah menjadi salah satu tujuan wisata paling populer di Semarang menyaingi Lawang Sewu dan Klenteng Sam Poo Kong. Tempat ini terkenal karena nuansa eropa yang kental terasa dari bangunan-bangunan yang ada.\r\n\r\nKomplek kota lama sudah ada sejak tahun 1700-an dan dulu digunakan sebagai pusat perdagangan oleh para pedagang Tionghoa, Arab, dan India. Pada masa kolonial Belanda, kota ini juga dijadikan sebagai pusat pemerintahan Hindia Belanda.\r\n\r\nBangunan-bangunan tua di kota lama dipertahankan dan dirawat dengan baik sehingga ', -6.96797483132359, 110.42785573558209),
(4, 'Lawang Sewu', 'Jl. Pemuda No.144, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132', 'Lawang Sewu adalah salah satu bangunan bersejarah yang terletak di Kota Semarang, Jawa Tengah. Nama Lawang Sewu sendiri berarti "seribu pintu" dalam bahasa Jawa. Bangunan ini merupakan bekas kantor pusat Nederlands-Indische Spoorweg Maatschappij (NIS), perusahaan kereta api Hindia Belanda.\r\n\r\nLawang Sewu terkenal dengan arsitektur bangunan tua dengan jumlah pintu yang sangat banyak. Bangunan ini memiliki gaya arsitektur campuran antara gaya Belanda dengan sentuhan arsitektur Jawa yang kental. Selain itu, Lawang Sewu juga dih', -6.9840059576879225, 110.4107817282141),
(5, 'Masjid Agung Jawa Tengah', 'Jl. Gajah Raya No.15, Gayamsari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50232', 'Masjid Agung Jawa Tengah adalah masjid yang terletak di Kota Semarang, Jawa Tengah. Masjid ini merupakan salah satu ikon utama kota Semarang dan menjadi salah satu masjid terbesar di Indonesia.\r\n\r\nMasjid Agung Jawa Tengah memiliki arsitektur yang megah dan memadukan gaya arsitektur Timur Tengah dengan sentuhan arsitektur Jawa. Masjid ini memiliki lima kubah besar yang melambangkan lima rukun Islam.\r\n\r\nDi dalam masjid terdapat area salat yang luas dengan hiasan-hiasan seni Islam yang indah. Juga ter', -6.983242390493663, 110.44517537976131),
(6, 'Pagoda Avalokitesvara', 'Pagoda Avalokitesvara, Mangkang, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50232', 'Pagoda Avalokitesvara adalah sebuah tempat ibadah umat Buddha yang terletak di Kota Semarang, Jawa Tengah. Pagoda ini merupakan replika dari Pagoda Avalokitesvara yang terdapat di Lanzhou, China.\r\n\r\nPagoda Avalokitesvara memiliki arsitektur khas Tiongkok dengan gaya Tang dan juga campuran beberapa unsur arsitektur Jawa. Pagoda ini terletak di atas bukit dengan pemandangan indah dan suasananya yang tenang.\r\n\r\nPagoda Avalokitesvara di Semarang menjadi tempat ziarah dan juga tempat untuk mempelajari agama', -7.086715654711435, 110.40917746441792),
(7, 'Pura Agung Giri Natha', 'Jl. Raya Majapahit, Rawa Kalong, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50131', 'Pura Agung Giri Natha adalah sebuah pura yang terletak di Kota Semarang, Jawa Tengah. Pura ini merupakan salah satu tempat ibadah umat Hindu yang penting di Semarang dan sekitarnya.\r\n\r\nPura Agung Giri Natha memiliki arsitektur yang khas dengan ornamen-ornamen Bali yang indah. Di dalam pura terdapat berbagai bangunan suci seperti meru, bale, dan padmasana yang didedikasikan untuk berbagai dewa Hindu.\r\n\r\nSelain sebagai tempat ibadah, Pura Agung Giri Natha juga menjadi tempat untuk mengenal dan memp', -6.998268246413315, 110.41056633373111),
(8, 'Museum Ranggawarsita', 'Jl. Abdulrahman Saleh No.18, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132', 'Museum Ranggawarsita adalah sebuah museum yang terletak di Kota Semarang, Jawa Tengah. Museum ini didedikasikan untuk memperkenalkan dan melestarikan karya sastra, seni, dan budaya Jawa.\r\n\r\nMuseum Ranggawarsita memiliki koleksi berbagai macam benda seni seperti wayang kulit, patung, keramik, tekstil, dan masih banyak lagi. Di dalam museum terdapat ruang pamer permanen dan ruang pamer sementara yang menampilkan berbagai pameran seni dan budaya Jawa.\r\n\r\nMuseum ini dinamakan Ranggawarsita sebagai bent', -6.985480189920271, 110.38399192023866),
(9, 'Klenteng Sam Poo Kong', 'Jl. Simongan No.129, Bongsari, Kec. Semarang Bar., Kota Semarang, Jawa Tengah 50148', 'Klenteng Sam Poo Kong adalah sebuah klenteng yang terletak di Kota Semarang, Jawa Tengah. Klenteng ini merupakan salah satu tempat ibadah umat Konghucu terbesar di Indonesia.\r\n\r\nKlenteng Sam Poo Kong memiliki arsitektur yang khas dengan nuansa Tiongkok yang kuat. Klenteng ini memiliki bangunan utama yang indah dengan patung-patung dewa dan hiasan-hiasan yang memukau.\r\n\r\nSelain sebagai tempat ibadah, Klenteng Sam Poo Kong juga menjadi salah satu objek wisata populer di Semarang. Banyak', -6.996156239164342, 110.39798390674623),
(10, 'Tugu Muda', 'Jl. Pemuda, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132', 'Tugu Muda adalah sebuah monumen peringatan yang terletak di Kota Semarang, Jawa Tengah. Monumen ini didirikan untuk mengenang perjuangan rakyat Indonesia dalam merebut kemerdekaan dari penjajahan Belanda.\r\n\r\nTugu Muda memiliki bentuk yang unik dengan tiga pilar yang berdiri tegak. Pada puncak pilar terdapat patung perwira yang sedang berteriak membangkitkan semangat perjuangan.\r\n\r\nLokasi Tugu Muda menjadi salah satu titik landmark kota Semarang dan sering dikunjungi oleh wisatawan maupun warga setempat. Tempat ini juga sering digunakan sebagai', -6.984175135478378, 110.40929417791037);


CREATE TABLE `komentar_rating` (
  `id` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `komentar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_wisata`) REFERENCES `wisata`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO komentar_rating (id, id_wisata, komentar, rating)
VALUES
(1, 1, 'Komentar pertama', 4),
(2, 2, 'Komentar kedua', 3),
(3, 3, 'Komentar ketiga', 5);


