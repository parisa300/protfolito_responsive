import 'package:flutter/material.dart';
import 'package:protfolio/configs/ui.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 18,
          horizontal: kDefaultPadding ,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.fromBorderSide(
             BorderSide(color: Color(0xFFEDEDED)),
            )),
        child: OutlinedButton(
          onPressed: press,
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: Colors.transparent,
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                imageSrc,
                height: 30,
              ),
              SizedBox(width: kDefaultPadding),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
