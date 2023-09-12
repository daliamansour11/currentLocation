


import 'dart:async';
import 'dart:convert';

import 'package:current_location/pages/current_location_page/model/map_model.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';

class CurrentLocationController extends GetxController {
  Completer<GoogleMapController> controller = Completer();

  @override
  void onInit() {
    getCurrentLocation();
  }

  Rx<LocationData?> locationData = Rx<LocationData?>(null);
  LatLng? latLng = LatLng(28.6472799, 76.8130638);


  CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(28.6289206, 77.2065322),
    zoom: 15.4746,
  );

  static final CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> getCurrentLocation() async {


    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    Location location = Location();

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.DENIED) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.GRANTED) {
        return;
      }
    }
    location.onLocationChanged().listen((LocationData currentLocation) {
      locationData .value= currentLocation;
    });


    latLng = LatLng(locationData.value!.latitude, locationData.value!.longitude);
    print(latLng);


    update();

    print(latLng);
update();
    kGooglePlex = CameraPosition(
      target: latLng!,
      zoom: 15.4746,
    );

    await Future.delayed(const Duration(seconds: 1));
    final GoogleMapController controller1 = await controller.future;
    controller1.animateCamera(CameraUpdate.newCameraPosition(kGooglePlex));

    update();
  }


  Future<void> goToTheLake() async {
    final GoogleMapController controller1 = await controller.future;
    controller1.animateCamera(CameraUpdate.newCameraPosition(kLake));
    update();
  }

  }



