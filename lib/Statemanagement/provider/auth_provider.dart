import 'package:flutter/cupertino.dart';

class Auth_provider extends ChangeNotifier{
  bool _loggedin =false;
  bool get login => _loggedin;
  void logedin(){
    _loggedin = true;
    notifyListeners();
  }
  void loggedOut(){
    _loggedin=false;
    notifyListeners();
  }
}