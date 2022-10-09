import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/base_state.dart';
import 'base_blocbuilder.dart';
import 'base_widget_stateless.dart';

abstract class BaseWidgetStatelessBlocBuilder<T extends Cubit<ResultState<G>>, G> extends BaseStatelessWidget 
  with BaseBlocBuilder<T, G> {
  
  BaseWidgetStatelessBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, ResultState<G>>(
      buildWhen: buildWhen,
      builder: builder,
    );
  }
}