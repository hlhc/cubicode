import 'package:authentication_repository/authentication_repository.dart';
import 'package:cubicode/learn/cubit/topics_cubit.dart';
import 'package:cubicode/learn/view/learn_flow.dart';
import 'package:cubicode/learn/view/topic_cover.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:topics_repository/topics_repository.dart';

class TopicPage extends StatelessWidget {
  const TopicPage._();

  static Page<void> page({required Topic topic}) => MaterialPage<void>(
        key: const ValueKey('topic_page'),
        child: Provider.value(
          value: topic,
          child: const TopicPage._(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.flow<TopicsFlowState>().deselectTopic();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: BackButton(
            onPressed: () {
              context.flow<TopicsFlowState>().deselectTopic();
            },
          ),
        ),
        body: ListView(
          children: [
            const TopicImage(),
            const TopicTitle(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Contents',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const ContentList(),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Quizzes',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const QuizList(),
          ],
        ),
      ),
    );
  }
}

class TopicImage extends StatelessWidget {
  const TopicImage({super.key});

  @override
  Widget build(BuildContext context) {
    final topicId = context.select((Topic topic) => topic.id);
    final imageName = context.select((Topic topic) => topic.image);
    return Hero(
      tag: topicId,
      child: TopicCover(imageName),
    );
  }
}

class TopicTitle extends StatelessWidget {
  const TopicTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final title = context.select((Topic topic) => topic.title);
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

class ContentList extends StatelessWidget {
  const ContentList({super.key});

  @override
  Widget build(BuildContext context) {
    final topicId = context.select((Topic topic) => topic.id);
    final content = context.select((Topic topic) => topic.content);
    return Column(
      children: [
        for (final c in content) ContentItem(content: c, topicId: topicId),
      ],
    );
  }
}

class QuizList extends StatelessWidget {
  const QuizList({super.key});

  @override
  Widget build(BuildContext context) {
    final topicId = context.select((Topic topic) => topic.id);
    final quizzes = context.select((Topic topic) => topic.quizzes);
    return Column(
      children: [
        for (final quiz in quizzes) QuizItem(quiz: quiz, topicId: topicId),
      ],
    );
  }
}

class ContentItem extends StatelessWidget {
  const ContentItem({
    required this.content,
    required this.topicId,
    super.key,
  });

  final Content content;
  final String topicId;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const ContinuousRectangleBorder(),
      elevation: 4,
      margin: const EdgeInsets.all(4),
      child: InkWell(
        onTap: () {
          context.flow<TopicsFlowState>().selectContent(content.id);
          context
              .read<AuthenticationRepository>()
              .markContentComplete(contentId: content.id, topicId: topicId);
        },
        child: ListTile(
          title: Text(
            content.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          leading: ContentBadge(contentId: content.id, topicId: topicId),
        ),
      ),
    );
  }
}

class QuizItem extends StatelessWidget {
  const QuizItem({
    required this.quiz,
    required this.topicId,
    super.key,
  });

  final Quiz quiz;
  final String topicId;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const ContinuousRectangleBorder(),
      elevation: 4,
      margin: const EdgeInsets.all(4),
      child: InkWell(
        onTap: () {
          context.flow<TopicsFlowState>().selectQuiz(quiz.id);
        },
        child: ListTile(
          title: Text(
            quiz.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          subtitle: Text(
            quiz.description,
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          leading: QuizBadge(quizId: quiz.id, topicId: topicId),
        ),
      ),
    );
  }
}

class QuizBadge extends StatelessWidget {
  const QuizBadge({
    required this.quizId,
    required this.topicId,
    super.key,
  });

  final String quizId;
  final String topicId;

  @override
  Widget build(BuildContext context) {
    final user = context.select((TopicsCubit cubit) => cubit.state.user);
    if (user.hasCompletedQuiz(quizId: quizId, topicId: topicId)) {
      return const Icon(FontAwesomeIcons.checkDouble, color: Colors.green);
    }
    return const Icon(FontAwesomeIcons.solidCircle, color: Colors.grey);
  }
}

class ContentBadge extends StatelessWidget {
  const ContentBadge({
    required this.contentId,
    required this.topicId,
    super.key,
  });

  final String contentId;
  final String topicId;

  @override
  Widget build(BuildContext context) {
    final user = context.select((TopicsCubit cubit) => cubit.state.user);
    if (user.hasCompletedContent(contentId: contentId, topicId: topicId)) {
      return const Icon(FontAwesomeIcons.checkDouble, color: Colors.green);
    }
    return const Icon(FontAwesomeIcons.solidCircle, color: Colors.grey);
  }
}
