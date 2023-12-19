import 'package:flutter/material.dart';
import 'package:pro_buddy/controller/provider/root_provider.dart';
import 'package:pro_buddy/utils/app_colors.dart';
import 'package:pro_buddy/src/view/home_screens/home_screen.dart';
import 'package:pro_buddy/src/view/visiting_cards_temp/visiting_card_template_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'resuma_temp/resume_templates_screen.dart';

class RootScreen extends StatelessWidget {
  static String route = "/rootscreen";
  RootScreen({super.key});

  var iconsList = [
    Icons.home,
    Icons.folder,
    Icons.add,
    Icons.temple_hindu_sharp,
    Icons.propane,
  ];

  List<Widget> screensList = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    ResumeTemplatesScreen(),
    VisitingCardTemplates(),
  ];

  var screenText = ['Home', 'Peoject', 'Peoject', 'Templates', 'pro,'];

  @override
  Widget build(BuildContext context) {
    return Consumer<RootProvider>(builder: (context, myProvider, _) {
      return SafeArea(
        child: Scaffold(
            body: PageView(
              controller: myProvider.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: screensList,
            ),
            bottomNavigationBar: Container(
              height: 6.5.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, -1),
                    color: AppColors.secondary.withOpacity(.3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int i = 0; i < iconsList.length; i++)
                    InkWell(
                      onTap: () {
                        context.read<RootProvider>().selectedScreenValue = i;
                        context.read<RootProvider>().update();
                        myProvider.pageController.jumpToPage(i);
                      },
                      child: SizedBox(
                        width: 13.w,
                        height: 5.5.h,
                        child: Icon(
                          iconsList[i],
                          size: myProvider.selectedScreenValue == i
                              ? 24.sp
                              : 18.sp,
                          color: myProvider.selectedScreenValue == i
                              ? AppColors.secondary
                              : AppColors.grey,
                        ),
                      ),
                    )
                ],
              ),
            )),
      );
    });
  }
}
