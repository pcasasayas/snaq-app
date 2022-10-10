

import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pallete/buttons/circle/button_circle_widget.dart';

class MealsActionListWidget extends BaseStatelessWidget {
  const MealsActionListWidget({
    super.key,
    required this.onListClicked,
  });

  final Function() onListClicked;

  @override
  Widget build(BuildContext context) {
    return ButtonCircleWidget(
      color: Colors.grey,
      onPressed: onListClicked,
      child: const FaIcon(FontAwesomeIcons.list),
    );
  }
}