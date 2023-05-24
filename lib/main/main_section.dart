
import 'package:protfolio/configs/app.dart';
import 'package:protfolio/responsive/responsive.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';

import '../provider/scroll_provider.dart';
import '../utils/utils.dart';


part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
 //   final drawerProvider = Provider.of<DrawerProvider>(context);

    return const Scaffold(
   //   key: drawerProvider.key,
      extendBodyBehindAppBar: true,
    //  drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            _Body(),
        //    const ArrowOnTop(),
        //    Responsive.isTablet(context) || Responsive.isMobile(context)
       //         ? const _NavBarTablet()
       //         : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
