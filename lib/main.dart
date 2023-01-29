import 'package:flutter/material.dart';
import 'package:project_2/pages/cart.dart';
import 'package:project_2/pages/home.dart';
import 'package:project_2/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavPage(),
    );
  }
}

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  var currentIndex = 0;

  static const pages = [HomePage(), CartPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 114, 166, 94),
          currentIndex: currentIndex,
          onTap: ((newIndex) {
            currentIndex = newIndex;
            setState(() {});
          }),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 114, 166, 94),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 114, 166, 94),
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 114, 166, 94),
                ),
                label: 'Account')
          ]),
      body: pages[currentIndex],
    );
  }
}
