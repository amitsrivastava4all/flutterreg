//import 'package:flutter/material.dart';
//import 'package:location/location.dart';
//
//class GpsDemo extends StatefulWidget {
//  @override
//  _GpsDemoState createState() => _GpsDemoState();
//}
//
//class _GpsDemoState extends State<GpsDemo> {
//  getLocationGPS() async {
//    var currentLocation;
//
//    var location = new Location();
//
//// Platform messages may fail, so we use a try/catch PlatformException.
//    try {
//      currentLocation = await location.getLocation();
//      print("Current Location $currentLocation");
//    } on Exception catch (e) {
//      print("Catch $e");
//      currentLocation = null;
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    getLocationGPS();
//    return Container();
//  }
//}
