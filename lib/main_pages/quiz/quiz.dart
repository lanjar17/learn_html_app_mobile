import 'package:flutter/material.dart';
import 'package:learnhtml/main_pages/quiz/model/quiz_data.dart';
import 'package:learnhtml/main_pages/quiz/provider/quiz_model.dart';
import 'package:learnhtml/main_pages/quiz/result.dart';

class QuizzScreen extends StatefulWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
  int? selectedAnswerIndex;
  List<Quiz> shuffledQuestions = [];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    shuffledQuestions = List<Quiz>.from(questions)..shuffle(); // Acak soal
    if (shuffledQuestions.length > 10) {
      shuffledQuestions = shuffledQuestions.sublist(0, 10); // Batasi ke 10 soal
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          controller: _controller!,
          onPageChanged: (page) {
            if (page == shuffledQuestions.length - 1) {
              setState(() {
                btnText = "See Results";
              });
            }
            setState(() {
              answered = false;
              selectedAnswerIndex = null;
            });
          },
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Question ${index + 1}/10",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 200.0,
                  child: Text(
                    "${shuffledQuestions[index].question}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                for (int i = 0;
                    i < shuffledQuestions[index].answers!.length;
                    i++)
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    margin: const EdgeInsets.only(
                        bottom: 20.0, left: 12.0, right: 12.0),
                    child: RawMaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      fillColor: selectedAnswerIndex == i
                          ? (shuffledQuestions[index]
                                  .answers!
                                  .values
                                  .toList()[i]
                              ? Colors.green
                              : Colors.red)
                          : Theme.of(context).colorScheme.secondary,
                      onPressed: !answered
                          ? () {
                              setState(() {
                                selectedAnswerIndex = i;
                                answered = true;
                                if (shuffledQuestions[index]
                                    .answers!
                                    .values
                                    .toList()[i]) {
                                  score += 10;
                                }
                              });
                            }
                          : null,
                      child: Text(
                        shuffledQuestions[index].answers!.keys.toList()[i],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_controller!.page?.toInt() ==
                        shuffledQuestions.length - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(score),
                        ),
                      );
                    } else {
                      _controller!.nextPage(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInExpo,
                      );

                      setState(() {
                        answered = false;
                        selectedAnswerIndex = null;
                      });
                    }
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      const StadiumBorder(),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Text(
                    btnText,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
          itemCount: shuffledQuestions.length,
        ),
      ),
    );
  }
}
