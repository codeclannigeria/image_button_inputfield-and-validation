import 'package:ccn_ui/utils/colors.dart';
import 'package:flutter/material.dart';

InputDecoration fieldInputDecoration(
    {String? labelText,
    Widget? suffixIcon,
    Widget? prefixIcon,
    String? hintText,
    EdgeInsetsGeometry? contentPadding}) {
  return InputDecoration(
      hintText: hintText,
      labelText: labelText,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      focusColor:
          AppColors.greyColor, // the color is defined in the color class
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: const TextStyle(),
      errorStyle: const TextStyle(),
      errorMaxLines: 4,
      helperMaxLines: 4,
      contentPadding: contentPadding,
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      disabledBorder: InputBorder.none,
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      focusedErrorBorder: InputBorder.none,
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: AppColors.redColor)));
}
