import 'package:cred_assignment/views/home_page/first_view/first_view_collapsed.dart';
import 'package:cred_assignment/views/home_page/second_view/second_view_collapsed.dart';
import 'package:cred_assignment/views/home_page/third_view/third_view_expanded.dart';
import 'package:flutter/material.dart';

import '../../app_theme.dart';
import 'home_page_app_bar.dart';
import 'next_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: HomePageAppBar(),
      body: Stack(
        children: [
          Positioned(
            top: 75 * 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: FirstViewCollapsed(),
          ),
          Positioned(
            top: 75 * 1,
            left: 0,
            right: 0,
            bottom: 0,
            child: SecondViewCollapsed(),
          ),
          Positioned(
            top: 75 * 2,
            left: 0,
            right: 0,
            bottom: 0,
            child: ThirdViewExpanded(),
          ),
          NextButton(),
        ],
      ),
    );
  }
}
