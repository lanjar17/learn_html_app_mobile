// import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:quiz/common/widgets/custom_text.dart';
// import 'package:quiz/main_pages/code_excercise/provider/code_excercise_provider.dart';
// import 'package:quiz/main_pages/materi/provider/page_view_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SubmitPage extends ConsumerWidget {
  const SubmitPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Submit Jawaban",
          style: TextStyle(
            fontFamily: "Roboto",
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.onTertiary,
      ),
      
      body: SafeArea(
        child: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..loadRequest(
                Uri.parse('https://forms.gle/mauyRHQw8uKRqxQMA')),
        ),
      ),
    );
  }
}
