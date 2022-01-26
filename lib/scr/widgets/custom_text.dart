import 'package:flutter/material.dart';

import '../helpers/commons.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
       this.size,
       this.colors,
       this.weight})
      : super(key: key);

  final String text;
  final double? size;
  final Color? colors;
  final FontWeight? weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colors ?? black,
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}
