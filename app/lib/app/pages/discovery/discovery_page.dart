import 'package:core/base/presentation/ui/pages/base_page_stateless.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pallete/appbar/appbar_outlined_widget.dart';

import '../../../modules/meals/domain/models/meal/meal_model.dart';
import '../../../modules/meals/presentation/widgets/discovery/meals_discovery_widget.dart';
import '../../navigation/routers/app_router.dart';

class DiscoveryPage extends BasePageStateless {
  const DiscoveryPage({
    super.key,
  });

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => const AppbarOutlinedWidget(
    title: 'SNAQ',
  );

  @override
  Widget buildBody(BuildContext context) {
    return Stack(
      children: [ 
        Positioned.fill(
          child: MealsDiscoveryWidget(
            onListSelected: _onListSelected,
            onMealSelected: _onMealSelected,
          ),
        )
      ]
    );
  }

  void _onMealSelected(MealModel meal) {
    GetIt.instance<AppRouter>().push(DetailRoute(meal: meal));
  }

  void _onListSelected() {
    GetIt.instance<AppRouter>().push(const ExploreRoute());
  }
}