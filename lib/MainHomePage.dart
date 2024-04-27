import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: GNav(
        tabBackgroundColor: Colors.grey,
        backgroundColor: Colors.green,
        activeColor: Colors.white,
        color: Colors.white,
        gap: 8,
        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.newspaper, text: 'News'),
          GButton(icon: Icons.notification_add, text: 'Notification'),
          GButton(icon: Icons.history, text: 'History'),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;

            switch (index) {
              case 0:

             Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                break;
              case 1:

              Navigator.push(context, MaterialPageRoute(builder: (context) => NewsPage()));
                break;
              case 2:

              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
                break;
              case 3:

             Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryPage()));
                break;
            }
          });
        },
      ),
    );
  }
}
