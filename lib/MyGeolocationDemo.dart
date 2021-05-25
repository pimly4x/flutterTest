import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'MapMarkers.dart';

class MyGeolocationDemo extends StatefulWidget {
  const MyGeolocationDemo({Key key}) : super(key: key);

  @override
  _MyGeolocationDemoState createState() => _MyGeolocationDemoState();
}

class _MyGeolocationDemoState extends State<MyGeolocationDemo> {
  LatLng _location = LatLng(25.221812, 84.989758);

  GoogleMapController mapController;

  void _mapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void getCurrentLocation() async {
    final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    final CameraPosition MyLocation = CameraPosition(
        target: LatLng(position.latitude, position.longitude),
        zoom: 14.0,
        bearing: 45.0,
        tilt: 50.0);

    setState(() async {
      final GoogleMapController mylocationController = await mapController;
      mylocationController
          .animateCamera(CameraUpdate.newCameraPosition(MyLocation));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Geolocation Demo')),
        body: GoogleMap(
          // onMapCreated: _mapCreated,
          // initialCameraPosition: CameraPosition(target: _location, zoom: 13.0),
          mapType: MapType.satellite,
          markers: {myMarker},
          onMapCreated: _mapCreated,
          initialCameraPosition: CameraPosition(target: _location, zoom: 13.0),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: getCurrentLocation,
          label: Text('To Hanuman Mandir'),
          icon: Icon(Icons.directions_boat),
        ),
      ),
    );
  }

  // static final CameraPosition HanumanMandir = CameraPosition(
  //   target: LatLng(25.604343, 85.105180),
  //   zoom: 14.0,
  //   bearing: 45.0,
  //   tilt: 50.0,
  // );
  //
  // Future<void> gotoNewLocation() async {
  //   final GoogleMapController newController = await mapController;
  //
  //   newController.animateCamera(CameraUpdate.newCameraPosition(HanumanMandir));
  // }
}
