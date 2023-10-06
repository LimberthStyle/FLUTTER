import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Input Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 25.0,
              ),
              maxLines: 1,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: "Dirección",
                label: Text("Dirección label"),
                icon: Icon(Icons.location_on),
                suffixIcon: Icon(Icons.check),
                prefixIcon: Icon(Icons.star),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar producto",
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black54,
                    width: 5,
                  ),
                ),
              ),
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.75),
                  offset: Offset(4, 4),
                  blurRadius: 14,
                ),
              ]),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Ingrese su nombre completo",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.black38,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Container(
                    margin: EdgeInsets.all(3),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: isInvisible,
              // obscuringCharacter: "X",
              decoration: InputDecoration(
                hintText: "Contraseña",
                suffixIcon: IconButton(
                  onPressed: () {
                    isInvisible = !isInvisible;
                    setState(() {});
                  },
                  icon: isInvisible
                      ? Icon(Icons.remove_red_eye)
                      : Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
