import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:file_picker/file_picker.dart'; // Import for file picker
import '../theme/colors.dart';
import '../theme/styles.dart';

class AuthTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? suffixIcon;
  final bool? isPassword;
  final bool? isUploaded;
  final TextInputType? keyboardType;
  final bool readOnly;
  final bool? hintIsDark;
  final bool needPrefixIcon;
  final Widget? prefixIcon;
  final Widget? suffixIconWidget;

  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final Function(String?) validator;
  const AuthTextFormField({
    super.key,
    this.isUploaded,
    required this.controller,
    this.hintText,
    this.suffixIcon,
    this.isPassword,
    this.keyboardType,
    this.readOnly = false,
    this.needPrefixIcon = false,
    this.prefixIcon,
    this.hintIsDark,
    this.suffixIconWidget,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    required this.validator,
  });

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: TextFormField(
        validator: (value) => widget.validator(value),
        readOnly: widget.readOnly,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        obscuringCharacter: "*",
        obscureText: widget.isPassword ?? false ? isObscured : false,
        controller: widget.controller,
        style: TextStyles.font14Blackw500Poppins(context),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: ColorsManagers.purple,
            ),
          ),
          prefixIcon: widget.isUploaded == true
              ? InkWell(
                  onTap: () async {
                    try {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles();
                      if (result != null) {
                        PlatformFile file = result.files.first;
                        print("File selected: ${file.name}");
                      } else {
                        print("File selection canceled");
                      }
                    } catch (e) {
                      print("Error picking file: $e");
                    }
                  },
                  child: Center(
                      child: Image.asset(
                    "assets/images/Upload_to_the_Cloud.png",
                    height: 27,
                    width: 27,
                  )),
                )
              : widget.needPrefixIcon
                  ? widget.prefixIcon
                  : null,
          suffixIcon: widget.isPassword ?? false
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscured = !isObscured;
                    });
                  },
                  child: SvgPicture.asset(
                    isObscured
                        ? "assets/svgs/password_text_field_icon.svg"
                        : "assets/svgs/password_text_field_show_icon.svg",
                    fit: BoxFit.scaleDown,
                    height: 10,
                    width: 25,
                  ),
                )
              : widget.suffixIcon == null
                  ? widget.suffixIconWidget
                  : SvgPicture.asset(
                      widget.suffixIcon!,
                      fit: BoxFit.scaleDown,
                      height: 18,
                      width: 18,
                    ),
          suffixIconConstraints: widget.suffixIconConstraints,
          hintStyle: widget.hintIsDark == true
              ? TextStyles.font14DarkGrayW500Poppins(context)
              : TextStyles.font14Greyw500Poppins(context),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
