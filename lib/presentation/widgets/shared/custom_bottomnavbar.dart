import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.accessibility_new), label: "numero 1"),
      BottomNavigationBarItem(
          icon: Icon(Icons.accessible_forward_sharp), label: 'numero 2'),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline_outlined), label: 'Faboritos')
    ]);
  }
}
