
import 'package:app/modules/meals/domain/models/nutrition/value/nutrition_value_model.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';



class NutritionInfoCardWidget extends BaseStatelessWidget {
  const NutritionInfoCardWidget({
    Key? key,
    required this.nutrition,
    required this.child,
  }) : super(key: key);

  final NutritionValueModel nutrition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: [
          const SizedBox(height: 6.0,),
          Text(
            '${nutrition.nameAbbreviation} (%)',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          child
        ],
      ),
    );
  }
}