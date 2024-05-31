import 'package:code_editor/code_editor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart' show rootBundle;

class PageViewItemData {
  PageViewItemData({
    required this.title,
    required this.description,
    required this.details,
    required this.image,
    this.filePaths,
    required this.addDetails,
    required this.addImage,
    this.additionalInfo = "",
    this.additionalInfo1 = "",
    this.additionalInfo2 = "",
    this.additionalInfo3 = "",
    this.additionalInfo4 = "",
    this.additionalInfo5 = "",
    this.additionalImage = "",
    this.additionalImage1 = "",
    this.additionalImage2 = "",
    this.additionalImage3 = "",
    this.additionalImage4 = "",
    this.additionalImage5 = "",
    
  });

  final String addDetails;
  final String addImage;
  final String description;
  final String details;
  final List<String>? filePaths;
  final String image;
  final String title;
  final String additionalInfo;
  final String additionalInfo1;
  final String additionalInfo2;
  final String additionalInfo3;
  final String additionalInfo4;
  final String additionalInfo5;
  final String additionalImage;
  final String additionalImage1;
  final String additionalImage2;
  final String additionalImage3;
  final String additionalImage4;
  final String additionalImage5;
}

class PageViewItem {
  PageViewItem({
    required this.title,
    required this.description,
    required this.details,
    required this.image,
    required this.addImage,
    required this.file,
    required this.addDetails,
    this.additionalInfo = "",
    this.additionalInfo1 = "",
    this.additionalInfo2 = "",
    this.additionalInfo3 = "",
    this.additionalInfo4 = "",
    this.additionalInfo5 = "",
    this.additionalImage = "",
    this.additionalImage1 = "",
    this.additionalImage2 = "",
    this.additionalImage3 = "",
    this.additionalImage4 = "",
    this.additionalImage5 = "",
  });

  final String addDetails;
  final String addImage;
  final String description;
  final String details;
  final List<FileEditor> file;
  final String image;
  final String title;
  final String additionalInfo;
  final String additionalInfo1;
  final String additionalInfo2;
  final String additionalInfo3;
  final String additionalInfo4;
  final String additionalInfo5;
  final String additionalImage;
  final String additionalImage1;
  final String additionalImage2;
  final String additionalImage3;
  final String additionalImage4;
  final String additionalImage5;
}

class PageViewItems extends StateNotifier<List<PageViewItem>> {
  PageViewItems() : super([]) {
    loadInitialPages();
  }

