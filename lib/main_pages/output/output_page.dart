import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnhtml/common/widgets/custom_text.dart';
import 'package:learnhtml/main_pages/materi/provider/page_view_provider.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class OutputPage extends ConsumerWidget {
  const OutputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const CustomText(
          text: "Output",
          size: 25,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: HtmlWidget(
            ref.watch(codeOutput.notifier).state,
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 21,
            ),
            onErrorBuilder: (context, element, error) {
              return CustomText(
                text: ref.watch(codeOutput.notifier).state,
                size: 21,
              );
            },
          ),
        ),
      ),
    );
  }
}
