import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_buddy/resources/resources.dart';
import 'package:pro_buddy/src/base/view/base_view.dart';
import 'package:pro_buddy/utils/common/custom_button.dart';
import 'package:pro_buddy/utils/common/global_widgets.dart';
import 'package:pro_buddy/resources/validator.dart';
import 'package:pro_buddy/src/auth/view/login_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../utils/common/custom_textformfield.dart';
import '../../../utils/hight_width.dart';

class SignupScreen extends StatefulWidget {
  static String route = "/signupScreen";
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  showSnackBar(context, text) {
    var snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar((snackBar));
  }

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode confirmpasswordFocus = FocusNode();
  FocusNode nameFocus = FocusNode();

  bool isObscure1 = false;
  bool isObscure2 = false;

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: GlobalWidgets.appBar(
          "Sign Up",
          onTap: () {
            Get.offAllNamed(LoginScreen.route);
          },
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 12.sp),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                h3,
                CustomTextFormField(
                  fieldTitle: "Full Name",
                  controller: nameController,
                  hintText: 'Enter name',
                  focusNode: nameFocus,
                  inputAction: TextInputAction.next,
                  inputType: TextInputType.name,
                  validator: FieldValidator.validateEmpty,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
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
                ),
                CustomTextFormField(
                  controller: confirmpasswordController,
                  focusNode: confirmpasswordFocus,
                  inputAction: TextInputAction.done,
                  inputType: TextInputType.visiblePassword,
                  validator: (val) => FieldValidator.validatePasswordMatch(
                      confirmpasswordController.text, passwordController.text),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hintText: 'Enter confirm password',
                  fieldTitle: "Confirm Password",
                  obscureText: isObscure2,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscure2 = !isObscure2;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 8.sp),
                      child: Icon(
                        isObscure2
                            ? Icons.visibility_off_rounded
                            : Icons.remove_red_eye_rounded,
                        color: Colors.grey,
                        size: 16.sp,
                      ),
                    ),
                  ),
                ),
                h3,
                InkWell(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                        checkColor: R.colors.white,
                        activeColor: R.colors.primary,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value ?? false;
                          });
                        },
                      ),
                      const Text(
                        'I agree to the Privacy Policy and T&C.',
                      ),
                    ],
                  ),
                ),
                h1,
                CustomButton(
                  text: "Sign up",
                  tap: () {
                    if (_formKey.currentState!.validate()) {
                      Get.offAllNamed(BaseView.route);
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
            "Already have an account?",
            '  LogIn',
            () => Get.offAllNamed(LoginScreen.route),
          ),
        ),
      ),
    );
  }
}
