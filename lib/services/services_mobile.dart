part of 'services.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 16,bottom: 16),
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
          Container(
            margin: const EdgeInsets.only(left: 16),

            child: const SectionTitle(
              color: Color(0xFFFF0000),
              title: "Service Offerings",
              subTitle: "My Strong Arenas",
            ),
          ),
          Space.y!,
          CarouselSlider.builder(
            itemCount: StaticUtils.servicesTitles.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: _ServiceCard(
                serviceIcon: StaticUtils.servicesIcons[i],
                serviceTitle: StaticUtils.servicesTitles[i],
                serviceDescription: StaticUtils.servicesDescription[i],
              ),
            ),
            options: CarouselOptions(
              viewportFraction: 0.65,
              height: width < 450 ? height * 0.4 : height * 0.4,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
          )
        ],
      ),
    );
  }
}
