import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnhtml/common/widgets/custom_card.dart';

class VideoPage extends ConsumerWidget {
  const VideoPage({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Video Pembelajaran",
          style: TextStyle(fontFamily: "Roboto"),
        ),
        backgroundColor: Theme.of(context).colorScheme.onTertiary,
      ),
      body: SingleChildScrollView(
        // Wrap Column with SingleChildScrollView
        child: Column(
          children: [
            CustomCard(
              image: Image.asset(
                'assets/images/html-dasar.png',
                fit: BoxFit.cover,
              ),
              color: Colors.red,
              icon: const Icon(Icons.play_arrow),
              buttonText: "Tonton",
              onButtonTap: () => Navigator.pushNamed(context, "/Video1Page"),
              teks: "HTML untuk pemula - Apa Itu HTML",
            ),
            SizedBox(height: screenWidth * 0.03),
            CustomCard(
              image: Image.asset(
                'assets/images/tag-html.webp',
                fit: BoxFit.cover,
              ),
              color: Colors.red,
              icon: const Icon(Icons.play_arrow),
              buttonText: "Tonton",
              onButtonTap: () => Navigator.pushNamed(context, "/Video2Page"),
              teks: "Tag Pada HTML | Belajar HTML",
            ),
            SizedBox(height: screenWidth * 0.03),
            CustomCard(
              image: Image.asset(
                'assets/images/paragraf-html.jpg',
                fit: BoxFit.cover,
              ),
              color: Colors.red,
              icon: const Icon(Icons.play_arrow),
              buttonText: "Tonton",
              onButtonTap: () => Navigator.pushNamed(context, "/Video3Page"),
              teks: "Paragraf | Belajar HTML",
            ),
            SizedBox(height: screenWidth * 0.03),
            CustomCard(
              image: Image.asset(
                'assets/images/table-html.png',
                fit: BoxFit.cover,
              ),
              color: Colors.red,
              icon: const Icon(Icons.play_arrow),
              buttonText: "Tonton",
              onButtonTap: () => Navigator.pushNamed(context, "/Video4Page"),
              teks: "Cara Membuat Tabel HTML | Belajar HTML",
            ),
            SizedBox(height: screenWidth * 0.03),
            CustomCard(
              image: Image.asset(
                'assets/images/form.jpg',
                fit: BoxFit.cover,
              ),
              color: Colors.red,
              icon: const Icon(Icons.play_arrow),
              buttonText: "Tonton",
              onButtonTap: () => Navigator.pushNamed(context, "/Video5Page"),
              teks: "Form HTML | Belajar HTML",
            ),
            SizedBox(height: screenWidth * 0.03),
          ],
        ),
      ),
    );
  }
}
