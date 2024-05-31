// import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:quiz/common/widgets/custom_text.dart';
// import 'package:quiz/main_pages/code_excercise/provider/code_excercise_provider.dart';
// import 'package:quiz/main_pages/materi/provider/page_view_provider.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class CodeExcercisePage extends ConsumerWidget {
  const CodeExcercisePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Code Excercise",
          style: TextStyle(
            fontFamily: "Roboto",
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.onTertiary,
        
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Card(
              color: Colors.purple.shade50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
                    title: Center(
                      child: Text('HTML',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        fontFamily: "Roboto"),
                        ),
                    ),
                    subtitle: Center(
                      child: Text(
                        'Kumpulan Latihan Coding',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // background color
                            foregroundColor: Colors.white, // foreground color
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, "/CodePage"),
                          child: const Text('Start Excercise', style: TextStyle(fontFamily: 'Roboto'),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Card(
              color: Colors.blue.shade50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
                    title: Center(
                      child: Text('CODE EDITOR',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        fontFamily: 'Roboto',
                        ),
                        ),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // background color
                            foregroundColor: Colors.white, // foreground color
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, "/CodeEditorPage"),
                          child: const Text('Buka Code Editor', style: TextStyle(fontFamily: 'Roboto'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

          ],
        ),
      ),

      //
      // body: SafeArea(
      //   child: WebViewWidget(
      //     controller: WebViewController()
      //       ..setJavaScriptMode(JavaScriptMode.unrestricted)
      //       ..loadRequest(
      //           Uri.parse('https://www.w3schools.com/html/tryit.asp?filename=tryhtml_editor')),
      //   ),
      // ),
    );
  }
}

// class CodeExcercisePage extends ConsumerStatefulWidget {
//   const CodeExcercisePage({super.key});

//   @override
//   ConsumerState<CodeExcercisePage> createState() => _CodeExcercisePageState();
// }

// class _CodeExcercisePageState extends ConsumerState<CodeExcercisePage>
//     with TickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.secondary,
//         title: const CustomText(
//           text: "Code Excercise",
//           size: 25,
//         ),
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: const [
//             Tab(text: 'Code'),
//             Tab(text: 'Output'),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           FutureBuilder<String>(
//             future: rootBundle.loadString("filePath"),
//             builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 return SingleChildScrollView(
//                   child: CodeEditor(
//                     model: EditorModel(
//                       files: [
//                         FileEditor(
//                           name: "excercise.html",
//                           language: "html",
//                           code: snapshot.data ??
//                               ref.watch(excerciseCode.notifier).state,
//                         ),
//                       ],
//                       styleOptions: EditorModelStyleOptions(
//                         heightOfContainer:
//                             MediaQuery.of(context).size.height / 2 +
//                                 MediaQuery.of(context).size.height / 4,
//                         editButtonName: "Try it out !",
//                       ),
//                     ),
//                     onSubmit: (String file, String value) {
//                       ref.watch(excerciseCode.notifier).state = value;
//                       ref.watch(codeOutput.notifier).state = value;
//                       _tabController.animateTo(1);
//                     },
//                   ),
//                 );
//               } else {
//                 return const CircularProgressIndicator();
//               }
//             },
//           ),
//           Scaffold(
//             backgroundColor: Theme.of(context).colorScheme.surface,
//             body: SingleChildScrollView(
//               child: HtmlWidget(
//                 ref.watch(codeOutput.notifier).state,
//                 textStyle: const TextStyle(
//                   color: Colors.black,
//                   fontSize: 21,
//                 ),
//                 onErrorBuilder: (context, element, error) {
//                   return CustomText(
//                     text: ref.watch(codeOutput.notifier).state,
//                     size: 21,
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
