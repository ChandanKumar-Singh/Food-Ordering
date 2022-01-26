import 'package:flutter/material.dart';
import '../helpers/commons.dart';
import 'custom_text.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon(
      {Key? key, this.icon, this.text, this.onTap, this.color, this.size})
      : super(key: key);
  final IconData? icon;
  final Color? color;
  final double? size;
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>print('${text} clicked'),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: size,
          ),
          const SizedBox(
            height: 4,
          ),
          CustomText(
            text: text!,
            size: 15,
            colors: black,
          ),
        ],
      ),
    );
  }
}
