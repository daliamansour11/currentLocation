
import 'package:current_location/pages/current_location_page/view/map_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utilities/themes/app_colors.dart';
import '../../../../widgets/current_location_elevated_button.dart';
import '../../../../widgets/current_location_text_label.dart';

//
class HomeScreen extends StatelessWidget {
  String userName;
   HomeScreen({Key? key,
   required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        title: CurrentLocationTextLabel(labelText: 'Home',),

        centerTitle: true,

      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
              child: Text("  WeICome:  ${userName} ",style: TextStyle(fontSize:  22,fontWeight: FontWeight.bold),),
            )
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

          Center(
            child: Container(
              width: 200,
              height: 74,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10,
                  right: 30,
                  top: 10,
                  bottom: 0),
              child:  CurrentLocationElevatedButton(labelText: 'Show My Location', onPressed:  () async {
    Get.to(MapScreen());
    },),




      )
      ,



    )]));
  }
}
