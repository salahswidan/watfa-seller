import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../theme/styles.dart';
import 'default_back_arrow.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final bool? hasBackArrow;
  final bool? isSeller;
  final bool? isRoute;
  const DefaultAppBar({
    super.key,
    this.title,
    this.hasBackArrow,
    this.titleWidget,
    this.isSeller,
    this.isRoute,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(45),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: hasBackArrow ?? true,
        title: title != null
            ? FadeInDown(
                child: Text(
                  title!,
                  style: isSeller == true
                      ? TextStyles.font24BlackW800Roboto(context)
                      : TextStyles.font20PurpleW700Manrope(context),
                ),
              )
            : titleWidget != null
                ? FadeInDown(child: titleWidget!)
                : null,
        leading: hasBackArrow ?? true
            ? Padding(
                padding: EdgeInsets.only(
                  left: Localizations.localeOf(context).languageCode == 'ar'
                      ? 0
                      : 20,
                  right: Localizations.localeOf(context).languageCode == 'ar'
                      ? 20
                      : 0,
                ),
                child: FadeInLeft(child:isRoute == true ? DefaultBackArrow(isRoute: true,) : DefaultBackArrow()),
              )
            : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
