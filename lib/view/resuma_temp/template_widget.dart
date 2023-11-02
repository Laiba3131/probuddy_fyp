import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pro_buddy/model/resume_template_model.dart';
import 'package:pro_buddy/utils/app_colors.dart';
import 'package:sizer/sizer.dart';

class TemplateWidget extends StatefulWidget {
  ResumeTemplateModel model;
  TemplateWidget({super.key, required this.model});

  @override
  State<TemplateWidget> createState() => _TemplateWidgetState();
}

class _TemplateWidgetState extends State<TemplateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.sp),
      width: 60.w,
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.20),
            offset: const Offset(-5, -2),
            blurRadius: 12,
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.20),
            offset: const Offset(3, 3),
            blurRadius: 12,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: SizedBox(
          width: 60.w,
          height: 30.h,
          child: CachedNetworkImage(
            imageUrl: widget.model.profileImageUrl ?? "",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
