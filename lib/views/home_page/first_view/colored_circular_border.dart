import 'package:flutter/material.dart';

import 'dart:math';

import 'rotated_minus_icon.dart';

class ColoredCircularBorder extends StatelessWidget {
  const ColoredCircularBorder({Key? key}) : super(key: key);

  final double borderWidth = 10;
  final double angleInDegrees = 125;
  final Color activeColor = const Color(0xFFD08C76);
  final Color inActiveColor = const Color(0xFFFDE9E0);
  final widthAndHeight = 125.0;

  @override
  Widget build(BuildContext context) {
    final diameter = 2 * widthAndHeight - 25 * 2;
    final double shiftedOrigin = widthAndHeight - 25 + borderWidth / 2;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: SizedBox(
            height: diameter,
            width: diameter,
            child: CustomPaint(
              painter: CircleBorderPainter(
                borderWidth: borderWidth,
                angleInDegrees: angleInDegrees,
                color1: activeColor,
                color2: inActiveColor,
              ),
            ),
          ),
        ),
        RotatedMinusIcon(
          shiftedOrigin: shiftedOrigin,
          diameter: diameter,
          angleInDegrees: angleInDegrees,
        )
      ],
    );
  }
}

class CircleBorderPainter extends CustomPainter {
  final double borderWidth;
  final double angleInDegrees;
  final Color color1;
  final Color color2;

  CircleBorderPainter({
    required this.borderWidth,
    required this.angleInDegrees,
    required this.color1,
    required this.color2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.shortestSide / 2;
    final Offset center = size.center(Offset.zero);

    final Paint borderPaint1 = Paint()
      ..color = color1
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final Paint borderPaint2 = Paint()
      ..color = color2
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    const double startAngle = -pi / 2; // Start at the top
    final double sweepAngle = 2 * 2 * pi * angleInDegrees / 360;

    final double middleAngle = startAngle + sweepAngle / 2;

    // Draw first half of the border with activeColor
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - borderWidth / 2),
      startAngle,
      middleAngle - startAngle,
      false,
      borderPaint1,
    );

    // Draw second half of the border with inActiveColor
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - borderWidth / 2),
      middleAngle,
      startAngle + 2 * pi - middleAngle,
      false,
      borderPaint2,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
