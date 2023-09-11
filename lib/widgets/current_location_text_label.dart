
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../utilities/themes/app_colors.dart';



class CurrentLocationTextLabel extends StatelessWidget {
  const CurrentLocationTextLabel({
    Key? key,
    required this.labelText,
    this.labelSize = 16,
    this.labelWeight = FontWeight.w600,
    this.labelAlign,
    this.labelColor = AppColors.secondaryColor,
    this.expanded = false,
    this.labelStyle,
    this.width,
    this.height,
    this.overFlow,
    this.textDecoration,
    this.maxLines,
    this.softWrap = true,
    this.textScaleFactor = 1,
    this.isRtl = false, this.opacity = 1 ,
  }) : super(key: key);
  final String? labelText;
  final double? labelSize;
  final FontWeight labelWeight;
  final TextAlign? labelAlign;
  final Color labelColor;
  final bool expanded;
  final TextDecoration? textDecoration;
  final TextStyle? labelStyle;
  final double? width;
  final double? height;
  final TextOverflow? overFlow;
  final int? maxLines;
  final bool? softWrap;
  final double? textScaleFactor;
  final bool isRtl;
  final double? opacity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // width: expanded ? Get.width : width,
      height: height,
      child: AutoSizeText(
          labelText!,
          softWrap: softWrap,
          textAlign: labelAlign,
          minFontSize: 1,
          textScaleFactor: textScaleFactor,
          textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
          overflow: overFlow,
          maxLines: maxLines,
          style: labelStyle ??
              TextStyle(
                fontSize: labelSize,
                color: labelColor.withOpacity(opacity??1),
                decoration: textDecoration,
               // fontFamily: AppFonts.POPPINS,
                fontWeight: labelWeight,
              )
      ),
    );
  }
}
