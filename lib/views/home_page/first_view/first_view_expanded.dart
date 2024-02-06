import 'package:flutter/material.dart';

import '../../../app_theme.dart';
import 'colored_circular_border.dart';

class FirstViewExpanded extends StatelessWidget {
  const FirstViewExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppTheme.viewBorderRadius),
          topRight: Radius.circular(AppTheme.viewBorderRadius),
        ),
        color: AppTheme.firstViewColor,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'nikunj, how much do you need?',
            style: AppTheme.expandedViewTitleStyle,
          ),
          const SizedBox(height: 10),
          const Text(
            'move the dial and set any amount you need upto ₹ 487,891',
            style: AppTheme.expandedViewSubTitleStyle,
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    const ColoredCircularBorder(),
                    Column(
                      children: [
                        const Text(
                          'credit amount',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: '₹ ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: '1,50,000',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.dotted,
                                  decorationColor: Colors.grey.shade500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '@1.04% monthly',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.green.shade300,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'stash is instant. money will be ceredited within seconds',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
