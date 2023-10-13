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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                title: Text(
                  "Modo oscuro",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                value: isDarkMode,
                onChanged: (bool value) {}),
            const Text(
              "Género:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const ListTile(
              leading: Icon(
                Icons.circle_outlined,
                size: 20,
              ),
              title: Text(
                "Masculino",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.circle_outlined,
                size: 20,
              ),
              title: Text(
                "Femenino",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 45,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff0d1321)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.archive),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Guardar Datos",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
