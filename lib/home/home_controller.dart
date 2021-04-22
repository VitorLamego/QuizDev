import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
        name: "Vitor Lamego",
        photoUrl: 'https://avatars.githubusercontent.com/u/54643464?v=4');
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
          title: "Básico Flutter",
          questions: [
            QuestionModel(title: "O que o Flutter faz ?", answers: [
              AnswerModel(title: "Linguagem de programação"),
              AnswerModel(
                  title: "Framework de desenvolvimento mobile usando Dart",
                  isRight: true),
              AnswerModel(title: "Nova tecnologia de machine learning"),
              AnswerModel(title: "Framework Backend")
            ])
          ],
          image: AppImages.blocks,
          level: Level.facil)
    ];
  }
}
