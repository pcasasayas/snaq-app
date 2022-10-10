
import 'package:flutter/material.dart';

class AppbarOutlinedWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarOutlinedWidget({
    Key? key,
    this.title = '',
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      toolbarHeight: preferredSize.height,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      flexibleSpace: Container(
        height: 64.0,
        margin: const EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: 8.0,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          border: Border.all(
            width: 1.5,
            color: theme.primaryColor
          ),
          color: theme.backgroundColor
        ),
        child: Center(
          child: Text(
            title,
            style: theme.textTheme.headline5!.copyWith(
              color: theme.primaryColor
            ),
          )
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size(double.infinity, 56.0);
}