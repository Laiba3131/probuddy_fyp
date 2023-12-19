import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_buddy/controller/provider/resume_template_provider.dart';
import 'package:pro_buddy/controller/provider/root_provider.dart';
import 'package:pro_buddy/controller/provider/visiting_cards_provider.dart';
import 'package:pro_buddy/routes/app_routes.dart';
import 'package:pro_buddy/src/view/onboard_screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ResumeTemplateProvider()),
    ChangeNotifierProvider(create: (context) => VisitingCardsProvider()),
    ChangeNotifierProvider(create: (context) => RootProvider()),
  ], child: const MyApp()));
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
