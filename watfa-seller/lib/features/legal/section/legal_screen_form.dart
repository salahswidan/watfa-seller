import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../widgets/radio_botton.dart';

class LegalScreenForm extends StatelessWidget {
  const LegalScreenForm({super.key});

  bool _isRtl(BuildContext context) {
    return Directionality.of(context) == TextDirection.rtl;
  }

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
        hintText: hintText?.tr(context) ?? ''.tr(context),
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
    final TextEditingController flnController = TextEditingController();
    final TextEditingController companyNameController = TextEditingController();
    final TextEditingController websiteController = TextEditingController();
    final TextEditingController nationalIdController = TextEditingController();
    final TextEditingController nationalityController = TextEditingController();
    final TextEditingController licenseFileController = TextEditingController();
    final TextEditingController logoController = TextEditingController();
    final TextEditingController signatoryNameController =
        TextEditingController();
    final TextEditingController otherDocumentsController =
        TextEditingController();
    final TextEditingController idOfLegalSignatoryController =
        TextEditingController();
    final TextEditingController legalBusinessAddressController =
        TextEditingController();

    return Directionality(
      textDirection: _isRtl(context) ? TextDirection.rtl : TextDirection.ltr,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildLabel(context, "Freelancer License Number (FLN)"),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid FLN",
              controller: flnController,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Legal Company Name",
                delay: const Duration(milliseconds: 300)),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid Legal Company Name",
              controller: companyNameController,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Website",
                delay: const Duration(milliseconds: 300)),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid Website",
              controller: websiteController,
              hintText: "Https://Watfa.Com",
              hintIsDark: true,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "National ID / Iqama Number"),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid National ID / Iqama Number",
              controller: nationalIdController,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Nationality"),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid Nationality",
              controller: nationalityController,
              needPrefixIcon: true,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Upload your Freelancer license (FL) file"),
            _buildTextField(
              context: context,
              validatorText: "Please upload your Freelancer license (FL) file",
              controller: licenseFileController,
              readOnly: true,
              isUploaded: true,
              needPrefixIcon: true,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Upload your business logo"),
            _buildTextField(
              context: context,
              validatorText: "Please upload a valid business logo",
              controller: logoController,
              readOnly: true,
              isUploaded: true,
              needPrefixIcon: true,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Other documents"),
            _buildTextField(
              context: context,
              validatorText: "Please upload other documents",
              controller: otherDocumentsController,
              readOnly: true,
              isUploaded: true,
              needPrefixIcon: true,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(26),
            RadioBotton(),
            verticalSpacing(57),
            _buildLabel(context, "Legal Signatory Name"),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid Legal Signatory Name",
              controller: signatoryNameController,
              needPrefixIcon: true,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Upload The ID Of Legal Signatory"),
            _buildTextField(
              context: context,
              validatorText: "Please upload a valid ID Of Legal Signatory",
              controller: idOfLegalSignatoryController,
              readOnly: true,
              isUploaded: true,
              needPrefixIcon: true,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(11),
            _buildLabel(context, "Legal Business Address"),
            _buildTextField(
              context: context,
              validatorText: "Please enter a valid Legal Business Address",
              controller: legalBusinessAddressController,
              needPrefixIcon: true,
              delay: const Duration(milliseconds: 300),
            ),
            verticalSpacing(60),
          ],
        ),
      ),
    );
  }
}
