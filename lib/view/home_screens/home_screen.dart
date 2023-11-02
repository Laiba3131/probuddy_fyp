import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_buddy/common/custom_home_widget.dart';
import 'package:pro_buddy/common/global_widgets.dart';
import 'package:pro_buddy/utils/app_colors.dart';
import 'package:pro_buddy/utils/hight_width.dart';
import 'package:pro_buddy/view/visiting_cards_temp/visiting_card_template_screen.dart';

import 'package:pro_buddy/view/login_screen.dart';
import 'package:sizer/sizer.dart';

import '../resuma_temp/resume_templates_screen.dart';

class HomeScreen extends StatefulWidget {
  static String route = "/homeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: GlobalWidgets.appBar(
        "PROBUDDY",
        onTap: () {
          Get.offAllNamed(LoginScreen.route);
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeWidget(
              text: 'Rssume Templates',
              tap: () {
                Get.toNamed(ResumeTemplatesScreen.route);
              },
            ),
            h2,
            HomeWidget(
              text: 'Visiting Cards Templates',
              tap: () {
                Get.toNamed(VisitingCardTemplates.route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
