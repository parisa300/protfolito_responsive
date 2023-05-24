import 'package:flutter/material.dart';
import 'package:protfolio/configs/ui.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding,
      ),
      decoration: BoxDecoration(
          color: const Color(0xFFE8F0F9),
          borderRadius: BorderRadius.circular(50)),
      child: TextButton(
        onPressed: press,
        child: Row(
          children: [
            Image.asset(imageSrc, height: 40),
            const SizedBox(width: kDefaultPadding),
            Text(text),
          ],
        ),
      ),
    );
  }
}
