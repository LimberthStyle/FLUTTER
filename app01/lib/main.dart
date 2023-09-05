import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 380,
                height: 250,
                color: Color.fromARGB(255, 245, 245, 245),
                child: Image.network(
                  "https://holidaystoswitzerland.com/wp-content/uploads/2020/03/Lake-Oeschinensee-Switzerland-1.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 300,
                height: 300,
                color: Color.fromARGB(255, 254, 254, 254),
                child: Text(
                  "Oeschinen Lake Campground",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
