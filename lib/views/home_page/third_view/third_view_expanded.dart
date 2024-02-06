import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../app_theme.dart';

class ThirdViewExpanded extends StatelessWidget {
  const ThirdViewExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppTheme.viewBorderRadius),
          topRight: Radius.circular(AppTheme.viewBorderRadius),
        ),
        color: AppTheme.thirdViewColor,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'where should we send the money?',
            style: AppTheme.expandedViewTitleStyle,
          ),
          const SizedBox(height: 10),
          const Text(
            'amount will be credited to this bank account, EMI will also be debited from this account',
            style: AppTheme.expandedViewSubTitleStyle,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/hdfc_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HDFC Bank',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '50100117009192',
                        style: TextStyle(color: Color(0xFF5A5D6C)),
                      )
                    ],
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color(0xFF3C4256),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  FontAwesomeIcons.check,
                  color: AppTheme.iconColor,
                  size: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: const ShapeDecoration(
              shape: StadiumBorder(
                side: BorderSide(width: 1, color: AppTheme.viewTextColor),
              ),
            ),
            child: const Text(
              'Change Account',
              style: TextStyle(color: AppTheme.viewTextColor),
            ),
          )
        ],
      ),
    );
  }
}
