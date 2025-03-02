import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/styles.dart';
import '../../../core/theme/colors.dart';

class CustomCardContent extends StatelessWidget {
  const CustomCardContent({super.key, this.isPayouts});
  final bool? isPayouts;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> orders = [
      {
        "amount": "SAR 542".tr(context),
        "status": "NEW".tr(context),
        "statusColor": Colors.purple.withOpacity(0.7),
        "customer": "Mariam Fawzy".tr(context),
        "phone": "+971 98 234 8903".tr(context),
        "creationDate": "23/8/2024, 9:56 pm".tr(context),
      },
      {
        "amount": "SAR 542",
        "status": "CAPTURED",
        "statusColor": ColorsManagers.lightGreen,
        "customer": "Mariam Fawzy".tr(context),
        "phone": "+971 98 234 8903".tr(context),
        "creationDate": "23/8/2024, 9:56 pm".tr(context),
      },
      {
        "amount": "SAR 542",
        "status": "CAPTURED",
        "statusColor": Colors.green,
        "customer": "Mariam Fawzy".tr(context),
        "phone": "+971 98 234 8903".tr(context),
        "creationDate": "23/8/2024, 9:56 pm".tr(context),
      },
      {
        "amount": "SAR 542",
        "status": "CAPTURED",
        "statusColor": ColorsManagers.lightGreen,
        "customer": "Mariam Fawzy".tr(context),
        "phone": "+971 98 234 8903".tr(context),
        "creationDate": "23/8/2024, 9:56 pm".tr(context),
      },
    ];

    return Scaffold(
      backgroundColor: ColorsManagers.cultured,
      body: Column(
        children: [
          verticalSpacing(20.h(context)),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: isPayouts == true ? 3 : orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return FadeInRight(
                  delay: Duration(milliseconds: 150 * index),
                  child: OrderCard(
                    amount: order['amount'],
                    status: order['status'],
                    statusColor: order['statusColor'],
                    customer: order['customer'],
                    phone: order['phone'],
                    creationDate: order['creationDate'],
                    customerLabel: "customer".tr(context),
                    phoneLabel: "phone".tr(context),
                    creationDateLabel: "creationDate".tr(context),
                    isPayouts: isPayouts,
                  ),
                );
              },
            ),
          ),
          verticalSpacing(50.h(context)),
        ],
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String amount;
  final String status;
  final Color statusColor;
  final String customer;
  final String phone;
  final String creationDate;
  final String customerLabel;
  final String phoneLabel;
  final String creationDateLabel;
  final bool? isPayouts;

  const OrderCard({
    required this.amount,
    required this.status,
    required this.statusColor,
    required this.customer,
    required this.phone,
    required this.creationDate,
    required this.customerLabel,
    required this.phoneLabel,
    required this.creationDateLabel,
    this.isPayouts,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0),
      child: Card(
        color: Colors.white,
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    amount,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  isPayouts == true
                      ? Container()
                      : Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          decoration: BoxDecoration(
                            color: statusColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          child: Text(
                            status,
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: statusColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                ],
              ),
              Divider(color: ColorsManagers.softgrey),
              verticalSpacing(8.h(context)),
              _buildRow(customerLabel, customer),
              verticalSpacing(16.h(context)),
              _buildRow(phoneLabel, phone),
              verticalSpacing(16.h(context)),
              _buildRow(creationDateLabel, creationDate),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
              color: ColorsManagers.grey1,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        Text(
          value,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
