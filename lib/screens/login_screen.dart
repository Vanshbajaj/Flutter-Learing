import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../comp/custom_button.dart';
import '../viewmodel/login_viewmodel.dart';
class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image or color
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  const Color(0xFFDD0000).withOpacity(0.1),
                ],
              ),
            ),
          ),
          Flexible(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/background.png'),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 450,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 1,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Consumer<LoginViewModel>(
                      builder: (context, viewModel, child) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Login',
                              style: GoogleFonts.urbanist(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(050041),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                right: 15.0,
                                top: 15.0,
                                bottom: 0,
                              ),
                              child: TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(width: 1, color: Color(0xFFE4E4E4)),
                                  ),
                                  labelText: 'Enter email address',
                                  hintText: 'Enter email address',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                right: 15.0,
                                top: 15,
                                bottom: 0,
                              ),
                              child: TextField(
                                controller: _passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(width: 1, color: Color(0xFFE4E4E4)),
                                  ),
                                  labelText: 'Password',
                                  hintText: 'Enter secure password',
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/forgot-password');
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            if (viewModel.errorMessage != null)
                              Text(
                                viewModel.errorMessage!,
                                style: TextStyle(color: Colors.red),
                              ),

                            const SizedBox(height: 20),
                            CustomButton(
                              text: 'Login',
                              onPressed: () {
                                if (!viewModel.loading) {
                                  final email = _emailController.text.trim();
                                  final password = _passwordController.text.trim();
                                  if (email.isEmpty || password.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Please enter both email and password')),
                                    );
                                    return;
                                  }
                                  viewModel.loginByEmail(context,email, password);
                                }
                              },
                              width: 380, // Adjust the width as needed
                            ),
                            const Spacer(),
                            TextButton(
                              child: Text(
                                "Skip",
                                style: GoogleFonts.urbanist(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFDD0000),
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFFDD0000),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/login-with-number');
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
