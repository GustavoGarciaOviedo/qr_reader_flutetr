import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/pages/mapas_page.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/widgets/custom_navigatorbar.dart';
import 'package:qr_reader/widgets/scan_botton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('historial'),
        elevation: 0,
        actions: [
          IconButton(//el solo icon lo deja en la esquina por eso mejor icon botton
            icon: Icon(Icons.delete),
            onPressed: (){}, 
          )
        ],
      ),
      //TODO:debo hacer que cambie entre pantalla
      body: _HomePageBody(),

      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanBotton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


//voy a cambiar la pagina segun el curren ingresado o seleccionado
class _HomePageBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);//para optener del contexto lo que hay en el provider
    
    final currentIndex = uiProvider.selectedMenuOpt;//de uiProvider obtengo todos los metodos de aquella clase

    switch (currentIndex) {
      case 0:
        return MapasPage();
        break;
      case 1: 
        return DireccionesPage();
      default:
        return MapasPage();

    }
    
  }
}