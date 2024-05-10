import 'package:flutter/material.dart';
import 'package:marketelkhouly/components/button_Sign.dart';
import 'package:marketelkhouly/components/my_textfield.dart';
import 'package:marketelkhouly/screens/screen.dart';

class loginscreen extends StatelessWidget {
  loginscreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00355d),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 100,
                color: Colors.white,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome back have you \'ve been missed!',
                style: TextStyle(color: Colors.white54, fontSize: 14),
              ),
              const SizedBox(
                height: 25,
              ),
              // Username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(
                height: 10,
              ),

              //password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 10,
              ),

              // Forget password

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget password?',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Buttonsign(
                text: 'Sign Up',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cpntext) => Screen()));
                },
              ),
              const SizedBox(
                height: 50,
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white54,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white54,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
