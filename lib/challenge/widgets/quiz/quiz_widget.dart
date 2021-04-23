import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;

  const QuizWidget({required this.question, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
            child: Text(question.title, style: AppTextStyles.heading),
          ),
          SizedBox(height: 24),
          ...question.answers
              .map((answer) =>
                  AnswerWidget(title: answer.title, isRigth: answer.isRight))
              .toList()
        ],
      ),
    );
  }
}
