import 'package:cubicode/explore/cubit/explore_cubit.dart';
import 'package:cubicode/explore/view/view.dart';
import 'package:cubicode/gallery/view/project_cover.dart';
import 'package:cubicode/l10n/l10n.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_repository/projects_repository.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage._();

  static Page<dynamic> page() => const MaterialPage<void>(
        key: ValueKey('gallery_page'),
        child: ExplorePage._(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       context.flow<GalleryFlowState>().selectProject(
        //             Project.none().copyWith(
        //               title: 'Untitled',
        //               user: context.read<AppBloc>().state.user.id,
        //             ),
        //           );
        //     },
        //     icon: const Icon(Icons.add),
        //   ),
        // ],
        actions: [
          IconButton(
            onPressed: () async {
              await context.read<ExploreCubit>().getSharedProjects();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: const TopicsGrid(),
    );
  }
}

class TopicsGrid extends StatelessWidget {
  const TopicsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: BlocBuilder<ExploreCubit, ExploreState>(
        builder: (_, state) {
          if (state.isLoaded) {
            final projects = state.projects;
            const insetsValue = 20.0;
            const insets = EdgeInsets.all(insetsValue);
            const spacing = insetsValue / 2;
            return GridView.count(
              primary: false,
              padding: insets,
              crossAxisSpacing: spacing,
              mainAxisSpacing: spacing,
              crossAxisCount: 2,
              children: [
                for (final project in projects) ProjectItem(project: project),
              ],
            );
          }
          if (state.isEmpty) {
            return Center(child: Text(context.loc.noExploreMessage));
          }
          if (state.isFailure) {
            return Center(child: Text(context.loc.getTopicsFailureMessage));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      onRefresh: () async {
        await context.read<ExploreCubit>().getProjects();
      },
    );
  }
}

class ProjectItem extends StatelessWidget {
  const ProjectItem({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: project.id!,
      child: Card(
        clipBehavior: Clip.antiAlias,
        surfaceTintColor: Color(project.color).withAlpha(0xff),
        child: InkWell(
          onTap: () => context.flow<ExploreFlowState>().selectProject(project),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ProjectCover('default_cover.png'),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 16,
                        ),
                        child: Text(
                          project.title,
                          style: const TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
