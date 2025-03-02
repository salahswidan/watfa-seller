import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/styles.dart';
import 'package:watfa/core/Local/local_cubit.dart';
import '../../home/presentation/widget/user_image.dart';

class SellerHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SellerHomeAppBar({super.key, this.isDone, this.onLanguageChanged});
  final bool? isDone;
  final VoidCallback? onLanguageChanged;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          const UserImage(),
          horizontalSpacing(10.w(context)),
          Text(
            "Company Name".tr(context),
            style: TextStyles.font20RaisinBlackw600Inter(context),
          ),
          Spacer(),
          isDone == false
              ? GestureDetector(
                  onTap: () {
                    final currentLocale =
                        LocalCubit.get(context).state is ChangeLocaleState
                            ? (LocalCubit.get(context).state as ChangeLocaleState)
                                .local
                                .languageCode
                            : 'en';
                    String newLocale = currentLocale == 'ar' ? 'en' : 'ar';

                    LocalCubit.get(context).changeLanguage(newLocale);
                    if (onLanguageChanged != null) {
                      onLanguageChanged!();
                    }
                  },
                  child: Text(
                    "العربية".tr(context),
                    style: const TextStyle(
                      fontFamily: "Arabic",
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              : SizedBox(width: 1,),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
