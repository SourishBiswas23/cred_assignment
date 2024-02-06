import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app_theme.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: AppTheme.iconBackground,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                FontAwesomeIcons.xmark,
                color: AppTheme.iconColor,
                size: 15,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: AppTheme.iconBackground,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                FontAwesomeIcons.question,
                color: AppTheme.iconColor,
                size: 15,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppTheme.backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
