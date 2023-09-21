import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.yellow,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Column(
                children: [
                  Text(
                    "Dylan Basikoro",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "+263 77 220 9257",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "dbasikoro@gmail.com",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person),
                Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
