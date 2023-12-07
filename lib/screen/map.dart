import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  static final LatLng companyLatLng = LatLng(
    36.8341827,
    127.1791114,
  );

  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: companyLatLng,
          zoom: 16,
        ),
      ),
    );
  }
}