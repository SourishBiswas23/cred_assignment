import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstPlan extends StatelessWidget {
  const FirstPlan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, right: 20),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF44343E),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFF3E2F38),
              shape: BoxShape.circle,
            ),
            child: FaIcon(
              FontAwesomeIcons.check,
              size: 20,
              color: Colors.brown.shade100,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text(
                '₹4,247 ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '/mo',
                style: TextStyle(
                  color: Colors.brown.shade300,
                ),
              ),
            ],
          ),
          Text(
            'for 12 months',
            style: TextStyle(
              color: Colors.brown.shade200,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'See calculations',
            style: TextStyle(
              color: Colors.brown.shade300,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.brown.shade300,
            ),
          )
        ],
      ),
    );
  }
}
