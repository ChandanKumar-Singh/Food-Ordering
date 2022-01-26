import 'package:flutter/material.dart';
import '../helpers/commons.dart';
import 'custom_text.dart';

class BottomNavImage extends StatelessWidget {
  const BottomNavImage({Key? key, this.image, this.text, this.onTap})
      : super(key: key);
  final String? image;
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            'images/bottomNavigationBarImages/$image.png',
            height: 22,
            width: 22,
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
