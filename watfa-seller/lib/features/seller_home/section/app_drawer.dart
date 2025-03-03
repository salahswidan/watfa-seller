import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/theme/styles.dart';
import 'package:watfa/features/auth/get_started/presentation/screen/get_started_screen.dart';
import 'package:watfa/features/notifications/presentation/screen/notifications_screen.dart';
import 'package:watfa/features/orders_and_payouts/screens/order_screen.dart';
import 'package:watfa/features/orders_and_payouts/section/payouts_screen.dart';
import 'package:watfa/features/seller_done_home/screens/done_seller_home_screen.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theme/colors.dart';
import '../../settings/presentation/widget/logut_elevated_button.dart';
import '../widgets/company_edit_image.dart';
import 'package:watfa/core/Local/local_cubit.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTransitionDrawer();
  }
}

class SlideTransitionDrawer extends StatefulWidget {
  @override
  _SlideTransitionDrawerState createState() => _SlideTransitionDrawerState();
}

class _SlideTransitionDrawerState extends State<SlideTransitionDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: Drawer(
        child: Container(
          color: ColorsManagers.newPink,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildHeader(context),
                Divider(color: Color(0xffE2E4E5)),
                verticalSpacing(22.h(context)),
                _buildMenuItems(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 27.0, top: 55),
          child: CompanyEditImage(),
        ),
        verticalSpacing(isSmallScreen ? 8.h(context) : 16.h(context)),
        Text(
          textAlign: TextAlign.center,
          'noon store'.tr(context),
          style: isSmallScreen
              ? TextStyles.font29Blackw800Inter(context)
              : TextStyles.font29Blackw800Inter(context),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 7),
          child: Text(
            'Beauty store'.tr(context),
            style: TextStyles.font18darkGrayw400Inter(context),
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItems(BuildContext context) {
    final menuItems = [
      {
        'title': 'Home'.tr(context),
        'onTap': () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => DoneSellerHomeScreen()),
              (route) => false);
        }
      },
      {
        'title': 'Orders'.tr(context),
        'onTap': () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => OrderScreen()));
        }
      },
      {
        'title': 'Payouts'.tr(context),
        'onTap': () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => PayoutsScreen()));
        }
      },
      {
        'title': 'Notifications'.tr(context),
        'onTap': () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => NotificationsScreen()));
        }
      },
      {
        'title': 'Language'.tr(context),
        'onTap': () {
          final currentLocale =
              LocalCubit.get(context).state is ChangeLocaleState
                  ? (LocalCubit.get(context).state as ChangeLocaleState)
                      .local
                      .languageCode
                  : 'en';
          String newLocale = currentLocale == 'ar' ? 'en' : 'ar';

          LocalCubit.get(context).changeLanguage(newLocale);
        }
      },
    ];

    return Column(
      children: [
        for (var item in menuItems)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListTile(
              title: Text(
                item['title'] as String,
                style: TextStyles.font20Blackw700Inter(context),
              ),
              onTap: item['onTap'] as VoidCallback?,
            ),
          ),
        verticalSpacing(50.h(context)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListTile(
            leading: Image.asset("assets/images/logout.png"),
            title: Text(
              'Log Out'.tr(context),
              style: TextStyles.font18PurpleW400Manropes(context),
            ),
            onTap: () {
              showLogOutDialog(context);
            },
          ),
        ),
      ],
    );
  }
}

Future<dynamic> showLogOutDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Are you sure you want to log out?".tr(context),
                  style: TextStyles.font20Blackw500Poppins(context),
                  textAlign: TextAlign.center,
                ),
                verticalSpacing(50.h(context)),
                Row(
                  children: [
                    Expanded(
                      child: LogutElevatedButton(
                        text: "Confirm".tr(context),
                        onTap: () {
                          CacheServices.instance.removeUserModel();
                          context.pop();
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => GetStartedScreen()),
                              (route) => false);
                        },
                      ),
                    ),
                    horizontalSpacing(30),
                    Expanded(
                      child: LogutElevatedButton(
                        text: "Cancel".tr(context),
                        onTap: () {
                          context.pop();
                        },
                      ),
                    ),
                  ],
                )
              ]),
        ));
      });
}
