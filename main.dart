import 'package:flutter/material.dart';
import 'package:flutter_open_street_map/flutter_open_street_map.dart';

void main() {
  runApp(const MyMap());
}

class MyMap extends StatelessWidget {
  const MyMap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StreetMap());
  }
}

class StreetMap extends StatelessWidget {
  const StreetMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text("Street Map"),
          centerTitle: true,
        ),
        body: FlutterOpenStreetMap(
            center: LatLong(24.87773005546397, 67.04561505560666),
            onPicked: (pickedData) {
              print(pickedData.latLong.latitude);
              print(pickedData.latLong.longitude);
              print(pickedData.address);
            }));
  }
}
