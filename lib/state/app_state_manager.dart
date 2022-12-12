import 'dart:async';
import 'package:flutter/material.dart';

class AppStateManager extends ChangeNotifier {

  AppStateManager._privateConstructor();
  static late AppStateManager instance;

  static void initAppStateObject() {
    instance = AppStateManager._privateConstructor();
  }
}