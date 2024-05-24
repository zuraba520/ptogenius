import 'package:flutter/material.dart';
import 'package:ptogenius/widgets/nodes/project.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RichText(
        text: TextSpan(
            text: 'PTO',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                  text: 'Genius',
                  style: TextStyle(
                    fontSize: 24.0,
                  ))
            ]),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.dehaze_rounded),
          onPressed: () {
            debugPrint('Do nothing, there is no actions, just UI');
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
