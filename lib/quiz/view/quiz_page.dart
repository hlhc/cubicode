import 'package:authentication_repository/authentication_repository.dart';
import 'package:cubicode/playground/playground.dart';
import 'package:cubicode/quiz/cubit/quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:quizzes_repository/quizzes_repository.dart';

class QuizPage extends StatelessWidget {
  const QuizPage._({
    required this.quizId,
    required this.onQuizCompleted,
  });

  static const name = '/quizpage';
  static Page<void> page({
    required String quizId,
    required VoidCallback onQuizCompleted,
  }) =>
      MaterialPage<void>(
        key: const ValueKey('quiz_page'),
        fullscreenDialog: true,
        name: name,
        child: QuizPage._(quizId: quizId, onQuizCompleted: onQuizCompleted),
      );

  final String quizId;
  final VoidCallback onQuizCompleted;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => QuizCubit(
        authenticationRepository: context.read<AuthenticationRepository>(),
        quizzesRepository: QuizzesRepository(),
      )..getQuiz(quizId),
      child: Provider.value(
        value: onQuizCompleted,
        child: const QuizView(),
      ),
    );
  }
}

class QuizView extends StatelessWidget {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizCubit, QuizState>(
      builder: (context, state) {
        return state.status == QuizStatus.loaded
            ? const PlaygroundPage()
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}
