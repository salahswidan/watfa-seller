import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../logic/model/on_boarding_model.dart';

class ImagesSection extends StatelessWidget {
  const ImagesSection({
    super.key,
    required this.onBoardingData,
    required this.currentIndex,
    required this.isOut,
  });
  final List<OnBoardingModel> onBoardingData;
  final int currentIndex;
  final bool isOut;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 505.h(context),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedPositionedDirectional(
            top: onBoardingData[currentIndex].firstSmallImageTop.h(context),
            end: isOut
                ? 0
                : onBoardingData[currentIndex].firstSmallImageRight.w(context),
            duration: const Duration(milliseconds: 300),
            child: Image.asset(onBoardingData[currentIndex].firstSmallImage,
                height: onBoardingData[currentIndex]
                    .firstSmallImageHeight
                    .h(context)),
          ),
          Positioned(
            top: currentIndex == 2 ? 190.h(context) : 155.h(context),
            child: AnimatedScale(
              scale: isOut ? 0 : 1,
              duration: const Duration(milliseconds: 300),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    "assets/images/purple_circle.png",
                    width: currentIndex == 2 ? 180.w(context) : 220.w(context),
                    height: currentIndex == 2 ? 200.w(context) : 220.h(context),
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    onBoardingData[currentIndex].image,
                    width: currentIndex == 2 ? 430.w(context) : 412.w(context),
                    height: currentIndex == 0
                        ? 270.h(context)
                        : currentIndex == 1
                            ? 300.h(context)
                            : 230.h(context),
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositionedDirectional(
            top: onBoardingData[currentIndex].secondSmallImageTop.h(context),
            end: isOut
                ? 412.w(context)
                : onBoardingData[currentIndex].secondSmallImageRight.w(context),
            duration: const Duration(milliseconds: 300),
            child: Image.asset(onBoardingData[currentIndex].secondSmallImage,
                height: onBoardingData[currentIndex]
                    .secondSmallImageHeight
                    .h(context)),
          ),
        ],
      ),
    );
  }
}
