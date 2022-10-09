import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/loader_cubit.dart';
import '../bloc/loader_state.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    Key? key,
    required this.child
  }) : super(key: key);
  
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoaderCubit, LoaderState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (BuildContext context, LoaderState state) => Stack(
        children: [
          child,
          if (state.isLoading)
            _buildLoader(context),
        ]
      ),
    );
  }

  Widget _buildLoader(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.black45,
      child: const Center(child: CircularProgressIndicator())
    );
  }
}