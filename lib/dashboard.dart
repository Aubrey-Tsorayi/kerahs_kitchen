import 'package:flutter/material.dart';
import 'package:kerahs_kitchen/pages/cart_page.dart';
import 'package:kerahs_kitchen/pages/home_page.dart';
import 'package:kerahs_kitchen/pages/profile_page.dart';
import 'package:kerahs_kitchen/pages/search_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentPage = 0;
  List<Widget> pages = const [HomePage(), SearchPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCFB53F),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFCFB53F),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.map),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ProfilePage();
                  },
                ),
              );
            },
            icon: const Icon(Icons.person_2_outlined),
          ),
        ],
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFFCFB53F),
        indicatorColor: Colors.yellow,
        shadowColor: Colors.black,
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'Home'),
          NavigationDestination(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
