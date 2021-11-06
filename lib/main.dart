import 'package:appestadistica/pages/anova.dart';
import 'package:appestadistica/pages/chicuadrada.dart';
import 'package:appestadistica/pages/inicio.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estadistica',
      initialRoute: 'inicio',
      routes: {
        'inicio': (context) => const BottomNavBar(),
        'chi': (context) => const ChiCuadrada(),
        'anova': (context) => const Anova(),
      },
    );
  }
}
