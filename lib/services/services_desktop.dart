part of 'services.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.hf(4),

        // this height only for demo
        // height: 500,
          margin: EdgeInsets.only(top: 8,bottom: 56),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFE8F0F9),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/photo/bg_img_2.png"),
            ),
          ),

      child: Column(
        children: [
          // const CustomSectionHeading(
          //   text: '\nWhat I can do?',
          // ),
          // const CustomSectionSubHeading(
          //   text: 'I may not be perfect but surely I\'m of some use :)\n\n',
          // ),
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          Space.y!,
          Wrap(
            spacing: width * 0.05,
            runSpacing: height * 0.06,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: StaticUtils.servicesIcons
                .asMap()
                .entries
                .map(
                  (e) => _ServiceCard(
                    serviceIcon: StaticUtils.servicesIcons[e.key],
                    serviceTitle: StaticUtils.servicesTitles[e.key],
                    serviceDescription:
                    StaticUtils.servicesDescription[e.key],
                  ),
                )
                .toList(),
          ),
          Space.y!,
        ],
      ),
    );
  }
}
