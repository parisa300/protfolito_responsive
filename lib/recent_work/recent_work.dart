import 'package:flutter/material.dart';
import 'package:protfolio/responsive/responsive.dart';
import 'recent_work_desktop.dart';
import 'recent_work_mobile.dart';

class RecentWork extends StatelessWidget {
  const RecentWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: RecentWorkMobile(),
      tablet: RecentWorkMobile(),
      desktop: RecentWorkDesktop(),
    );
  }
}
