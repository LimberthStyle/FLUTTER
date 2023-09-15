import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> Nombres = ["Limbert", "Elyon", "Marco", "Eduardo", "Sabino"];
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homa Page Bar"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            Nombres[contador],
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              if (contador < Nombres.length - 1) {
                contador++;
                setState(() {});
              } else {
                contador = 0;
                setState(() {});
              }
            },
            child: Text("Siguiente"),
          ),
        ]),
      ),
    );
  }
}
