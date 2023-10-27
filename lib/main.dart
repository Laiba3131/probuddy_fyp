import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_buddy/routes/app_routes.dart';
import 'package:pro_buddy/view/onboard_screens/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, Orientation, DeviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PROBUDDY',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: SplashScreen.route,
        getPages: AppPages.pages,
      );
    });
  }
}
