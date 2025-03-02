import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../core/theme/colors.dart';
import '../../../core/helpers/spacing.dart';

class StepProgressWidget extends StatelessWidget {
  final List<StepData> steps;

  const StepProgressWidget({
    Key? key,
    required this.steps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(steps.length * 2 - 1, (index) {
          if (index.isEven) {
            final stepIndex = index ~/ 2;
            final step = steps[stepIndex];
            return _buildStepIndicator(
              step.title,
              isActive: step.isActive,
              stepNumber: step.stepNumber,
              onTapNav: step.onTapNav,
            );
          } else {
            final isActive = steps[(index - 1) ~/ 2].isActive;
            return Column(children: [
              SizedBox(
                height: 15.h(context),
              ),
              _buildStepConnector(isActive: isActive)
            ]);
          }
        }),
      ),
    );
  }

  Widget _buildStepIndicator(
    String title, {
    required bool isActive,
    int? stepNumber,
    GestureTapCallback? onTapNav,
  }) {
    return GestureDetector(
      onTap: onTapNav,
      child: FadeInRight(
        delay: const Duration(milliseconds: 150),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 8),
            ),
            verticalSpacing(6),
            CircleAvatar(
              backgroundColor: ColorsManagers.purple,
              radius: 17,
              child: CircleAvatar(
                radius: 16,
                backgroundColor:
                    isActive ? ColorsManagers.purple : Colors.white,
                child: isActive
                    ? const Icon(Icons.check, color: Colors.white, size: 18)
                    : Text(
                        '$stepNumber',
                        style: GoogleFonts.manrope(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepConnector({required bool isActive}) {
    return FadeInRight(
      delay: const Duration(milliseconds: 150),
      child: Container(
        width: 60,
        height: 4,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isActive
                ? [ColorsManagers.purple, ColorsManagers.paleLavender]
                : [ColorsManagers.paleLavender, Colors.grey.shade300],
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}

class StepData {
  final String title;
  final bool isActive;
  final int? stepNumber;
  final GestureTapCallback? onTapNav;

  StepData({
    required this.title,
    required this.isActive,
    this.stepNumber,
    this.onTapNav,
  });
}
