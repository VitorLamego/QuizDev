import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isRigth;
  final bool isSelected;

  const AnswerWidget(
      {required this.title,
      this.isRigth = false,
      this.isSelected = false,
      Key? key})
      : super(key: key);

  Color get _selectedColorRight =>
      isRigth ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRigth ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRigth ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      isRigth ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      isRigth ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRigth ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(
              color: isSelected ? _selectedBorderCardRight : AppColors.border)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(title,
                    style: isSelected
                        ? _selectedTextStyleRight
                        : AppTextStyles.body)),
            Container(
              height: 24,
              width: 24,
              child: isSelected
                  ? Icon(
                      _selectedIconRight,
                      color: AppColors.white,
                      size: 16,
                    )
                  : null,
              decoration: BoxDecoration(
                  color: isSelected ? _selectedColorRight : AppColors.white,
                  borderRadius: BorderRadius.circular(500),
                  border: Border.fromBorderSide(BorderSide(
                      color: isSelected
                          ? _selectedBorderRight
                          : AppColors.border))),
            )
          ],
        ),
      ),
    );
  }
}
