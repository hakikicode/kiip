import 'package:flutter/material.dart';
import 'package:kiip/presentation/splash_screen/splash_screen.dart';
import 'package:kiip/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:kiip/presentation/log_in_screen/log_in_screen.dart';
import 'package:kiip/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:kiip/presentation/home_container_screen/home_container_screen.dart';
import 'package:kiip/presentation/cards_screen/cards_screen.dart';
import 'package:kiip/presentation/card_details_screen/card_details_screen.dart';
import 'package:kiip/presentation/activity_screen/activity_screen.dart';
import 'package:kiip/presentation/profile_screen/profile_screen.dart';
import 'package:kiip/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:kiip/presentation/history_screen/history_screen.dart';
import 'package:kiip/presentation/notifications_screen/notifications_screen.dart';
import 'package:kiip/presentation/send_money_screen/send_money_screen.dart';
import 'package:kiip/presentation/enter_money_screen/enter_money_screen.dart';
import 'package:kiip/presentation/send_money_enter_password_screen/send_money_enter_password_screen.dart';
import 'package:kiip/presentation/add_person_screen/add_person_screen.dart';
import 'package:kiip/presentation/add_card_one_screen/add_card_one_screen.dart';
import 'package:kiip/presentation/payment_success_screen/payment_success_screen.dart';
import 'package:kiip/presentation/receive_money_request_tab_container_screen/receive_money_request_tab_container_screen.dart';
import 'package:kiip/presentation/request_sent_screen/request_sent_screen.dart';
import 'package:kiip/presentation/money_exchange_screen/money_exchange_screen.dart';
import 'package:kiip/presentation/pay_bill_screen/pay_bill_screen.dart';
import 'package:kiip/presentation/electric_bill_screen/electric_bill_screen.dart';
import 'package:kiip/presentation/bil_payment_success_screen/bil_payment_success_screen.dart';
import 'package:kiip/presentation/bank_to_bank_one_screen/bank_to_bank_one_screen.dart';
import 'package:kiip/presentation/bank_to_bank_two_screen/bank_to_bank_two_screen.dart';
import 'package:kiip/presentation/bank_to_bank_three_screen/bank_to_bank_three_screen.dart';
import 'package:kiip/presentation/money_sent_success_screen/money_sent_success_screen.dart';
import 'package:kiip/presentation/mobile_prepaid_one_screen/mobile_prepaid_one_screen.dart';
import 'package:kiip/presentation/mobile_prepaid_two_screen/mobile_prepaid_two_screen.dart';
import 'package:kiip/presentation/mobile_prepaid_three_screen/mobile_prepaid_three_screen.dart';
import 'package:kiip/presentation/recharge_success_screen/recharge_success_screen.dart';
import 'package:kiip/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String cardsScreen = '/cards_screen';

  static const String cardDetailsScreen = '/card_details_screen';

  static const String activityScreen = '/activity_screen';

  static const String profileScreen = '/profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String historyScreen = '/history_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String sendMoneyScreen = '/send_money_screen';

  static const String enterMoneyScreen = '/enter_money_screen';

  static const String sendMoneyEnterPasswordScreen =
      '/send_money_enter_password_screen';

  static const String addPersonScreen = '/add_person_screen';

  static const String addCardOneScreen = '/add_card_one_screen';

  static const String paymentSuccessScreen = '/payment_success_screen';

  static const String receiveMoneyPersonalPage = '/receive_money_personal_page';

  static const String receiveMoneyRequestPage = '/receive_money_request_page';

  static const String receiveMoneyRequestTabContainerScreen =
      '/receive_money_request_tab_container_screen';

  static const String requestSentScreen = '/request_sent_screen';

  static const String moneyExchangeScreen = '/money_exchange_screen';

  static const String payBillScreen = '/pay_bill_screen';

  static const String electricBillScreen = '/electric_bill_screen';

  static const String bilPaymentSuccessScreen = '/bil_payment_success_screen';

  static const String bankToBankOneScreen = '/bank_to_bank_one_screen';

  static const String bankToBankTwoScreen = '/bank_to_bank_two_screen';

  static const String bankToBankThreeScreen = '/bank_to_bank_three_screen';

  static const String moneySentSuccessScreen = '/money_sent_success_screen';

  static const String mobilePrepaidOneScreen = '/mobile_prepaid_one_screen';

  static const String mobilePrepaidTwoScreen = '/mobile_prepaid_two_screen';

  static const String mobilePrepaidThreeScreen = '/mobile_prepaid_three_screen';

  static const String rechargeSuccessScreen = '/recharge_success_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    logInScreen: (context) => LogInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    cardsScreen: (context) => CardsScreen(),
    cardDetailsScreen: (context) => CardDetailsScreen(),
    activityScreen: (context) => ActivityScreen(),
    profileScreen: (context) => ProfileScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    historyScreen: (context) => HistoryScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    sendMoneyScreen: (context) => SendMoneyScreen(),
    enterMoneyScreen: (context) => EnterMoneyScreen(),
    sendMoneyEnterPasswordScreen: (context) => SendMoneyEnterPasswordScreen(),
    addPersonScreen: (context) => AddPersonScreen(),
    addCardOneScreen: (context) => AddCardOneScreen(),
    paymentSuccessScreen: (context) => PaymentSuccessScreen(),
    receiveMoneyRequestTabContainerScreen: (context) =>
        ReceiveMoneyRequestTabContainerScreen(),
    requestSentScreen: (context) => RequestSentScreen(),
    moneyExchangeScreen: (context) => MoneyExchangeScreen(),
    payBillScreen: (context) => PayBillScreen(),
    electricBillScreen: (context) => ElectricBillScreen(),
    bilPaymentSuccessScreen: (context) => BilPaymentSuccessScreen(),
    bankToBankOneScreen: (context) => BankToBankOneScreen(),
    bankToBankTwoScreen: (context) => BankToBankTwoScreen(),
    bankToBankThreeScreen: (context) => BankToBankThreeScreen(),
    moneySentSuccessScreen: (context) => MoneySentSuccessScreen(),
    mobilePrepaidOneScreen: (context) => MobilePrepaidOneScreen(),
    mobilePrepaidTwoScreen: (context) => MobilePrepaidTwoScreen(),
    mobilePrepaidThreeScreen: (context) => MobilePrepaidThreeScreen(),
    rechargeSuccessScreen: (context) => RechargeSuccessScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
