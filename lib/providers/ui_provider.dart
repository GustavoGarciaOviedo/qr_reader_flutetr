

import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier{//lo extiendo para utilizar notifylisteners
  int _selectedMenuOpt = 0;


//al encapsular me crea el metodo get y set
  int get selectedMenuOpt => _selectedMenuOpt;

  set selectedMenuOpt(int i) {
    _selectedMenuOpt = i;//el return es opcional
    notifyListeners();//para que sea ecuchado el cambio donde se utilice
  }


}