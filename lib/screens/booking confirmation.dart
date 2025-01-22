import 'package:flutter/material.dart';

class BookingConfirmationScreen extends StatelessWidget {
  final String roomName;
  final String bookingDates;
  final String paymentMethod;
  final String ownerContact;

  BookingConfirmationScreen({
    required this.roomName,
    required this.bookingDates,
    required this.paymentMethod,
    required this.ownerContact,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Booking Confirmation')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Room: $roomName', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Booking Dates: $bookingDates'),
            SizedBox(height: 8),
            Text('Payment Method: $paymentMethod'),
            SizedBox(height: 8),
            Text('Owner Contact: $ownerContact'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle booking confirmation
              },
              child: Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