  Future<void> loadInitialPages() async {
    List<PageViewItemData> pageViewItemDataList = [
      PageViewItemData(
        title: 'Apa itu HTML ?',
        description:
            "HTML atau HyperText Markup Language merupakan sebuah bahasa markah untuk membuat halaman web",
        details:
            "Jadi, HTML itu adalah sebuah bahasa yang menggunakan markup atau penanda untuk membuat halaman web. Penanda atau markup ini, nanti akan kita sebut dengan Tag. HTML berperan untuk menentukan "
            "struktur konten dan tampilan dari sebuah web.HTML itu seperti batu bata untuk membangun rumah. Batu bata ini dapat disusun, hingga menjadi fondasi dasar. "
            "Dalam membuat halaman web, HTML tidak sendirian. Ada bahasa lain lagi yang menjadi pelengkapnya, yakni CSS dan Javascript. CSS adalah bahasa khusus yang digunakan untuk memperindah tampilan web. "
            "Lalu Javascript bertugas untuk membuat halaman web menjadi hidup. Karena dengan Javascript, kita dapat menentukan fungsi-fungsi maupun efek yang akan diterapkan di website. ",
        image: "assets/images/html-css-js.png",
        addImage: "",
        filePaths: ['assets/files/hello-world.html'],
        addDetails: "",
      ),
      PageViewItemData(
        title: 'Apa itu Tag, Elemen, dan Atribut dalam HTML?',
        description:
            "Tag adalah sebuah penanda awalan dan akhiran dari sebuah elemen di HTML. Tag dibuat dengan kurung sudut (<...>), lalu di dalamnya berisi nama tag dan kadang juga ditambahkan dengan atribut. "
            "Contoh: <p>, <a>, <body>, <head>, dan sebagainya."
            "Tag selalu ditulis berpasangan. Ada tag pembuka dan ada tag penutupnya. Namun, ada juga beberapa tag yang tidak memiliki pasangan penutup. Tag penutup ditulis dengan menambahkan garis miring (/) di depan nama tag. "
            "Setiap tag memiliki fungsi masing-masing. Ada yang digunakan untuk membuat judul, membuat link, membuat paragraf, heading, dan lain-lain.",
        details:
            "Berikut ini beberapa saran yang perlu diikuti agar bisa menulis tag dengan benar: \n\n"
            "1. Tag-tag wajib\n "
            "<!DOCTYPE html> — untuk deklarasi type dokumen; \n"
            "<html> — tag utama dalam HTML; \n"
            "<head> — untuk bagian kepala dari dokumen; \n"
            "<title> — untuk judul web; \n"
            "<body> — untuk bagian body dari dokumen. \n\n"
            "2. Hindari menggunakan huruf besar dalam menuliskan nama tag dan sebaiknya gunakan huruf kecil saja.\n "
            "Huruf kecil lebih gampang diketik dan juga akan membuat kode HTML terlihat lebih bersih dan rapi. \n\n"
            "3. Pastikan Menutup Tag dengan Benar\n "
            "Tag HTML nantinya akan ditulis bertumpuk-tumpuk. Artinya, di dalam tag ada tag lagi. Kadang kita sering salah dalam menutup tag yang bertumpuk ini. Akibatnya, kode HTML kita tidak valid. \n",
        image: "assets/images/tag.png",
        addImage: "",
        filePaths: [
          'assets/files/contoh-tag(bagus).html',
          'assets/files/contoh-tag(buruk).html',
          'assets/files/contoh-atribut(bagus).html',
          'assets/files/contoh-atribut(buruk).html'
        ],
        addDetails:
            "Elemen dalam HTML adalah sebuah komponen yang menyusun dokumen HTML. Elemen kadang juga disebut sebagai node, karena ia merupakan salah satu jenis node yang menyusun dokumen HTML dalam diagram HTML tree. \n"
            "Elemen tidak selalu berisi teks, kadang ia juga akan berisi elemen lain. Ini biasanya kita sebut dengan nested element atau elemen di dalam elemen.\n"
            "Elemen HTML ada banyak jenisnya. Ada elemen khusus untuk teks, ada elemen untuk multimedia, script, tabel, metadata, dll.\n\n"
            "Atribut dapat ditambahkan pada elemen manapun. Ada juga elemen yang mewajibkan menggunakan atribut seperti elemen <a>, <img>, <video>, dll.\n"
            "Tiap-tiap elemen kadang memiliki atribut khusus yang hanya bisa digunakan pada elemen tersebut. Ada juga atribut yang bersifat global dan bisa ditambahkan ke semua elemen\n"
            "Atribut atribut tersebut adalah Atribut Global, Atribut Event, dan Atribut Khusus,",
        
      ),
      PageViewItemData(
        title: 'Membuat Paragraf pada HTML',
        description:
            "Paragraf adalah kumpulan dari beberapa kalimat. Pada web, Paragraf biasanya digunakan untuk menampilkan teks atau artikel. "
            "Paragraf pada HTML dibuat dengan tag <p>. Selain tag ini, ada juga tag pendukung lain seperti <div>, <hr>, <br>, dan <pre>. "
            "Biasanya paragraf ditambahkan dengan beberapa atribut seperti align, id, class, dll. "
            "Atribut align merupakan atribut yang digunakan untuk perataan teks pada paragraf. Namun, menurut validator W3C.. penggunaan tag ini sebaiknya diganti dengan CSS. ",
        details:
            "Tag <br> sebenarnya bukanlah tag untuk membuat paragraf. Tapi tag ini, biasanya digunakan untuk membantu tag <p>.\n"
            "Fungsi utama tag <br> adalah untuk membuat baris baru. "
            "Misalkan kita ingin menampilkan pantun, bisa saja kita buat seperti ini di dengan tag <p>.\n"
            "Oh iya, tag <br> adalah tag yang tidak memiliki pasangan penutup. Cara menutupnya, tambahkan saja garis miring seperti ini <br/>. "
            "Tag <br> boleh ditutup, boleh juga tidak. Namun, sebaiknya ditutup agar valid menurut validator W3C. "
            "Sama seperti tag <br>, tag <hr> juga bukanlah tag untuk membuat paragraf. "
            "Tag <hr> merupakan tag yang digunakan untuk membuat garis lurus secara horizontal (horizontal rule). Biasanya digunakan untuk memisahkan beberapa konten atau paragraf. ",
        image: "",
        addImage: "",
        filePaths: [
          'assets/files/contoh-paragraf.html',
          'assets/files/contoh-paragraf-atribut.html',
          "assets/files/contoh-paragraf-css.html",
          "assets/files/contoh-paragraf-br.html",
          "assets/files/contoh-paragraf-hr.html",
          "assets/files/contoh-pragraf-pre.html"
        ],
        addDetails:
            "Pada kasus tertentu, kita ingin menampilkan paragraf dengan format yang lebih spesifik. Contohnya seperti pantun dan puisi yang paragrafnya ditulis dengan garis baru dan juga indentasi. \n"
            "Hal ini bisa dilakukan dengan bantuan tag <br>. Namun ada juga tag lain yang bisa jadi alternatif, yakni tag <pre>. \n"
            "Tag <pre> (preformatting) merupakan tag yang digunakan untuk menampilkan teks atau paragraf dalam format yang sudah kita tentukan di HTML.\n",
        
      ),
      PageViewItemData(
        title: 'Cara Menampilkan Gambar di HTML',
        description:
            "Gambar akan membuat website kita terlihat lebih menarik. Karena otak kita lebih mudah menyerap informasi dengan visual dibandingkan hanya teks saja. "
            "Karena itu, gambar sangatlah penting. Gambar dapat kita tambakan di HTML dengan menggunakan tag <img>. Tag ini memiliki atribut wajib, yakni src. "
            "Jika kita tidak mengisi atribut src, maka gambar tidak akan ditampilkan. Alamat URL gambar pada atribut src dapat berupa URL maupun alamat path. Lalu tag <img> harus ditutup dengan menambahkan garis miring. ",
        details:
            "Atribut alt adalah atribut untuk memberikan teks alternatif pada gambar saat gambar gagal ditampilkan.\n"
            "atribut alt juga sering digunakan untuk meletakan kata kunci untuk SEO.",
        image: "assets/images/html-image.png",
        addImage: "",
        filePaths: [
          'assets/files/contoh-image.html',
          'assets/files/contoh-image-alt.html',
          'assets/files/contoh-image-size.html',
          'assets/files/contoh-image-picture.html',
        ],
        addDetails:
            "Atribut width dan height adalah atribut yang digunakan untuk menentukan lebar dan tinggi dari gambar."
            "Satuan yang digunakan untuk nilai width dan height adalah piksel (px). Jika kita memberikan nilai 200, artinya.. kita memberikan nilai 200px."
            "Atribut width dan height juga tidak wajib. Tapi baiknya ditambahkan agar ukuran gambar konsisten.\n"
            "Di era mobile seperti saat ini, website tidak hanya dibuka melalui komputer saja, tapi juga smartphone."
            "Ukuran layar komputer dengan smartphone tentunya berbeda. Karena itu, website harus bersifat responsif agar bisa menyesuaikan diri dengan media yang digunakan."
            "Nah, tag <picture> hadir untuk mengatasi masalah ini. Tag ini berfungsi untuk menentukan gambar mana yang akan ditampilkan pada ukuran layar tertentu.",
        
      ),
      PageViewItemData(
        title: 'Cara Membuat List di HTML',
        description:
            "HTML sudah menyediakan elemen untuk membuat list. Ada tiga macam jenis list yang bisa dibuat di HTML: \n"
            "1. Unordered List (List Tidak Berurutan)\n"
            "2. Ordered List (List Berurutan)\n"
            "3. Description List (List Deskripsi)\n\n"
            "Ordered list dibuat dengan tag <ol>. Lalu di dalamnya diisi dengan item-item yang akan dimasukkan ke dalam list. Item dibuat dengan tag <li> (list item). \n"
            "Unordered list dibuat dengan tag <ul>. Lalu di dalamnya diisi dengan item-item yang akan dimasukkan ke dalam list. Item dibuat dengan tag <li> (list item). \n"
            "Description list dibuat dengan tag <dl>. Lalu di dalamnya diisi dengan item-item yang akan dimasukkan ke dalam list. Item dibuat dengan tag <dt> (description term) dan <dd> (description detail). ",
        details:
            "Untuk membuat ordered list dengan angka, kita bisa menggunakan atribut type pada tag <ol>. Atribut ini memiliki beberapa nilai, seperti 1, A, a, I, i. "
            "Unordered list adalah list yang tak terurut yang menggunakan simbol-simbol pada item-nya. Unordered list dibuat dengan tag <ul> dan untuk item-nya dibuat juga dengan tag <li>. \n"
            "Secara default simbol yang digunakan oleh unordered list adalah lingkaran kecil (disc). Kita juga bisa menggantinya dengan atribut type.",
        image: "assets/images/ordered-list.png",
        addImage: "",
        filePaths: [
          'assets/files/contoh-ordered-list.html',
          'assets/files/contoh-ordered-list-type.html',
          'assets/files/contoh-unordered-list.html',
          "assets/files/contoh-description-list.html",
        ],
        addDetails:
            "Description list adalah list yang berisi deskripsi dari item-item yang ada. Description list dibuat dengan tag <dl> (description list)."
            "Item-item dalam description list dibuat dengan tag <dt> (description term) dan <dd> (description detail)."
            "Tag <dt> digunakan untuk menuliskan judul dari item, sedangkan tag <dd> digunakan untuk menuliskan deskripsi dari item tersebut.",
        
      ),
      PageViewItemData(
        title: 'Cara Membuat Tabel di HTML',
        description:
            "Salah satu cara atau format menampilkan informasi dalam web adalah dengan tabel.",
        details: "Tabel terdiri dari 4 unsur utama: \n"
            "1. Table: tag utama yang digunakan untuk membuat tabel. \n"
            "2. Row: tag yang digunakan untuk membuat baris dalam tabel. \n"
            "3. Header: tag yang digunakan untuk membuat header dalam tabel. \n"
            "4. Data: tag yang digunakan untuk membuat data dalam tabel. \n\n"
            "Tag yang paling penting untuk diingat adalah tag <table>, <tr>, dan <td>. Sementara tag yang lain adalah tambahan (opsional), boleh digunakan boleh tidak."
            "Atribut cellpadding adalah atribut untuk mengatur jarak teks dengan garis di dalam sel. Atribut cellspacing adalah atribut untuk mengatur jarak antar sel. "
            "Atribut border adalah atribut untuk menambahkan garis pada tabel. Atribut border ini sudah tidak direkomendasikan lagi. Sebaiknya gunakan CSS untuk mengatur border tabel.",
        image: "assets/images/rowspan-colspan.png",
        addImage: "",
        filePaths: [
          "assets/files/contoh-table.html",
          "assets/files/contoh-table-cellpadding.html",
          "assets/files/contoh-table-rowspan-colspan.html",
        ],
        addDetails:
            "Atribut yang digunakan untuk menggabungkan sel tabel adalah rowspan dan colspan:"
            "Atribut rowspan digunakan untuk menggabungkan sel secara vertikal. Atribut ini memiliki nilai berupa angka yang menunjukkan jumlah sel yang akan digabungkan."
            "Atribut colspan digunakan untuk menggabungkan sel secara horizontal. Atribut ini memiliki nilai berupa angka yang menunjukkan jumlah sel yang akan digabungkan.",
        
      ),
      PageViewItemData(
        title: 'Cara Menambahkan Video pada Web',
        description:
            "Pada tutorial sebelumnya, kita sudah belajar cara menambahkan gambar di HTML. Namun, ini belumlah cukup.. karena sekarang konten di web tidak hanya dalam bentuk teks dan gambar saja."
            "Konten lainnya yang bisa ditambahkan di HTML adalah audio dan juga video. Pada tutorial kali ini, kita akan belajar cara menambahkan video di HTML. "
            "Jika tag video di buka pada browser yang tidak mendukungnya, maka teks browser tidak mendukung tag video akan ditampilkan. Tapi, kalau mendukung.. videonya yang akan ditampilkan.",
        details:
            "Saat tidak ingin repot-repot mengubah format video, kita bisa manfaatkan Youtube."
            "Tinggal upload saja videonya ke Youtube. Nanti kita akan dapat id unik dari video. Id unik ini bisa kita dapatkan dari URL video.\n"
            "Contoh: N7iY-jNWeFc\n"
            "Youtube sendiri sudah punya media player, jadi kita tidak perlu membuatnya dengan tag <video>."
            "Tag yang kita butuhkan untuk menambahkan video dari Youtube adalah <iframe>. Tag ini sebenarnya berfungsi untuk menambahkan halaman lain dalam sebuah frame.",
        image: "assets/images/tag-video.png",
        addImage: "",
        filePaths: [
          "assets/files/contoh-video.html",
          "assets/files/contoh-video-youtube.html"
        ],
        addDetails: "",
        
      ),
      PageViewItemData(
        title: 'Elemen Form HTML',
        description: "1. Inputs\n\n"
            "Elemen <input> adalah komponen utama dalam form HTML. Inputs membuat pengunjung bisa memasukkan data, seperti teks, angka, atau bahkan file.\n"
            "Ada berbagai jenis input, seperti 'text', 'password', dan 'checkbox' yang bisa kamu gunakan sesuai kebutuhan.\n"
            "Inputs digunakan dengan tag <input> dan tipe yang sesuai, misalnya <input type=\"text\"> untuk bidang teks.\n"
            "Contoh: input nama pengguna dan kata sandi",
        details: "2. Labels\n"
            "\nBerfungsi untuk memberikan keterangan atau judul pada input. Dengan kata lain, labels membantu audiens memahami apa yang harus dimasukkan di kolom tertentu. Misalnya, label \"Nama\" menunjukkan bahwa audiens harus memasukkan namanya di kolom tersebut.\n"
            "Labels dideklarasikan dengan tag <label>, seperti <label for=\"nama\">Nama.\n"
            "Contoh: menambahkan keterangan atau judul pada input",
        image: "assets/images/form1.webp",
        addImage: "assets/images/form2.webp",
        filePaths: [],
        addDetails: "",
        additionalInfo: "3. Buttons\n"
        "\n<button> dalam form HTML biasanya digunakan untuk mengirimkan form. Ada beberapa jenis buttons, seperti 'submit' yang digunakan untuk mengirimkan data atau 'reset' yang akan mengosongkan semua bidang input.\n"
        "Buttons dapat dibuat dengan <input type=\"submit\"> atau <button type=\"submit\">Kirim.\n"
        "Contoh: tombol kirim dan hapus",
        additionalImage: "assets/images/form3.webp",
        additionalInfo1: "4. Select\n"
        "\nElemen <select> memungkinkan audiens memilih beberapa daftar opsi yang disediakan. Select bisa berbentuk dropdown menu atau list yang dapat dipilih lebih dari satu.\n"
        "Elemen ini dideklarasikan dengan <select> dan di dalamnya terdapat opsi yang didefinisikan dengan <option>, seperti <select> <option> Pilihan 1 .\n"
        "Contoh: dropdown menu bahasa",
        additionalImage1: "assets/images/form4.webp",
        additionalInfo2: "5. Textarea\n"
        "\nJika kamu ingin audiens dapat menulis teks dalam beberapa baris, seperti komentar atau alamat, kamu bisa menggunakan elemen <textarea>.\n"
        "Textarea dipakai untuk input teks multi-baris, ditulis sebagai <textarea> .\n"
        "Contoh: teks berbasis baris",
        additionalImage2: "assets/images/form5.webp",
        additionalInfo3: "6. Fieldset dan Legend\n"
        "\nFieldset digunakan untuk mengelompokkan elemen-elemen terkait dalam form. Di sisi lain, legend berfungsi sebagai judul untuk grup tersebut. Kedua elemen ini membantu dalam membuat form yang terstruktur dan mudah dipahami.\n"
        "Fieldset dideklarasikan dengan <fieldset> dan judul grup didefinisikan dengan <legend>, seperti <fieldset> <legend> Judul Grup </legend></fieldset>.\n"
        "Contoh: mengelompokkan elemen terkait",
        additionalImage3: "assets/images/form6.webp",
        additionalInfo4: "7. Radio Buttons\n"
        "\nRadio buttons membuat audiens bisa memilih salah satu dari beberapa opsi, seperti memilih jenis kelamin.\n"
        "Radio buttons ditulis menggunakan <input type=\"radio\">, di mana setiap pilihan memiliki tipe \"radio\".\n"
        "Contoh: memilih jenis kelamin",
        additionalImage4: "assets/images/form7.webp",
      ),
      PageViewItemData(
        title: 'Fungsi Form HTML',
        description: "Berikut beberapa fungsi dari form HTML:\n\n"
            "1. Pengumpulan data: form HTML memungkinkan pengunjung website memasukkan informasi, seperti data pribadi, komentar, atau feedback. Data ini kemudian diproses oleh server untuk berbagai tujuan, seperti pendaftaran akun, pemesanan produk, atau analisis preferensi audiens.\n"
            "\n2. Interaksi dengan audiens: form HTML menjadi jembatan antara audiens dan website. Melalui form, audiens dapat berinteraksi dengan sistem, misalnya mengisi kuesioner, mendaftar berlangganan, atau berpartisipasi dalam survei.\n"
            "\n3. Otentikasi dan otorisasi: dalam sistem login, form HTML digunakan untuk mengumpulkan nama user dan password. Proses ini membantu dalam otentikasi (verifikasi identitas) dan otorisasi (pemberian hak akses).\n"
            "\n4. Pengaturan dan kontrol: form HTML bisa dipakai untuk mengendalikan berbagai aspek situs web, seperti pengaturan profil user, konfigurasi tampilan, atau pemilihan preferensi.\n"
            "\n5. Validasi dan kesalahan: dengan dukungan JavaScript, form HTML memungkinkan validasi input dari audiens. Fungsi ini membantu memeriksa apakah data yang dimasukkan valid dan memenuhi kriteria yang dibutuhkan.\n"
            "\n6. Integrasi dengan teknologi lain: form HTML dapat diintegrasikan dengan berbagai teknologi lain seperti CSS untuk penataan dan JavaScript untuk interaktivitas lanjutan, sehingga menciptakan user experience yang lebih maksimal.\n"
            "\n7. Efisiensi dan kemudahan: dengan adanya form HTML, pengumpulan dan pengolahan data menjadi lebih efisien. Kamu dapat lebih mudah merancang form yang kompleks namun tetap user-friendly. Kamu juga bisa mengelola data dengan cara yang terstruktur.\n"
            ,
        details: "",
        image: "",
        addImage: "",
        filePaths: [],
        addDetails: "",
      ),
      PageViewItemData(
        title: 'Jenis-jenis Input Form HTML',
        description: "Berikut berbagai jenis input yang umum digunakan dalam form HTML:\n\n"
            "1. Teks (text): digunakan untuk mengumpulkan teks bebas, seperti nama atau alamat. Contoh penggunaannya adalah <input type=\"text\">.",
        details: "2. Nomor (number): dipakai khusus untuk angka. Input ini membantu dalam validasi dan memastikan bahwa audiens hanya dapat memasukkan angka. Contohnya, <input type=\"number\">.",
        image: "assets/images/input1.webp",
        addImage: "assets/images/input2.webp",
        filePaths: [],
        addDetails: "",
        additionalInfo: "3. Tanggal (date): berfungsi dalam mengumpulkan tanggal. Input date akan memudahkan audiens dalam memilih tanggal. Contoh: <input type=\"date\">.",
        additionalInfo1: "4. Kata sandi (password): dipakai untuk kolom yang sifatnya sensitif. Password akan menyembunyikan karakter yang dimasukkan audiens. Gunakan <input type=\"password\">.",
        additionalImage: "assets/images/input3.webp",
        additionalInfo2: "5. E-mail: input ini memvalidasi bahwa input adalah alamat e-mail yang valid. Contohnya adalah <input type=\"email\">.",
        additionalImage1: "assets/images/input4.webp",
        additionalInfo3: "6. Checkbox: untuk pilihan yes/no atau pilihan lain yang bisa dipilih lebih dari satu, gunakan <input type=\"checkbox\">.",
        additionalImage2: "assets/images/input5.webp",
        additionalInfo4: "7. Radio: jika audiens harus memilih salah satu dari beberapa opsi, gunakan input radio dengan <input type=\"radio\">.",
        additionalImage3: "assets/images/input6.webp",
        additionalInfo5: "8. File: untuk mengunggah file, kamu bisa menggunakan <input type=\"file\">.",
        additionalImage4: "assets/images/input7.webp",
        additionalImage5: "assets/images/input8.webp"
      ),
      PageViewItemData(
        title: 'Cara Membuat Form HTML',
        description: "Langkah 1: membuat tag form\n"
            "Langkah 2: menambahkan elemen input\n"
            "Langkah 3: menambahkan tombol submit\n"
            "Langkah 4: menutup tag form\n",
        details: "",
        image: "assets/images/outputs.webp",
        addImage: "",
        filePaths: [
            "assets/files/contoh-form.html",
          ],
        addDetails: "",
      ),
      // Add more PageViewItemData objects here...
    ];

    var pageViewItems = await Future.wait(
      pageViewItemDataList.map(
        (itemData) async {
          List<FileEditor> files = [];
          if (itemData.filePaths != null) {
            for (var filePath in itemData.filePaths!) {
              String fileContent = await rootBundle.loadString(filePath);
              files.add(
                FileEditor(
                  name: filePath.split('/').last,
                  language: "html",
                  readonly: false,
                  code: fileContent,
                ),
              );
            }
          }
          return PageViewItem(
            title: itemData.title,
            description: itemData.description,
            details: itemData.details,
            image: itemData.image,
            addImage: itemData.addImage,
            file: files,
            addDetails: itemData.addDetails,
            additionalInfo: itemData.additionalInfo,
            additionalInfo1: itemData.additionalInfo1,
            additionalInfo2: itemData.additionalInfo2,
            additionalInfo3: itemData.additionalInfo3,
            additionalInfo4: itemData.additionalInfo4,
            additionalInfo5: itemData.additionalInfo5,
            additionalImage: itemData.additionalImage,
            additionalImage1: itemData.additionalImage1,
            additionalImage2: itemData.additionalImage2,
            additionalImage3: itemData.additionalImage3,
            additionalImage4: itemData.additionalImage4,
            additionalImage5: itemData.additionalImage5,
          );
        },
      ),
    );
    state = pageViewItems;
  }
}
