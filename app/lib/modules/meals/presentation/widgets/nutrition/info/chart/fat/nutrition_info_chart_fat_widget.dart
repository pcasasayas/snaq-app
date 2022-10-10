
import 'package:app/modules/meals/domain/models/meal/ingredient/ingredient_model.dart';
import 'package:app/modules/meals/domain/models/nutrition/nutrition_model.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';
import 'package:pallete/chart/pie_chart_widget.dart';

import '../../../../../../domain/models/nutrition/value/nutrition_value_model.dart';
import '../../card/nutrition_info_card_widget.dart';


class NutritionInfoChartFatWidget extends BaseStatelessWidget {
  const NutritionInfoChartFatWidget({
    Key? key,
    required this.ingredients,
    required this.totalNutrition,
  }) : super(key: key);

  final List<IngredientModel> ingredients;
  final NutritionModel totalNutrition;

  @override
  Widget build(BuildContext context) {
    return NutritionInfoCardWidget(
      nutrition: totalNutrition.fatTotal,
      child: PieChartWidget(
        pieChartValues: [
          for (var ingredient in ingredients) 
            buildValue(
              (Colors.accents.toList()..shuffle()).first,
              ingredient,
              totalNutrition.fatTotal,
            ),
        ],
      ),
    );
  }


  PieChartValue buildValue(Color color, IngredientModel ingredient, NutritionValueModel totalNutritionValue) {
    final nutritionValue = ingredient.nutrition.fatTotal;
    return PieChartValue(
      color,
      nutritionValue.valueWithPrecision != 0 ?
        (nutritionValue.valueWithPrecision * 100 / totalNutritionValue.valueWithPrecision) :
        0.0,
      nutritionValue.value != 0 ?
        (nutritionValue.value.toDouble() * 100 / totalNutritionValue.value.toDouble()).round().toString() :
        '0',
      ingredient.name
    );
  }
}