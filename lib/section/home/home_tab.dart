import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/animations/entrance_fader.dart';
import 'package:protfolio/configs/app_dimensions.dart';
import 'package:protfolio/configs/app_theme.dart';
import 'package:protfolio/configs/app_typography.dart';
import 'package:protfolio/configs/space.dart';
import 'package:protfolio/provider/app_provider.dart';
import 'package:protfolio/section/menu/menu_tab.dart';
import 'package:protfolio/utils/utils.dart';
import 'package:protfolio/widgets/social_links.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1.02,
      child: Stack(
        children: [
          Switch(
            inactiveTrackColor: Colors.grey,
            value: appProvider.isDark,
            onChanged: (value) {
              appProvider.setTheme(
                !value ? ThemeMode.light : ThemeMode.dark,
              );
            },
            activeColor: AppTheme.c!.primary!,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  StaticUtils.blackWhitePhoto,
                  height: MediaQuery.of(context).size.width < 1200
                      ? MediaQuery.of(context).size.height * 0.75
                      : MediaQuery.of(context).size.height * 0.85,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: MenuTab(),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(50),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'WELCOME TO MY PORTFOLIO! ',
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        StaticUtils.hi,
                        height: AppDimensions.normalize(12),
                      ),
                    ),
                  ],
                ),
                Space.y1!,
                Text(
                  "Parisa",
                  style: AppText.h1!.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  "Mahmoodi",
                  style: AppText.h1b!.copyWith(
                    height: 1,
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: AppTheme.c!.primary!,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            ' Flutter Developer',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' Android Developer',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' A friend :)',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y2!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
