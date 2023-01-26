import 'package:flutter/material.dart';

class ScanBotton extends StatelessWidget {
  const ScanBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,//esta elevacion la ha quitado tambien de otro widget quede jumm
    onPressed: (){},
    child:Icon(Icons.filter_center_focus)
    );
  }
}