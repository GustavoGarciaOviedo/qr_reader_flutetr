
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/ui_provider.dart';


//AQUI SOLO ES PARA LOS BOTUNES FUCHI
class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);//para optener del contexto lo que hay en el provider
    final currentIndex = uiProvider.selectedMenuOpt;//ver el seguimiento aqu abajo

    return BottomNavigationBar (
      onTap: (int i) =>uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,//indica cual icono estar preselecionado o resaltado
      elevation: 0,
      items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.map),
        label: 'mapa'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.compass_calibration),
        label: 'direccion'
      ),
    ]);
  }
}