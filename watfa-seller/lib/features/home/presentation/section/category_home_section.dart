// import 'package:flutter/material.dart';
// import 'package:watfa/core/helpers/extinsions.dart';

// import '../../../../core/routing/routes.dart';

// class CategoryHomeSection extends StatelessWidget {
//   const CategoryHomeSection({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final categories = [
//       {
//         "imageCategory": "assets/images/category_test.png",
//         "titleCategory": "Fashion"
//       },
//       {"imageCategory": "assets/images/Beauty.png", "titleCategory": "Beauty"},
//       {"imageCategory": "assets/images/Bags.png", "titleCategory": "Bags"},
//       {
//         "imageCategory": "assets/images/Accessories.png",
//         "titleCategory": "Accessor"
//       },
//       {
//         "imageCategory": "assets/images/Skincare.png",
//         "titleCategory": "Skincare"
//       },
//     ];

//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         // mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: List.generate(
//           categories.length,
//           (index) => Padding(
//             padding: const EdgeInsets.only(right: 20),
//             child: GestureDetector(
//               onTap: () {
//                 context.pushNamed(
//                   Routes.categoryScreen,
//                   arguments: index,
//                 );
//               },
//               child: CategoryContainer(
//                 imageCategory: categories[index]["imageCategory"]!,
//                 titleCategory: categories[index]["titleCategory"]!,
//                 isSelected: false,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
