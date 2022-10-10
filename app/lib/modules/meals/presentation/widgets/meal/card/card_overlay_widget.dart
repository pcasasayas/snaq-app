import 'dart:math' as math;

import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

import 'card_label.dart';

class CardOverlayWidget extends BaseStatelessWidget {
  const CardOverlayWidget({
    required this.direction,
    required this.swipeProgress,
    super.key,
  });

  final SwipeDirection direction;
  final double swipeProgress;

  @override
  Widget build(BuildContext context) {
    final opacity = math.min<double>(swipeProgress, 1);

    final isRight = direction == SwipeDirection.right;
    final isLeft = direction == SwipeDirection.left;
    return Stack(
      children: [
        Opacity(
          opacity: isRight ? opacity : 0,
          child: CardLabel.right(),
        ),
        Opacity(
          opacity: isLeft ? opacity : 0,
          child: CardLabel.left(),
        ),
      ],
    );
  }
}