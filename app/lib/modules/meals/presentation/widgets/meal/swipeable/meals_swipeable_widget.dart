import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:app/modules/meals/presentation/widgets/meal/card/card_overlay_widget.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

import '../card/meal_card_widget.dart';

class MealsSwipeableWidget extends BaseStatelessWidget {
  const MealsSwipeableWidget({
    super.key,
    this.controller,
    this.meals = const [],
    required this.onMealSelected,
    required this.onMealDislike,
    required this.onMealLike,
  });

  final SwipableStackController? controller;
  final List<MealModel> meals;
  final Function(MealModel) onMealSelected;
  final Function(MealModel) onMealDislike;
  final Function(MealModel) onMealLike;

  @override
  Widget build(BuildContext context) {
    return SwipableStack(
      detectableSwipeDirections: const {
        SwipeDirection.right,
        SwipeDirection.left,
      },
      allowVerticalSwipe: false,
      controller: controller,
      stackClipBehaviour: Clip.none,
      horizontalSwipeThreshold: 0.8,
      verticalSwipeThreshold: 0.8,
      itemCount: meals.length,
      overlayBuilder: (context, swipeProperty) {
        return CardOverlayWidget(
          swipeProgress: swipeProperty.swipeProgress,
          direction: swipeProperty.direction,
        );
      },
      builder: (context, properties) {
        return Stack(
          children: [
            MealCardWidget(
              onMealSelected: onMealSelected,
              meal: meals[properties.index],
            ),
          ],
        );
      },
      onWillMoveNext:(index, swipeDirection) {
        return meals.length > index;
      },
      onSwipeCompleted: (index, direction) {
        if (meals.length > index) {
          switch (direction) {
            case SwipeDirection.right: {
              onMealLike.call(meals[index]);
              return;
            }
            case SwipeDirection.left: {
              onMealDislike.call(meals[index]);
              return;
            }
            default:
          }
        }
      },
    );
  }
}