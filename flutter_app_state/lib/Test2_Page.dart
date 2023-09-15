import 'package:flutter/material.dart';

class Test2Page extends StatefulWidget {
  const Test2Page({super.key});

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  bool isTitleBold = true;
  bool isDescriptionJustify = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estilos"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Pokemon",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight:
                    isTitleBold == true ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            Text(
              "Phasellus lacinia accumsan odio, non porta lorem mattis vel. Mauris volutpat viverra interdum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus hendrerit, felis in bibendum commodo, tellus libero sollicitudin mi, ac suscipit massa dui eget nisl. Vivamus maximus lectus vel massa ornare vulputate. ",
              textAlign:
                  isDescriptionJustify ? TextAlign.justify : TextAlign.start,
            ),
            /* Checkbox(
                value: isTitleBold,
                onChanged: (bool? value) {
                  isTitleBold = value!;
                  print(value);
                  setState(() {});
                }),*/
            CheckboxListTile(
                title: Text("Title bold"),
                subtitle: Text("Pone el titulo en negrita"),
                value: isTitleBold,
                onChanged: (bool? value) {
                  isTitleBold = value!;
                  print(value);
                  setState(() {});
                }),
            CheckboxListTile(
                title: Text("Description justify"),
                subtitle: Text("Justificar la descripción"),
                value: isDescriptionJustify,
                onChanged: (bool? value) {
                  isDescriptionJustify = value!;
                  print(value);
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
