import 'package:flutter/material.dart';
import 'package:learnhtml/common/routes/names.dart';
import 'package:learnhtml/main_pages/code_excercise/code_excercise_page.dart';
import 'package:learnhtml/main_pages/code_excercise/code_excercise.dart';
import 'package:learnhtml/main_pages/code_excercise/code_editor.dart';
import 'package:learnhtml/main_pages/dashboard/dashboard_page.dart';
import 'package:learnhtml/main_pages/materi/materi_page.dart';
import 'package:learnhtml/main_pages/output/output_page.dart';
import 'package:learnhtml/main_pages/project/project1_page.dart';
import 'package:learnhtml/main_pages/project/project2_page.dart';
import 'package:learnhtml/main_pages/project/project3_page.dart';
import 'package:learnhtml/main_pages/project/submit_page.dart';
import 'package:learnhtml/main_pages/video/pages/video1page.dart';
import 'package:learnhtml/main_pages/video/pages/video2page.dart';
import 'package:learnhtml/main_pages/video/pages/video3page.dart';
import 'package:learnhtml/main_pages/video/pages/video4page.dart';
import 'package:learnhtml/main_pages/video/pages/video5page.dart';
import 'package:learnhtml/main_pages/video/video_page.dart';
import 'package:learnhtml/main_pages/quiz/main_menu.dart';

class PageEntity {
  PageEntity({required this.route, required this.page});
  Widget page;
  String route;
}

class AppPages {
  static List<PageEntity> routes() {
    return [
      PageEntity(
        route: AppRoutes.dashboard,
        page: const DashboardPage(),
      ),
      PageEntity(
        route: AppRoutes.materi,
        page: const MateriPage(),
      ),
      PageEntity(
        route: AppRoutes.output,
        page: const OutputPage(),
      ),

      //COODE EXCERCISE
      PageEntity(
        route: AppRoutes.codeExercise,
        page: const CodeExcercisePage(),
      ),
      PageEntity(
        route: AppRoutes.code,
        page: const CodePage(),
      ),
      PageEntity(
        route: AppRoutes.codeEditor,
        page: const CodeEditorPage(),
      ),

      //PROJECT
      PageEntity(
        route: AppRoutes.project1,
        page: const Project1Page(),
      ),
      PageEntity(
        route: AppRoutes.project2,
        page: const Project2Page(),
      ),
      PageEntity(
        route: AppRoutes.project3,
        page: const Project3Page(),
      ),
      PageEntity(
        route: AppRoutes.submit,
        page: const SubmitPage(),
      ),

      //VIDEO
      PageEntity(
        route: AppRoutes.video,
        page: const VideoPage(),
      ),
      PageEntity(
        route: AppRoutes.video1,
        page: const Video1Page(),
      ),
      PageEntity(
        route: AppRoutes.video2,
        page: const Video2Page(),
      ),
      PageEntity(
        route: AppRoutes.video3,
        page: const Video3Page(),
      ),
      PageEntity(
        route: AppRoutes.video4,
        page: const Video4Page(),
      ),
      PageEntity(
        route: AppRoutes.video5,
        page: const Video5Page(),
      ),

      //QUIZ
      PageEntity(
        route: AppRoutes.quiz,
        page: const MainMenu(),
      ),
    ];
  }

  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      var result = routes().where((element) => element.route == settings.name);
      if (result.isNotEmpty) {
        return MaterialPageRoute(
          builder: (_) => result.first.page,
          settings: settings,
        );
      }
    }
    return MaterialPageRoute(
      builder: (_) => const DashboardPage(),
      settings: settings,
    );
  }
}
