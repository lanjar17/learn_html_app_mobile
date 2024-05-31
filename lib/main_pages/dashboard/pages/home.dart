import 'package:flutter/material.dart';
import 'package:learnhtml/common/widgets/custom_list_tile.dart';
import 'package:learnhtml/main_pages/materi/materi_page.dart'; // Import halaman MateriPage
import 'package:learnhtml/main_pages/code_excercise/code_excercise_page.dart'; // Import halaman CodeExercisePage
import 'package:learnhtml/main_pages/quiz/main_menu.dart'; // Import halaman QuizPage
import 'package:learnhtml/main_pages//video/video_page.dart'; // Import halaman VideoPage

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      padding:
          EdgeInsets.symmetric(horizontal: screenWidth * 0.01, vertical: 20.0),
      children: [
        CustomListTile(
          text: "MATERI",
          subtitle: "Materi",
          leading: const Icon(Icons.book),
          trailing: const Icon(Icons.abc),
          color: Colors.blue,
          onTap: () => _navigateToMateriPage(context),
        ),
        SizedBox(height: screenWidth * 0.03),
        CustomListTile(
          text: "VIDEO",
          subtitle: "Video Pembelajaran",
          leading: const Icon(Icons.video_library_rounded),
          trailing: const Icon(Icons.play_circle),
          color: Colors.red,
          onTap: () => _navigateToVideoPage(context),
        ),
        SizedBox(height: screenWidth * 0.03),
        CustomListTile(
          text: "CODE EXCERCISE",
          subtitle: "Code Editor",
          leading: const Icon(Icons.code),
          trailing: const Icon(Icons.html_rounded),
          color: Colors.orange,
          onTap: () => _navigateToCodeExercisePage(context),
        ),
        SizedBox(height: screenWidth * 0.03),
        CustomListTile(
          text: "QUIZ",
          subtitle: "Latihan Soal",
          leading: const Icon(Icons.quiz),
          trailing: const Icon(Icons.school_rounded),
          color: Colors.green,
          onTap: () => _navigateToQuizPage(context),
        ),
        
      ],
    );
  }

  void _navigateToMateriPage(BuildContext context) {
    Navigator.push(context, _createRoute("/MateriPage"));
  }

  void _navigateToCodeExercisePage(BuildContext context) {
    Navigator.push(context, _createRoute("/CodeExercisePage"));
  }

  void _navigateToQuizPage(BuildContext context) {
    Navigator.push(context, _createRoute("/QuizPage"));
  }

  void _navigateToVideoPage(BuildContext context) {
    Navigator.push(context, _createRoute("/VideoPage"));
  }

  Route _createRoute(String routeName) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          _getPage(routeName),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Widget _getPage(String routeName) {
    switch (routeName) {
      case "/MateriPage":
        return const MateriPage();
      case "/CodeExercisePage":
        return const CodeExcercisePage();
      case "/QuizPage":
        return const MainMenu();
      case "/VideoPage":
        return const VideoPage();
      default:
        return Container();
    }
  }
}



// return const Padding(
    //   padding: EdgeInsets.all(8.0),
    //   child: Column(
    //     children: <Widget>[
    //       Card(
    //         color: Color.fromARGB(255, 53, 49, 49),
    //         child: ListTile(
    //           textColor: Colors.white,
    //           iconColor: Colors.white,
    //           leading: Icon(Icons.book),
    //           title: Text('MATERI',
    //           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
    //           subtitle: Text('This is a notification'),
    //         ),
    //       ),
    //       const SizedBox(height: 15),
    //       Card(
    //         color: Color.fromARGB(255, 53, 49, 49),
    //         child: ListTile(
    //           textColor: Colors.white,
    //           iconColor: Colors.white,
    //           focusColor: Colors.black,
    //           leading: Icon(Icons.code),
    //           title: Text('CODE EXERCISE',
    //           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    //           ),
    //           subtitle: Text('This is a notification'),

    //         ),
    //       ),
    //       const SizedBox(height: 15),
    //       Card(
    //         color: Color.fromARGB(255, 53, 49, 49),
    //         child: ListTile(
    //           textColor: Colors.white,
    //           iconColor: Colors.white,
    //           focusColor: Colors.black,
    //           leading: Icon(Icons.quiz),
    //           title: Text('KUIS',
    //           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    //           ),
    //           subtitle: Text('This is a notification'),
    //         ),
    //       ),
    //       const SizedBox(height: 15),
    //       Card(
    //         color: Color.fromARGB(255, 53, 49, 49),
    //         child: ListTile(
    //           textColor: Colors.white,
    //           iconColor: Colors.white,
    //           focusColor: Colors.black,
    //           leading: Icon(Icons.video_library),
    //           title: Text('VIDEO',
    //           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    //           ),
    //           subtitle: Text('This is a notification'),
    //         ),
    //       ),
    //       const SizedBox(height: 15),
    //     ],
    //   ),
    // );