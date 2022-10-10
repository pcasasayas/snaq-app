import 'package:app/modules/meals/presentation/widgets/meal/list/meals_list_widget.dart';
import 'package:app/modules/meals/presentation/widgets/provider/all/meals_all_wrapper_widget.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/meal/meal_model.dart';

class MealsExploreWidget extends BaseStatelessWidget {
  const MealsExploreWidget({
    super.key,
    required this.onMealSelected,
  });

  final Function(MealModel) onMealSelected;

  @override
  Widget build(BuildContext context) {
    return MealsAllWrapperWidget(
      child: MealsListWidget(
        onMealSelected: onMealSelected,
      )
    );
  }
}