import 'package:flutter/material.dart';
import 'package:pro_buddy/resources/resources.dart';
import 'package:sizer/sizer.dart';
import '../../../../../utils/common/custom_button.dart';
import '../../../../../utils/common/builts.dart';
import '../../../../../utils/hight_width.dart';
import '../../../../../utils/utils.dart';
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
          backgroundColor: R.colors.secondary,
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
                        style: R.textStyles.poppinsBold(color: R.colors.white)),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 35.sp),
                      child: const Image(
                        image: AssetImage(
                            "asset/images/images__3_-removebg-preview.png"),
                        //height: 350,
                        width: 270,
                      ),
                    ),
                    Text("Tailor-Made Templates",
                        textAlign: TextAlign.center,
                        style: R.textStyles
                            .poppinsMedium(color: R.colors.primary)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 23.sp, vertical: 15.sp),
                      child: Text(
                          "Explore a variety of professionally designed templates that can be personalized to match your unique style and career aspirations. Make your resume truly yours.",
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
                          Builit.SelectedBulit,
                          Builit.UnSelectBulit,
                        ],
                      ),
                    ),
                    CustomButton(
                      color: R.colors.primary,
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
