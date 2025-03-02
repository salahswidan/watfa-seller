import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';

class BankInformationScreenForm extends StatelessWidget {
  const BankInformationScreenForm({super.key});

  // Method to check if the current direction is RTL
  bool _isRtl(BuildContext context) {
    return Directionality.of(context) == TextDirection.rtl;
  }

  // Helper method to build label with alignment based on RTL or LTR
  Widget _buildLabel(BuildContext context, String text, {Duration? delay}) {
    return FadeInRight(
      delay: delay ?? Duration.zero,
      child: Container(
        alignment:
            _isRtl(context) ? Alignment.centerRight : Alignment.centerLeft,
        child: Text(
          text.tr(context),
          style: TextStyles.font14raisinBlackW700Poppins(context),
        ),
      ),
    );
  }

  // Helper method to build text fields with animation and other properties
  Widget _buildTextField({
    required BuildContext context,
    required String validatorText,
    required TextEditingController controller,
    String? hintText,
    bool readOnly = false,
    bool isUploaded = false,
    bool needPrefixIcon = false,
    bool hintIsDark = false,
    Duration? delay,
  }) {
    return FadeInRight(
      delay: delay ?? Duration.zero,
      child: AuthTextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validatorText.tr(context);
          }
          return null;
        },
        hintText: hintText?.tr(context) ?? '',
        controller: controller,
        readOnly: readOnly,
        isUploaded: isUploaded,
        needPrefixIcon: needPrefixIcon,
        hintIsDark: hintIsDark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Controllers for form fields
    final ibanController = TextEditingController();
    final beneficiaryNameController = TextEditingController();
    final emailForSettlementDetailsController = TextEditingController();
    final bankSWIFTCodeController = TextEditingController();
    final iBANLetterController = TextEditingController();

    return Directionality(
      textDirection: _isRtl(context) ? TextDirection.rtl : TextDirection.ltr,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildLabel(context, "IBAN"),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid IBAN",
              controller: ibanController,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Beneficiary Name",
                delay: const Duration(milliseconds: 300)),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid Beneficiary Name",
              controller: beneficiaryNameController,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Bank SWIFT Code"),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid Bank SWIFT Code",
              controller: bankSWIFTCodeController,
              needPrefixIcon: true,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Email for Settlement Details",
                delay: const Duration(milliseconds: 300)),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid Email",
              controller: emailForSettlementDetailsController,
              hintText: "example@domain.com",
              hintIsDark: true,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Upload Your IBAN Letter"),
            _buildTextField(
              context: context,
              validatorText: "Please upload a valid IBAN Letter",
              controller: iBANLetterController,
              needPrefixIcon: true,
              delay: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}
