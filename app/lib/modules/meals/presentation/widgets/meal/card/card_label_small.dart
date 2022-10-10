import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardLabelSmall extends StatelessWidget {
  const CardLabelSmall._({
    required this.color,
    required this.label,
    required this.icon,
    required this.alignment,
  });

  factory CardLabelSmall.right() {
    return const CardLabelSmall._(
      color: Colors.greenAccent,
      label: 'Like',
      icon: FaIcon(
        FontAwesomeIcons.thumbsUp,
        color: Colors.greenAccent,
        size: 14.0,
      ),
      alignment: Alignment.topCenter,
    );
  }

  factory CardLabelSmall.left() {
    return const CardLabelSmall._(
      color: Colors.redAccent,
      label: 'Dislike',
      icon: FaIcon(
        FontAwesomeIcons.thumbsDown,
        color: Colors.redAccent,
        size: 14.0,
      ),
      alignment: Alignment.topCenter,
    );
  }

  final Color color;
  final String label;
  final Widget icon;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: color,
              width: 2,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.4,
                  color: color,
                  height: 1,
                ),
              ),
              const SizedBox(width: 6.0,),
              icon,
            ],
          ),
      ),
    );
  }
}