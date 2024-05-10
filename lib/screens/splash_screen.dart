import 'package:flutter/material.dart';
import 'package:marketelkhouly/screens/login_screen.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00355d),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 60),
              child: const CircleAvatar(
                radius: 112,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('images/splash_screen.jpg'),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Color(0xff00355d)),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                  minimumSize: const Size(100, 55),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cpntext) => loginscreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
