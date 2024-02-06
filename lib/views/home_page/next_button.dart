import 'package:flutter/material.dart';

import '../../app_theme.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.buttonLabel,
    required this.callBack,
  });
final Function() callBack;
  final String buttonLabel;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callBack(),
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
        child: Text(
          buttonLabel,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
