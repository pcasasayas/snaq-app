import 'package:flutter/material.dart';

import '../../../../../../domain/models/nutrition/value/nutrition_value_model.dart';

class NutritionValueInfoSimpleWidget extends StatelessWidget {
  const NutritionValueInfoSimpleWidget({
    Key? key,
    required this.nutrition
  }) : super(key: key);

  final NutritionValueModel nutrition;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '${nutrition.nameAbbreviation}:',
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 14.0
          ),
        ),
        const SizedBox(width: 12.0,),
        Text(
          '${nutrition.value.toString()} ${nutrition.unitAbbreviation}',
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.white70,
          ),
        )
      ],
    );
  }
}