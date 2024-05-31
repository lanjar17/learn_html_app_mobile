import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.6,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        ),
      ),
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black12),
              accountName: Text(
                "LEARN HTML APP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/icon.png"),
                radius: 40,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.textsms_outlined),
              iconColor: const Color.fromARGB(255, 0, 191, 255),
              title: const CustomText(
                text: "Capaian Pembelajaran",
                size: 17,
                align: TextAlign.left,
                fontFamily: 'Roboto',
              ),
              onTap: () {
                Navigator.pop(context);
                _showPopup(context, "Capaian Pembelajaran");
              },
            ),
            ListTile(
              leading: const Icon(Icons.check_circle_outline_rounded),
              iconColor: const Color.fromARGB(255, 0, 255, 98),
              title: const CustomText(
                  text: "Alur Tujuan Pempelajaran",
                  size: 18,
                  align: TextAlign.left,
                  fontFamily: 'Roboto'),
              onTap: () {
                Navigator.pop(context);
                _showPopup(context, "Alur Tujuan Pembelajaran");
              },
            ),
            // ListTile(
            //   leading: const Icon(Icons.info_outline_rounded),
            //   title: const CustomText(
            //     text: "TENTANG APLIKASI",
            //     size: 18,
            //     align: TextAlign.left,
            //     fontFamily: 'Roboto',
            //   ),
            //   onTap: () {
            //     Navigator.pop(context);
            //     _showPopup(context, "TENTANG APLIKASI");
            //   },
            // ),
            AboutListTile(
              icon: const Icon(Icons.info_outline_rounded),
              applicationIcon: Image.asset('assets/images/lanjar.png', width: 50, // Ubah ukuran sesuai kebutuhan Anda
                height: 50,
              ),
              applicationName: 'Learn HTML App',
              applicationVersion: '1.0.0',
              applicationLegalese: '© Lanjar Dwi Saputro PTIK 2020 \nUniversitas Sebelas Maret',
              aboutBoxChildren: [
                
                Image.asset('assets/images/icon.png',
                  width: 100, // Lebar lingkaran
                  height: 100,
                )
              
                
              ],
              child: const Text("TENTANG APLIKASI", style: TextStyle(fontSize: 15),),
            ),
          ],
        ),
      ),
    );
  }

  void _showPopup(BuildContext context, String option) {
    String contentText = '';
    String imagePath = '';

    // Sesuaikan konten berdasarkan opsi yang dipilih
    if (option == "Capaian Pembelajaran") {
      contentText =
          "Pada akhir fase F peserta didik mampu memahami konsep dan menerapkan perintah HTML, CSS, pemrograman Javascript, bahasa pemrograman server-side serta implementasi framework pada pembuatan web statis dan dinamis untuk beragam kebutuhan yang kontekstual. Selain itu, peserta didik juga mampu mendokumentasikan serta mempresentasikan web statis dan dinamins yang telah dikembangkan";
    } else if (option == "Alur Tujuan Pembelajaran") {
      contentText =
          "11.3.1. Menerapkan format teks dalam script HTML. \n11.3.2. Menerapkan CSS dalam program tampilan halaman web.";
    } 
    // else if (option == "TENTANG APLIKASI") {
    //   contentText =
    //       "Learn HTML APP \nLanjar Dwi Saputro \nK3520038 \nPendidikan Teknik Informatika dan Komputer \nUniversitas Sebelas Maret";
    //   imagePath = "assets/images/splash.png";
    // }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            option,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Menampilkan gambar jika imagePath tidak kosong
                if (imagePath.isNotEmpty)
                  Center(
                    child: Image.asset(
                      imagePath,
                      width: MediaQuery.of(context).size.width *
                          0.5, // Ubah sesuai dengan ukuran yang diinginkan
                      height: MediaQuery.of(context).size.width *
                          0.5, // Ubah sesuai dengan ukuran yang diinginkan
                      fit: BoxFit.cover,
                    ),
                  ),
                const SizedBox(height: 8),
                // Menampilkan konten teks
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: contentText,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          actions: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
