
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

abstract class FlashbarHelper {
  static void showFlashbar(
    BuildContext context, {
    Duration duration = const Duration(seconds: 1),
    required Widget Function(BuildContext, FlashController<Object?>) builder,
  }) {
    showFlash(
      context: context,
      duration: duration,
      builder: builder,
    );
  }
}