import 'package:flutter/material.dart';
import 'package:kerahs_kitchen/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      onChanged: () {
        setState(() {
          Form.of(primaryFocus!.context!).save();
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFCFB53F),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                labelText: 'Email Address',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFCFB53F),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text(
                'LOG IN',
                style: TextStyle(
                  color: Color(0xFFCFB53F),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Forgot Password?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
