import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text(
                  'Parabéns!',
                  style: AppTextStyles.heading40,
                ),
                SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                      text: "Você concluiu",
                      style: AppTextStyles.body,
                      children: [
                        TextSpan(
                            text: "\nGerenciamento de Estados",
                            style: AppTextStyles.bodyBold),
                        TextSpan(
                            text: "\ncom 6 de 10 acertos",
                            style: AppTextStyles.body)
                      ]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: NextButtonWidget.purple(
                          label: 'Compartilhar', onTap: () {}),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: NextButtonWidget.white(
                          label: 'Voltar ao Início',
                          onTap: () {
                            Navigator.pop(context);
                          }),
                    )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
