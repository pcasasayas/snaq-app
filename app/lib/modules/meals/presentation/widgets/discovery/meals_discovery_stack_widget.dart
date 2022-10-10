import 'package:app/modules/meals/presentation/widgets/provider/notdone/meals_notdone_provider_widget.dart';
import 'package:app/modules/meals/presentation/widgets/meal/swipeable/meals_swipeable_widget.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

import '../../../domain/models/meal/meal_model.dart';
import '../meal/card/meal_empty_card_widget.dart';

class MealsDiscoveryStackWidget extends BaseStatelessWidget {
  const MealsDiscoveryStackWidget({
    super.key,
    required this.onMealSelected,
    required this.onMealDislike,
    required this.onMealLike,
    this.controller,
  });

  final Function(MealModel) onMealSelected;
  final Function(MealModel) onMealDislike;
  final Function(MealModel) onMealLike;
  final SwipableStackController? controller;
  
  @override
  Widget build(BuildContext context) {
    return MealsNotDoneProviderWidget(
      listBuilder: (meals) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              const MealEmptyCardWidget(),
              MealsSwipeableWidget(
                controller: controller,
                meals: meals,
                onMealSelected: onMealSelected,
                onMealDislike: onMealDislike,
                onMealLike: onMealLike,
              ),
            ]
          ),
        );
      }
    );
  }
}