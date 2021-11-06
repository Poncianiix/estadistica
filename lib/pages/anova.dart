import 'package:flutter/material.dart';

class Anova extends StatefulWidget {
  const Anova({Key? key}) : super(key: key);

  @override
  _AnovaState createState() => _AnovaState();
}

class _AnovaState extends State<Anova> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Chi cuadrada"),
    );
  }
}
