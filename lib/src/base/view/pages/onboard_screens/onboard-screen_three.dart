import 'package:flutter/material.dart';
import 'package:pro_buddy/resources/resources.dart';
import 'package:pro_buddy/utils/utils.dart';
import 'package:pro_buddy/src/auth/view/login_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../../../utils/common/custom_button.dart';
import '../../../../../utils/common/builts.dart';
import '../../../../../utils/hight_width.dart';

class OnboardScreenThree extends StatefulWidget {
  const OnboardScreenThree({super.key});

  @override
  State<OnboardScreenThree> createState() => _OnboardScreenThreeState();
}

class _OnboardScreenThreeState extends State<OnboardScreenThree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: R.colors.secondary,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 35.sp, horizontal: 25.sp),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    h3,
                    Text("Welcome to Probuddy",
                        textAlign: TextAlign.center,
                        style: R.textStyles.poppinsBold(color: R.colors.white)),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 35.sp),
                      child: const Image(
                        image: AssetImage(
                            "asset/images/resume_parsing_3-removebg-preview.png"),
                        //height: 350,
                        width: 270,
                      ),
                    ),
                    Text("Simplify Your Job Hunt",
                        textAlign: TextAlign.center,
                        style: R.textStyles
                            .poppinsMedium(color: R.colors.primary)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 23.sp, vertical: 15.sp),
                      child: Text(
                          "Let us simplify the job application process for you. Create a polished resume in minutes and increase your chances of landing your dream job. Your success story starts here.",
                          textAlign: TextAlign.center,
                          style: R.textStyles
                              .poppinsRegular(color: R.colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Builit.UnSelectBulit,
                          Builit.UnSelectBulit,
                          Builit.SelectedBulit,
                        ],
                      ),
                    ),
                    CustomButton(
                      color: R.colors.primary,
                      tap: () {
                        pushUntil(context, const LoginScreen());
                      },
                      text: "Get Started",
                    ),
                  ]),
            ),
          )),
    );
  }
}
