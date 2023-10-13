import 'package:flutter/material.dart';
import '../widgets/my_drawer_widget.dart';

class HomePage extends StatelessWidget {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences App"),
      ),
      //Drawer o lista de menu
      drawer: MyDrawerWidget(),
      //Cuerpo de la app
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            Text(
              "Configuración General",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Nombre completo",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Dirección actual",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SwitchListTile(
                title: Text("Modo oscuro"),
                value: isDarkMode,
                onChanged: (bool value) {}),
          ],
        ),
      ),
    );
  }
}
