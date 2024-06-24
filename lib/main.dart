import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
            '/home': (context) => HomeScreen()
          },
        ));
  }
}
