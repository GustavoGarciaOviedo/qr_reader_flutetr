

// To parse this JSON data, do
//
//     final scanModel = scanModelFromMap(jsonString);

import 'dart:convert';

ScanModel scanModelFromMap(String str) => ScanModel.fromMap(json.decode(str));

String scanModelToMap(ScanModel data) => json.encode(data.toMap());

class ScanModel {
    ScanModel({
        this.id,
        required this.tipo,
        required this.valor,
    })
     {
      if (tipo!.contains('http')) {//pide que asegure que llega el tipo
        this.tipo= 'http';
      }
      else{
        this.tipo = 'geo';
      }
    }

    int? id;
    String? tipo;
    String valor;

    factory ScanModel.fromMap(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
    };
}