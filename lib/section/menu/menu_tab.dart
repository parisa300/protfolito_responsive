import 'package:flutter/material.dart';
import 'package:protfolio/configs/app_typography.dart';
import 'package:protfolio/configs/ui.dart';
import 'package:protfolio/provider/app_provider.dart';
import 'package:protfolio/provider/scroll_provider.dart';
import 'package:provider/provider.dart';

class MenuTab extends StatefulWidget {
  const MenuTab({super.key});

  @override
  _MenuTabState createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> {
  int selectedIndex = 0;
  int hoverIndex = 0;

  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimonial",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 850),
      height: 100,
      decoration: BoxDecoration(
        color: appProvider.isDark ? Colors.grey[900] : Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index, scrollProvider),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index, ScrollProvider scrollProvider) => InkWell(
        onTap: () {
          scrollProvider.scroll(index);
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: const BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                //  style: TextStyle(fontSize: 20, color: kTextColor),
                style: AppText.l1!.copyWith(
                  fontFamily: 'Montserrat',
                ),
              ),
              // Hover
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -20 : -32,
                child: Image.asset("assets/photo/hover.png"),
              ),
              // Select
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                child: Image.asset("assets/photo/hover.png"),
              ),
            ],
          ),
        ),
      );
}
