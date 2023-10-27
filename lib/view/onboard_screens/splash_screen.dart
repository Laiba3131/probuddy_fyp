import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pro_buddy/view/onboard_screens/onboard_screen_one.dart';
import 'package:sizer/sizer.dart';
import '../../utils/app_colors.dart';
import '../../utils/text_style.dart';
import '../../utils/utils.dart';

class SplashScreen extends StatefulWidget {
  static String route = "/splaseScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() async {
    var _duration = const Duration(seconds: 5);
    return Timer(_duration, Navigation);
  }

  Navigation() {
    pushUntil(context, OnboardScreenOne());
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // backgroundColor: AppColors.black,
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                  'asset/images/WhatsApp_Image_2023-10-05_at_11.12.44_PM-removebg-preview.png'),
              height: 150.sp,
              width: 175.sp,
            ),
            Text("P R O",
                style: AppTextStyles.poppinsBold(color: AppColors.primary)),
            Text("B U D D Y",
                style: AppTextStyles.poppinsBold(color: AppColors.secondary))
          ],
        ),
      )),
    );
  }
}
