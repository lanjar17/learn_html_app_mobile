
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageViewItemData {
  PageViewItemData({
    required this.title,
    required this.description,
    required this.details,
    required this.addDetails,
    required this.addImage,
  });

  final String addDetails;
  final String addImage;
  final String description;
  final String details;
  final String title;
}

class PageViewItem {
  PageViewItem({
    required this.title,
    required this.description,
    required this.details,
    required this.addImage,
    required this.addDetails,
  });

  final String addDetails;
  final String addImage;
  final String description;
  final String details;
  final String title;
}

class PageViewItems extends StateNotifier<List<PageViewItem>> {
  PageViewItems() : super([]) {
    loadInitialPages();
  }

  Future<void> loadInitialPages() async {
    List<PageViewItemData> pageViewItemDataList = [
      PageViewItemData(
        title: 'Soal',
        description:
            "Universitas X akan mengadakan workshop tentang pengembangan web. Mereka ingin membuat form pendaftaran online untuk calon peserta. Anda diminta untuk membuat formulir yang sesuai dengan kebutuhan pendaftaran acara ini.",
        details:
            "Buatlah sebuah form HTML untuk pendaftaran workshop dengan menggunakan elemen-elemen berikut:\n"
            "1) Input text untuk nama lengkap.\n"
            "2) Input email untuk alamat email.\n"
            "3) Input number untuk nomor telepon.\n"
            "4) Checkbox untuk memilih topik yang diminati (HTML, CSS, JavaScript).\n"
            "5) Select/dropdown untuk memilih jadwal preferensi (Pagi, Siang, Malam).\n"
            "6) Radiobutton untuk status mahasiswa (Mahasiswa, Bukan Mahasiswa).\n"
            "7) Tombol Daftar Sekarang untuk mengirimkan formulir.",
        addImage: "",
        addDetails: "",
      ),
      // Add more PageViewItemData objects here...
    ];

    var pageViewItems = pageViewItemDataList
        .map(
          (itemData) => PageViewItem(
            title: itemData.title,
            description: itemData.description,
            details: itemData.details,
            addImage: itemData.addImage,
            addDetails: itemData.addDetails,
          ),
        )
        .toList();
    state = pageViewItems;
  }
}
