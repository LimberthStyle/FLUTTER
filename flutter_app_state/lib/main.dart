import 'package:flutter/material.dart';
import 'package:flutter_app_state/Test1_page.dart';
import 'package:flutter_app_state/Test2_Page.dart';
import 'package:flutter_app_state/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Test2Page(),
    );
  }
}
