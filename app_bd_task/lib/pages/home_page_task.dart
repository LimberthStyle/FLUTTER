import 'package:app_bd_task/DB/db_admin.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task App')),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                dbadmin.db.checkDataBase();
              },
              child: Text(" Mostrara datos"))
        ]),
      ),
    );
  }
}
