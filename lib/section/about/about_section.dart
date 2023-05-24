import 'package:flutter/material.dart';
import 'package:protfolio/responsive/responsive.dart';
import 'about_mobile.dart';
import 'about_tab.dart';
import 'about_dest_top.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: const AboutMobile(),
        tablet: const AboutTab(),
        desktop: AboutDesk());
  }
}
