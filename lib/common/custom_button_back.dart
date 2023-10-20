// import 'package:flutter/material.dart';
// import '../utils/app_colors.dart';
// import '../utils/text_style.dart';

// class CustomBackButton extends StatelessWidget {
//   const CustomBackButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       width: 120,
//       decoration: BoxDecoration(
//         color: AppColors.secondary,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: Offset(0, -1),
//               color: Colors.white),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Icon(
//             Icons.arrow_back,
//             color: AppColors.white,
//           ),
//           Text(
//             'Skip',
//             style: AppTextStyles.textStyleBoldBodySmall
//                 .copyWith(color: AppColors.white),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomForwordButton extends StatelessWidget {
//   const CustomForwordButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       width: 120,
//       decoration: BoxDecoration(
//         color: AppColors.secondary,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: Offset(0, -1),
//               color: Colors.white),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             'Next',
//             style: AppTextStyles.textStyleBoldBodySmall
//                 .copyWith(color: AppColors.white),
//           ),
//           Icon(
//             Icons.arrow_forward,
//             color: AppColors.white,
//           )
//         ],
//       ),
//     );
//   }
// }
