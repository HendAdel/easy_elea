import 'package:flutter/material.dart';

class OnBoardNavigatorButtons extends StatelessWidget {
  const OnBoardNavigatorButtons({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.onPressed,
  });

  final Widget? icon;
  final WidgetStateProperty<Color?>? backgroundColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: icon,
      style: ButtonStyle(
        fixedSize: WidgetStateProperty.all(const Size(56, 56)),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
        shape: WidgetStateProperty.all<CircleBorder>(CircleBorder()),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
