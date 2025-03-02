import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/Local/AppLocalizations.dart';
import 'core/Local/local_cubit.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class WatfaApp extends StatelessWidget {
  final AppRouter appRouter;
  const WatfaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalCubit()..getSavedLanguage(),
      child: BlocBuilder<LocalCubit, LocalState>(
        builder: (context, state) {
          return MaterialApp(
            supportedLocales: const [Locale('en'), Locale('ar')],
            locale:
                state is ChangeLocaleState ? state.local : const Locale('ar'),
            builder: DevicePreview.appBuilder,
            title: 'Watfa App',
            theme: ThemeData(
              // primaryColor: ColorsManagers.mainblue,
              scaffoldBackgroundColor: Colors.white,
            ),
            localizationsDelegates: const [
              AppLocalizations
                  .delegate, // Localization basedon mobile defaulte language
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            debugShowCheckedModeBanner: false,
            //! here
            initialRoute: setinitialRoute(),
            // CacheServices.instance.getUserType() != null
            //     ? Routes.onBoardingScreen
            //     :

            // initialRoute: CacheServices.instance.getOnBoarding()
            //     ? CacheServices.instance.getUserModel() != null
            //         ? Routes.homeScreen
            //         : Routes.loginScreen
            //     : Routes.onBoardingScreen,
            onGenerateRoute: appRouter.generateRoute,
          );
        },
      ),
    );
  }
}

String setinitialRoute() {
  final currentRoute = CacheServices.instance.getCurrentRoute();
  debugPrint('Initial route: $currentRoute'); 
  if (currentRoute != null && currentRoute.isNotEmpty) {
    return currentRoute;
  }
  return CacheServices.instance.getUserModel() != null
      ? Routes.mainScreen
      : CacheServices.instance.getUserType() != null
          ? Routes.loginScreen
          : CacheServices.instance.getOnBoarding()
              ? Routes.getStartedScreen
              : Routes.onBoardingScreen;
}
