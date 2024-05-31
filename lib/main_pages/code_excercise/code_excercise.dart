import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CodePage extends ConsumerWidget {
  const CodePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String js = '''
      var signupLink = document.querySelector('a.xuser-anonymous.xtnb-signup-btn');
      if (signupLink !== null) {
        signupLink.remove();
      }
      var loginLink = document.querySelector('a.xuser-anonymous.xtnb-login-btn');
      if (loginLink !== null) {
        loginLink.remove();
      }
      var homeIcon = document.querySelector('span.menubtn.fa.fa-home');
      if (homeIcon !== null) {
        homeIcon.remove();
      }
      var tryitLeaderboard = document.getElementById('tryitLeaderboard');
      if (tryitLeaderboard !== null) {
        tryitLeaderboard.remove();
      }
      
      var googleAdsContainer = document.getElementById('google_ads_iframe_/22152718,16833175/sws-hb//w3schools.com//try_it_leaderboard_0__container__');
      if (googleAdsContainer !== null) {
        googleAdsContainer.remove();
      }
    ''';

    final WebViewController webViewController = WebViewController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Code Exercise",
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
        ],
      ),
      body: SafeArea(
        child: WebViewWidget(
          controller: webViewController
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..setNavigationDelegate(NavigationDelegate(
              onPageFinished: (String url) {
                webViewController.runJavaScript(js);
              },
            ))
            ..loadRequest(
                Uri.parse('https://www.w3schools.com/html/exercise.asp')),
        ),
      ),
    );
  }
}
