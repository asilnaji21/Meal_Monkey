import 'package:monkey_meal/Screens/checkOtScreen.dart';
import 'package:monkey_meal/Screens/thanks.dart';

import '../Screens/ViewFooddetails.dart';
import '../Screens/aboutScreen.dart';
import '../Screens/dessertScreen.dart';
import '../Screens/forgetPwScreen.dart';
import '../Screens/homeScreen.dart';
import '../Screens/inboxScreen.dart';
import '../Screens/introScreen.dart';
import '../Screens/loginScreen.dart';
import '../Screens/logoscreen.dart';
import '../Screens/menuScreen.dart';
import '../Screens/moreScreen.dart';
import '../Screens/myOrderScreen.dart';
import '../Screens/newPwScreen.dart';
import '../Screens/notificationScreen.dart';
import '../Screens/profileScreen.dart';
import '../Screens/offerrScreen.dart';
import '../Screens/paymentScreen.dart';
import '../Screens/sentOTPScreen.dart';
import '../Screens/signUpScreen.dart';

var routes = {
  LogoScreen.routename: (context) => const LogoScreen(),
  // ignore: equal_keys_in_map
  LoginScreen.routename: (context) => LoginScreen(),
  SignUpScreen.routename: (context) => const SignUpScreen(),
  RestPassword.routename: (context) => const RestPassword(),
  OtpScreen.routename: (context) => const OtpScreen(),
  NewPasword.routename: (context) => const NewPasword(),
  FindFoodIntroo.routename: (context) => FindFoodIntroo(),
  HomeScreen.routename: (context) => const HomeScreen(),
  Profile.routename: (context) => const Profile(),
  Offer.routename: (context) => Offer(),
  More.routename: (context) => const More(),
  Menu.routename: (context) => const Menu(),
  Dessert.routename: (context) => const Dessert(),
  ViewDetails.routename: (context) => const ViewDetails(),
  PaymentScreen.routename: (context) => const PaymentScreen(),
  Notifaction.routename: (context) => Notifaction(),
  AboutScreen.routename: (context) => AboutScreen(),
  InboxScreen.routename: (context) => InboxScreen(),
  MyOrder.routename: (context) => MyOrder(),
  ThanksScreen.routeName: (context) => ThanksScreen(),
  CheckOutScreen.routeName: (context) => CheckOutScreen(),
};
