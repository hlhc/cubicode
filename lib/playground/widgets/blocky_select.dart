import 'package:blocky/blocky.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BlockySelect extends StatelessWidget {
  const BlockySelect({required this.def, required this.onClick, super.key});

  final BlockyDef def;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onClick,
        child: ListTile(
          leading: const Icon(FontAwesomeIcons.code),
          title: Text(def.title),
          trailing: IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text(def.message)),
                );
            },
            icon: const Icon(Icons.info),
          ),
        ),
      ),
    );
  }
}
