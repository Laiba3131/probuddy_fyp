import 'package:flutter/material.dart';
import 'package:pro_buddy/utils/utils.dart';
import 'package:pro_buddy/view/login_screen.dart';
import 'package:sizer/sizer.dart';
import '../../common/custom_button.dart';
import '../../utils/app_colors.dart';
import '../../common/builts.dart';
import '../../utils/hight_width.dart';
import '../../utils/text_style.dart';

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
          backgroundColor: AppColors.secondary,
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
                        style:
                            AppTextStyles.poppinsBold(color: AppColors.white)),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 50.sp),
                      child: const Image(
                        image: AssetImage(
                            "asset/images/resume_parsing_3-removebg-preview.png"),
                        //height: 350,
                        width: 270,
                      ),
                    ),
                    Text("Simplify Your Job Hunt",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.poppinsMedium(
                            color: AppColors.primary)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 23.sp, vertical: 15.sp),
                      child: Text(
                          "Let us simplify the job application process for you. Create a polished resume in minutes and increase your chances of landing your dream job. Your success story starts here.",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.poppinsRegular(
                              color: AppColors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 60.sp),
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
                      color: AppColors.primary,
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
