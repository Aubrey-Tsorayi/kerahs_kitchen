import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                labelText: 'Full Name',
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
                  Icons.email,
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
                  Icons.phone,
                  color: Colors.white,
                ),
                labelText: 'Mobile Number',
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
                labelText: 'Confirm Password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text(
                'SIGN UP',
                style: TextStyle(
                  color: Color(0xFFCFB53F),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
