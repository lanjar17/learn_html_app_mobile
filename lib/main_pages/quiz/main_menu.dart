import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnhtml/main_pages/dashboard/dashboard_page.dart';
import 'package:learnhtml/main_pages/quiz/quiz.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 48.0,
                  horizontal: 12.0,
                ),
                child: RawMaterialButton(
                  onPressed: () {
                    // Navigating to the Quiz Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizzScreen(),
                      ),
                    );
                  },
                  shape: const StadiumBorder(),
                  fillColor: Colors.green,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 24.0,
                    ),
                    child: Text(
                      "Start the Quiz",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              // Navigating to the home page and removing the page stack
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => DashboardPage()),
                (route) => false,
              );
            },
            shape: const StadiumBorder(),
            fillColor: Colors.red,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 24.0,
              ),
              child: Text(
                "Batal",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20), // Add space between button and text
          
        ],
      ),
    );
  }
}

