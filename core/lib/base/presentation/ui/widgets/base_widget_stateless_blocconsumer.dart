import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/base_state.dart';
import 'base_widget_stateless.dart';
import 'base_blocbuilder.dart';
import 'base_bloclistener.dart';

abstract class BaseWidgetStatelessBlocConsumer<T extends Cubit<ResultState<G>>, G> extends BaseStatelessWidget 
  with BaseBlocBuilder<T, G>, BaseBlocListener<T, G> {
  
  BaseWidgetStatelessBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<T, ResultState<G>>(
      listenWhen: listenWhen,
      listener: listener,
      buildWhen: buildWhen,
      builder: builder,
    );
  }
}