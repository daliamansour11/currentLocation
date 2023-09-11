
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../utilities/themes/app_colors.dart';

class CurrentLocationLoading extends StatelessWidget {
  const CurrentLocationLoading({Key? key, this.color}) : super(key: key);

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SpinKitRipple(
        color:color?? AppColors.secondaryColor,
      ),
    );
  }
}
