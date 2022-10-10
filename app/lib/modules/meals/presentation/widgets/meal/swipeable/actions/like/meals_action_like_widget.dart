

import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pallete/buttons/circle/button_circle_widget.dart';

class MealsActionLikeWidget extends BaseStatelessWidget {
  const MealsActionLikeWidget({
    super.key,
    required this.onLikeClicked,
  });

  final Function() onLikeClicked;

  @override
  Widget build(BuildContext context) {
    return ButtonCircleWidget(
      color: Colors.greenAccent,
      onPressed: onLikeClicked,
      child: const FaIcon(FontAwesomeIcons.thumbsUp),
    );
  }
}