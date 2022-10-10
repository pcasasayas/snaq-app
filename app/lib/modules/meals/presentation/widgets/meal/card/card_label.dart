import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const _labelAngle = math.pi / 2 * 0.2;

class CardLabel extends StatelessWidget {
  const CardLabel._({
    required this.color,
    required this.label,
    required this.icon,
    required this.angle,
    required this.alignment,
  });

  factory CardLabel.right() {
    return const CardLabel._(
      color: Colors.greenAccent,
      label: 'Like',
      icon: FaIcon(
        FontAwesomeIcons.thumbsUp,
        color: Colors.greenAccent,
      ),
      angle: -_labelAngle,
      alignment: Alignment.topLeft,
    );
  }


  factory CardLabel.left() {
    return const CardLabel._(
      color: Colors.redAccent,
      label: 'Dislike',
      icon: FaIcon(
        FontAwesomeIcons.thumbsDown,
        color: Colors.redAccent,
      ),
      angle: _labelAngle,
      alignment: Alignment.topRight,
    );
  }

  final Color color;
  final String label;
  final Widget icon;
  final double angle;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: const EdgeInsets.symmetric(
        vertical: 36,
        horizontal: 36,
      ),
      child: Transform.rotate(
        angle: angle,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: color,
              width: 4,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.all(6),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.4,
                  color: color,
                  height: 1,
                ),
              ),
              const SizedBox(width: 12.0,),
              icon,
            ],
          ),
        ),
      ),
    );
  }
}