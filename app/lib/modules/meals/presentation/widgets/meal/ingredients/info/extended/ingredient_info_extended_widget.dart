import 'package:app/modules/meals/domain/models/meal/ingredient/ingredient_model.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';


class IngredientInfoExtendedWidget extends BaseStatelessWidget {
  const IngredientInfoExtendedWidget({
    Key? key,
    required this.ingredient,
  }) : super(key: key);

  final IngredientModel ingredient;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12.0,),
        _buildIngredientName(context),
      ],
    );
  }

  Widget _buildIngredientName(BuildContext context) {
    return Text(
      ingredient.name,
      style: Theme.of(context).textTheme.subtitle2,
    );
  }

}