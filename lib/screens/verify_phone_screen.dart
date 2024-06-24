import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyPhoneScreen extends StatelessWidget {
  final String data;
  VerifyPhoneScreen({required this.data});
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
              'Verify Phone',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF150D3F), // Same color as the original text
              ),
            ),
            SizedBox(height: 16),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Code is sent to ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: data,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      // Changed to red color as per the original text
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Handle resend OTP button press
              },
              child: Text(
                'Resend OTP 44 Sec',
                style: TextStyle(
                  color: Colors.black,
                  // Changed to red color as per the original text
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Handle Verify and Login button press
                },
                child: Text('VERIFY AND LOGIN'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE53535),
                  // Background color as per the original button
                  foregroundColor: Colors.white,
                  // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
