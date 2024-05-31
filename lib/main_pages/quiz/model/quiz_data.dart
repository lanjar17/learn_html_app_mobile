import 'package:learnhtml/main_pages/quiz/provider/quiz_model.dart';

List<Quiz> questions = [
  Quiz(
    "Sekolah ABC akan mengadakan pemilihan ketua osis, dan mereka membutuhkan formulir online untuk calon kandidat. Pak Tono, guru IT di sekolah ABC meminta bantuanmu untuk membuat formulir ini.\nElemen HTML yang digunakan untuk membuat form adalah:",
    {
      "<form>": true,
      "<input>": false,
      "<label>": false,
      "<button>": false,
    },
  ),
  Quiz("Saat membuat formulir pemilihan ketua osis, Pak Tono ingin setiap calon kandidat menulis nama lengkap mereka.\nCara yang benar untuk membuat input teks dengan label yang terhubung adalah dengan menggunakan:", {
    "<input type=\"text\"> dan <label for=\"id\">": true,
    "<input type=\"text\"> dan <label>": false,
    "<input type=\"label\"> dan <label>": false,
    "<input type=\"label\"> dan <label for=\"id\">": false,
  }),
  Quiz("Selain nama lengkap, calon kandidat juga diminta untuk memilih warna favorit mereka sebagai informasi tambahan.\nElemen HTML yang digunakan untuk membuat checkbox adalah:", {
    "<input type=\"checkbox\">": false,
    "<input type=\"radio\">": true,
    "<select>": false,
    "<option>": false,
  }),
  Quiz("Pak Tono ingin tahu dari kandidat dari mana asal mereka, sehingga dia ingin menambahkan dropdown/select box untuk memilih kota.\nTag HTML yang tepat untuk membuat dropdown/select box adalah:", {
    "<input type=\"select\">": false,
    "<input type=\"dropdown\">": false,
    "<select>": true,
    "<option>": false,
  }),
  Quiz("Setelah calon kandidat mengisi formulir dengan lengkap, mereka harus mengirimkan formulir tersebut.\nTag HTML yang digunakan untuk tombol submit adalah:", {
    "<button type=\"submit\">": false,
    "<input type=\"submit\">": true,
    "<form action=\"submit\">": false,
    "<button>": false,
  }),
  Quiz("Sekolah Anda akan mengadakan lomba penulisan cerita pendek, dan panitia meminta Anda untuk membuat formulir pendaftaran online. Mereka ingin memastikan bahwa data yang dimasukkan oleh peserta valid sebelum disimpan.\nCara yang paling efektif untuk menerapkan validasi data pada formulir pendaftaran lomba penulisan adalah dengan:", {
    "Menggunakan CSS untuk merancang tata letak formulir yang intuitif dan mudah dipahami.": false,
    "Menggunakan HTML untuk menambahkan gambar dan ikon yang menarik pada formulir.": false,
    "Menggunakan teknologi Captcha dalam formulir untuk menghindari spam dan bot.": false,
    "Menggunakan JavaScript untuk memeriksa keabsahan data seperti format email yang benar, panjang karakter yang sesuai, atau validasi tanggal yang tepat sebelum formulir dapat disubmit.": true,
  }),
  Quiz(
      "Pada halaman web sekolah, terdapat formulir kontak yang digunakan siswa, orang tua, dan pengunjung untuk menghubungi pihak sekolah. Panitia sekolah meminta Anda untuk menambahkan fitur keamanan untuk menghindari spam dan bot.\nTeknologi yang paling efektif untuk mencegah pengisian data oleh bot atau spammer dalam formulir kontak adalah:", {
    "Menggunakan JavaScript untuk membuat validasi data yang ketat.": false,
    "Menambahkan fungsi khusus dalam backend untuk memeriksa setiap input secara manual.": false,
    "Menggunakan teknologi Captcha dalam formulir kontak untuk memastikan bahwa pengguna adalah manusia.": true,
    "Menambahkan pertanyaan keamanan seperti \"Apakah Anda manusia?\" pada formulir.": false,
  }),
  Quiz("Sekolah Anda memiliki program pelatihan ekstrakurikuler untuk siswa, dan panitia ingin melakukan evaluasi terhadap pelatihan tersebut. Mereka meminta Anda untuk membuat formulir evaluasi online.\nElemen formulir yang paling penting untuk menciptakan formulir evaluasi pelatihan ekstrakurikuler yang efektif adalah:", {
    "Menyusun pertanyaan terkait pengalaman pelatihan secara keseluruhan.": true,
    "Menambahkan warna dan dekorasi yang menarik pada formulir.": false,
    "Menggunakan JavaScript untuk membuat efek animasi pada formulir.": false,
    "Menambahkan media sosial sharing button pada formulir.": false,
  }),
  Quiz(
      "Kantin sekolah ingin mengumpulkan umpan balik dari siswa tentang layanan dan makanan yang mereka sediakan. Mereka meminta Anda untuk membuat formulir survey kepuasan pelanggan yang dapat diakses secara online.\nLangkah yang paling penting dalam menerapkan format formulir pada halaman web untuk membantu kantin sekolah dalam mengumpulkan data dari siswa tentang kepuasan mereka terhadap layanan dan makanan kantin adalah:",
      {
        "Menambahkan elemen gamifikasi ke dalam formulir.": false,
        "Menyusun pertanyaan terstruktur tentang berbagai aspek kantin.": true,
        "Menggunakan teknologi QR code dalam formulir.": false,
        "Menambahkan pilihan tema visual yang berbeda pada formulir.": false,
      }),
  Quiz(
      "Anda sedang mengembangkan formulir kuesioner online untuk proyek penelitian sekolah. Panitia penelitian ingin memastikan bahwa setiap pertanyaan harus diisi sebelum formulir dapat dikirimkan tanpa harus memuat ulang halaman.\nTeknologi yang tepat untuk menerapkan validasi formulir kuesioner tanpa memuat ulang halaman adalah:", {
    "HTML": false,
    "CSS": false,
    "JavaScript": false,
    "AJAX": true,
  }),
  Quiz(
      "Anda ingin membuat halaman web yang menyertakan tautan ke situs eksternal dan membuka tautan tersebut di tab baru. Tag mana yang harus digunakan dan atribut apa yang perlu ditambahkan?", {
    "<a href=\"url\" target=\"_new\">": false,
    "<a href=\"url\" target=\"_blank\">": true,
    "<a href=\"url\" target=\"_self\"": false,
    "<a href=\"url\" target=\"_tab\">": false,
  }),
  Quiz(
      "Bagaimana cara membuat tabel HTML dengan baris header tetap dan baris konten yang dapat digulir?", {
    "Menggunakan <thead>, <tbody> dan CSS overflow": true,
    "Menggunakan <table> dengan CSS scrollable": false,
    "Menggunakan <table> dengan atribut scroll": false,
    "Menggunakan <table> dan <div> dengan CSS overflow": false,
  }),
  Quiz(
      "Anda perlu menampilkan gambar responsif yang skalanya sesuai dengan ukuran layar perangkat. Atribut HTML dan nilai CSS mana yang harus Anda gunakan?", {
    "<img src=\"image.jpg\" style=\"width:100%; height:auto;\">": true,
    "<img src=\"image.jpg\" style=\"width:auto; height:100%;\">": false,
    "<img src=\"image.jpg\" style=\"max-width:100%; max-height:100%;\">": false,
    "<img src=\"image.jpg\" style=\"width:100%; height:100%;\">": false,
  }),
  Quiz(
      "Anda ingin menyematkan video YouTube di halaman web Anda. Tag HTML mana yang benar dan atribut apa yang harus digunakan untuk menentukan dimensi video?", {
    "<video src=\"youtube_url\" width=\"560\" height=\"315\"></video>": false,
    "<iframe src=\"youtube_url\" width=\"560\" height=\"315\"></iframe>": true,
    "<embed src=\"youtube_url\" width=\"560\" height=\"315\"></embed>": false,
    "<object data=\"youtube_url\" width=\"560\" height=\"315\"></object>": false,
  }),
  Quiz(
      "Bagaimana Anda membuat form input yang hanya menerima alamat email yang valid?", {
    "<input type=\"text\" pattern=\"[a-zA-Z0-9._%+-]\">": false,
    "<input type=\"email\" pattern=\"[a-zA-Z0-9._%+-]\">": false,
    "<input type=\"text\" inputmode=\"email\">": false,
    "<input type=\"email\">": true,
  }),
  Quiz(
      "Bagaimana Anda membuat form input yang hanya menerima alamat email yang valid?", {
    "<-- Ini adalah komentar -->": false,
    "<comment>Ini adalah komentar</comment>": false,
    "<!-- Ini adalah komentar -->": true,
    "/* Ini adalah komentar */": false,
  }),
  Quiz(
      "Anda membuat form dan ingin memastikan bahwa pengguna hanya dapat mengirim form jika semua input teks diisi. Atribut HTML mana yang harus Anda tambahkan?", {
    "validate": false,
    "required": true,
    "mandatory": false,
    "check": false,
  }),
  Quiz(
      "Anda ingin membuat sebuah daftar definisi dengan istilah dan deskripsinya. Tag HTML mana yang harus Anda gunakan?", {
    "<ul>, <li>": false,
    "<ol>, <li>": false,
    "<dl>, <dt>, <dd>": true,
    "<list>, <item>": false,
  }),
];
