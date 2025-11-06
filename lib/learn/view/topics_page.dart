import 'package:cubicode/l10n/l10n.dart';
import 'package:cubicode/learn/cubit/topics_cubit.dart';
import 'package:cubicode/learn/view/learn_flow.dart';
import 'package:cubicode/learn/view/topic_cover.dart';
import 'package:cubicode/shared/widgets/animated_progress_bar.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:topics_repository/topics_repository.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage._();

  static Page<dynamic> page() => const MaterialPage<void>(
        key: ValueKey('topics_page'),
        child: TopicsPage._(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.learnLabel),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: TopicsGrid(),
      ),
    );
  }
}

class TopicsGrid extends StatelessWidget {
  const TopicsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopicsCubit, TopicsState>(
      builder: (_, state) {
        if (state.isLoaded) {
          final topics = state.topics;
          const insetsValue = 20.0;
          const spacing = insetsValue / 2;
          return ListView.separated(
            itemCount: topics.length,
            separatorBuilder: (context, index) =>
                const SizedBox(height: spacing),
            itemBuilder: (context, index) => TopicItem(topic: topics[index]),
          );
        }
        if (state.isEmpty) {
          return Center(child: Text(context.loc.noTopicsMessage));
        }
        if (state.isFailure) {
          return Center(child: Text(context.loc.getTopicsFailureMessage));
        }
        return const CircularProgressIndicator();
      },
    );
  }
}

class TopicItem extends StatelessWidget {
  const TopicItem({required this.topic, super.key});

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return Hero(
      flightShuttleBuilder: (
        BuildContext flightContext,
        Animation<double> animation,
        HeroFlightDirection flightDirection,
        BuildContext fromHeroContext,
        BuildContext toHeroContext,
      ) {
        return SingleChildScrollView(
          child: fromHeroContext.widget,
        );
      },
      tag: topic.id,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            context.flow<TopicsFlowState>().selectTopic(topic);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopicCover(topic.image),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        topic.title,
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
              const SizedBox(height: 10),
              TopicProgress(
                topic: topic,
                quizCount: context.select(
                  (TopicsCubit cubit) =>
                      cubit.state.user.totalCompletedQuizzesByTopic(topic.id),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopicProgress extends StatelessWidget {
  const TopicProgress({
    required this.topic,
    required this.quizCount,
    super.key,
  });

  final Topic topic;
  final int quizCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        Text(
          topic.progress(quizCount),
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Expanded(
          child: AnimatedProgressBar.mini(
            value: topic.completedProgress(quizCount),
          ),
        ),
      ],
    );
  }
}
