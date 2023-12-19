import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_buddy/utils/common/global_widgets.dart';
import 'package:pro_buddy/controller/provider/resume_template_provider.dart';
import 'package:pro_buddy/src/view/home_screens/home_screen.dart';
import 'template_widget.dart';

class ResumeTemplatesScreen extends StatefulWidget {
  static String route = "/resumetemplates";
  const ResumeTemplatesScreen({super.key});

  @override
  State<ResumeTemplatesScreen> createState() => _ResumeTemplatesScreenState();
}

class _ResumeTemplatesScreenState extends State<ResumeTemplatesScreen> {
  @override
  Widget build(BuildContext context) {
    final templateProvider =
        ResumeTemplateProvider(); // Create an instance of your TemplateProvider
    //templateProvider.loadData();
    return Scaffold(
      appBar: GlobalWidgets.appBar(
        "Resume Templates",
        onTap: () {
          Get.toNamed(HomeScreen.route);
        },
      ),

      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, // Adjust this value as needed
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
        ),
        itemCount: templateProvider.templateList.length,
        itemBuilder: (BuildContext context, int index) {
          return TemplateWidget(
            model: templateProvider.templateList[index],
          );
        },
      ),

      // GridView.builder(
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 200, // Adjust this value as needed
      //     mainAxisSpacing: 10,
      //     crossAxisSpacing: 10,
      //   ),
      //   itemCount: context.read<TemplateProvider>().templateList.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return TemplateWidget(
      //       model: context.read<TemplateProvider>().templateList[index],
      //     );
      //   },
      // ),
    );
  }
}
