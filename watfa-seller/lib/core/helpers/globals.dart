import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../features/settings/logic/models/card_model.dart';
import '../Local/local_cubit.dart';
import '../routing/routes.dart';

List<CardModel> settingsCardList(BuildContext context) => [
      // CardModel(
      //   title: 'Wallet'.tr(context),
      //   image: 'assets/images/Wallet.png',
      //   onTap: () {
      //     context.pushNamed(Routes.walletScreen);
      //   },
      // ),
      CardModel(
        title: 'Payment Methods'.tr(context),
        image: 'assets/images/Bank Cards.png',
        onTap: () {
          context.pushNamed(Routes.paymentHomeScreen);
        },
      ),
      CardModel(
        title: 'Bank account'.tr(context),
        image: 'assets/images/Merchant Account.png',
        onTap: () {
          context.pushNamed(Routes.bankAccountScreen);
        },
      ),
      CardModel(
        title: 'Saved items'.tr(context),
        image: 'assets/images/Bookmark.png',
        onTap: () {
          context.pushNamed(Routes.savedItemsScreen);
        },
      ),
      CardModel(
        title: 'Notifications'.tr(context),
        image: 'assets/images/Alarm.png',
        onTap: () {
          context.pushNamed(Routes.notificationsScreen);
        },
      ),
    ];
