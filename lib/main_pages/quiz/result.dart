import 'package:flutter/material.dart';
import 'package:learnhtml/main_pages/dashboard/dashboard_page.dart';
import 'package:learnhtml/main_pages/quiz/main_menu.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              widget.score < 70 ? "Try Again" : "Congratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.score < 70 ? Colors.red : Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          const Text(
            "Skor Kamu",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: widget.score < 70 ? Colors.red : Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          ElevatedButton(
            onPressed: _isLoading ? null : () => _navigateToNextScreen(context),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith<Color>((states) {
                if (widget.score < 70) {
                  return Colors.red; // Warna merah jika skor kurang dari 70
                } else {
                  return Colors
                      .green; // Warna hijau jika skor lebih dari atau sama dengan 70
                }
              }),
            ),
            child: _isLoading
                ? const SizedBox(
                    height: 24.0,
                    width: 24.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Text(
                    widget.score < 70 ? "Ulangi" : "Kembali ke Menu",
                    style: const TextStyle(color: Colors.white),
                  ),
          ),
        ],
      ),
    );
  }

  Future<void> _navigateToNextScreen(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(
        const Duration(seconds: 1)); // Simulating some asynchronous operation

    if (widget.score < 70) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainMenu()),
      );
    } else {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => DashboardPage()),
        (route) => false,
      );
    }
  }
}
