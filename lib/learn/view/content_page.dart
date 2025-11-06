import 'package:cubicode/gen/assets.gen.dart';
import 'package:cubicode/learn/view/learn_flow.dart';
import 'package:cubicode/learn/view/topic_cover.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart' hide Step;
import 'package:topics_repository/topics_repository.dart';

class ContentPage extends StatelessWidget {
  const ContentPage._({
    required this.content,
    required this.topic,
  });

  static Page<void> page({required Topic topic, required Content content}) =>
      MaterialPage<void>(
        key: const ValueKey('content_page'),
        child: ContentPage._(
          topic: topic,
          content: content,
        ),
      );

  final Content content;
  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.flow<TopicsFlowState>().deselectContent();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: BackButton(
            onPressed: () {
              context.flow<TopicsFlowState>().deselectContent();
            },
          ),
        ),
        body: ListView(
          children: [
            TopicImage(
              topic: topic,
            ),
            TopicTitle(title: content.title),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(content.content),
            ),
            if (content.steps != null && content.steps!.isNotEmpty)
              StepList(steps: content.steps!),
          ],
        ),
      ),
    );
  }
}

class TopicImage extends StatelessWidget {
  const TopicImage({required this.topic, super.key});

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: topic.id,
      child: TopicCover(topic.image),
    );
  }
}

class TopicTitle extends StatelessWidget {
  const TopicTitle({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        title,
        style: const TextStyle(
          height: 2,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class StepList extends StatelessWidget {
  const StepList({required this.steps, super.key});

  final List<Step> steps;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          for (final step in steps)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  Assets.guide.helloWorld.values
                      .firstWhere((e) => e.keyName.endsWith(step.image))
                      .image(),
                  Text(
                    step.text,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
