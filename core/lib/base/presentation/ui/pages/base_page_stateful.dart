
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../loading/bloc/loader_cubit.dart';
import '../../../../loading/widgets/loading_overlay.dart';
import 'ipage_builder.dart';

abstract class BasePageStateful extends StatefulWidget {
  const BasePageStateful({Key? key}) : super(key: key);
}

abstract class BasePageStatefulState<T extends BasePageStateful> extends State<T> implements IPageBuilder {
  @override
  Widget build(BuildContext context) {
    return _provide(context, LoadingOverlay(
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(context),
          body: buildBody(context),
          bottomNavigationBar: buildBottomNavBar(context),
        )
      )
    ));
  }

  Widget _provide(BuildContext context, Widget child) {
    return BlocProvider<LoaderCubit>.value(
      value: GetIt.instance<LoaderCubit>(),
      child: child,
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => null;

  @override
  Widget buildBody(BuildContext context);

  @override
  Widget? buildBottomNavBar(BuildContext context) => null;
}