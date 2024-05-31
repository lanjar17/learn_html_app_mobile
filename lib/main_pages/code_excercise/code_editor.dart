// import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:quiz/common/widgets/custom_text.dart';
// import 'package:quiz/main_pages/code_excercise/provider/code_excercise_provider.dart';
// import 'package:quiz/main_pages/materi/provider/page_view_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CodeEditorPage extends ConsumerWidget {
  const CodeEditorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Code Editor",
          style: TextStyle(
            fontFamily: "Roboto",
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.onTertiary,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () => Navigator.pushReplacementNamed(
                context,
                "/QuizPage",
              ),
              splashColor:
                  Colors.white.withOpacity(0.5), // Warna animasi saat ditekan
              borderRadius: BorderRadius.circular(20.0),

              child: Container(
                padding: const EdgeInsets.all(5), // Padding teks
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1.0), // Border
                  borderRadius: BorderRadius.circular(20.0), // BorderRadius
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
        ],
      ),
      body: SafeArea(
        child: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..loadRequest(
                Uri.parse('https://www.w3schools.com/html/tryit.asp?filename=tryhtml_editor')),
        ),
      ),
    );
  }
}