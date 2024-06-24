import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/screens/verify_phone_screen.dart';

class LoginWithNumberScreen extends StatelessWidget {
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  // Handle back button press
                  Navigator.pop(context);
                },
              ),
            ),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Please Enter your phone number',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text('+91', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _textController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '7689998917',
                        ),
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Handle Get OTP button press

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerifyPhoneScreen(data: _textController.text),
                    ),
                  );
                },
                child: Text('Get OTP'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Background color
                  foregroundColor: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Text(
                  'When you click GET OTP, Mudrahome will send you 6 digit OTP on number provided, Verified phone number will be used for further login',
                  style: GoogleFonts.urbanist(
                      fontSize: 14.0, color: Color(0xFF727272))),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Handle login with email button press
                },
                child: Text("Login with Email",
                    style: GoogleFonts.urbanist(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDD0000),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFDD0000))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
