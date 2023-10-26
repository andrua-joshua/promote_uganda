import 'package:flutter/material.dart';


//ignore:camel_case_types
class imgesSwitchNotifier with ChangeNotifier{
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }
}