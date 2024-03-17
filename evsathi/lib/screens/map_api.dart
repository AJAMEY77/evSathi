import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

final Uri _mapUrl = Uri.parse('https://www.google.com/maps/search/ev+charging+stations+near+me/@18.6481011,73.7595417,15z/data=!3m1!4b1?authuser=0&entry=ttu');


class GoogleMapContainer extends StatefulWidget {
  @override
  _GoogleMapContainerState createState() => _GoogleMapContainerState();
}

class _GoogleMapContainerState extends State<GoogleMapContainer> {
  GoogleMapController? _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 330,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onLongPress: () => launchUrlString(_mapUrl.toString()), // Launch map on tap
          child: GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(18.651218621174994, 73.76241653815103), // Initial location (San Francisco)
              zoom: 12,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
            },
            markers: {
              const Marker(
                markerId: MarkerId('MarkerId'),
                position: LatLng(18.651218621174994, 73.76241653815103), // Position to place marker
                infoWindow: InfoWindow(title: 'Marker Title'),
              ),
            },
          ),
        ),
      ),
    );
  }
}