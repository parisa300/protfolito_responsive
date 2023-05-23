import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protfolio/component/custom_text_heading.dart';
import 'package:protfolio/component/section_title.dart';
import 'package:protfolio/configs/app_dimensions.dart';
import 'package:protfolio/configs/app_theme.dart';
import 'package:protfolio/configs/app_typography.dart';
import 'package:protfolio/configs/space.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/provider/app_provider.dart';
import 'package:protfolio/responsive/responsive.dart';
import 'package:protfolio/utils/utils.dart';
import 'package:provider/provider.dart';

part 'services_desktop.dart';
part 'services_mobile.dart';

part 'widgets/_services_card.dart';
part 'widgets/_services_card_back.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
