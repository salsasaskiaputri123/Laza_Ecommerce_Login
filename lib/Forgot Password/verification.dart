import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:laza/Forgot%20Password/forgot.dart';
import 'package:laza/Forgot%20Password/new_password.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

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
                      MaterialPageRoute(builder: (context) => Forgot()),
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
                    'Verification Code',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/images/porgot.png',
                    width: 260,
                    height: 180,
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 98,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      List<String> cardTexts = [
                        '7',
                        '4',
                        '2',
                        '3 ',
                      ];
                      double cardWidth = index == 1 ? 68 : 68;

                      return Container(
                        width: cardWidth,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              cardTexts[index],
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 120),
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
                      text: '00:20 ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(text: 'resend confirmation code.')
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
                'Confirm Code',
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
