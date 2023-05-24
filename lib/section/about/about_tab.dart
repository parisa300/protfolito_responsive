import 'package:flutter/material.dart';
import 'package:protfolio/component/default_button.dart';
import 'package:protfolio/component/my_outline_button.dart';
import 'package:protfolio/configs/ui.dart';
import 'package:protfolio/section/about/components/about_section_text.dart';
import 'package:protfolio/section/about/components/about_text_with_sign.dart';
import 'package:protfolio/section/about/components/experience_card.dart';
import 'package:protfolio/utils/utils.dart';
import 'package:universal_html/html.dart' as html;

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      //  constraints: BoxConstraints(maxWidth: 1000),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "I am a graduate with engineering computer,I have been developing mobile Apps for over 3 years,I have worked in team for various startup and helped team in launching App and got valuable learning experience.",
                ),
              ),
              ExperienceCard(numOfExp: "03"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Currently working as Android developer and now work flutter developer.As a team member, believes that anyone should have efficient collaboration with other members which is one of the keys to success",
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/photo/hand.png",
                text: "Hire Me!",
                press: () {},
              ),
              const SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/photo/download-resum.png",
                text: "Download CV",
                press: () {
                  html.window.open(StaticUtils.resume, 'pdf');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
