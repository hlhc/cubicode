import 'package:cubicode/explore/view/view.dart';
import 'package:cubicode/gallery/view/gallery_flow.dart';
import 'package:cubicode/home/home.dart';
import 'package:cubicode/learn/learn.dart';
import 'package:cubicode/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (_) => NavBarController(),
      child: const Scaffold(
        // appBar: AppBar(
        //   leading: Padding(
        //     padding: const EdgeInsets.only(left: 8),
        //     child: PopupMenuButton<String>(
        //       onSelected: (String v) {
        //         if (v == 'logout') {
        //           context.read<AppBloc>().add(const AppLogoutRequested());
        //         }
        //       },
        //       child: Avatar(photo: user.photo),
        //       itemBuilder: (BuildContext context) {
        //         return [
        //           PopupMenuItem<String>(
        //             value: 'logout',
        //             child: ListTile(
        //               leading: const Icon(Icons.exit_to_app),
        //               title: Text(context.loc.logOutButtonLabel),
        //             ),
        //           ),
        //         ];
        //       },
        //     ),
        //   ),
        // ),
        body: _HomeBody(),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: context.watch<NavBarController>(),
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        TopicsFlowView(),
        GalleryFlowView(),
        ExploreFlowView(),
        ProfileView(),
      ],
    );
  }
}
