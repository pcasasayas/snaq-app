import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

abstract class FlashbarInfoWidget {
  static Widget Function(BuildContext, FlashController) get builder {
    return (_, controller) {
        return Flash(
          controller: controller,
          behavior: FlashBehavior.floating,
          position: FlashPosition.bottom,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            content: const Text('This is a basic flash'),
          ),
        );
    };
  }
}