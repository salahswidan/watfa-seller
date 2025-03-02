import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/theme/styles.dart';
import 'package:watfa/features/select_plan/presentation/section/order_complate_screen.dart';
import '../../../../core/helpers/spacing.dart';

class ConfirmScreen extends StatefulWidget {
  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OrderComplateScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpacing(40.h(context)),
              Center(child: CircularProgressIndicator(strokeWidth: 7)),
              verticalSpacing(100.h(context)),
              Text(
                "please wait for complete the checkout process".tr(context),
                textAlign: TextAlign.center,
                style: TextStyles.font24BlackW500Outfit(context),
              ),
              verticalSpacing(20.h(context)),
              Text(
                "to ensure the order is successful, please follow instructions sent to your registered number via SMS"
                    .tr(context),
                textAlign: TextAlign.center,
                style: TextStyles.font16SonicSilverW400Outfit(context),
              ),
              verticalSpacing(30.h(context)),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
              verticalSpacing(16.h(context)),
              _buildDetailRow("Phone number", "+91987654321", context),
              _buildDetailRow("Total Amount", "SAR 84.00", context),
              _buildDetailRow("Expired Time", "23/8/2024, 9:56 pm", context),
              verticalSpacing(16.h(context)),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
              verticalSpacing(94.h(context)),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Text(
                  "Cancel This Order".tr(context),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title.tr(context),
            style: TextStyles.font13BlackW600Roboto(context),
          ),
          Text(
            value.tr(context),
            style: TextStyles.font13BlackW600Roboto(context),
          ),
        ],
      ),
    );
  }
}
