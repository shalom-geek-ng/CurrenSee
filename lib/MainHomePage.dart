import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainHomePAge extends StatelessWidget {
  const MainHomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.green,
        activeColor: Colors.white,
        color: Colors.white,
        gap: 8,
        tabs: [
          GButton(icon: Icons.home, text: 'Home',),
          GButton(icon: Icons.newspaper, text: 'News',),
          GButton(icon: Icons.notification_add, text: 'Notification'),
          GButton(icon: Icons.history, text: 'History',)
            
        ],
      ),
    );
  }
}
