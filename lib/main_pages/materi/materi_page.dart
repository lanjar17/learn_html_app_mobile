import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnhtml/common/widgets/custom_text.dart';
import 'package:learnhtml/main_pages/materi/model/materi_page_data.dart';
import 'provider/page_view_provider.dart';
import 'package:code_editor/code_editor.dart';

class MateriPage extends ConsumerWidget {
  const MateriPage({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<PageViewItem> pageItems = ref.watch(pageViewItemsProvider);

    final PageController _pageController = PageController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Materi",
          style: TextStyle(fontFamily: "Roboto"),
        ),
        backgroundColor: Theme.of(context).colorScheme.onTertiary,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () => Navigator.pushReplacementNamed(
                context,
                "/QuizPage",
              ),
              splashColor: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Text(
                  'KUIS',
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
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, "/CodeExercisePage"),
              splashColor: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Text(
                  'CODE EXERCISE',
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
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: pageItems.length,
              itemBuilder: (BuildContext context, int index) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: pageItems[index].title,
                          size: 25,
                          align: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                        const SizedBox(height: 20),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: _parseTextWithNumbers(
                                pageItems[index].description),
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 20),
                        pageItems[index].image.isNotEmpty
                            ? Image.asset(pageItems[index].image)
                            : const SizedBox(),
                        const SizedBox(height: 20),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children:
                                _parseTextWithNumbers(pageItems[index].details),
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 20),
                        if (pageItems[index].file.isNotEmpty)
                          CodeEditor(
                            onSubmit: (String file, String value) {
                              ref.read(codeOutput.notifier).state = value;
                              Navigator.pushNamed(context, "/OutputPage");
                            },
                            model: EditorModel(
                              files: pageItems[index].file,
                              styleOptions: EditorModelStyleOptions(
                                editButtonName: "Try it out !",
                              ),
                            ),
                          ),
                        pageItems[index].addImage.isNotEmpty
                            ? const SizedBox(height: 20)
                            : const SizedBox(),
                        pageItems[index].addImage.isNotEmpty
                            ? Image.asset(pageItems[index].addImage)
                            : const SizedBox(),
                        const SizedBox(height: 20),
                        if (pageItems[index].additionalInfo.isNotEmpty) ...[
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: _parseTextWithNumbers(
                                  pageItems[index].additionalInfo),
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                        const SizedBox(height: 20),
                        pageItems[index].additionalImage.isNotEmpty
                            ? Image.asset(pageItems[index].additionalImage)
                            : const SizedBox(),
                        const SizedBox(height: 20),
                        if (pageItems[index].additionalInfo1.isNotEmpty) ...[
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: _parseTextWithNumbers(
                                  pageItems[index].additionalInfo1),
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                        const SizedBox(height: 20),
                        pageItems[index].additionalImage1.isNotEmpty
                            ? Image.asset(pageItems[index].additionalImage1)
                            : const SizedBox(),
                        const SizedBox(height: 20),
                        if (pageItems[index].additionalInfo2.isNotEmpty) ...[
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: _parseTextWithNumbers(
                                  pageItems[index].additionalInfo2),
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                        const SizedBox(height: 20),
                        pageItems[index].additionalImage2.isNotEmpty
                            ? Image.asset(pageItems[index].additionalImage2)
                            : const SizedBox(),
                        const SizedBox(height: 20),
                        if (pageItems[index].additionalInfo3.isNotEmpty) ...[
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: _parseTextWithNumbers(
                                  pageItems[index].additionalInfo3),
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                        const SizedBox(height: 20),
                        pageItems[index].additionalImage3.isNotEmpty
                            ? Image.asset(pageItems[index].additionalImage3)
                            : const SizedBox(),
                        const SizedBox(height: 20),
                        if (pageItems[index].additionalInfo4.isNotEmpty) ...[
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: _parseTextWithNumbers(
                                  pageItems[index].additionalInfo4),
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                        const SizedBox(height: 20),
                        pageItems[index].additionalImage4.isNotEmpty
                            ? Image.asset(pageItems[index].additionalImage4)
                            : const SizedBox(),
                        const SizedBox(height: 20),
                        if (pageItems[index].additionalInfo5.isNotEmpty) ...[
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: _parseTextWithNumbers(
                                  pageItems[index].additionalInfo5),
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                        const SizedBox(height: 20),
                        pageItems[index].additionalImage5.isNotEmpty
                            ? Image.asset(pageItems[index].additionalImage5)
                            : const SizedBox(),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: DotsIndicator(
                controller: _pageController,
                itemCount: pageItems.length,
                onPageSelected: (int page) {
                  _pageController.animateToPage(
                    page,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<TextSpan> _parseTextWithNumbers(String text) {
  final RegExp tagExp = RegExp(r"<([^>]+)>");
  final List<TextSpan> spans = [];
  int lastMatchEnd = 0;

  for (final match in tagExp.allMatches(text)) {
    if (match.start > lastMatchEnd) {
      final plainText = text.substring(lastMatchEnd, match.start);
      spans.addAll(_parseHtmlTags(plainText));
    }

    spans.add(
      TextSpan(
        text: match.group(0),
        style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold), // Change the color for tags
      ),
    );
    lastMatchEnd = match.end;
  }

  if (lastMatchEnd < text.length) {
    final plainText = text.substring(lastMatchEnd);
    spans.addAll(_parseHtmlTags(plainText));
  }

  return spans;
}

List<TextSpan> _parseHtmlTags(String text) {
  final List<TextSpan> spans = [];
  final List<String> specialWords = [
    '1. Inputs',
    '2. Labels',
    '3. Buttons',
    '4. Select',
    '5. Textarea',
    '6. Fieldset dan Legend',
    '7. Radio Buttons',
    '1. Pengumpulan data: ',
    '2. Interaksi dengan audiens: ',
    '3. Otentikasi dan otorisasi: ',
    '4. Pengaturan dan kontrol: ',
    '5. Validasi dan kesalahan: ',
    '6. Integrasi dengan teknologi lain: ',
    '7. Efisiensi dan kemudahan: ',
    '1. Teks',
    '2. Nomor',
    '3. Tanggal',
    '4. Kata sandi',
    '5. E-mail: ',
    '6. Checkbox: ',
    '7. Radio: ',
    '8. File: ',
    'Contoh: ',
    '1. Table',
    '2. Row',
    '3. Header',
    '4. Data',
    '1. Unordered List',
    '2. Ordered List',
    '3. Description List',
    '1, A, a, I, i',
  ]; // Kata-kata tertentu yang ingin diberi gaya khusus
  int lastMatchEnd = 0;

  for (final word in specialWords) {
    final RegExp wordExp = RegExp(r"\b" + word + r"\b", caseSensitive: false);
    for (final match in wordExp.allMatches(text)) {
      if (match.start > lastMatchEnd) {
        final plainText = text.substring(lastMatchEnd, match.start);
        spans.add(TextSpan(text: plainText));
      }
      spans.add(
        TextSpan(
          text: match.group(0),
          style: const TextStyle(
              color: Colors.orange,
              fontWeight:
                  FontWeight.bold), // Ganti warna untuk kata-kata tertentu
        ),
      );
      lastMatchEnd = match.end;
    }
  }

  if (lastMatchEnd < text.length) {
    final plainText = text.substring(lastMatchEnd);
    spans.add(TextSpan(text: plainText));
  }

  return spans;
}

class DotsIndicator extends AnimatedWidget {
  final PageController controller;
  final int itemCount;
  final ValueChanged<int> onPageSelected;

  const DotsIndicator({
    required this.controller,
    required this.itemCount,
    required this.onPageSelected,
  }) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, (int index) {
        return InkWell(
          onTap: () => onPageSelected(index),
          child: Container(
            width: 5.0,
            height: 5.0,
            margin: const EdgeInsets.symmetric(horizontal: 6.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: controller.page == index ? Colors.blue : Colors.grey,
            ),
          ),
        );
      }),
    );
  }
}
