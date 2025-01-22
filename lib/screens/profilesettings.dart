import 'package:flutter/material.dart';

class ProfileSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile & Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(

                children: [
                  ListView(
                    children: [
                      ListTile(
                        title: Text('View Profile'),
                        onTap: () {
                          // Navigate to profile details screen
                        },
                      ),
                      ListTile(
                        title: Text('Booking History'),
                        onTap: () {
                          // Navigate to booking history screen
                        },
                      ),
                      ListTile(
                        title: Text('Preferences'),
                        onTap: () {
                          // Navigate to preferences screen
                        },
                      ),
                      ListTile(
                        title: Text('Logout'),
                        onTap: () {
                          // Handle logout functionality
                        },
                      ),
                    ],
                  ),
                ],
              ),
        ),


      ),
    );
  }
}
