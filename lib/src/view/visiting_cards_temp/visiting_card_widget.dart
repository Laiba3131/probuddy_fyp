import 'package:flutter/material.dart';
import 'package:pro_buddy/model/visiting_cards_model.dart';
import 'package:pro_buddy/utils/app_colors.dart';
import 'package:sizer/sizer.dart';

class VisitingCardWidget extends StatefulWidget {
  VisitingCardsTemplateModel model;
  VisitingCardWidget({super.key, required this.model});

  @override
  State<VisitingCardWidget> createState() => _VisitingCardWidgetState();
}

class _VisitingCardWidgetState extends State<VisitingCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.sp),
      width: 20.w,
      height: 10.h,
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
            width: 20.w,
            height: 10.h,
            child: Image.asset(
              widget.model.profileImageUrl ?? "",
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
