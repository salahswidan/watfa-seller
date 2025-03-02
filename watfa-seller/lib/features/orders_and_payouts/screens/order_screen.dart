// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:animate_do/animate_do.dart';
// import 'package:watfa/core/Local/AppLocalizations.dart';
// import 'package:watfa/core/helpers/extinsions.dart';
// import 'package:watfa/core/helpers/spacing.dart';
// import 'package:watfa/core/theme/styles.dart';
// import '../../../core/theme/colors.dart';
// import '../../../core/widgets/default_app_bar.dart';

// class OrderListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> orders = [
//       {
//         "amount": "SAR 542".tr(context),
//         "status": "NEW".tr(context),
//         "statusColor": Colors.purple.withOpacity(0.7),
//         "customer".tr(context): "mariam fawzy",
//         "phone".tr(context): "+971 98 234 8903",
//         "creationDate".tr(context): "23/8/2024, 9:56 pm",
//       },
//       {
//         "amount": "SAR 542",
//         "status": "CAPTURED",
//         "statusColor": ColorsManagers.lightGreen,
//         "customer": "mariam fawzy",
//         "phone": "+971 98 234 8903",
//         "creationDate": "23/8/2024, 9:56 pm"
//       },
//       {
//         "amount": "SAR 542",
//         "status": "CAPTURED",
//         "statusColor": Colors.green,
//         "customer": "mariam fawzy",
//         "phone": "+971 98 234 8903",
//         "creationDate": "23/8/2024, 9:56 pm"
//       },
//       {
//         "amount": "SAR 542",
//         "status": "CAPTURED",
//         "statusColor": Colors.green,
//         "customer": "mariam fawzy",
//         "phone": "+971 98 234 8903",
//         "creationDate": "23/8/2024, 9:56 pm"
//       },
//     ];

//     return Scaffold(
//       appBar: DefaultAppBar(
//         isSeller: true,
//         hasBackArrow: true,
//         title: "Orders".tr(context),
//       ),
//       backgroundColor: ColorsManagers.cultured,
//       body: Column(
//         children: [
//           verticalSpacing(20.h(context)),
//           Expanded(
//             child: ListView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               itemCount: orders.length,
//               itemBuilder: (context, index) {
//                 final order = orders[index];
//                 return FadeInRight(
//                   delay: Duration(milliseconds: 150 * index),
//                   child: OrderCard(
//                     amount: order['amount'],
//                     status: order['status'],
//                     statusColor: order['statusColor'],
//                     customer: order['customer'],
//                     phone: order['phone'],
//                     creationDate: order['creationDate'],
//                   ),
//                 );
//               },
//             ),
//           ),
//           verticalSpacing(50.h(context)),
//         ],
//       ),
//     );
//   }
// }

// class OrderCard extends StatelessWidget {
//   final String amount;
//   final String status;
//   final Color statusColor;
//   final String customer;
//   final String phone;
//   final String creationDate;

//   const OrderCard({
//     required this.amount,
//     required this.status,
//     required this.statusColor,
//     required this.customer,
//     required this.phone,
//     required this.creationDate,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 2.0),
//       child: Card(
//         color: Colors.white,
//         elevation: 2.0,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     amount,
//                     style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
//                     decoration: BoxDecoration(
//                       color: statusColor.withOpacity(0.1),
//                       borderRadius: BorderRadius.circular(7.0),
//                     ),
//                     child: Text(
//                       status,
//                       style: GoogleFonts.inter(
//                         fontSize: 14,
//                         color: statusColor,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Divider(color: ColorsManagers.softgrey),
//               verticalSpacing(8.h(context)),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Customer',
//                     style: TextStyles.font14grey1w400Inter(context),
//                   ),
//                   Text(
//                     customer,
//                     style: TextStyles.font14Blackw500Inter(context),
//                   ),
//                 ],
//               ),
//               verticalSpacing(16.h(context)),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Phone',
//                     style: TextStyles.font14grey1w400Inter(context),
//                   ),
//                   Text(
//                     phone,
//                     style: TextStyles.font14Blackw500Inter(context),
//                   ),
//                 ],
//               ),
//               verticalSpacing(16.h(context)),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Creation date',
//                     style: TextStyles.font14grey1w400Inter(context),
//                   ),
//                   Text(
//                     creationDate,
//                     style: TextStyles.font14Blackw500Inter(context),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../core/widgets/default_app_bar.dart';
import '../widgets/custom_card_content.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        isSeller: true,
        hasBackArrow: true,
        title: "Orders".tr(context),
      ),
      body: CustomCardContent(),
    );
  }
}
