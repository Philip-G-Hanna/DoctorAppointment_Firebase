import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:doctorappointment/model/location.dart' as location;

void main() {
  runApp(const googlemap());
}

class googlemap extends StatefulWidget {
  const googlemap({Key? key}) : super(key: key);

  @override
  _googlemapState createState() => _googlemapState();
}

class _googlemapState extends State<googlemap> {
  final Map<String, Marker> _makers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await location.getGoogleOffices();
    setState(() {
      _makers.clear();
      for (final office in googleOffices!.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _makers[office.name] = marker;
      }
    });
  }

  late GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapcreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Google Office Locations'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapcreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(0, 0),
            zoom: 2,
          ),
        ),
      ),
    );
  }
}
