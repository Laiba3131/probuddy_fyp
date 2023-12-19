import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_buddy/utils/common/global_widgets.dart';
import 'package:pro_buddy/controller/provider/resume_template_provider.dart';
import 'package:pro_buddy/utils/app_colors.dart';
import 'package:pro_buddy/utils/hight_width.dart';
import 'package:pro_buddy/utils/text_style.dart';
import 'package:pro_buddy/src/view/resuma_temp/resume_templates_screen.dart';
import 'package:pro_buddy/src/view/visiting_cards_temp/visiting_card_template_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../resuma_temp/template_widget.dart';

class HomeScreen extends StatefulWidget {
  static String route = "/homeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FocusNode searchFN = FocusNode();
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalWidgets.appBar(
        "Probuddy",
        onTap: () {
          Get.toNamed(HomeScreen.route);
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8.sp),
        child: Column(children: [
          h0P7,
          searchField(),
          h1,
          viewAllWidget("Resume templates", () {
            Get.toNamed(ResumeTemplatesScreen.route);
          }),
          h1,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                context.read<ResumeTemplateProvider>().templateList.length,
                (index) => TemplateWidget(
                  model: context
                      .read<ResumeTemplateProvider>()
                      .templateList[index],
                ),
              ),
            ),
          ),
          h0P7,
          viewAllWidget("Business Cards", () {
            Get.toNamed(VisitingCardTemplates.route);
          }),
        ]),
      ),
    );
  }

  Widget searchField() {
    return Padding(
      padding: EdgeInsets.only(left: 5.sp),
      child: TextFormField(
        focusNode: searchFN,
        controller: searchController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        onChanged: (value) {
          debugPrint('Search');
          setState(() {});
        },
        onTap: () {
          setState(() {});
        },
        onFieldSubmitted: (value) {
          setState(() {});
        },
        decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
          hintText: 'Search',
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
        ),
      ),
    );
  }

  Widget viewAllWidget(String title, Function() onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyles.poppinsSemiBold(
              color: AppColors.black, fontSize: 15.sp),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'See All',
            style: AppTextStyles.poppinsRegular().copyWith(
              fontSize: 10.sp,
              color: AppColors.secondary,
              decoration: TextDecoration.underline,
              height: 1,
            ),
          ),
        ),
      ],
    );
  }
}
