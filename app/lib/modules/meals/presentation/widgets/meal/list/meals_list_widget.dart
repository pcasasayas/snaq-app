import 'package:app/modules/meals/presentation/widgets/provider/all/meals_all_provider_widget.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

import '../../../../domain/models/meal/meal_model.dart';
import '../info/listed/meal_info_listed_widget.dart';

class MealsListWidget extends BaseStatelessWidget {
  const MealsListWidget({
    super.key,
    this.onMealSelected,
  });

  final Function(MealModel)? onMealSelected;

  @override
  Widget build(BuildContext context) {
    return MealsAllProviderWidget(
      listBuilder: (meals) {
        return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => onMealSelected?.call(meals[index]),
              child: MealInfoListedWidget(
                onMealSelected: onMealSelected,
                meal: meals[index],
              ),
            );
          },
        );
      }
    );
  }
}