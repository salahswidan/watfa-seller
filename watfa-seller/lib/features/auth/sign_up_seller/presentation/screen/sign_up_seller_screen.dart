import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/custom_gradient_container.dart';
import '../../../get_started/presentation/widgets/get_started_button.dart';
import '../../../login/presentation/widget/logo.dart';
import '../section/sign_up_seller_form.dart';

class SignUpSellerScreen extends StatefulWidget {
  const SignUpSellerScreen({super.key});

  @override
  State<SignUpSellerScreen> createState() => _SignUpSellerScreenState();
}

class _SignUpSellerScreenState extends State<SignUpSellerScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomGradientContainer(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    child: Column(
                      children: [
                        verticalSpacing(90.h(context)),
                        const Logo(),
                        verticalSpacing(40.h(context)),
                        SignUpSellerForm(
                          currentIndex: currentIndex,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20)
                        .copyWith(bottom: 50.h(context)),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: currentIndex == 2 ? const SizedBox() : GetStartedButton(
                        text: currentIndex == 0
                            ? 'Next'.tr(context)
                            : currentIndex == 1
                                ? 'Continue'.tr(context)
                                : "Send".tr(context),
                        onTap: () {
                          currentIndex != 2
                              ? setState(() {
                                  currentIndex++;
                                })
                              : context.pushNamed(Routes.loginScreen);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
