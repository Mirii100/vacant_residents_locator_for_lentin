import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;
  LocationData? _currentLocation;
  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _getUserLocation();
    _addRoomMarkers();
  }

  _getUserLocation() async {
    Location location = Location();
    _currentLocation = await location.getLocation();
    setState(() {
      // Update markers and center map to the user's location
    });
  }

  _addRoomMarkers() {
    // Sample room locations (latitude, longitude)
    _markers.add(Marker(
      markerId: MarkerId('room1'),
      position: LatLng(37.7749, -122.4194), // Example coordinates
      infoWindow: InfoWindow(title: 'Room 1', snippet: 'Available for booking'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Room Locations')),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(_currentLocation?.latitude ?? 0.0, _currentLocation?.longitude ?? 0.0),
          zoom: 14.0,
        ),
        markers: _markers,
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
      ),
    );
  }
}
