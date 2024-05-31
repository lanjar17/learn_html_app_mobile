import 'package:flutter/material.dart';
import 'package:learnhtml/main_pages/quiz/provider/quiz_model.dart';

class CustomQuiz extends StatelessWidget {
  final Quiz questionModel;
  final VoidCallback onPressed;

  const CustomQuiz({
    Key? key,
    required this.questionModel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200.0,
          child: Text(
            "${questionModel.question}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
        for (int i = 0; i < questionModel.answers!.length; i++)
          Container(
            width: double.infinity,
            height: 50.0,
            margin: const EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
            child: RawMaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              fillColor: Theme.of(context).colorScheme.secondary,
              onPressed: onPressed,
              child: Text(
                questionModel.answers!.keys.toList()[i],
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
      ],
    );
  }
}
