import 'package:cubicode/explore/view/view.dart';
import 'package:cubicode/gallery/view/gallery_flow.dart';
import 'package:cubicode/playground/playground.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:projects_repository/projects_repository.dart';
import 'package:provider/provider.dart';

class EditPage extends StatelessWidget {
  const EditPage._();

  static Page<void> page({required Project project}) => MaterialPage<void>(
        key: const ValueKey('edit_page'),
        fullscreenDialog: true,
        child: Provider.value(
          value: project,
          child: const EditPage._(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        try {
          context.flow<GalleryFlowState>().deselectProject();
        } catch (e) {
          //
        }
        try {
          context.flow<ExploreFlowState>().deselectProject();
        } catch (e) {
          //
        }
        return false;
      },
      child: const PlaygroundPage(),
    );
  }
}
