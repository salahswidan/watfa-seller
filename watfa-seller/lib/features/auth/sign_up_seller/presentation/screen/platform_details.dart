import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/features/seller_home/screens/seller_home_screen.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../../../core/widgets/default_app_bar.dart';
import '../../../get_started/presentation/widgets/get_started_button.dart';

class PlatformDetailScreen extends StatefulWidget {
  final String title;
  final String subTitle;
  final int numberOfFileds;
  final List<String> filedsNames;

  const PlatformDetailScreen({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.numberOfFileds,
    required this.filedsNames,
  }) : super(key: key);

  @override
  _PlatformDetailScreenState createState() => _PlatformDetailScreenState();
}

class _PlatformDetailScreenState extends State<PlatformDetailScreen> {
  final _formKey = GlobalKey<FormState>();
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers =
        List.generate(widget.numberOfFileds, (_) => TextEditingController());
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        isSeller: true,
        hasBackArrow: true,
        title: widget.title.tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: FadeInRight(
        delay: const Duration(milliseconds: 150),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  widget.subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyles.font16purpleW400Roboto(context),
                ),
                verticalSpacing(22.h(context)),
                for (int i = 0; i < widget.numberOfFileds; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.filedsNames[i],
                        textAlign: TextAlign.start,
                        style: TextStyles.font14Jetw700Poppins(context),
                      ),
                      AuthTextFormField(
                        controller: _controllers[i],
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your ${widget.filedsNames[i]}'
                                .tr(context);
                          }
                          return null;
                        },
                      ),
                      verticalSpacing(30.h(context)),
                    ],
                  ),
                Spacer(),
                GetStartedButton(
                  isSeller: true,
                  onTap: () {
                    //!
                    if (_formKey.currentState!.validate()) {
                   
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => SellerHomeScreen()),
                          (route) => false);
                    }
                  },
                  text: "Send".tr(context),
                ),
                verticalSpacing(80.h(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
