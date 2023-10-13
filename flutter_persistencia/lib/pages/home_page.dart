import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences App"),
      ),
      drawer: const Drawer(
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
        ],
      )),
      body: Column(
        children: [
          Text("Hola mundo"),
        ],
      ),
    );
  }
}
