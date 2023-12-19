import 'package:flutter/material.dart';

class RootProvider extends ChangeNotifier {
  PageController pageController = PageController(initialPage: 2);
  int selectedScreenValue = 2;
  void update() {
    notifyListeners();
  }
}
