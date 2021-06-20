import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;

  const QuizWidget({required this.question, required this.onSelected, Key? key})
      : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
            child: Text(widget.question.title, style: AppTextStyles.heading),
          ),
          SizedBox(height: 24),
          for (var i = 0; i < widget.question.answers.length; i++)
            AnswerWidget(
                answer: widget.question.answers[i],
                disabled: indexSelected != -1,
                isSelected: indexSelected == i,
                onTap: (value) {
                  indexSelected = i;
                  setState(() {});
                  Future.delayed(Duration(seconds: 2))
                      .then((_) => widget.onSelected(value));
                }),
        ],
      ),
    );
  }
}
