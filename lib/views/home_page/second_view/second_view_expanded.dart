import 'package:flutter/material.dart';

import '../../../app_theme.dart';
import 'first_plan.dart';
import 'second_plan.dart';
import 'third_plan.dart';

class SecondViewExpanded extends StatelessWidget {
  const SecondViewExpanded({super.key});

  final List<Widget> plans = const [FirstPlan(), SecondPlan(), ThirdPlan()];

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'how do you wish to repay?',
            style: AppTheme.expandedViewTitleStyle,
          ),
          const SizedBox(height: 10),
          const Text(
            'choose one of our recommended plans or use your own',
            style: AppTheme.expandedViewSubTitleStyle,
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              itemCount: plans.length,
              itemBuilder: (context, index) {
                return plans[index];
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: const ShapeDecoration(
              shape: StadiumBorder(
                side: BorderSide(width: 1, color: AppTheme.viewTextColor),
              ),
            ),
            child: const Text(
              'Create your own plan',
              style: TextStyle(color: AppTheme.viewTextColor),
            ),
          )
        ],
      ),
    );
  }
}
