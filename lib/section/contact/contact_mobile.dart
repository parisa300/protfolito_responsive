import 'package:flutter/material.dart';
import 'package:protfolio/component/custom_text_filed.dart';
import 'package:protfolio/component/default_button.dart';
import 'package:protfolio/component/section_title.dart';
import 'package:protfolio/configs/ui.dart';
import 'package:protfolio/provider/app_provider.dart';
import 'package:provider/provider.dart';

import 'components/socal_card.dart';

class ContactMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/photo/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding * 2.5),
          Container(
            margin: const EdgeInsets.only(left: 16),
            child: const SectionTitle(
              title: "Contact Me",
              subTitle: "For Project inquiry and information",
              color: Color(0xFF07E24A),
            ),
          ),
          const ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Container(
      constraints: const BoxConstraints(maxWidth: 600),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: appProvider.isDark ? Colors.grey[900] : Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: const Color(0xFFD9FFFC),
                iconSrc: "assets/photo/skype.png",
                name: 'parisa',
                press: () {},
              ),
              const SizedBox(height: 8),
              SocalCard(
                color: const Color(0xFFE4FFC7),
                iconSrc: "assets/photo/whatsapp.png",
                name: 'parisa',
                press: () {},
              ),
              const SizedBox(height: 8),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController pTypeController = TextEditingController();
    TextEditingController pBudgetController = TextEditingController();
    TextEditingController descController = TextEditingController();
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: CustomTextField(
              onChanged: (value) {},
              label: 'Your Name',
              controller: nameController,
            ),
          ),
          SizedBox(
            width: 470,
            child: CustomTextField(
              onChanged: (value) {},
              label: 'Email Address',
              controller: emailController,
            ),
          ),
          SizedBox(
            width: 470,
            child: CustomTextField(
              onChanged: (value) {},
              label: 'Project Type',
              controller: pTypeController,
            ),
          ),
          SizedBox(
              width: 470,
              child: CustomTextField(
                onChanged: (value) {},
                label: 'Project Budget',
                controller: pBudgetController,
              )),
          SizedBox(
              // height: 300,
              child: CustomTextField(
            onChanged: (value) {},
            label: 'Description',
            controller: descController,
          )),
          const SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/photo/contact_icon.png",
                text: "Contact Me!",
                press: () {
                  if (nameController.text.isNotEmpty &&
                      emailController.text.isNotEmpty &&
                      descController.text.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Sending Message"),
                    ));
                    nameController.clear();
                    emailController.clear();
                    pTypeController.clear();
                    pBudgetController.clear();
                    descController.clear();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Field is Empety"),
                    ));
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
