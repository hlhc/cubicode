import 'package:authentication_repository/authentication_repository.dart';
import 'package:cubicode/edit/view/edit_page.dart';
import 'package:cubicode/explore/cubit/explore_cubit.dart';
import 'package:cubicode/explore/view/view.dart';
import 'package:equatable/equatable.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_repository/projects_repository.dart';

List<Page<dynamic>> onGenerateTopicsPages(
  ExploreFlowState state,
  List<Page<dynamic>> pages,
) {
  return [
    ExplorePage.page(),
    if (state.hasTopicSelected) EditPage.page(project: state.selectedProject),
  ];
}

class ExploreFlowState extends Equatable {
  const ExploreFlowState({
    required this.selectedProject,
  });

  factory ExploreFlowState.initial() => ExploreFlowState(
        selectedProject: Project.none(),
      );

  final Project selectedProject;

  bool get hasTopicSelected => selectedProject.isNotNone;

  @override
  List<Object?> get props => [selectedProject];

  ExploreFlowState withProjectDeselected() => ExploreFlowState.initial();

  ExploreFlowState withProjectSelected(Project selectedProject) =>
      copyWith(selectedProject: selectedProject);

  ExploreFlowState copyWith({
    Project? selectedProject,
    String? selectedQuizId,
  }) {
    return ExploreFlowState(
      selectedProject: selectedProject ?? this.selectedProject,
    );
  }
}

extension GalleryFlowControllerExtensions on FlowController<ExploreFlowState> {
  void deselectProject() => update(
        (state) => state.withProjectDeselected(),
      );

  void selectProject(Project project) => update(
        (state) => state.withProjectSelected(project),
      );
}

class ExploreFlowView extends StatefulWidget {
  const ExploreFlowView({super.key});

  @override
  State<ExploreFlowView> createState() => _ExploreFlowViewState();
}

class _ExploreFlowViewState extends State<ExploreFlowView>
    with AutomaticKeepAliveClientMixin {
  late final FlowController<ExploreFlowState> _controller;

  @override
  void initState() {
    super.initState();
    _controller = FlowController(ExploreFlowState.initial());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (_) => ExploreCubit(
        authenticationRepository: context.read<AuthenticationRepository>(),
        projectRepository: ProjectRepository(),
      )..getSharedProjects(),
      child: FlowBuilder<ExploreFlowState>(
        controller: _controller,
        onGeneratePages: onGenerateTopicsPages,
        observers: [HeroController()],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
