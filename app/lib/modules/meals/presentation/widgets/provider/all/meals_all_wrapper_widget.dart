import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:core/loading/bloc/loader_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../blocs/getall/meals_getall_bloc.dart';

class MealsAllWrapperWidget extends BaseStatelessWidget {
  const MealsAllWrapperWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MealsGetAllCubit>(
      create: (context) => GetIt.instance<MealsGetAllCubit>(
        param1: GetIt.instance<LoaderCubit>(), 
      ),
      child: child
    );
  }
}