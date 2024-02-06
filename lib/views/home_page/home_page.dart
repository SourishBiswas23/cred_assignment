import 'package:flutter/material.dart';

import '../../app_theme.dart';
import 'first_view/first_view_collapsed.dart';
import 'first_view/first_view_expanded.dart';
import 'home_page_app_bar.dart';
import 'next_button.dart';
import 'second_view/second_view_collapsed.dart';
import 'second_view/second_view_expanded.dart';
import 'third_view/third_view_expanded.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Widget> expandedViews = const [
    FirstViewExpanded(),
    SecondViewExpanded(),
    ThirdViewExpanded()
  ];

  final List<Widget> collapsedViews = const [
    FirstViewCollapsed(),
    SecondViewCollapsed(),
  ];

  final List<String> ctaLabels = const [
    'Proceed to EMI selection',
    'Select your bank account',
    'Tap for 1-click KYC',
  ];

  int selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: const HomePageAppBar(),
      body: Stack(
        children: [
          ...List.generate(selectedIndex + 1, (index) {
            final child = index == selectedIndex
                ? expandedViews[index]
                : collapsedViews[index];
            return Positioned(
              top: 75.0 * index,
              left: 0,
              right: 0,
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  if (index != selectedIndex) {
                    setState(() {
                      selectedIndex = index;
                    });
                  }
                },
                child: child,
              ),
            );
          }),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: NextButton(
              buttonLabel: ctaLabels[selectedIndex],
              callBack: () {
                if (selectedIndex != expandedViews.length - 1) {
                  setState(() {
                    selectedIndex++;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
