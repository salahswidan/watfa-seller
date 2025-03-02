import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watfa/core/theme/colors.dart';

class CompanyEditImage extends StatelessWidget {
  const CompanyEditImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: 1.0,
      duration: const Duration(milliseconds: 500),
      child: Center(
        child: SizedBox(
          height: 68,
          width: 68,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorsManagers.purple, width: 3),
                ),
                padding: const EdgeInsets.all(5),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/campany_name.png',
                  ),
                  radius: 65,
                ),
              ),
              Positioned(
                right: -3,
                top: -1,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsManagers.purple,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/svgs/profile_image_edit.svg",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
