import 'package:flutter/material.dart';

import '../../app_theme.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: AppTheme.buttonColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppTheme.buttonBorderRadius),
            topRight: Radius.circular(AppTheme.buttonBorderRadius),
          ),
        ),
        alignment: Alignment.center,
        child: const Text(
          'Button Text',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
