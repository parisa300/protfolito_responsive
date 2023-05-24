import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/component/default_button.dart';
import 'package:protfolio/component/my_outline_button.dart';
import 'package:protfolio/configs/ui.dart';
import 'package:protfolio/section/about/components/about_section_text.dart';
import 'package:protfolio/section/about/components/about_text_with_sign.dart';
import 'package:protfolio/section/about/components/experience_card.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/utils/utils.dart';
import 'package:universal_html/html.dart' as html;

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 600),
      child: Column(
        children: [
          const Column(
            children: [
              AboutTextWithSign(),
              AboutSectionText(
                text:
                    "I am a graduate with engineering computer,I have been developing mobile Apps for over 3 years,I have worked in team for various startup and helped team in launching App and got valuable learning experience.",
              ),
              SizedBox(height: 8),
              ExperienceCard(numOfExp: "03"),
              SizedBox(height: 8),
              AboutSectionText(
                text:
                    "Currently working as Android developer and now work flutter developer.As a team member, believes that anyone should have efficient collaboration with other members which is one of the keys to success",
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: MyOutlineButton(
                  imageSrc: "assets/photo/hand.png",
                  text: "Hire Me!",
                  press: () {},
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 1.5.toInt(),
                child: Center(
                  child: DefaultButton(
                    imageSrc: "assets/photo/download-resum.png",
                    text: "Download CV",
                    press: () {
                      kIsWeb
                          ? html.window.open(StaticUtils.resume, "pdf")
                          : openURL(StaticUtils.resume);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
