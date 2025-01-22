import 'package:flutter/material.dart';

import '../screens/booking confirmation.dart';
import '../screens/profilesettings.dart';
import '../screens/roomListScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    Center(child: ProfileSettingsScreen()),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add your notification logic here
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Add your settings logic here
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('room list '),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoomListScreen()),
                );
                // Handle settings tap
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingConfirmationScreen(bookingDates: "10/10/10",ownerContact: "98756",paymentMethod:"till" ,roomName: "succed",)),
                );
                // Handle about tap

              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileSettingsScreen()),
                );
                // Handle about tap

              },
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.person,),

            label: 'Profile',

          ),
        ],
      ),
    );
  }
}
