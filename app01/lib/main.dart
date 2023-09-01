import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffccd5ae),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300.0,
                height: 300.0,
                color: Colors.red,
                child: Image.network(
                  "https://images.pexels.com/photos/2007647/pexels-photo-2007647.jpeg",
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
