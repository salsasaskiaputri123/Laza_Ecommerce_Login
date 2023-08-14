import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:laza/Forgot%20Password/verification.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Verification()),
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'New Password',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 150),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Inter',
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 3),
                  TextFormField(
                    decoration: InputDecoration(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Confirm Password',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Inter',
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 3),
                  TextFormField(
                    decoration: InputDecoration(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 198),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 90, right: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade500,
                    fontFamily: 'Inter',
                  ),
                  children: [
                    TextSpan(
                      text: 'Please write your new password.',
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPassword()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(375, 75),
                backgroundColor: Colors.purple.shade300,
              ),
              child: Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
