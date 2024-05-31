import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnhtml/common/widgets/custom_text.dart';
import 'package:learnhtml/main_pages/project/model/project_page2_data.dart';
import 'provider/page2_view_provider.dart';

class Project2Page extends ConsumerWidget {
  const Project2Page({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<PageViewItem> pageItems = ref.watch(pageViewItemsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Project 2",
          style: TextStyle(fontFamily: "Roboto"),
        ),
        backgroundColor: Theme.of(context).colorScheme.onTertiary,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, "/Project1Page");
              },
              splashColor: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'PREV',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "Roboto",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, "/Project3Page");
              },
              splashColor: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "Roboto",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: PageView.builder(
        itemCount: pageItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(23),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: pageItems[index].title,
                    size: 25,
                    align: TextAlign.start,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 20),
                  CustomText(
                    text: pageItems[index].description,
                    size: 19,
                    align: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  CustomText(
                    text: pageItems[index].details,
                    size: 19,
                    align: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  if (pageItems[index].addImage.isNotEmpty)
                    Image.asset(pageItems[index].addImage),
                  const SizedBox(height: 20),
                  CustomText(
                    text: pageItems[index].addDetails,
                    size: 19,
                    align: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/CodeEditorPage");
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              child: const Text('Buka Code Editor'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk lihat jawaban
                _showAnswers(context, 'assets/images/project2.png');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              child: const Text('Lihat Jawaban'),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _showAnswers(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(imagePath),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Submit Jawaban',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                _submitAnswer(context);
              },
            ),
            TextButton(
              child: const Text(
                'Close',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

void _submitAnswer(BuildContext context) {
  // Ganti '/submit_answer_page' dengan rute halaman submit jawaban
  Navigator.pushNamed(context, '/SubmitPage');
}
