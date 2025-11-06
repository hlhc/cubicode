import 'package:cubicode/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum NavBarItem { topics, gallery, explore, profile }

extension NavBarItemExtensions on NavBarItem {}

final class NavBarController extends PageController {
  NavBarController({NavBarItem initialItem = NavBarItem.topics})
      : _notifier = ValueNotifier<NavBarItem>(initialItem),
        super(initialPage: initialItem.index) {
    _notifier.addListener(_listener);
  }

  final ValueNotifier<NavBarItem> _notifier;

  NavBarItem get item => _notifier.value;
  set item(NavBarItem newItem) => _notifier.value = newItem;

  void _listener() {
    jumpToPage(item.index);
  }

  @override
  void dispose() {
    _notifier.dispose();
    super.dispose();
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc;
    final theme = Theme.of(context);

    return Theme(
      data: theme.copyWith(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          context.read<NavBarController>().item = NavBarItem.values[index];
        },
        currentIndex: context
            .select((NavBarController controller) => controller.item.index),
        items: [
          BottomNavigationBarItem(
            label: loc.learnLabel,
            icon: const Icon(FontAwesomeIcons.graduationCap),
          ),
          BottomNavigationBarItem(
            label: loc.galleryLabel,
            icon: const Icon(FontAwesomeIcons.code),
          ),
          BottomNavigationBarItem(
            label: loc.exploreLabel,
            icon: const Icon(FontAwesomeIcons.compass),
          ),
          BottomNavigationBarItem(
            label: loc.profileLabel,
            icon: const Icon(FontAwesomeIcons.circleUser),
          ),
        ],
      ),
    );
  }
}
