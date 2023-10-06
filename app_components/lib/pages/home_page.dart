import 'package:app_components/pages/alert_page.dart';
import 'package:app_components/pages/avatar_page.dart';
import 'package:app_components/pages/card_page.dart';
import 'package:app_components/pages/input_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  //color: Colors.redAccent,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle-768x770.jpg"),
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
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                width: 160.0,
                child: Divider(),
              ),
              ItemComponentWidget(
                titulo: "Avatar",
                irPagina: AvatarPage(),
              ),
              ItemComponentWidget(
                titulo: "Alert",
                irPagina: AlertPage(),
              ),
              ItemComponentWidget(
                titulo: "Card",
                irPagina: CardPage(),
              ),
              ItemComponentWidget(
                titulo: "Input",
                irPagina: InputPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String titulo;
  Widget irPagina;

  ItemComponentWidget({required this.titulo, required this.irPagina});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 5.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(5, 5),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => irPagina,
            ),
          );
        },
        title: Text(
          titulo,
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text("Ir a detalle del $titulo"),
        leading: Icon(
          Icons.check_circle_outline,
          color: Colors.black,
        ),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
