import 'dart:async';
import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/model/on_boarding_model.dart';
import '../section/images_section.dart';
import '../section/title_and_description.dart';
import '../widgets/custom_button.dart';
import '../widgets/onboarding_dot.dart';

class OnBoardingScreen extends StatefulWidget {
  final List<OnBoardingModel> onBoardingData;
  const OnBoardingScreen({super.key, required this.onBoardingData});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreen();
}

class _OnBoardingScreen extends State<OnBoardingScreen> {
  int currentIndex = 0;
  bool isOut = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImagesSection(
                onBoardingData: widget.onBoardingData,
                currentIndex: currentIndex,
                isOut: isOut),
            verticalSpacing(5.h(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => OnboardingDot(done: index == currentIndex),
              ),
            ),
            Flexible(child: verticalSpacing(40)),
            Expanded(
              flex: 4,
              child: TitleAndDescription(
                  isOut: isOut,
                  onBoardingData: widget.onBoardingData,
                  currentIndex: currentIndex),
            ),
            Expanded(flex: 1, child: verticalSpacing(5.h(context))),
            CustomButton(
              onTap: () {
                setState(() {
                  isOut = !isOut;
                });
                Timer(const Duration(milliseconds: 300), () {
                  currentIndex > 1
                      ? {
                          saveOnBoardingState(),
                          context.pushReplacementNamed(Routes.getStartedScreen),
                        }
                      : currentIndex = currentIndex + 1;

                  setState(() {
                    isOut = !isOut;
                  });
                });
              },
            ),
            Flexible(flex: 2, child: verticalSpacing(50.h(context))),
          ],
        ),
      ),
    );
  }
}

saveOnBoardingState() async {
  await CacheServices.instance.setOnBoarding(true);
}
