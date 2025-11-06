import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:topics_repository/src/models/models.dart';

abstract class Failure implements Exception {
  const Failure();
}

class TopicsFailure extends Failure {
  const TopicsFailure._();

  factory TopicsFailure.fromGetTopics() => const GetTopicsFailure();

  static const none = TopicsNoFailure();
}

class TopicsNoFailure extends TopicsFailure {
  const TopicsNoFailure() : super._();
}

class GetTopicsFailure extends TopicsFailure {
  const GetTopicsFailure() : super._();
}

class TopicsRepository {
  TopicsRepository({
    FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  Future<List<Topic>> getTopics() async {
    try {
      final snapshot = await _firestore.collection('topics').get();
      return snapshot.docs.map((doc) => Topic.fromJson(doc.data())).toList();
    } on FirebaseException {
      throw TopicsFailure.fromGetTopics();
    }
  }
}
