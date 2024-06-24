import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../comp/custom_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/password.png'),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Create password',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF050041)),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 0, right: 0, top: 15, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_outlined),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xFFE4E4E4)),
                    ),
                    labelText: 'Enter email address',
                    hintText: 'Enter email address'),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 0, right: 0, top: 15, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_outlined),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xFFE4E4E4)),
                    ),
                    labelText: 'Enter email address',
                    hintText: 'Enter email address'),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Create Password',
              onPressed: () {

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
