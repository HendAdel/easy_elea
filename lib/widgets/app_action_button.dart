import 'package:easy_elea/utils/color.utility.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  String? text;
  Color? backgroundColor;
  Color? foregroundColor;
  double? width;
  double? horizontalPadding;
void Function() onPressed;
Widget? child;
  AppElevatedButton(
      {required this.onPressed,
      this.text,
      this.backgroundColor,
      this.foregroundColor,
      this.width,
      this.horizontalPadding,
      this.child,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: horizontalPadding ?? 20),
      child: SizedBox(
        height: 52,
        width: width,
        
        child: ElevatedButton(
          onPressed: onPressed, 
          child: text != null ? Text(
          text!, style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ) : child,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(side: const BorderSide(color: ColorUtility.gray),
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: backgroundColor?? ColorUtility.deepYellow,
        foregroundColor: foregroundColor ?? Colors.white,
        surfaceTintColor: Colors.white
        ),
      ),
    ),
    );
  }
}
