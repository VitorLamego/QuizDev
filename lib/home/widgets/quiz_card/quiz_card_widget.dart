import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widget/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String picture;
  final String progress;
  final double percentage;
  final VoidCallback onTap;

  const QuizCardWidget(
      {required this.title,
      required this.picture,
      required this.progress,
      required this.onTap,
      required this.percentage,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(this.picture),
              margin: EdgeInsets.only(bottom: 11),
            ),
            Text(this.title, style: AppTextStyles.heading15),
            SizedBox(height: 11),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(this.progress, style: AppTextStyles.body11)),
                Expanded(
                    flex: 1,
                    child: ProgressIndicatorWidget(value: this.percentage))
              ],
            )
          ],
        ),
      ),
    );
  }
}
