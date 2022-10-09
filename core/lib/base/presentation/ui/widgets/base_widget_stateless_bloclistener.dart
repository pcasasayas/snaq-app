import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/base_state.dart';
import 'base_bloclistener.dart';
import 'base_widget_stateless.dart';

abstract class BaseWidgetStatelessBlocListener<T extends Cubit<ResultState<G>>, G> extends BaseStatelessWidget 
  with BaseBlocListener<T, G> {
  
  BaseWidgetStatelessBlocListener({super.key});

    
  @override
  Widget build(BuildContext context) {
    return BlocListener<T, ResultState<G>>(
      listenWhen: listenWhen,
      listener: listener,
      child: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context);
}