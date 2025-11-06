import 'package:authentication_repository/authentication_repository.dart';
import 'package:cubicode/playground/cubit/playground_cubit.dart';
import 'package:cubicode/playground/view/playground_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_repository/projects_repository.dart';

/// {@template playgground_page}
/// A [StatelessWidget] which is responsible for providing a
/// [PlaygroundCubit] instance to the [PlaygroundPage].
/// {@endtemplate}
class PlaygroundPage extends StatelessWidget {
  /// {@macro playgground_page}
  const PlaygroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PlaygroundCubit(
        authenticationRepository: context.read<AuthenticationRepository>(),
        projectsRepository: ProjectRepository(),
      ),
      child: const PlaygroundView(),
    );
  }
}
