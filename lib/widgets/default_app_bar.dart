import 'package:flutter/material.dart';
import 'package:ptogenius/theme/app_theme.dart';

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
            style: AppTheme.twentyEightBold.copyWith(color: AppTheme.black),
            children: [
              TextSpan(
                text: 'Genius',
                style: AppTheme.twentyEight.copyWith(color: AppTheme.black),
              )
            ]),
      ),
      actions: [
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
