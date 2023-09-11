
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import '../utilities/themes/app_colors.dart';

class CurrentLocationTextFormField extends StatelessWidget {
  const CurrentLocationTextFormField(
      {Key? key,
        this.label,
        this.validator,
        this.action,
        this.type,
        this.secure = false,
        this.errorText,
        this.focusNode,
        this.controller,
        this.prefixIcon,
        this.hint,
        this.fillColor = Colors.transparent,
        this.onlyUnderLine = false,
        this.suffixIcon,
        this.readOnly = false,
        this.initialValue,
        this.isLTR = false,
        this.hasTransparentBackground = false,
        this.onTap,
        this.interactivity = true,
        this.maxLines = 1,
        this.maxLength,
        this.onEditingComplete,
        this.onChanged,
        this.contentPadding,
        this.enabled,
        this.inputFormatters,
        this.suffixText,
        this.hintStyle,
        this.borderRadiusValue,
        this.innerTextInputStyle})
      : super(key: key);

  final TextEditingController? controller;
  final String? label;
  final Function? validator;
  final String? suffixText;
  final TextInputAction? action;
  final TextInputType? type;
  final bool secure;
  final bool readOnly;
  final String? errorText;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hint;
  final Color fillColor;
  final bool onlyUnderLine;
  final bool hasTransparentBackground;
  final Function? onTap;
  final bool interactivity;
  final int? maxLines;
  final Function? onEditingComplete;
  final Function(String)? onChanged;
  final int? maxLength;
  final String? initialValue;
  final bool isLTR;
  final EdgeInsetsGeometry? contentPadding;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? hintStyle;
  final TextStyle? innerTextInputStyle;
  final double? borderRadiusValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      enabled: enabled,
      initialValue: initialValue,
      keyboardType: type ?? TextInputType.text,
      textDirection: isLTR ? ui.TextDirection.ltr : ui.TextDirection.rtl,
      style: innerTextInputStyle ??
          Theme.of(context)
              .textTheme
              .labelMedium?.copyWith(color: AppColors.cancelColor)
              .copyWith(color: AppColors.blackColor),
      controller: controller,
      validator: validator as String? Function(String?)?,
      enableInteractiveSelection: interactivity,
      obscureText: secure,
      inputFormatters: inputFormatters,
      // obscuringCharacter: '*',
      onTap: onTap as void Function()?,
      onEditingComplete: onEditingComplete as void Function()?,
      onChanged: onChanged,
      maxLines: maxLines,
      maxLength: maxLength,
      cursorWidth: 2,
      readOnly: readOnly,
      cursorRadius: const Radius.circular(1),
      textInputAction: action,
      decoration: InputDecoration(
          hintText: hint,
          suffixText: suffixText,
          //  counter: const Offstage(),
          hintStyle: hintStyle ?? Theme.of(context).textTheme.labelLarge,
          prefixIcon: prefixIcon,
          prefixIconConstraints:
          const BoxConstraints(minWidth: 92, minHeight: 50),
          suffixIcon: suffixIcon,
          disabledBorder: onlyUnderLine
              ? UnderlineInputBorder(
            borderSide:
            const BorderSide(color: AppColors.blueColor),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadiusValue ?? 20.0),
            ),
          )
              : OutlineInputBorder(
            borderSide:
            const BorderSide(color: Color.fromRGBO(173, 181, 187, 1.0)),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadiusValue ?? 20.0),
            ),
          ),
          enabledBorder: onlyUnderLine
              ? UnderlineInputBorder(
            borderSide:
            const BorderSide(color: AppColors.blueColor),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadiusValue ?? 20.0),
            ),
          )
              : OutlineInputBorder(
            borderSide:
            const BorderSide(color: Color.fromRGBO(173, 181, 187, 1.0)),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadiusValue ?? 20.0),
            ),
          ),
          focusedBorder: onlyUnderLine
              ? UnderlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(borderRadiusValue ?? 20.0)),
            borderSide: const BorderSide(
              color: AppColors.blueColor,
            ),
          )
              : OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(borderRadiusValue ?? 20.0)),
              borderSide:
              const BorderSide(color: AppColors.blueColor)),
          border: onlyUnderLine
              ? OutlineInputBorder(
            borderSide:
            const BorderSide(color: Color.fromRGBO(224, 224, 224, 1)),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadiusValue ?? 20.0),
            ),
          )
              : OutlineInputBorder(
            borderSide:
            const BorderSide(color: Color.fromRGBO(185, 191, 191, 1.0)),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadiusValue ?? 20.0),
            ),
          ),
          filled: true,
          fillColor: hasTransparentBackground ? Colors.transparent : fillColor,
          errorText: errorText,
          labelText: label,
          labelStyle: Theme.of(context).textTheme.labelMedium?.copyWith(color: AppColors.greyColor.withOpacity(0.5)),
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(
                horizontal: 212, vertical: 12//.toAdaptivePhone(value: .1))),
    )));
  }
}
