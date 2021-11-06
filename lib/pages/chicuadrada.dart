import 'package:flutter/material.dart';

class ChiCuadrada extends StatefulWidget {
  const ChiCuadrada({Key? key}) : super(key: key);

  @override
  _ChiCuadradaState createState() => _ChiCuadradaState();
}

final List<int> numeros = [1, 2, 3, 4, 5, 6, 7];
int columnas = 1;
int filas = 1;

class _ChiCuadradaState extends State<ChiCuadrada> {
  Widget numeroColumnas() {
    return Row(
      children: [
        const Text("Numero Columnas:"),
        const SizedBox(
          width: 30.0,
        ),
        DropdownButton(
          value: columnas,
          items: <int>[1, 2, 3, 4, 5, 6, 7].map<DropdownMenuItem<int>>(
            (int value) {
              return DropdownMenuItem<int>(
                value: value,
                child: Text("$value"),
              );
            },
          ).toList(),
          onChanged: (int? opt) {
            setState(() {});
            columnas = opt!;
          },
        )
      ],
    );
  }

  Widget numeroFilas() {
    return Row(
      children: [
        const Text("Numero Filas:"),
        const SizedBox(
          width: 30.0,
        ),
        DropdownButton(
          value: filas,
          items: <int>[1, 2, 3, 4, 5, 6, 7].map<DropdownMenuItem<int>>(
            (int value) {
              return DropdownMenuItem<int>(
                value: value,
                child: Text("$value"),
              );
            },
          ).toList(),
          onChanged: (int? opt) {
            setState(() {});
            filas = opt!;
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              numeroColumnas(),
              const SizedBox(
                width: 30.0,
              ),
              numeroFilas(),
            ],
          ),
          tablas(),
        ],
      ),
    );
  }
}

Widget tablas() {
  double aspecto = 1.5;
  List<int> arreglo = [];
  return GridView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      // crossAxisSpacing: 0.5,
      mainAxisSpacing: 10,
      childAspectRatio: aspecto,
      crossAxisCount: columnas,
    ),
    itemCount: (columnas * filas),
    itemBuilder: (BuildContext ctx, index) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        // height: 100,
        alignment: Alignment.center,
        child: const TextField(
          cursorColor: Colors.black,
          keyboardType: TextInputType.number,
          // obscureText: true,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
          // onChanged: arreglo.add(value),
        ),
        decoration: BoxDecoration(
            color: Colors.grey[350], borderRadius: BorderRadius.circular(10)),
      );
    },
  );
}
