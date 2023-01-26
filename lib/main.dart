import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/home_page.dart';
import 'package:qr_reader/pages/mapa_page.dart';
import 'package:qr_reader/providers/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> new UiProvider())
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'qr reader',
        initialRoute: 'home',
        routes: {
          'home':(_) => HomePage(),
          'mapa':(_) => MapaPage()
        },
        theme: ThemeData(primarySwatch: Colors.red,)//primary swatch cambia todo, primary color no me funciono
      ),
    );
  }
}