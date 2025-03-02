import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../../core/theme/styles.dart';
import '../section/radio_switch.dart';

class RadioListTileForm extends StatefulWidget {
  final String title, subtitle;
 // final bool? isHorzantal;
  const RadioListTileForm({
    super.key,
    required this.title,
    required this.subtitle,
 //   this.isHorzantal
  });

  @override
  State<RadioListTileForm> createState() => _RadioListTileFormState();
}

class _RadioListTileFormState extends State<RadioListTileForm> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RadioSwitch(
                isSelected: isSelected,
              ),
              horizontalSpacing(10.w(context)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title,
                        style: TextStyles.font14Blackw500Poppins(context)),
                    verticalSpacing(6),
                    Text(
                      widget.subtitle,
                      style: TextStyles.font11Greyw500Poppins(context),
                    ),
                  ],
                ),
              )
            ],
          )

          // ListTile(
          //   hoverColor: Colors.transparent,
          //   titleAlignment: ListTileTitleAlignment.top,
          //   title: Text(widget.title, style: TextStyles.font14Blackw500Poppins(context)),
          //   subtitle: Text(
          //     widget.subtitle,
          //     style: TextStyles.font11Greyw500Poppins(context),
          //   ),
          //   leading: RadioSwitch(
          //     isSelected: isSelected,
          //   ),
          // ),
          ),
    );
  }
}
