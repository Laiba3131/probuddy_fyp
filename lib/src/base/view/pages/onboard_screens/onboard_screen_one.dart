import 'package:flutter/material.dart';
import 'package:pro_buddy/resources/resources.dart';
import 'package:sizer/sizer.dart';
import '../../../../../utils/common/custom_button.dart';
import '../../../../../utils/common/builts.dart';
import '../../../../../utils/hight_width.dart';
import '../../../../../utils/utils.dart';
import 'onboard_screen_two.dart';

class OnboardScreenOne extends StatefulWidget {
  const OnboardScreenOne({super.key});

  @override
  State<OnboardScreenOne> createState() => _OnboardScreenOneState();
}

class _OnboardScreenOneState extends State<OnboardScreenOne> {
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
                    h2,
                    Text("Welcome to Probuddy",
                        textAlign: TextAlign.center,
                        style: R.textStyles.poppinsBold(color: R.colors.white)),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 35.sp),
                      child: const Image(
                        image: AssetImage(
                            "asset/images/Companies-Use-Recruiters-scaled-removebg-preview.png"),
                        //height: 350,
                        width: 270,
                      ),
                    ),
                    Text("Build Your Professional Story",
                        textAlign: TextAlign.center,
                        style: R.textStyles
                            .poppinsMedium(color: R.colors.primary)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 23.sp, vertical: 15.sp),
                      child: Text(
                          "Begin your journey towards a standout resume with our user-friendly app. Craft a compelling narrative that showcases your skills and experiences effortlessly.",
                          textAlign: TextAlign.center,
                          style: R.textStyles
                              .poppinsRegular(color: R.colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Builit.SelectedBulit,
                          Builit.UnSelectBulit,
                          Builit.UnSelectBulit,
                        ],
                      ),
                    ),
                    //   Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     CustomBackButton(),
                    //     CustomForwordButton(),
                    //   ],
                    // ),
                    CustomButton(
                      color: R.colors.primary,
                      tap: () {
                        pushUntil(context, const OnboardScreenTwo());
                      },
                      text: "Get Started",
                    ),
                  ]),
            ),
          )),
    );
  }
}
