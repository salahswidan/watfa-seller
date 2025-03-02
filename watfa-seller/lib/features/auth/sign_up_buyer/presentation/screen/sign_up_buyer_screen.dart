// import 'package:flutter/material.dart';
// import 'package:watfa/core/Local/AppLocalizations.dart';
// import '../../../../../core/helpers/spacing.dart';
// import '../../../../../core/theme/styles.dart';
// import '../../../../../core/widgets/custom_gradient_container.dart';
// import '../../../login/presentation/section/social_auth.dart';
// import '../section/already_have_an_account.dart';
// import '../section/fixed_data.dart';
// import '../section/sign_up_buyer_bloc_listener.dart';
// import '../section/sign_up_buyer_form.dart';

// class SignUpBuyerScreen extends StatelessWidget {
//   const SignUpBuyerScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: CustomGradientContainer(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: CustomScrollView(
//             slivers: [
//               SliverList(
//                 delegate: SliverChildListDelegate(
//                   [
//                     FixedData(),
//                     SignUpBuyerForm(),
//                     verticalSpacing(25),
//                     SignUpBuyerBlocListener(),
//                     verticalSpacing(40),
//                     Center(
//                       child: Text(
//                         "sign up using".tr(context),
//                         style:
//                             TextStyles.font15CharlestonGreenw400Roboto(context),
//                       ),
//                     ),
//                     SocialAuth(
//                       onTapGoogle: () {
//                         // context.read<LoginCubit>().loginWithGoogle();
//                       },
//                       onTapApple: () {
//                         // context.read<LoginCubit>().loginWithApple();
//                       },
//                       onTapFaceBook: () {
//                         // context.read<LoginCubit>().loginWithFacebook();
//                       },
//                     ),
//                     const AlreadyHaveAnAccount(),
//                     verticalSpacing(30),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
