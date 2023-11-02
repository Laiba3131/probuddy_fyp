import 'package:flutter/material.dart';
import 'package:pro_buddy/utils/app_colors.dart';
import 'package:sizer/sizer.dart';

import '../utils/text_style.dart';

class AppDecoration {
  static InputDecoration fieldDecoration(
      {Widget? preIcon,
      String? hintText,
      Widget? suffixIcon,
      double? radius,
      double? iconMinWidth,
      double? verticalPadding,
      Color? fillColor}) {
    return InputDecoration(
      // verticalPadding
      //BoxConstraints  is a class that is used to specify constraints on the size of a widget.that a widget can occupy within its parent widget.
      prefixIconConstraints: BoxConstraints(
        minWidth: iconMinWidth ?? 42,
      ),
      //isDense is used to reduce the padding in thexfield
      isDense: true,
      fillColor: AppColors.secondary.withOpacity(.05),
      filled: true,
      focusColor: AppColors.secondary,

      hintText: hintText ?? "Select",
      // contentPadding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 12),
      suffixIcon: suffixIcon != null ? Container(child: suffixIcon) : null,

      hintStyle:
          AppTextStyles.poppinsRegular(fontSize: 11.sp, color: Colors.grey),
      errorStyle: AppTextStyles.poppinsRegular(
          fontSize: 9.sp, color: AppColors.secondary),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.secondary),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.secondary),
          borderRadius: BorderRadius.circular(8)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.secondary),
          borderRadius: BorderRadius.circular(8)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.secondary),
          borderRadius: BorderRadius.circular(8)),
    );
  }

  static BoxDecoration decoration({double? radius}) {
    return BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(radius ?? 8),
      boxShadow: [
        BoxShadow(
          color: AppColors.grey.withOpacity(0.1),
          offset: const Offset(-1, -1),
          blurRadius: 6,
        ),
        BoxShadow(
          color: AppColors.grey.withOpacity(0.1),
          offset: const Offset(1, 1),
          blurRadius: 6,
        ),
      ],
      // gradient: const LinearGradient(
      //   colors: [
      //     // R.colors.black,
      //     // R.colors.bgColor,
      //     // R.colors.themeColor,
      //     AppColors.secondary,
      //     AppColors.primary,
      //     AppColors.secondary,
      //   ],
      //   begin: Alignment.topLeft,
      //   end: Alignment.bottomRight,
      // ),
    );
  }
}
