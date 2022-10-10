
import 'package:app/modules/meals/domain/models/nutrition/nutrition_model.dart';
import 'package:app/modules/meals/domain/models/nutrition/value/nutrition_value_model.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

import '../../../nutrition/value/chip/nutrition_value_chip_widget.dart';

class NutritionInfoSimpleWidget extends BaseStatelessWidget {
  const NutritionInfoSimpleWidget({
    Key? key,
    required this.nutrition
  }) : super(key: key);

  final NutritionModel nutrition;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 8.0,
        children: [
          _buildNutritionInfo(nutrition.carbohydrates),
          _buildNutritionInfo(nutrition.fatTotal),
          _buildNutritionInfo(nutrition.protein),
          _buildNutritionInfo(nutrition.energy),
        ],
      ),
    );
  }

  Widget _buildNutritionInfo(NutritionValueModel nutrition) {
    return NutritionValueChipWidget(nutrition: nutrition);
  }
}