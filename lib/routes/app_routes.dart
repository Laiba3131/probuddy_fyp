import 'package:get/route_manager.dart';
import 'package:pro_buddy/view/home_screens/home_screen.dart';
import 'package:pro_buddy/view/resuma_temp/resume_templates_screen.dart';
import 'package:pro_buddy/view/visiting_cards_temp/visiting_card_template_screen.dart';
import 'package:pro_buddy/view/login_screen.dart';
import 'package:pro_buddy/view/onboard_screens/splash_screen.dart';
import 'package:pro_buddy/view/signup_screen.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: SplashScreen.route, page: () => const SplashScreen()),
    GetPage(name: LoginScreen.route, page: () => const LoginScreen()),
    GetPage(name: SignupScreen.route, page: () => const SignupScreen()),
    GetPage(name: HomeScreen.route, page: () => const HomeScreen()),
    GetPage(
        name: ResumeTemplatesScreen.route,
        page: () => const ResumeTemplatesScreen()),
    GetPage(
        name: VisitingCardTemplates.route,
        page: () => const VisitingCardTemplates()),
  ];
}
