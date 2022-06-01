import 'package:flutter/material.dart';

import 'fonts_manager.dart';

TextStyle _getTextStyle(FontWeight fontWeight, double fontSize, Color color) {
  return TextStyle(
    fontWeight: fontWeight,
    fontFamily: FontConstants.fontFamily,
    color: color,
    fontSize: fontSize,
  );
}

//bold style

TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(FontWeightManager.bold, fontSize, color);
}
//semiBold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(FontWeightManager.semiBold, fontSize, color);
}
//medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(FontWeightManager.medium, fontSize, color);
}
//regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(FontWeightManager.regular, fontSize, color);
}
//light style

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(FontWeightManager.light, fontSize, color);
}
