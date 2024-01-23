import 'package:flutter/material.dart';

class Themeprovider extends ChangeNotifier{
  bool _darktheme =false;
  bool get isDarktheme => _darktheme;
  void swiththeme(){
    _darktheme=!_darktheme;
    notifyListeners();
  }
}