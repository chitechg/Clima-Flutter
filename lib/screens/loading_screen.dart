import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation() async{
    //Geolocator just isn't working, so just made some stuff up for Chicago
    //Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    DateTime tempTime = new DateTime(1,1,1,1,1,1,1);
    Position position = new Position(longitude: 41.8781, latitude: -87.6298, timestamp: tempTime, accuracy: 0.0, altitude: 0.0, heading: 0.0, speed: 0.0, speedAccuracy: 0.00);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
