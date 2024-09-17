import 'package:easy_elea/utils/color.utility.dart';
import 'package:flutter/material.dart';

class AppLinkButton extends StatelessWidget {
  String text;
  Color? foregroundColor;
  void Function()? onPressed;
  AppLinkButton(
      {required this.onPressed,
      required this.text,
      this.foregroundColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text(
            text,
            style: TextStyle(
                color: foregroundColor,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}
