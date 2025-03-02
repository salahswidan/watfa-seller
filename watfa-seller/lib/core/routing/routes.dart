import 'package:flutter/material.dart';
import 'package:watfa/features/home/presentation/screen/home_screen.dart';

class Routes {
  static const String onBoardingScreen = '/OnBoardingScreen';
  static const String getStartedScreen = '/GetStartedScreen';
  static const String loginScreen = '/LoginScreen';
  static const String forgotPasswordScreen = '/ForgotPasswordScreen';
  static const String resetPasswordScreen = '/ResetPasswordScreen';
  static const String passwordUpdatedScreen = '/PasswordUpdatedScreen';
  static const String signUpBuyerScreen = '/SignUpBuyerScreen';
  static const String verifyScreen = '/VerifyScreen';
  static const String signUpSellerScreen = '/SignUpSellerScreen';
  static const String homeScreen = '/HomeScreen';
  static const String categoryScreen = '/CategoryScreen';
  static const String profileScreen = '/ProfileScreen';
  static const String settingsScreen = '/SettingsScreen';
  static const String walletScreen = '/WalletScreen';
  static const String notificationsScreen = '/NotificationsScreen';
  static const String savedItemsScreen = '/SavedItemsScreen';
  static const String mainScreen = '/MainScreen';
  static const String paymentScreen = '/PaymentScreen';
  static const String purchaseScreen = '/PurchaseScreen';
  static const String shippingAddressScreen = '/ShippingAddressScreen';
  static const String selectPlanScreen = '/SelectPlanScreen';
  static const String paymentHomeScreen = '/PaymentHomeScreen';
  static const String addNewCardScreen = '/AddNewCardScreen';
  static const String bankAccountScreen = '/BankAccountScreen';
  static const String legalScreen = '/legalScreen';
  static const String bankInformationScreen = '/bankInformationScreen';
  static const String sellerHomeScreen = '/sellerHomeScreen';
  static const String doneSellerHomeScreen = '/doneSellerHomeScreen';
  static const String orderListPage = '/orderListPage';
  static const String payoutsScreen = '/payoutsScreen';
  static const String productDetails = '/productDetails';
  static const String verifyShopScreen = '/verifyShopScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ));
    }
  }
}
