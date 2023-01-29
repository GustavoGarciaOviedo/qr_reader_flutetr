import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';//necesaria para utilizar el cam scanner.. esta en la documentacion 


//ESTE ES EL BOTON DE SCANNER
class ScanBotton extends StatelessWidget {
  const ScanBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,//esta elevacion la ha quitado tambien de otro widget quede jumm
    onPressed: ()async{
      String barcodeScanRes = await
       FlutterBarcodeScanner.scanBarcode('#3D8BEF','CANCELAR',false,ScanMode.QR);
       //pide: un color, mensaje de cancelar,, activar flash, y que es lo que va a hacer,, en este caso .QR
    },
    child:Icon(Icons.filter_center_focus)
    );
  }
}