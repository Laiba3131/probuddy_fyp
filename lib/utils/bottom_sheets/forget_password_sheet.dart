// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_buddy/resources/resources.dart';
import 'package:pro_buddy/utils/bottom_sheets/otp_sheet.dart';
import 'package:pro_buddy/utils/common/custom_button.dart';
import 'package:pro_buddy/utils/common/custom_textformfield.dart';
import 'package:pro_buddy/resources/app_colors.dart';
import 'package:pro_buddy/utils/hight_width.dart';
import 'package:pro_buddy/utils/text_style.dart';
import 'package:pro_buddy/src/auth/view/login_screen.dart';
import 'package:sizer/sizer.dart';
import '../../resources/validator.dart';

class ForgotPasswordSheet extends StatefulWidget {
  final String title;
  final String subTitle;
  final String text;
  final String labelText;
  final String placeHolder;
  final bool? isFromDelete;

  const ForgotPasswordSheet({
    super.key,
    required this.title,
    required this.subTitle,
    required this.text,
    required this.labelText,
    required this.placeHolder,
    this.isFromDelete = false,
  });

  @override
  State<ForgotPasswordSheet> createState() => _ForgotPasswordSheetState();
}

class _ForgotPasswordSheetState extends State<ForgotPasswordSheet> {
  FocusNode emailFocus = FocusNode();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocus = FocusNode();
  bool isObscure1 = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: R.colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 12.sp),
      width: 100.w,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            h2,
            Text(
              widget.title,
              style: R.textStyles
                  .poppinsBold(color: R.colors.black, fontSize: 15.sp),
            ),
            h2,
            Text(
              widget.subTitle,
              textAlign: TextAlign.center,
              style: R.textStyles.poppinsRegular(color: R.colors.black),
            ),
            h2,
            if (widget.isFromDelete ?? false)
              CustomTextFormField(
                controller: passwordController,
                focusNode: passwordFocus,
                inputAction: TextInputAction.next,
                inputType: TextInputType.visiblePassword,
                validator: FieldValidator.validatePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hintText: 'Enter password',
                fieldTitle: "Password",
                obscureText: isObscure1,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure1 = !isObscure1;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.sp),
                    child: Icon(
                      isObscure1
                          ? Icons.visibility_off_rounded
                          : Icons.remove_red_eye_rounded,
                      color: Colors.grey,
                      size: 16.sp,
                    ),
                  ),
                ),
              )
            else
              CustomTextFormField(
                fieldTitle: widget.labelText,
                controller: emailController,
                hintText: widget.placeHolder,
                focusNode: emailFocus,
                inputAction: TextInputAction.next,
                inputType: TextInputType.emailAddress,
                validator: FieldValidator.validateEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            h3,
            CustomButton(
              text: widget.text,
              tap: () {
                if (_formKey.currentState!.validate()) {
                  if (widget.isFromDelete ?? false) {
                    Get.back();
                    Get.offAllNamed(LoginScreen.route);
                  } else {
                    Get.back();
                    Get.bottomSheet(
                      OTPSheet(
                        email: emailController.text,
                        onTap: () {
                          if (Get.isBottomSheetOpen == true) {
                            Get.back();
                          }
                        },
                        isEmail: true,
                      ),
                      isScrollControlled: true,
                    );
                  }
                }
              },
            ),
            h3,
          ],
        ),
      ),
    );
  }
}
