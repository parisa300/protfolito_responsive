import 'package:flutter/material.dart';
import 'package:protfolio/configs/ui.dart';
import 'package:protfolio/recent_work/recent_work.dart';
import 'package:protfolio/section/about/about_section.dart';
import 'package:protfolio/section/contact/contact_section.dart';
import 'package:protfolio/section/home/home.dart';
import 'package:protfolio/services/services.dart';
import 'package:protfolio/widgets/footer.dart';




class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String blackWhitePhoto = 'assets/photo/black-white.png';
  static const String openSource = 'assets/photo/open.png';
  static const String appDev = 'assets/photo/app.png';
  static const String appDevAndroid = 'assets/photo/icons8-android-80.png';
  static const String appDevFlutter = 'assets/photo/icons8-flutter-96.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",

  ];

  static const List<String> socialLinks = [
    "https://www.instagram.com/parisa_mahmooodi/",
    "https://www.linkedin.com/in/parisa-mahmoodi/",
    "https://github.com/parisa300/",

  ];
  static const List<String> servicesIcons = [
    appDevAndroid,
    appDevFlutter,
    openSource,

  ];

  static const List<String> servicesTitles = [
    "Android App Development",
    "Flutter App Development",
    "Open Source - GitHub",
  ];
  static const List<String> servicesDescription = [
    "Android app development \n- KOTLIN\n- Firebase Auth/Cloud\n- REST APIs\n- Maps integration and more...!",
    "Flutter app development \n- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- BLOC STATEMENT\n- Maps integration and more...!",
    "Open source GitHub Projects\n- Awesome README.md\n- Well documented\n- Header images and more...!",
  ];

  static const String resume =
      'https://docs.google.com/document/d/1K-w8mOlUyj_z3iXPEB1C2p4K1sFBxko0-zBkmoGDftQ/edit';

  static const String gitHub = 'https://github.com/parisa300';
}

class BodyUtils {
  static  List<Widget> views = [
    const HomePage(),
    const SizedBox(height: kDefaultPadding * 2),
    AboutSection(),
     const Services(),
    const RecentWork(),
    const ContactScetion(),
    const Footer(),
  ];
}
