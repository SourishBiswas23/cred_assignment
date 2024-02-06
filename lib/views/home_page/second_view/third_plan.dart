import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThirdPlan extends StatelessWidget {
  const ThirdPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, right: 20),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF59698B),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white),
              shape: BoxShape.circle,
            ),
            child: const FaIcon(
              FontAwesomeIcons.check,
              size: 20,
              color: Colors.transparent,
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Text(
                '₹4,247 ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '/mo',
                style: TextStyle(
                  color: Color(0xFF889AB2),
                ),
              ),
            ],
          ),
          const Text(
            'for 9 months',
            style: TextStyle(
              color: Color(0xFFC2C6E0),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'See calculations',
            style: TextStyle(
              color: Color(0xFF889AB2),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Color(0xFF889AB2),
            ),
          )
        ],
      ),
    );
  }
}
