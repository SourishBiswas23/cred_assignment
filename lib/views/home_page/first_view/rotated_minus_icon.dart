import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RotatedMinusIcon extends StatelessWidget {
  const RotatedMinusIcon({
    super.key,
    required this.shiftedOrigin,
    required this.diameter,
    required this.angleInDegrees,
  });

  final double shiftedOrigin;
  final double diameter;
  final double angleInDegrees;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: shiftedOrigin +
          (diameter / 2) * cos((angleInDegrees - 90) * (pi / 180)) -
          5,
      top: shiftedOrigin +
          (diameter / 2) * sin((angleInDegrees - 90) * (pi / 180)) -
          5,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: const Color(0xFF38282E),
          shape: BoxShape.circle,
          border: Border.all(
            width: 5,
            color: const Color(0xFFF5BBAC),
          ),
        ),
        alignment: Alignment.center,
        child: Transform.rotate(
          angle: pi / 8,
          child: FaIcon(
            FontAwesomeIcons.minus,
            color: Colors.green.shade200,
            size: 20,
          ),
        ),
      ),
    );
  }
}
