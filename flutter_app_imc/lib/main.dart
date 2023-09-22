import 'dart:ffi';
import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LimberthStyle',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTitleBold = true;
  double valuePeso = 0;
  double valueTalla = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1faee),
      appBar: AppBar(
        title: const Text('IMC APP'),
        backgroundColor: Color(0xff14213d),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "BIENVENIDO, SELECCIONA TU PESO Y ALTURA",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${valuePeso.round()}",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    "kg",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Slider(
                activeColor: Color(0xfff72585),
                thumbColor: Color(0xfff72585),
                min: 0,
                max: 255,
                value: valuePeso,
                onChanged: (value) {
                  print(value);
                  valuePeso = value;
                  setState(() {});
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${valueTalla.round()}",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    "cm",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Slider(
                activeColor: Color(0xfff72585),
                thumbColor: Color(0xfff72585),
                min: 0,
                max: 255,
                value: valueTalla,
                onChanged: (value) {
                  print(value);
                  valueTalla = value;
                  setState(() {});
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Aquí es donde colocarías la lógica de tu cálculo.
                  // Por ejemplo, podrías llamar a una función que realice el cálculo.
                  //realizarCalculo();
                },
                child: Text('Calcular'),
              )
            ],
          )),
    );
  }
}
