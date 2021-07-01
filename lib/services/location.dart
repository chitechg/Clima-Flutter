import 'package:geolocator/geolocator.dart';

class Location{
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async
  {
    //Geolocator just isn't working, so just made some stuff up for Chicago
    // try {
    //   Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    //   print(position);
    // }
    // catch(e)
    // {
    //   print(e);
    DateTime tempTime = new DateTime(1,1,1,1,1,1,1);
    Position position = new Position(longitude: -87.6298, latitude: 41.8781, timestamp: tempTime, accuracy: 0.0, altitude: 0.0, heading: 0.0, speed: 0.0, speedAccuracy: 0.00);
    //print(position);
    //}

    latitude = position.latitude;
    longitude = position.longitude;

  }
}