import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondPlan extends StatelessWidget {
  const SecondPlan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF7C7390),
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
                        color: Color(0xFFA69DB8),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'for 9 months',
                  style: TextStyle(
                    color: Color(0xFFCBC3D8),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'See calculations',
                  style: TextStyle(
                    color: Color(0xFFA69DB8),
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dotted,
                    decorationColor: Color(0xFFA69DB8),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Text(
              'recommended',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
