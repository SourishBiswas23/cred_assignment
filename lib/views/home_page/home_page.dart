import 'package:flutter/material.dart';

import '../../app_theme.dart';
import 'first_view/first_view_expanded.dart';
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
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: FirstViewExpanded(),
          ),
          NextButton(),
        ],
      ),
    );
  }
}
