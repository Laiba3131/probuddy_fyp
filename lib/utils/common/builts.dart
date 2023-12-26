import 'package:flutter/material.dart';
import 'package:pro_buddy/resources/resources.dart';

import '../../resources/app_colors.dart';

class Builit {
  static var SelectedBulit = Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      height: 8,
      width: 16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: R.colors.primary),
    ),
  );

  static var UnSelectBulit = Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: R.colors.white),
    ),
  );
}
