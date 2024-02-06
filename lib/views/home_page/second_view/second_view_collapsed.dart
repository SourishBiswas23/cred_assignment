import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../app_theme.dart';

class SecondViewCollapsed extends StatelessWidget {
  const SecondViewCollapsed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppTheme.viewBorderRadius),
          topRight: Radius.circular(AppTheme.viewBorderRadius),
        ),
        color: AppTheme.secondViewColor,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                'EMI',
                style: AppTheme.collapsedViewTitleStyle,
              ),
              Text(
                '₹4,247 /mo',
                style: AppTheme.collapsedViewSubTitleStyle,
              )
            ],
          ),
          Column(
            children: [
              Text(
                'duration',
                style: AppTheme.collapsedViewTitleStyle,
              ),
              Text(
                '12 months',
                style: AppTheme.collapsedViewSubTitleStyle,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: FaIcon(
              FontAwesomeIcons.chevronDown,
              color: Colors.white,
              size: 15,
            ),
          )
        ],
      ),
    );
  }
}
