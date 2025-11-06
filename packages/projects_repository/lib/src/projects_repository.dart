import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projects_repository/src/models/models.dart';

abstract class Failure implements Exception {
  const Failure();
}

class ProjectsFailure extends Failure {
  const ProjectsFailure._();

  factory ProjectsFailure.fromGetProjects() => const GetProjectsFailure();
  factory ProjectsFailure.fromCreateProject() => const CreateProjectFailure();
  factory ProjectsFailure.fromDeleteProject() => const DeleteProjectFailure();

  static const none = ProjectsNoFailure();
}

class ProjectsNoFailure extends ProjectsFailure {
  const ProjectsNoFailure() : super._();
}

class GetProjectsFailure extends ProjectsFailure {
  const GetProjectsFailure() : super._();
}

class CreateProjectFailure extends ProjectsFailure {
  const CreateProjectFailure() : super._();
}

class DeleteProjectFailure extends ProjectsFailure {
  const DeleteProjectFailure() : super._();
}

class ProjectRepository {
  ProjectRepository({
    FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  Future<List<Project>> getProjects(String userId) async {
    try {
      final snapshot = await _firestore
          .collection('projects')
          .where('user', isEqualTo: userId)
          .get();
      return snapshot.docs
          .map((doc) => Project.fromJson(doc.data()).copyWith(id: doc.id))
          .toList();
    } on FirebaseException {
      throw ProjectsFailure.fromGetProjects();
    }
  }

  Future<List<Project>> getSharedProjects() async {
    try {
      final snapshot = await _firestore
          .collection('projects')
          .where('shared', isEqualTo: true)
          .get();
      return snapshot.docs
          .map((doc) => Project.fromJson(doc.data()).copyWith(id: doc.id))
          .toList();
    } on FirebaseException {
      throw ProjectsFailure.fromGetProjects();
    }
  }

  Future<DocumentReference<Map<String, dynamic>>> createProject(
    Project project,
  ) async {
    try {
      final result =
          await _firestore.collection('projects').add(project.toJson());
      return result;
    } on FirebaseException {
      throw ProjectsFailure.fromCreateProject();
    }
  }

  Future<Project> updateProject(
    Project project,
  ) async {
    if (project.id == null) {
      throw ProjectsFailure.fromCreateProject();
    }
    try {
      await _firestore
          .collection('projects')
          .doc(project.id)
          .update(project.toJson());
      return project;
    } on FirebaseException {
      throw ProjectsFailure.fromCreateProject();
    }
  }

  Future<void> deleteProject(String? id) async {
    if (id == null) {
      throw ProjectsFailure.fromDeleteProject();
    }
    try {
      await _firestore.collection('projects').doc(id).delete();
    } on FirebaseException {
      throw ProjectsFailure.fromDeleteProject();
    }
  }
}
