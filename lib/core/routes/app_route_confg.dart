// import 'package:carrimen_app/core/routes/app_route_const.dart';
// import 'package:carrimen_app/ui/screens/auth/user_login/layout_view.dart';
// import 'package:carrimen_app/ui/screens/auth/user_otp/layout_view.dart';
// import 'package:carrimen_app/ui/screens/auth/user_signin/layout_view.dart';
// import 'package:carrimen_app/ui/screens/auth/user_verify/layout_view.dart';
// import 'package:carrimen_app/ui/screens/home/layout_view.dart';
// import 'package:carrimen_app/ui/screens/profileAccount/account/widgets/layout_view.dart';
// import 'package:carrimen_app/ui/screens/profileAccount/profile/widgets/layout_view.dart';
// import 'package:carrimen_app/ui/screens/splash/splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class MyAppRouter {

//   static final GoRouter routes = GoRouter(routes:<GoRoute> [
//     GoRoute(
//       name: 'splashScreenRouteName',
//       path: '/SplashScreen',
//       builder:(BuildContext context, state)=> SplashScreen(),
//     ),
//     GoRoute(
//       name: 'signupScreenRouteName',
//       path: '/SignupScreen',
//      builder:(BuildContext context, state)=> SignupScreen(),
//     ),
//     GoRoute(
//       name:'signInScreenRouteName',
//       path: '/SignInScreen',
//       pageBuilder: (context, state) {
//         return MaterialPage(child: SignInScreen());
//       },
//     ),
//     GoRoute(
//       name:'homeScreenRouteName',
//       path: '/HomeScreen',
//       pageBuilder: (context, state) {
//         return MaterialPage(child: HomeScreen());
//       },
//     ),
//     GoRoute(
//       name: 'Enter_otp_pageRouteName',
//       path: '/Enter_otp_page',
//       pageBuilder: (context, state) {
//         return MaterialPage(child: Enter_otp_page());
//       },
//     ),
//     GoRoute(
//       name: 'verifyYourAccountRouteName',
//       path: '/VerifyYourAccount',
//       pageBuilder: (context, state) {
//         return MaterialPage(child: VerifyYourAccount());
//       },
//     ),
//     GoRoute(
//       name:'accountPageRouteName',
//       path: '/accountPage',
//       pageBuilder: (context, state) {
//         return MaterialPage(child: accountPage());
//       },
//     ),
//     GoRoute(
//       name: 'accountProfileRouteName',
//       path: '/accountProfile',
//       pageBuilder: (context, state) {
//         return MaterialPage(child: accountProfile());
//       },
//     ),
//   ],
//   // errorBuilder: (context, state) {

//   // }
//   // ,
//   );
// }
import 'package:carrimen_app/ui/screens/auth/user_otp/layout_view.dart';
import 'package:carrimen_app/ui/screens/auth/user_signin/layout_view.dart';
import 'package:carrimen_app/ui/screens/auth/user_signup/layout_view.dart';
import 'package:carrimen_app/ui/screens/auth/user_verify/layout_view.dart';
import 'package:carrimen_app/ui/screens/misc/enter_otp_location/layout_view.dart';
import 'package:carrimen_app/ui/screens/misc/full_screen_alert/layout_view.dart';
import 'package:carrimen_app/ui/screens/profileAccount/account/widgets/layout_view.dart';
import 'package:carrimen_app/ui/screens/profileAccount/profile/widgets/layout_view.dart';
import 'package:carrimen_app/ui/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class MyappRoutes {
  static final GoRouter routes = GoRouter(routes: <GoRoute>[

     GoRoute(
      name: 'ddd',
      path: '/',
      builder: (context, state) => SignInScreen(),
    ),
    GoRoute(
      name: 'splashScreen',
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      name: 'signupScreen',
      path: '/user_signup',
      builder: (BuildContext context, state) => SignupScreen(),
    ),
    GoRoute(
      name: 'verifyYourAccount',
      path: '/user_verify',
      builder: (BuildContext context, state) => VerifyYourAccount(),
    ),
    GoRoute(
      name: 'Enter_otp_page',
      path: '/user_otp',
      builder: (BuildContext context, state) => Enter_otp_page(),
    ),
    GoRoute(
      name: 'EnterOtpVerified',
      path: '/full_screen_alert',
      builder: (BuildContext context, state) => EnterOtpVerified(),
    ),
    GoRoute(
      name: 'EnterOtpLocation',
      path: '/enter_otp_location',
      builder: (BuildContext context, state) => EnterOtpLocation(),
    ),
     GoRoute(
      name: 'accountPage',
      path: '/account',
      builder: (BuildContext context, state) => accountPage(),
    ),
     GoRoute(
      name: 'accountProfile',
      path: '/profile',
      builder: (BuildContext context, state) => accountProfile(),
    ),
  ]);
}
