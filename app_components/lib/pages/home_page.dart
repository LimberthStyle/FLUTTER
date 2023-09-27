import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                //color: Colors.redAccent,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/18103058/pexels-photo-18103058/free-photo-of-resfriado-nieve-invierno-perros.jpeg"),
                ),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: Offset(5, 5),
                    blurRadius: 12.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
