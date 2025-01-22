import 'package:flutter/material.dart';

class RoomListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> rooms = [
    {
      'thumbnail': 'https://via.placeholder.com/150',
      'rentalCost': 500,
      'location': 'Downtown',
      'distance': '1.5 km',
      'security': 'High',
    },
    {
      'thumbnail': 'https://via.placeholder.com/150',
      'rentalCost': 300,
      'location': 'Uptown',
      'distance': '2.0 km',
      'security': 'Medium',
    },
    {
      'thumbnail': 'https://via.placeholder.com/150',
      'rentalCost': 450,
      'location': 'Suburb',
      'distance': '3.5 km',
      'security': 'High',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Rooms'),
      ),
      body: ListView.builder(
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          final room = rooms[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.network(
                room['thumbnail'],
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                'Rent: \$${room['rentalCost']}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Location: ${room['location']}'),
                  Text('Distance: ${room['distance']}'),
                  Text('Security: ${room['security']}'),
                ],
              ),
              onTap: () {
                // Navigate to the Room Details Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RoomDetailScreen(room: room),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class RoomDetailScreen extends StatelessWidget {
  final Map<String, dynamic> room;

  RoomDetailScreen({required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              room['thumbnail'],
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              'Rent: \$${room['rentalCost']}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Location: ${room['location']}'),
            Text('Distance: ${room['distance']}'),
            Text('Security: ${room['security']}'),
          ],
        ),
      ),
    );
  }
}
