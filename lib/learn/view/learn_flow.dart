import 'package:authentication_repository/authentication_repository.dart';
import 'package:cubicode/learn/cubit/cubit.dart';
import 'package:cubicode/learn/view/content_page.dart';
import 'package:cubicode/learn/view/topic_page.dart';
import 'package:cubicode/learn/view/topics_page.dart';
import 'package:cubicode/quiz/view/quiz_page.dart';
import 'package:equatable/equatable.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:topics_repository/topics_repository.dart';

List<Page<dynamic>> onGenerateTopicsPages(
  TopicsFlowState state,
  List<Page<dynamic>> pages, {
  required VoidCallback onQuizCompleted,
}) {
  return [
    TopicsPage.page(),
    if (state.hasTopicSelected) TopicPage.page(topic: state.selectedTopic),
    if (state.hasContentSelected)
      ContentPage.page(
        topic: state.selectedTopic,
        content: state.selectedTopic.content.firstWhere(
          (e) => e.id == state.selectedContentId,
        ),
      ),
    if (state.hasQuizSelected)
      QuizPage.page(
        quizId: state.selectedQuizId,
        onQuizCompleted: () {},
      ),
  ];
}

class TopicsFlowState extends Equatable {
  const TopicsFlowState._({
    this.selectedTopic = Topic.none,
    this.selectedQuizId = '',
    this.selectedContentId = '',
  });

  const TopicsFlowState.initial() : this._();

  final Topic selectedTopic;
  final String selectedQuizId;
  final String selectedContentId;

  bool get hasTopicSelected => selectedTopic.isNotNone;
  bool get hasQuizSelected => selectedQuizId.isNotEmpty;
  bool get hasContentSelected => selectedContentId.isNotEmpty;

  @override
  List<Object?> get props => [selectedTopic, selectedQuizId, selectedContentId];

  TopicsFlowState withTopicDeselected() => const TopicsFlowState.initial();

  TopicsFlowState withQuizDeselected() => copyWith(selectedQuizId: '');

  TopicsFlowState withContentDeselected() => copyWith(selectedContentId: '');

  TopicsFlowState withTopicSelected(Topic selectedTopic) =>
      copyWith(selectedTopic: selectedTopic);

  TopicsFlowState withQuizSelected(String selectedQuizId) =>
      copyWith(selectedQuizId: selectedQuizId);

  TopicsFlowState withContentSelected(String selectedContentId) =>
      copyWith(selectedContentId: selectedContentId);

  TopicsFlowState copyWith({
    Topic? selectedTopic,
    String? selectedQuizId,
    String? selectedContentId,
  }) {
    return TopicsFlowState._(
      selectedTopic: selectedTopic ?? this.selectedTopic,
      selectedQuizId: selectedQuizId ?? this.selectedQuizId,
      selectedContentId: selectedContentId ?? this.selectedContentId,
    );
  }
}

extension TopicsFlowControllerExtensions on FlowController<TopicsFlowState> {
  void deselectTopic() => update(
        (state) => state.withTopicDeselected(),
      );

  void selectTopic(Topic topic) => update(
        (state) => state.withTopicSelected(topic),
      );

  void selectQuiz(String quizId) => update(
        (state) => state.withQuizSelected(quizId),
      );

  void deselectQuiz() => update(
        (state) => state.withQuizDeselected(),
      );

  void deselectContent() => update(
        (state) => state.withContentDeselected(),
      );

  void selectContent(String contentId) => update(
        (state) => state.withContentSelected(contentId),
      );
}

class TopicsFlowView extends StatefulWidget {
  const TopicsFlowView({super.key});

  @override
  State<TopicsFlowView> createState() => _TopicsFlowViewState();
}

class _TopicsFlowViewState extends State<TopicsFlowView>
    with AutomaticKeepAliveClientMixin {
  late final FlowController<TopicsFlowState> _controller;

  @override
  void initState() {
    super.initState();
    _controller = FlowController(const TopicsFlowState.initial());
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
      create: (_) => TopicsCubit(
        authenticationRepository: context.read<AuthenticationRepository>(),
        topicsRepository: TopicsRepository(),
      )..getTopics(),
      child: FlowBuilder<TopicsFlowState>(
        controller: _controller,
        onGeneratePages: (state, pages) => onGenerateTopicsPages(
          state,
          pages,
          onQuizCompleted: _controller.deselectTopic,
        ),
        observers: [HeroController()],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
