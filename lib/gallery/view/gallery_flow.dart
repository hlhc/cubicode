import 'package:authentication_repository/authentication_repository.dart';
import 'package:cubicode/edit/view/edit_page.dart';
import 'package:cubicode/gallery/cubit/project_cubit.dart';
import 'package:cubicode/gallery/view/gallery_page.dart';
import 'package:equatable/equatable.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_repository/projects_repository.dart';

List<Page<dynamic>> onGenerateTopicsPages(
  GalleryFlowState state,
  List<Page<dynamic>> pages,
) {
  return [
    GalleryPage.page(),
    if (state.hasTopicSelected) EditPage.page(project: state.selectedProject),
  ];
}

class GalleryFlowState extends Equatable {
  const GalleryFlowState({
    required this.selectedProject,
  });

  factory GalleryFlowState.initial() => GalleryFlowState(
        selectedProject: Project.none(),
      );

  final Project selectedProject;

  bool get hasTopicSelected => selectedProject.isNotNone;

  @override
  List<Object?> get props => [selectedProject];

  GalleryFlowState withProjectDeselected() => GalleryFlowState.initial();

  GalleryFlowState withProjectSelected(Project selectedProject) =>
      copyWith(selectedProject: selectedProject);

  GalleryFlowState copyWith({
    Project? selectedProject,
    String? selectedQuizId,
  }) {
    return GalleryFlowState(
      selectedProject: selectedProject ?? this.selectedProject,
    );
  }
}

extension GalleryFlowControllerExtensions on FlowController<GalleryFlowState> {
  void deselectProject() => update(
        (state) => state.withProjectDeselected(),
      );

  void selectProject(Project project) => update(
        (state) => state.withProjectSelected(project),
      );
}

class GalleryFlowView extends StatefulWidget {
  const GalleryFlowView({super.key});

  @override
  State<GalleryFlowView> createState() => _GalleryFlowViewState();
}

class _GalleryFlowViewState extends State<GalleryFlowView>
    with AutomaticKeepAliveClientMixin {
  late final FlowController<GalleryFlowState> _controller;

  @override
  void initState() {
    super.initState();
    _controller = FlowController(GalleryFlowState.initial());
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
      create: (_) => ProjectCubit(
        authenticationRepository: context.read<AuthenticationRepository>(),
        projectRepository: ProjectRepository(),
      )..getProjects(),
      child: FlowBuilder<GalleryFlowState>(
        controller: _controller,
        onGeneratePages: onGenerateTopicsPages,
        observers: [HeroController()],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
