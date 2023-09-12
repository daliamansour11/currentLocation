import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../../widgets/current_location_text_label.dart';
import '../controller/current_location_controller.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {

  CurrentLocationController  _mapController= Get.put(CurrentLocationController());

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xFF005373),

        appBar: AppBar(
          backgroundColor: Color(0xFF005373),

          title: CurrentLocationTextLabel(labelText: 'Map',),
          centerTitle: true,
        ),
        body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _mapController.kGooglePlex,
          markers: <Marker>{
            _setMarker()
           },
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          onMapCreated: (GoogleMapController controller) {
            _mapController.controller.complete(controller);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
_mapController.goToTheLake();          },
          label: Text('To the lake!'),
          icon: Icon(Icons.directions_boat),
        ),
      ),
    );
  }
  _setMarker() {
    return Marker(

          position:LatLng(_mapController.locationData.value!.latitude!,_mapController.locationData.value!.longitude!),

      markerId: MarkerId("marker_1"),
          icon: BitmapDescriptor.defaultMarker,


    );
  }



  }

