import 'package:flutter/material.dart';
import 'package:pro_buddy/constants/global_function.dart';
import 'package:pro_buddy/resources/resources.dart';
import 'package:provider/provider.dart';

import '../vm/base_vm.dart';

class BaseView extends StatefulWidget {
  static String route = "/base_view";
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  final List<String> _pageTitles = [
    'Home',
    'Appointment',
    'Settings',
  ];
  final List<String> _barTitles = [
    'Home',
    'Appointment',
    'Settings',
  ];

  final List<IconData> _unselectedIcons = [
    Icons.home_outlined,
    Icons.schedule_outlined,
    Icons.settings_outlined,
  ];

  final List<IconData> _selectedIcons = [
    Icons.home_filled,
    Icons.schedule,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<BaseVM>(builder: (context, vm, _) {
      return Scaffold(
        appBar: baseAppBar(index: vm.currentIndex, dashVM: vm),
        body: WillPopScope(
            onWillPop: GlobalFunctions.onWillPop(),
            child: Column(children: [])),
      );
    });
  }

  AppBar baseAppBar({required int index, required BaseVM dashVM}) {
    return AppBar(
      backgroundColor: R.colors.primary,
      elevation: 0,
      leadingWidth: 150,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _barTitles[dashVM.currentIndex],
            style: R.textStyles.poppinsRegular(
              color: R.colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (index != 2)
                IconButton(
                  iconSize: 25,
                  onPressed: () {
                    //  Get.dialog(const CallConfirmationDialog());
                  },
                  icon: Icon(
                    Icons.call,
                    color: R.colors.white,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
