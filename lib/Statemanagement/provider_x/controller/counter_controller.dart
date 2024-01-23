import 'package:advanced/Statemanagement/provider_x/model/count.dart';
import 'package:flutter/material.dart';

class Counterprovider extends ChangeNotifier{
  Count incCounter = Count((0));
  Count get counter_value => incCounter;

  void increment_count(){
    incCounter.value++;
    notifyListeners();
  }
}