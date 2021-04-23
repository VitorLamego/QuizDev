import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widget/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int questionNumber;
  final int totalQuestions;

  const QuestionIndicatorWidget(
      {required this.questionNumber, required this.totalQuestions, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Questão ${this.questionNumber}", style: AppTextStyles.body),
              Text("de ${this.totalQuestions}", style: AppTextStyles.body)
            ],
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(
              value: this.questionNumber / this.totalQuestions)
        ],
      ),
    );
  }
}
