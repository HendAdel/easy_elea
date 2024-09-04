import 'package:flutter/material.dart';
import 'package:easy_elea/utils/color.utility.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.currentPageIndex,
    required this.positionIndex,
  });

  final int currentPageIndex;
  final int positionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 42,
      decoration: BoxDecoration(
          color: positionIndex == currentPageIndex
              ? ColorUtility.deepYellow
              : Colors.black,
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
