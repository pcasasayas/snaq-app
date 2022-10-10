

import 'package:app/modules/meals/presentation/widgets/nutrition/info/chart/protein/nutrition_info_chart_protein_widget.dart';
import 'package:app/modules/meals/presentation/widgets/nutrition/info/simple/nutrition_info_simple_widget.dart';
import 'package:app/modules/meals/presentation/widgets/provider/detail/meal_detail_provider_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

import '../../../mealcomponent/info/mealcomponent_info_widget.dart';
import '../../../nutrition/info/chart/carbohydrates/nutrition_info_chart_carbohydrates_widget.dart';
import '../../../nutrition/info/chart/energy/nutrition_info_chart_energy_widget.dart';
import '../../../nutrition/info/chart/fat/nutrition_info_chart_fat_widget.dart';

class MealInfoExtendedWidget extends BaseStatelessWidget {
  const MealInfoExtendedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MealDetailProviderWidget(
      detailBuilder: (mealDetail) {
        return Column(
          children: [
            CachedNetworkImage(
              imageUrl: mealDetail.image?? '',
              progressIndicatorBuilder: (context, url, downloadProgress) => 
                CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.cover,
            ),
            NutritionInfoSimpleWidget(nutrition: mealDetail.nutrition),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: NutritionInfoChartCarbohydratesWidget(
                  ingredients: mealDetail.mainIngredients,
                  totalNutrition: mealDetail.nutrition,
                )),
                Expanded(child: NutritionInfoChartFatWidget(
                  ingredients: mealDetail.mainIngredients,
                  totalNutrition: mealDetail.nutrition,
                )),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: NutritionInfoChartProteinWidget(
                  ingredients: mealDetail.mainIngredients,
                  totalNutrition: mealDetail.nutrition,
                )),
                Expanded(child: NutritionInfoChartEnergyWidget(
                  ingredients: mealDetail.mainIngredients,
                  totalNutrition: mealDetail.nutrition,
                )),
              ],
            ),
            if (mealDetail.components.isNotEmpty)
              ...[const SizedBox(height: 18.0,),
              Wrap(
                children: [
                for (var mealComponent in mealDetail.components)
                  ...[
                    MealComponentInfoWidget(mealComponent: mealComponent),
                  ],
              ])],
            const SizedBox(height: 18.0,),
            // for (final mealComponent in mealDetail.components) 
            //   ...[
            //     MealComponentInfoWidget(
            //       mealComponent: mealComponent,
            //       totalNutrition: mealDetail.nutrition,
            //     ),
            //     const SizedBox(height: 8.0,),
            //   ]
          ],
        );
      },
    );
  }
}