
import 'package:flutter/material.dart';

///
/// Abstraction for base classes
///
abstract class IPageBuilder {

  ///
  /// Build app bar for screen
  ///
  PreferredSizeWidget? buildAppBar(BuildContext context);

  ///
  /// Build content for screen
  ///
  Widget buildBody(BuildContext context);

  ///
  /// Build navigation drawer
  ///
  Widget? buildDrawer(BuildContext context);

  ///
  /// Build bottom navigation nav
  ///
  Widget? buildBottomNavBar(BuildContext context);
}