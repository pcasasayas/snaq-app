import 'package:app/modules/meals/domain/models/mealComponent/mealcomponent_model.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

import '../../meal/ingredients/info/extended/ingredient_info_extended_widget.dart';

class MealComponentInfoWidget extends BaseStatelessWidget {
  const MealComponentInfoWidget({
    Key? key,
    required this.mealComponent,
  }) : super(key: key);

  final MealComponentModel mealComponent;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (mealComponent.mainIngredient != null)
            _buildMainIngredient(context),
          if (mealComponent.supplementaryIngredients.isNotEmpty)
            _buildSupplementaryIngredients(context),
        ],
      ),
    );
  }

  Widget _buildMainIngredient(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 18.0
      ),
      child: Column(
        children: [
          Text(
            'Ingredient',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          IngredientInfoExtendedWidget(
            ingredient: mealComponent.mainIngredient!,
          ),
        ],
      ),
    );
  }

  Widget _buildSupplementaryIngredients(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 18.0
      ),
      child: Column(
        children: [
          const Text('Supplements'),
          for(var supplementaryIngredient in mealComponent.supplementaryIngredients)
            IngredientInfoExtendedWidget(
                ingredient: supplementaryIngredient,
              ),
        ],
      )
    );
  }
}