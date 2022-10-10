import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:app/modules/meals/presentation/widgets/meal/info/extended/meal_info_extended_widget.dart';
import 'package:app/modules/meals/presentation/widgets/meal/list/meals_list_widget.dart';
import 'package:app/modules/meals/presentation/widgets/provider/detail/meal_detail_wrapper_widget.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

class MealDetailWidget extends BaseStatelessWidget {
  const MealDetailWidget({
    super.key,
    required this.meal,
  });

  final MealModel meal;

  @override
  Widget build(BuildContext context) {
    return MealDetailWrapperWidget(
      meal: meal,
      child: const MealInfoExtendedWidget()
    );
  }
}