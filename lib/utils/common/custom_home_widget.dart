import 'package:flutter/material.dart';
import 'package:pro_buddy/resources/app_decoration.dart';
import 'package:pro_buddy/resources/app_images.dart';
import 'package:pro_buddy/resources/app_colors.dart';
import 'package:pro_buddy/resources/resources.dart';
import 'package:pro_buddy/utils/hight_width.dart';
import 'package:pro_buddy/utils/text_style.dart';
import 'package:sizer/sizer.dart';

class HomeWidget extends StatelessWidget {
  final String text;
  final VoidCallback? tap;

  HomeWidget({super.key, required this.text, required this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.sp, vertical: 8.sp),
        width: double.infinity,
        decoration: AppDecoration.decoration(radius: 14.0),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(7.sp),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: R.colors.grey.withOpacity(.16),
                    spreadRadius: 3,
                    blurRadius: 12,
                    offset: const Offset(1, 1),
                  ),
                  BoxShadow(
                    color: R.colors.grey.withOpacity(.16),
                    spreadRadius: 3,
                    blurRadius: 12,
                    offset: const Offset(-1, -1),
                  )
                ],
                color: Colors.white,
              ),
              child: InkWell(
                onTap: () {
                  // Get.toNamed(NotificationView.route);
                },
                child: ImageIcon(
                  AssetImage(AppImages.cv),
                  color: R.colors.secondary,
                  size: 14.sp,
                ),
              ),
            ),
            w2,
            Text(
              text,
              style: R.textStyles.poppinsMedium(color: R.colors.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
