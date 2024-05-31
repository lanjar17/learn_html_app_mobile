
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
            "Dalam rangka meningkatkan layanan pelanggan, perusahaan ABC ingin membuat formulir online untuk pelanggan yang ingin mengirimkan pengaduan atau masukan. Mereka meminta Anda untuk membuat formulir ini dengan pendekatan CTL agar mudah dipahami oleh pengguna.",
        details:
            "Buatlah sebuah form HTML untuk pendaftaran workshop dengan menggunakan elemen-elemen berikut:\n"
            "1) Input text untuk nama pengirim.\n"
            "2) Input email untuk alamat email.\n"
            "3) Select/dropdown untuk memilih jenis keluhan (Pelayanan, Produk, Lainnya).\n"
            "4) Textarea untuk isi pengaduan/masukan.\n"
            "5) Checkbox untuk konfirmasi bahwa pelanggan setuju untuk dihubungi kembali.\n"
            "6) Tombol Kirim untuk mengirimkan pengaduan.",
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
