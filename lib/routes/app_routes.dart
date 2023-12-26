import 'package:get/route_manager.dart';
import 'package:pro_buddy/src/base/view/base_view.dart';
import 'package:pro_buddy/src/auth/view/login_screen.dart';
import 'package:pro_buddy/src/base/view/pages/onboard_screens/splash_screen.dart';
import 'package:pro_buddy/src/auth/view/signup_screen.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: SplashScreen.route, page: () => const SplashScreen()),
    GetPage(name: LoginScreen.route, page: () => const LoginScreen()),
    GetPage(name: SignupScreen.route, page: () => const SignupScreen()),
    GetPage(name: BaseView.route, page: () => BaseView()),
  ];
}
