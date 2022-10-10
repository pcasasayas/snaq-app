import 'package:flutter/material.dart';

class ButtonCircleWidget extends StatelessWidget {
  const ButtonCircleWidget({
    super.key,
    required this.onPressed,
    required this.child,
    required this.color,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 64,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => color,
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}