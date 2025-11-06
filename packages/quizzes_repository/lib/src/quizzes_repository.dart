import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizzes_repository/quizzes_repository.dart';
import 'package:quizzes_repository/src/models/models.dart';

abstract class Failure implements Exception {
  const Failure();
}

class QuizzesFailure extends Failure {
  const QuizzesFailure._();

  factory QuizzesFailure.fromGetQuizzes() => const GetQuizzesFailure();

  static const none = QuizzesNoFailure();
}

class QuizzesNoFailure extends QuizzesFailure {
  const QuizzesNoFailure() : super._();
}

class GetQuizzesFailure extends QuizzesFailure {
  const GetQuizzesFailure() : super._();
}

class QuizzesRepository {
  QuizzesRepository({
    FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  Future<Quiz> getQuiz(String quizId) async {
    try {
      final snapshot = await _firestore.collection('quizzes').doc(quizId).get();

      if (snapshot.exists) {
        return Quiz.fromJson(snapshot.data()!);
      } else {
        throw QuizzesFailure.fromGetQuizzes();
      }
    } on FirebaseException {
      throw QuizzesFailure.fromGetQuizzes();
    }
  }
}
