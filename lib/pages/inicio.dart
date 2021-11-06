import 'package:appestadistica/pages/anova.dart';
import 'package:appestadistica/pages/chicuadrada.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageindex = 0;

  final ChiCuadrada chiCuadrada = const ChiCuadrada();
  final Anova anova = const Anova();

  Widget showpage = const ChiCuadrada();
  Widget showpage2 = const Anova();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: const Color.fromRGBO(233, 232, 232, 1.0),
        buttonBackgroundColor: Colors.transparent,
        height: 46.0,
        items: const <Widget>[
          Icon(
            Icons.filter_1,
            size: 20,
            color: Colors.red,
          ),
          Icon(
            Icons.cabin,
            size: 20,
            color: Colors.red,
          ),
        ],
        onTap: (index) {
          setState(() {
            showpage = _pageChooser(index);
          });
        },
      ),
      body: Container(
        child: showpage,
      ),
    );
  }

  _pageChooser(int page) {
    switch (page) {
      case 0:
        return chiCuadrada;
      case 1:
        return anova;
      default:
    }
  }
}
