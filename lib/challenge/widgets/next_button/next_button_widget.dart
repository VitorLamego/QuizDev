import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final Color overlayColor;
  final VoidCallback onTap;

  NextButtonWidget(
      {required this.label,
      required this.backgroundColor,
      required this.borderColor,
      required this.onTap,
      required this.overlayColor,
      required this.fontColor});

  NextButtonWidget.green({required String label, required VoidCallback onTap})
      : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.onTap = onTap,
        this.overlayColor = AppColors.lightGreen.withOpacity(0.3),
        this.borderColor = AppColors.green,
        this.label = label;

  NextButtonWidget.grey({required String label, required VoidCallback onTap})
      : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.onTap = onTap,
        this.overlayColor = AppColors.lightGrey.withOpacity(0.2),
        this.borderColor = AppColors.border,
        this.label = label;

  NextButtonWidget.purple({required String label, required VoidCallback onTap})
      : this.backgroundColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.onTap = onTap,
        this.overlayColor = AppColors.lightGrey.withOpacity(0.2),
        this.borderColor = AppColors.border,
        this.label = label;

  NextButtonWidget.white({required String label, required VoidCallback onTap})
      : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.onTap = onTap,
        this.overlayColor = AppColors.lightGrey.withOpacity(0.2),
        this.borderColor = AppColors.border,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Container(
        height: 48,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(this.backgroundColor),
              overlayColor: MaterialStateProperty.all(this.overlayColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: AppColors.border)),
              ),
            ),
            child: Text(label,
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: this.fontColor)),
            onPressed: this.onTap),
      ),
    );
  }
}
