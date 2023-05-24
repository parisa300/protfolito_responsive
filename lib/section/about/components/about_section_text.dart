import 'package:flutter/material.dart';
import 'package:protfolio/configs/ui.dart';
import 'package:protfolio/provider/app_provider.dart';
import 'package:provider/provider.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w200,
            color: appProvider.isDark ? Colors.white : Colors.grey[900],
            height: 2),
      ),
    );
  }
}
