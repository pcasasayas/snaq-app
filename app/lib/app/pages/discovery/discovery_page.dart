import 'package:core/base/presentation/ui/pages/base_page_stateless.dart';
import 'package:flutter/material.dart';

class DiscoveryPage extends BasePageStateless {
  const DiscoveryPage({
    super.key,
  });

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => AppBar(
    backgroundColor: Colors.black,
    title: const Text("Discovery Page"),
  );

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Name :",
              style: TextStyle(fontSize: 22),),
          Text("Employee :",
              style: TextStyle(fontSize: 22),),
        ],
      ),
    );
  }
}