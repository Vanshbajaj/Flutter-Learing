import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/network/models/register_as_patner_entity.dart';
import 'package:test_app/screens/AssociationPartnerRegistrationScreen.dart';
import 'package:test_app/screens/AssociationPartnerRegistrationScreen2.dart';
import 'package:test_app/screens/ContactUs.dart';
import 'package:test_app/screens/HomePage.dart';
import 'package:test_app/screens/login_screen.dart';
import 'package:test_app/screens/splash_screen.dart';
import 'package:test_app/viewmodel/login_viewmodel.dart';

import 'screens/forgot_password_screen.dart';
import 'screens/login_with_number_screen.dart';
import 'screens/reset_password_screen.dart';
import 'screens/verify_phone_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // runApp(DevicePreview(
  //   enabled: true,
  //   builder: (context) => MyApp(),
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LoginViewModel()),
        ],
        child: MaterialApp(
          title: 'Mudra Home',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => SplashScreen(),
            '/login': (context) => LoginScreen(),
            '/login-with-number': (context) => LoginWithNumberScreen(),
            '/verify-phone': (context) => VerifyPhoneScreen(data: 'text',),
            '/forgot-password': (context) => ForgotPasswordScreen(),
            '/reset-password': (context) => ResetPasswordScreen(),
            '/home': (context) => HomeScreen(),
            // '/my-account': (context) => MyAccountScreen(), // Create this screen
            // '/loan-products/home-loan': (context) => HomeLoanScreen(), // Create this screen
            // '/loan-products/loan-balance-transfer': (context) => LoanBalanceTransferScreen(), // Create this screen
            // '/loan-products/loan-against-property': (context) => LoanAgainstPropertyScreen(), // Create this screen
            // '/loan-products/personal-loan': (context) => PersonalLoanScreen(), // Create this screen
            // '/loan-products/business-loan': (context) => BusinessLoanScreen(), // Create this screen
            // '/emi-calculator': (context) => EmiCalculatorScreen(), // Create this screen
            // '/about-us': (context) => AboutUsScreen(), // Create this screen
             '/contact-us': (context) => ContactUsScreen(), // Create this screen
            '/patner': (context) => AssociationPartnerRegistrationScreen(),
            '/patner2': (context) => AssociationPartnerRegistrationScreen2(registrationData:RegisterAsPartnerData()),
            '/verifyAccount': (context) => AssociationPartnerRegistrationScreen2(registrationData:RegisterAsPartnerData())
          },
        ));
  }
}
