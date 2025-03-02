import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../widget/social_circle_avatar.dart';

class SocialAuth extends StatelessWidget {
  final void Function()? onTapFaceBook, onTapGoogle, onTapApple;
  const SocialAuth({
    super.key,
    required this.onTapFaceBook,
    required this.onTapGoogle,
    required this.onTapApple,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialCircleAvatar(
            icon: 'assets/svgs/face_book.svg',
            onTap: onTapFaceBook,
          ),
          if (!kIsWeb && Platform.isIOS)
            SocialCircleAvatar(
              icon: 'assets/svgs/apple.svg',
              onTap: onTapApple,
            ),
          if (!kIsWeb && Platform.isAndroid)
            SocialCircleAvatar(
              icon: 'assets/svgs/google.svg',
              onTap: onTapGoogle,
            ),
        ],
      ),
    );
  }
}
