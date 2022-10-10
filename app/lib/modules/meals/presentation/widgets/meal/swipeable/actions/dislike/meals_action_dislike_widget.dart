

import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pallete/buttons/circle/button_circle_widget.dart';

class MealsActionDislikeWidget extends BaseStatelessWidget {
  const MealsActionDislikeWidget({
    super.key,
    required this.onDislikeClicked,
  });

  final Function() onDislikeClicked;

  @override
  Widget build(BuildContext context) {
    return ButtonCircleWidget(
      color: Colors.redAccent,
      onPressed: onDislikeClicked,
      child: const FaIcon(FontAwesomeIcons.thumbsDown),
    );
  }
}