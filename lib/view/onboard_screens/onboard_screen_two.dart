import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../common/custom_button.dart';
import '../../utils/app_colors.dart';
import '../../common/builts.dart';
import '../../utils/hight_width.dart';
import '../../utils/text_style.dart';
import '../../utils/utils.dart';
import 'onboard-screen_three.dart';

class OnboardScreenTwo extends StatefulWidget {
  const OnboardScreenTwo({super.key});

  @override
  State<OnboardScreenTwo> createState() => _OnboardScreenTwoState();
}

class _OnboardScreenTwoState extends State<OnboardScreenTwo> {
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
                    // const  Image(
                    //     image: AssetImage("asset/images/WhatsApp_Image_2023-10-05_at_11.12.44_PM-removebg-preview.png"),
                    //     height: 114,
                    //     width: 90,
                    //   ),
                    h3,
                    Text("Welcome to Probuddy",
                        textAlign: TextAlign.center,
                        style:
                            AppTextStyles.poppinsBold(color: AppColors.white)),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 50.sp),
                      child: const Image(
                        image: AssetImage(
                            "asset/images/images__3_-removebg-preview.png"),
                        //height: 350,
                        width: 270,
                      ),
                    ),
                    Text("Tailor-Made Templates",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.poppinsMedium(
                            color: AppColors.primary)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 23.sp, vertical: 15.sp),
                      child: Text(
                          "Explore a variety of professionally designed templates that can be personalized to match your unique style and career aspirations. Make your resume truly yours.",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.poppinsRegular(
                              color: AppColors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Builit.UnSelectBulit,
                          Builit.SelectedBulit,
                          Builit.UnSelectBulit,
                        ],
                      ),
                    ),
                    CustomButton(
                      color: AppColors.primary,
                      tap: () {
                        pushUntil(context, const OnboardScreenThree());
                      },
                      text: "Get Started",
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     CustomBackButton(),
                    //     CustomForwordButton(),
                    //   ],
                    // ),
                  ]),
            ),
          )),
    );
  }
}
