import 'package:flutter/material.dart';
import 'package:laza/Sign%20In%20Sign%20Up/signin.dart';

class LookPage extends StatelessWidget {
  const LookPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.purple[300],
            child: Image.asset(
              'assets/images/profile.png',
              height: 812,
              width: 400,
              // fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 450,
              left: 10,
              right: 10,
              bottom: 20,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Column(
                    children: [
                      Text(
                        'Look Good, Feel Good',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        textAlign: TextAlign.center,
                        'Create your individual & unique style and look amazing everyday.',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            color: Colors.grey.shade500),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Kode yang ingin Anda jalankan ketika tombol pria diklik
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(149, 60),
                                backgroundColor: Colors.grey[200],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Text(
                              'Men',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Signin()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(149, 60),
                                backgroundColor: Colors.purple[200],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Text(
                              'Women',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Skip',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontFamily: 'Inter'),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
