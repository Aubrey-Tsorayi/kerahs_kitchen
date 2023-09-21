import 'package:flutter/material.dart';

import 'login_page.dart';
import 'sign_up_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  bool isSignup = true;
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verah\'s Kitchen'),
        backgroundColor: const Color(0xFFCFB53F),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'images/logo.jpg',
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSignup = true;
                        isLogin = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isSignup ? Colors.black : const Color(0xFFCFB53F),
                    ),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: isSignup
                              ? const Color(0xFFCFB53F)
                              : Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSignup = false;
                        isLogin = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isLogin ? Colors.black : const Color(0xFFCFB53F),
                    ),
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                          color:
                              isLogin ? const Color(0xFFCFB53F) : Colors.black),
                    ),
                  )
                ],
              ),
              isSignup ? const SignUpPage() : const LoginPage(),
            ],
          ),
        ),
      ),
    );
  }
}
