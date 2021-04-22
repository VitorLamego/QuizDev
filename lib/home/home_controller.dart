import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
        name: "Vitor Lamego",
        photoUrl: 'https://avatars.githubusercontent.com/u/54643464?v=4');
    state = HomeState.succes;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
          title: "Básico Flutter",
          questionsAnswered: 1,
          questions: [
            QuestionModel(title: "O que o Flutter faz ?", answers: [
              AnswerModel(title: "Linguagem de programação"),
              AnswerModel(
                  title: "Framework de desenvolvimento mobile usando Dart",
                  isRight: true),
              AnswerModel(title: "Nova tecnologia de machine learning"),
              AnswerModel(title: "Framework Backend")
            ]),
            QuestionModel(title: "O que o Flutter faz ?", answers: [
              AnswerModel(title: "Linguagem de programação"),
              AnswerModel(
                  title: "Framework de desenvolvimento mobile usando Dart",
                  isRight: true),
              AnswerModel(title: "Nova tecnologia de machine learning"),
              AnswerModel(title: "Framework Backend")
            ]),
          ],
          image: AppImages.blocks,
          level: Level.facil)
    ];
    state = HomeState.succes;
  }
}
