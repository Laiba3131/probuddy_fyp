import 'package:flutter/material.dart';
import 'package:pro_buddy/model/visiting_cards_model.dart';

class VisitingCardsProvider extends ChangeNotifier {
  List<VisitingCardsTemplateModel> visitingCardsList = [
    VisitingCardsTemplateModel(
        profileImageUrl: 'asset/images/card1-removebg-preview.png'),
    VisitingCardsTemplateModel(
        profileImageUrl: 'asset/images/card2-removebg-preview.png'),
    VisitingCardsTemplateModel(
        profileImageUrl: 'asset/images/card3-removebg-preview.png'),
    VisitingCardsTemplateModel(
        profileImageUrl: 'asset/images/card4-removebg-preview.png'),
    VisitingCardsTemplateModel(
        profileImageUrl: 'asset/images/card5-removebg-preview.png'),
    VisitingCardsTemplateModel(
        profileImageUrl: 'asset/images/card6-removebg-preview.png'),
    VisitingCardsTemplateModel(
        profileImageUrl: 'asset/images/card7-removebg-preview.png'),
    VisitingCardsTemplateModel(
        profileImageUrl: 'asset/images/card8-removebg-preview.png'),
  ];
}
