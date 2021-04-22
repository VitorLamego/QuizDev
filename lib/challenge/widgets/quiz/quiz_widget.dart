import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
            child: Text(title, style: AppTextStyles.heading),
          ),
          SizedBox(height: 24),
          AnswerWidget(
              title:
                  "Possibilita a criação de aplicativos compliados nativamente"),
          AnswerWidget(
              isRigth: true,
              isSelected: true,
              title:
                  "Possibilita a criação de aplicativos compliados nativamente"),
          AnswerWidget(
              title:
                  "Possibilita a criação de aplicativos compliados nativamente"),
          AnswerWidget(
              title:
                  "Possibilita a criação de aplicativos compliados nativamente"),
        ],
      ),
    );
  }
}
