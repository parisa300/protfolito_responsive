import 'package:flutter/material.dart';
import 'package:protfolio/configs/ui.dart';
import 'package:protfolio/provider/app_provider.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 54, vertical: 16),
          child: Text(
            "About \nmy story",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: appProvider.isDark ? Colors.white : Colors.grey[900],
                  fontSize: 40,
                ),
          ),
        ),
        const SizedBox(height: 12),
        Image.asset("assets/photo/sign.png")
      ],
    );
  }
}
