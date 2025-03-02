import 'package:flutter/material.dart';
import 'package:watfa/features/auth/sign_up_seller/presentation/section/third_sign_up_seller_form.dart';
import 'first_sign_up_seller_form.dart';
import 'second_sign_up_seller_form.dart';

class SignUpSellerForm extends StatelessWidget {
  final int currentIndex;

  const SignUpSellerForm({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return _buildForm()[currentIndex];
  }

  List<Widget> _buildForm() {
    return [
      const FirstSignUpSellerForm(),
      const SecondSignUpSellerForm(),
      const ThirdSignUpSellerForm(),
    ];
  }
}
