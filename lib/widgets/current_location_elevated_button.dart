
import 'package:flutter/material.dart';

import '../utilities/themes/app_colors.dart';
import 'current_location_loading.dart';


class CurrentLocationElevatedButton extends StatelessWidget {
  const CurrentLocationElevatedButton({
    Key? key,
    this.isDanger = false,
    required this.labelText,
    required this.onPressed,
    this.width = 180,
    this.expanded = false,
    this.fillColor,
    this.height = 51,
    this.mini = false,
    this.fontSize = 14,
    this.paddingVertical = 13,
    this.paddingHorizontal = 26,
    this.miniWidthFactor = 1,
    this.miniLabelFontSize = 11,
    this.isLoading = false,
    this.isFilled = true,
    this.disablePadding = false,
    this.labelColor,
    this.fontWeight = FontWeight.normal,
    this.clearBorderColor = Colors.transparent,
    this.withIcon = false,
    this.icon,
    this.borderRadiusValue,
    this.invertButtonColors = false,
    this.filledButtonBorder = Colors.transparent,
  }) : super(key: key);
  final bool isDanger;
  final String? labelText;
  final Function? onPressed;
  final double width;
  final double height;
  final bool? expanded;
  final bool mini;
  final Color? fillColor;
  final double? fontSize;
  final double paddingVertical;
  final double paddingHorizontal;
  final double miniWidthFactor;
  final double miniLabelFontSize;
  final bool isLoading;
  final bool isFilled;
  final Color? clearBorderColor;
  final bool disablePadding;
  final Color? labelColor;
  final FontWeight? fontWeight;
  final bool withIcon;
  final Widget? icon;
  final double? borderRadiusValue;
  final bool invertButtonColors;
  final Color filledButtonBorder;
  @override
  Widget build(BuildContext context) {
    return mini
        ? SizedBox(
      width: 84 * miniWidthFactor,
      height: 26,
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style?.
        copyWith(
          backgroundColor: MaterialStateProperty.all(
            AppColors.secondaryColor,),
        ),
        onPressed: isLoading ? () {} : onPressed as void Function()?,
        child: Center(
          child: Text(
              labelText!,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(
                color: labelColor ?? AppColors.whiteColor,
                fontSize: fontSize ?? 12,
              )
          ),
        ),
      ),
    )
        : withIcon
        ? Padding(
      padding: disablePadding
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: expanded! ?200:200,// Get.width : width,
        height: height,
        child: ElevatedButton.icon(
            icon: icon!,
            style: ElevatedButton.styleFrom(
              primary: isDanger
                  ? Color(0xFF005373)
                  : isFilled
                  ? fillColor ?? AppColors.secondaryColor
                  : Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: invertButtonColors ? 2 : 1,
                      color: isFilled
                          ? Colors.transparent
                          : clearBorderColor ??
                          AppColors.blackColor),
                  borderRadius:
                  BorderRadius.circular(borderRadiusValue ?? 10)),
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
                vertical: paddingVertical,
              ),
            ),
            onPressed:
            isLoading ? () {} : onPressed as void Function()?,
            label: isLoading
                ? const CurrentLocationLoading(
              color: Colors.white,
            )
                : Text(labelText!,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(
                  color: labelColor ?? AppColors.whiteColor,
                  fontSize: fontSize ?? 18,
                ))),
      ),
    )
        : Padding(
      padding: disablePadding
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: expanded! ? 200:200,//Get.width : width,
        height: height,
        child: ElevatedButton(
          style: Theme.of(context)
              .elevatedButtonTheme
              .style
              ?.copyWith(
              backgroundColor: fillColor != null
                  ? MaterialStateProperty.all(fillColor)
                  : MaterialStateProperty.all(
                  AppColors.secondaryColor)),
          onPressed:
          isLoading ? () {} : onPressed as void Function()?,
          child: isLoading
              ? const CurrentLocationLoading(
            color: Colors.white,
          )
              : Text(labelText!,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(
                color: labelColor ?? AppColors.whiteColor,
                fontSize: fontSize ?? 18,
              )
          ),
        ),
      ),
    );
  }
}
