import 'package:flutter/material.dart';
import 'package:protfolio/configs/ui.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 54,vertical: 16),
          child: Text(
            "About \nmy story",
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 40,),
          ),
        ),
        SizedBox(height: 12 ),
        Image.asset("assets/photo/sign.png")
      ],
    );
  }
}
