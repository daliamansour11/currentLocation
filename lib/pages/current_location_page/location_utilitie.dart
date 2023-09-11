import 'package:current_location/pages/current_location_page/model/map_model.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as mLocation;

import 'package:permission_handler/permission_handler.dart';
class LocationUtils {
  static Future<String> getFullAddressFromLatLng(double lat,double lng) async {
    List<Placemark> locations = await placemarkFromCoordinates(lat, lng,localeIdentifier: 'en');
    return "${locations.first.name} - ${locations.first.subAdministrativeArea} , ${locations.first.administrativeArea} , ${locations.first.country} " ;
  }

  static Future<String> getFullCountryAndCityFromLatLng(double lat,double lng) async {
    List<Placemark> locations = await placemarkFromCoordinates(lat, lng,localeIdentifier: 'en');
    return " ${locations.first.administrativeArea} , ${locations.first.country}";
  }

  static Future<LatLng> getLatLngFromCity(String address) async {
    List<Location> location = await locationFromAddress(address);
    return LatLng(location.first.latitude, location.first.longitude);
  }

  static Future<LatLng?> getCurrentLocation() async {
    mLocation.Location location = new mLocation.Location();

    bool _serviceEnabled;
    mLocation.PermissionStatus _permissionGranted;
    mLocation.LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == mLocation.PermissionStatus) {
      var status = await Permission.locationWhenInUse.request();
      if (status != mLocation.PermissionStatus) {
        return null;
      }
    }

    _locationData = await location.getLocation();


    return LatLng(_locationData.latitude??0.0, _locationData.longitude??0.0);
  }
}