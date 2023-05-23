
import 'package:flutter/material.dart';
import 'package:protfolio/responsive/responsive.dart';
import 'contact_mobile.dart';
import 'contact_desktop.dart';

class ContactScetion extends StatelessWidget {
  const ContactScetion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: ContactMobile(),
        tablet: ContactDeskTop(),
        desktop: ContactDeskTop());
  }
}
