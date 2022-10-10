
import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

import '../../../nutrition/info/simple/nutrition_info_simple_widget.dart';

class MealInfoSimpleWidget extends BaseStatelessWidget {
  const MealInfoSimpleWidget({
    Key? key,
    required this.meal
  }) : super(key: key);

  final MealModel meal;

  @override
  Widget build(BuildContext context) {
    return NutritionInfoSimpleWidget(
      nutrition: meal.nutrition,
    );
  }
}