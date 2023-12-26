import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_buddy/resources/resources.dart';
import 'package:pro_buddy/src/base/view/base_view.dart';
import 'package:pro_buddy/utils/bottom_sheets/forget_password_sheet.dart';
import 'package:pro_buddy/utils/common/custom_button.dart';
import 'package:pro_buddy/utils/common/global_widgets.dart';
import 'package:pro_buddy/resources/validator.dart';
import 'package:pro_buddy/src/auth/view/signup_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../utils/common/custom_textformfield.dart';
import '../../../utils/hight_width.dart';

class LoginScreen extends StatefulWidget {
  static String route = "/loginScreen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 12.sp),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(R.images.logo, height: 25.h),
                h2,
                Text(
                  "Login",
                  style: R.textStyles.poppinsBold(
                    color: R.colors.secondary,
                    fontSize: 18.sp,
                  ),
                ),
                h2,
                CustomTextFormField(
                  fieldTitle: "Email",
                  controller: emailController,
                  hintText: 'Enter email',
                  focusNode: emailFocus,
                  inputAction: TextInputAction.next,
                  inputType: TextInputType.emailAddress,
                  validator: FieldValidator.validateEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                CustomTextFormField(
                  controller: passwordController,
                  focusNode: passwordFocus,
                  inputAction: TextInputAction.done,
                  inputType: TextInputType.visiblePassword,
                  validator: FieldValidator.validatePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hintText: 'Enter password',
                  fieldTitle: "Password",
                  obscureText: isObscure,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 8.sp),
                      child: Icon(
                        isObscure
                            ? Icons.visibility_off_rounded
                            : Icons.remove_red_eye_rounded,
                        color: Colors.grey,
                        size: 16.sp,
                      ),
                    ),
                  ),
                ),
                h2,
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      {
                        //   Get.bottomSheet(ChangePasswordSheet());
                        Get.bottomSheet(
                          const ForgotPasswordSheet(
                            title: 'Forgot Password?',
                            subTitle:
                                'Enter your reqistered Email ID We will send you a link to reset your password',
                            labelText: 'Email',
                            placeHolder: 'Enter email',
                            text: 'Proceed',
                          ),
                          isScrollControlled: true,
                        );
                      }
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Forgot Password?",
                          textAlign: TextAlign.center,
                          style: R.textStyles.poppinsMedium(
                            fontSize: 12.sp,
                            color: R.colors.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                h2,
                CustomButton(
                  text: "Login",
                  tap: () {
                    // context.read<RootProvider>().selectedScreenValue = 2;
                    // context.read<RootProvider>().update();
                    if (_formKey.currentState!.validate()) {
                      Get.offAllNamed(BaseView.route,
                          arguments: {"isFromLogin": true});
                    }
                  },
                ),
                h2,
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 8.sp),
          child: GlobalWidgets.authBottomWidget(
            "Don't have an account?",
            '  Sign up',
            () => Get.offAllNamed(SignupScreen.route),
          ),
        ),
      ),
    );
  }
}
