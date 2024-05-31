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
            "Andi adalah seorang pemilik restoran pizza yang ingin membuat form pemesanan pizza untuk pelanggan di situs webnya. Dia meminta bantuan Anda untuk membuat formulir yang memungkinkan pengguna untuk memesan pizza sesuai dengan preferensi mereka.",
        details:
            "Buatlah sebuah form HTML untuk pemesanan pizza dengan menggunakan elemen-elemen berikut:\n"
            "1) Input text untuk nama pengguna.\n"
            "2) Input radio button untuk memilih ukuran pizza (Kecil, Sedang, Besar).\n"
            "3) Checkbox untuk topping yang bisa dipilih lebih dari satu (Pepperoni, Jamur, Saus BBQ).\n"
            "4) Dropdown/select untuk memilih jenis crust (Tipis, Sedang, Tebal).\n"
            "5) Textarea untuk catatan tambahan. Tombol Pesan Sekarang untuk mengirimkan formulir.",
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
