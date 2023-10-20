import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pro_buddy/common/custom_button.dart';
import 'package:pro_buddy/common/global_widgets.dart';
import 'package:pro_buddy/resources/app_images.dart';
import 'package:pro_buddy/resources/validator.dart';
import 'package:sizer/sizer.dart';

import '../common/custom_textformfield.dart';
import '../resources/app_decoration.dart';
import '../utils/app_colors.dart';
import '../utils/hight_width.dart';
import '../utils/text_style.dart';

class LoginScreen extends StatefulWidget {
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
                Image.asset(AppImages.logo, height: 25.h),
                h2,
                Text(
                  "Login",
                  style: AppTextStyles.poppinsBold(
                    color: AppColors.secondary,
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
                        // Get.bottomSheet(ChangePasswordSheet());
                        // Get.bottomSheet(
                        //   const ForgotPasswordSheet(
                        //     title: 'Forgot Password?',
                        //     subTitle:
                        //         'Enter your reqistered Email ID We will send you a link to reset your password',
                        //     labelText: 'Email',
                        //     placeHolder: 'Enter email',
                        //     text: 'Proceed',
                        //   ),
                        //   isScrollControlled: true,
                        // );
                      }
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Forgot Password?",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.poppinsMedium(
                            fontSize: 12.sp,
                            color: AppColors.secondary,
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
                    // if (_formKey.currentState!.validate()) {
                    //   Get.offAllNamed(UpdateProfileScreen.route,
                    //       arguments: {"isFromLogin": true});
                    // }
                  },
                ),
                h2,
                Text(
                  'OR',
                  style: AppTextStyles.poppinsBold(),
                ),
                h2,
                Container(
                    padding: EdgeInsets.symmetric(vertical: 2.sp),
                    decoration: AppDecoration.decoration(radius: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CachedNetworkImage(
                            height: 4.h,
                            width: 10.w,
                            imageUrl:
                                'https://cdn.pixabay.com/photo/2017/01/19/09/11/logo-google-1991840_1280.png',
                            fit: BoxFit.cover),
                        w2,
                        Text(
                          'Login with Google',
                          style: AppTextStyles.poppinsRegular(),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 8.sp),
          child: GlobalWidgets.authBottomWidget(
              "Don't have an account?", '  Sign up', () {}
              // => Get.offAllNamed(SignupScreen.route),
              ),
        ),
      ),
    );
  }
}
