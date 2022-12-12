import 'package:flutter/material.dart';

class SizeConfig {
  SizeConfig._privateConstructor();

  static SizeConfig? _instance;

  late MediaQueryData _mediaQueryData;
  late double _screenWidth;
  late double _screenHeight;
  late Orientation _orientation;

  get screenWidth => _screenWidth;

  get screenHeight => _screenHeight;

  get orientation => _orientation;

  static get instance {
    if (_instance != null) {
      return SizeConfig._instance!;
    } else {
      throw ('SizeConfig instance is null. SizeConfig should be initialized. '
          'Use SizeConfig.init(context) at the beginning of the app');
    }
  }

  static void init(BuildContext context) {
    if (_instance == null) {
      _instance = SizeConfig._privateConstructor();
      _instance!._mediaQueryData = MediaQuery.of(context);
      _instance!._screenHeight = _instance!._mediaQueryData.size.height;
      _instance!._screenWidth = _instance!._mediaQueryData.size.width;
      _instance!._orientation = _instance!._mediaQueryData.orientation;
    }
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  SizeConfig instance = SizeConfig.instance;
  double screenHeight = instance.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 745.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  SizeConfig instance = SizeConfig.instance;
  double screenWidth = instance.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 344.0) * screenWidth;
}
