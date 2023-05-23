import 'package:flutter/material.dart';
import 'package:protfolio/component/custom_text_heading.dart';
import 'package:protfolio/component/project_card.dart';
import 'package:protfolio/component/section_title.dart';
import 'package:protfolio/configs/app_dimensions.dart';
import 'package:protfolio/configs/app_typography.dart';
import 'package:protfolio/configs/space.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/utils/project_utils.dart';
import 'package:protfolio/utils/utils.dart';


class RecentWorkDesktop extends StatefulWidget {
  const RecentWorkDesktop({Key? key}) : super(key: key);

  @override
  State<RecentWorkDesktop> createState() => _RecentWorkDesktopState();
}

class _RecentWorkDesktopState extends State<RecentWorkDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.h!,
      child: Column(
        children: [
          // const CustomSectionHeading(
          //   text: "\nPortfolio",
          // ),
          // const CustomSectionSubHeading(
          //   text: "Here are few samples of my previous work :)\n\n",
          // ),
          const SectionTitle(
            title: "Recent Woorks",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFFB100),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: AppDimensions.normalize(10),
            children: ProjectUtils.banners
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(
                    banner: e.value,
                    projectIcon: ProjectUtils.icons[e.key],
                    projectLink: ProjectUtils.links[e.key],
                    projectTitle: ProjectUtils.titles[e.key],
                    projectDescription: ProjectUtils.description[e.key],
                  ),
                )
                .toList(),
          ),
          Space.y2!,
          SizedBox(
            height: AppDimensions.normalize(14),
            width: AppDimensions.normalize(50),
            child: OutlinedButton(
              onPressed: () => openURL(StaticUtils.gitHub),
              child: Text(
                'See More',
                style: AppText.l1b,
              ),
            ),
          )
        ],
      ),
    );
  }
}
