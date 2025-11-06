import 'package:blocky/blocky.dart';
import 'package:cubicode/explore/view/view.dart';
import 'package:cubicode/gallery/cubit/project_cubit.dart';
import 'package:cubicode/gallery/view/gallery_flow.dart';
import 'package:cubicode/l10n/l10n.dart';
import 'package:cubicode/learn/view/learn_flow.dart';
import 'package:cubicode/playground/cubit/playground_cubit.dart';
import 'package:cubicode/playground/widgets/blocky_block.dart';
import 'package:cubicode/playground/widgets/blocky_gallery.dart';
import 'package:cubicode/quiz/cubit/quiz_cubit.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projects_repository/projects_repository.dart';
import 'package:xterm/xterm.dart';

class PlaygroundView extends StatefulWidget {
  const PlaygroundView({super.key});

  @override
  State<PlaygroundView> createState() => _PlaygroundViewState();
}

class _PlaygroundViewState extends State<PlaygroundView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late final Terminal _terminal;
  late final Runtime _runtime;
  List<String> _output = [];

  @override
  void initState() {
    super.initState();
    _terminal = Terminal();
    _runtime = Runtime()
      ..listen((str) {
        _terminal.write(str);
        _output.add(str);
      });
    try {
      final project = context.read<Project?>();
      if (project != null) {
        context.read<PlaygroundCubit>().restore(project);
      }
    } catch (e) {
      //
    }

    try {
      final quiz = context.read<QuizCubit>().state.quiz;
      context.read<PlaygroundCubit>().useQuiz(quiz);
    } catch (e) {
      //
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaygroundCubit, PlaygroundState>(
      builder: (context, state) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: Drawer(
            shape: const RoundedRectangleBorder(),
            child: TerminalView(_terminal, readOnly: true),
          ),
          appBar: AppBar(
            leading: BackButton(
              onPressed: () {
                try {
                  if (context.read<PlaygroundCubit>().state.quiz != null) {
                    context.flow<TopicsFlowState>().deselectQuiz();
                  } else {
                    context.flow<GalleryFlowState>().deselectProject();
                  }
                } catch (e) {
                  //
                }
                try {
                  context.flow<ExploreFlowState>().deselectProject();
                } catch (e) {
                  //
                }
              },
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: TextFormField(
              initialValue: state.title,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Project name',
              ),
              onChanged: (value) {
                context.read<PlaygroundCubit>().updateName(value);
              },
              readOnly: state.quiz != null || state.readonly,
            ),
            actions: [
              if (state.quiz == null && !state.readonly)
                IconButton(
                  onPressed: () {
                    context.read<PlaygroundCubit>().save();
                    try {
                      context.read<ProjectCubit>().getProjects();
                    } catch (e) {
                      //
                    }
                  },
                  icon: const Icon(Icons.save),
                ),
              if (state.quiz == null && state.readonly)
                IconButton(
                  onPressed: () {
                    context.read<PlaygroundCubit>().fork();
                    try {
                      context.read<ProjectCubit>().getProjects();
                    } catch (e) {
                      //
                    }
                  },
                  icon: const Icon(FontAwesomeIcons.codeFork),
                ),
              if (_runtime.isRunning)
                IconButton(
                  onPressed: () {
                    _runtime.abort();
                  },
                  icon: const Icon(Icons.play_arrow),
                ),
              if (_runtime.isNotRunning)
                IconButton(
                  onPressed: () async {
                    final state = context.read<PlaygroundCubit>().state;

                    if (mounted && state.readonly) {
                      final r = await showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Warning!'),
                          content: const Text(
                            'This program is made by someone else. '
                            'Are you sure you want to run it?',
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'y'),
                              child: const Text('Yes, continue'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'n'),
                              child: const Text('No, stay safe'),
                            ),
                          ],
                        ),
                      );

                      if (r == 'n') {
                        return; // do nothing
                      }
                      // else continue
                    }

                    _output = [];
                    _terminal.buffer.clear();
                    _terminal.buffer.setCursor(0, 0);
                    final program = state.program;
                    scaffoldKey.currentState!.openEndDrawer();
                    await _runtime.execute(program);
                    if (state.quiz != null && mounted) {
                      final result = state.quiz?.answer.map((e) {
                        return e.terminalBuffer.trim() == _output.join().trim();
                      }).fold(
                        true,
                        (previousValue, element) => previousValue && element,
                      );
                      if ((result ?? false) && context.mounted) {
                        context.read<QuizCubit>().markQuizCompleted(
                              topicId: state.quiz!.topic,
                              quizId: state.quiz!.id,
                            );
                        if (context.mounted) {
                          await showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Congratulations!'),
                              content: const Text(
                                'You have completed the quiz! Go back to the '
                                'topic page to continue learning, or stay here '
                                'to play around with the code.',
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                        // context.flow<TopicsFlowState>().deselectQuiz();
                      }
                    }
                  },
                  icon: const Icon(Icons.play_arrow),
                ),
              IconButton(
                onPressed: () {
                  if (scaffoldKey.currentState!.isEndDrawerOpen) {
                    scaffoldKey.currentState!.closeEndDrawer();
                  } else {
                    scaffoldKey.currentState!.openEndDrawer();
                  }
                },
                icon: const Icon(Icons.terminal),
              ),
              PopupMenuButton<String>(
                onSelected: (String v) async {
                  if (v == 'delete') {
                    if (context.mounted) {
                      await context.read<PlaygroundCubit>().delete();
                    }
                    if (context.mounted && state.quiz != null) {
                      context.flow<GalleryFlowState>().deselectProject();
                    }
                    if (context.mounted) {
                      await context.read<ProjectCubit>().getProjects();
                    }
                  } else if (v == 'share') {
                    if (context.mounted) {
                      await context.read<PlaygroundCubit>().share();
                    }
                  } else if (v == 'private') {
                    if (context.mounted) {
                      await context.read<PlaygroundCubit>().unshare();
                    }
                  }
                },
                icon: const Icon(Icons.more_vert),
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem<String>(
                      value: 'delete',
                      child: ListTile(
                        leading: const Icon(Icons.delete),
                        title: Text(context.loc.delete),
                      ),
                    ),
                    if (!state.shared && state.quiz == null)
                      const PopupMenuItem<String>(
                        value: 'share',
                        child: ListTile(
                          leading: Icon(Icons.share),
                          title: Text('Set to Public'),
                        ),
                      ),
                    if (state.shared && state.quiz == null)
                      const PopupMenuItem<String>(
                        value: 'private',
                        child: ListTile(
                          leading: Icon(Icons.lock),
                          title: Text('Set to Private'),
                        ),
                      ),
                  ];
                },
              ),
            ],
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  if (state.quiz != null)
                    Card(
                      child: ListTile(
                        title: Text(state.quiz?.title ?? ''),
                        subtitle: Text(state.quiz?.description ?? ''),
                      ),
                    ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: ReorderableListView.builder(
                        itemCount: state.program.blocks.length,
                        itemBuilder: (context, index) => BlockyBlockWidget(
                          key: ValueKey(
                            'blockyBlock${state.program.blocks[index].id}',
                          ),
                          block: state.program.blocks[index],
                          blockIndex: index,
                          state: state,
                          indent: state.getIndent(index),
                        ),
                        onReorder: (int oldIndex, int newIndex) {
                          // TODO(blocks): move check indentation to blocky for for and while loop
                          setState(() {
                            if (oldIndex < newIndex) {
                              newIndex -= 1;
                            }
                            final item = context
                                .read<PlaygroundCubit>()
                                .removeBlockAt(oldIndex);
                            context
                                .read<PlaygroundCubit>()
                                .insertBlock(item, newIndex);
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const BlockyGallery(),
            ],
          ),
        );
      },
    );
  }
}
