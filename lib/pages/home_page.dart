import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFCFB53F),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 6.0,
              bottom: 2.0,
              left: 10.0,
              right: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recommedations!!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'All',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int x = 1; x <= 8; x++) ...[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 6.0,
                      bottom: 2.0,
                      left: 10.0,
                      right: 8.0,
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'images/special.jpg',
                            height: 150,
                            width: 150,
                          ),
                        ),
                        const Text(
                          'Combo Meal',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 6.0,
              bottom: 2.0,
              left: 10.0,
              right: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'All',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int x = 1; x <= 4; x++) ...[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'images/bev.jpg',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        const Text(
                          'Beverages',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
