import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../comp/custom_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/frame.png'),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Forgot password',style: GoogleFonts.urbanist(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF050041)),) ,
            ),
            Text('Dont worry it happens. Please enter the email address / mobile number registered with your account', style: GoogleFonts.urbanist(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color(0xFF727272)),),
            SizedBox(height: 20),
            TextField(
                decoration: InputDecoration(
                  suffixIcon: Image.asset('assets/email.png'),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(4)),
                      borderSide:
                      BorderSide(width: 1, color: Color(0xFFE4E4E4)),
                    ),
                    labelText: 'Enter email address',
                    hintText: 'Enter email address'),
              ),

            SizedBox(height: 20),
            CustomButton(
              text: 'Get OTP',
              onPressed: () {
                Navigator.pushNamed(context, '/reset-password');
                // Add your onPressed code here!
              },
              width: 380, // Adjust the width as needed
            ),
          ],
        ),
      ),
    );
  }
}
