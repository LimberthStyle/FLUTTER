import 'package:flutter/material.dart';

class Test1Page extends StatefulWidget {
  const Test1Page({super.key});

  @override
  State<Test1Page> createState() => _Test1PageState();
}

class _Test1PageState extends State<Test1Page> {
  List<Map<String, dynamic>> data = [
    {
      'id': 1,
      'nombre': 'Motorizado de rapi',
      'image': 'assets/images/Biker.jpg'
    },
    {
      'id': 2,
      'nombre': 'Goku Ultra Instinto',
      'image': 'assets/images/goku.jpg'
    },
    {'id': 3, 'nombre': 'LimberthStyle', 'image': 'assets/images/Limbert.jpg'},
    {'id': 4, 'nombre': 'Lion', 'image': 'assets/images/Lion.jpg'},
    {'id': 5, 'nombre': 'Lobo', 'image': 'assets/images/lobo.jpg'}
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrusel de Imagenes"),
      ),
      body: Column(
        children: [
          Text(
            "${data[index]["nombre"]}",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Image.asset(
            data[index]['image'],
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  index--;
                  setState(() {});
                },
                child: Text("Anterior"),
              ),
              ElevatedButton(
                onPressed: () {
                  index++;
                  setState(() {});
                },
                child: Text("Siguiente"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
