import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/features/orders_and_payouts/widgets/custom_card_content.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/styles.dart';

class RadioBotton extends StatefulWidget {
  @override
  _CustomRadioButtonWidgetState createState() =>
      _CustomRadioButtonWidgetState();
}

class _CustomRadioButtonWidgetState extends State<RadioBotton> {
  String? _vatStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do You Have A VAT Registration?".tr(context),
            style: TextStyles.font14raisinBlackW700Poppins(context),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 17.0),
            child: Row(
              children: [
                _buildCustomRadioButton("Yes".tr(context)),
                horizontalSpacing(16),
                _buildCustomRadioButton("No".tr(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomRadioButton(String value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _vatStatus = value;
        });
      },
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _vatStatus == value
                  ? ColorsManagers.purple
                  : Colors.grey[300], // Gray when unselected
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: _vatStatus == value
                ? Icon(Icons.circle,
                    size: 14, color: Colors.grey[300]) // inside color
                : null,
          ),
          horizontalSpacing(6),
          Text(value, style: TextStyles.font14raisinBlackW700Poppins(context)),
        ],
      ),
    );
  }
}
