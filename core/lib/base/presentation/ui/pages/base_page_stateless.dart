import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../loading/bloc/loader_cubit.dart';
import '../../../../loading/widgets/loading_overlay.dart';
import 'ipage_builder.dart';

abstract class BasePageStateless extends StatelessWidget implements IPageBuilder {
  const BasePageStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _provide(context, LoadingOverlay(child: 
      SafeArea(
        child: Scaffold(
          appBar: buildAppBar(context),
          body: _buildBody(context),
          bottomNavigationBar: buildBottomNavBar(context),
          drawer: buildDrawer(context),
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
  Widget? buildDrawer(BuildContext context) => null;

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: buildBody(context),
    );
  }

  @override
  Widget buildBody(BuildContext context);

  @override
  Widget? buildBottomNavBar(BuildContext context) => null;
}