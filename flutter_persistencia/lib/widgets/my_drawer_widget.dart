import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.pexels.com/photos/1629236/pexels-photo-1629236.jpeg"),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg"),
                  ),
                  Text(
                    "Juan Ramón Lopez",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Administrador",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Mi Perfil"),
          ),
          ListTile(
            leading: Icon(Icons.file_copy),
            title: Text("Portafolio"),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Cambiar Contraseña"),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Cerrar Sesión"),
          ),
        ],
      ),
    );
  }
}
