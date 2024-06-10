import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyPhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Verify Phone')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Code is sent to 7689-99-8917', style: GoogleFonts.roboto(fontSize: 20)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildOtpBox(context),
                _buildOtpBox(context),
                _buildOtpBox(context),
                _buildOtpBox(context),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('VERIFY AND LOGIN'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Resend OTP 44 Sec'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOtpBox(BuildContext context) {
    return SizedBox(
      width: 40,
      child: TextField(
        decoration: InputDecoration(),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
