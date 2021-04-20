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
          Text(title, style: AppTextStyles.heading),
          SizedBox(height: 24),
          AnswerWidget(
              isRigth: true,
              isSelected: true,
              title:
                  "Possibilita a criação de aplicativos compliados nativamente"),
          AnswerWidget(
              isRigth: false,
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
