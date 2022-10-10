import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/models/nutrition/value/nutrition_value_model.dart';
import '../info/simple/nutrition_value_info_simple_widget.dart';

class NutritionValueChipWidget extends BaseStatelessWidget {
  const NutritionValueChipWidget({
    Key? key,
    required this.nutrition
  }) : super(key: key);

  final NutritionValueModel nutrition;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.all(8.0),
      elevation: 0.5,
      backgroundColor: Colors.blueGrey,
      label: NutritionValueInfoSimpleWidget(
        nutrition: nutrition,
      )
    );
  }
}