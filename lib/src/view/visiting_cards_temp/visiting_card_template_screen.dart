import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_buddy/utils/common/global_widgets.dart';
import 'package:pro_buddy/controller/provider/visiting_cards_provider.dart';
import 'package:pro_buddy/src/view/home_screens/home_screen.dart';
import 'package:pro_buddy/src/view/visiting_cards_temp/visiting_card_widget.dart';

class VisitingCardTemplates extends StatefulWidget {
  static String route = "/visitingcardstemplates";

  const VisitingCardTemplates({super.key});

  @override
  State<VisitingCardTemplates> createState() => _VisitingCardTemplatesState();
}

class _VisitingCardTemplatesState extends State<VisitingCardTemplates> {
  @override
  Widget build(BuildContext context) {
    final templateProvider = VisitingCardsProvider();
    return Scaffold(
      appBar: GlobalWidgets.appBar(
        "Visiting Cards Templates",
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
        itemCount: templateProvider.visitingCardsList.length,
        itemBuilder: (BuildContext context, int index) {
          return VisitingCardWidget(
            model: templateProvider.visitingCardsList[index],
          );
        },
      ),
    );
  }
}
