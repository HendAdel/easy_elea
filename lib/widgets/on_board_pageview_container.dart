import 'package:flutter/material.dart';
import 'package:easy_elea/utils/color.utility.dart';

class OnBoardPageviewContainer extends StatelessWidget {
  const OnBoardPageviewContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtility.scaffoldBackground,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(image),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: ColorUtility.gray),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
