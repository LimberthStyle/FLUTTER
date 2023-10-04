import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Card Page"),
      ),
      body: Column(
        children: [
          //Card 1
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, -5),
                  blurRadius: 12.0,
                ),
              ],
            ),
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "Maecenas velit enim, sollicitudin ac neque eu, varius finibus arcu. Proin eu feugiat ligula. Pellentesque pharetra vitae lectus sed consequat. Fusce sollicitudin lobortis lacus id accumsan. Nam efficitur dolor est, at suscipit odio pellentesque at. Vestibulum ornare, purus at eleifend auctor, dui justo congue purus, sit amet vulputate dui eros vitae tortor. Sed in posuere felis. Cras eu ornare nisi, vitae tincidunt odio. Etiam condimentum hendrerit sapien non ultrices.",
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(4, 4),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  height: 40.0,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "Follow me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          // Card 2
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, -5),
                  blurRadius: 12.0,
                ),
              ],
            ),
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/imagex1.png",
                  height: 120.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Fiorela Guadalupe de la nieves azules",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        "Maecenas velit enim, sollicitudin ac neque eu, varius finibus arcu. Proin eu feugiat ligula. Pellentesque pharetra vitae lectus sed consequat. Fusce sollicitudin lobortis lacus id accumsan. Nam efficitur dolor est, at suscipit odio pellentesque at. Vestibulum ornare, purus at eleifend auctor, dui justo congue purus, sit amet vulputate dui eros vitae tortor. ",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //Card 3
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, -5),
                  blurRadius: 12.0,
                ),
              ],
            ),
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Maecenas velit enim, sollicitudin ac neque eu, varius finibus arcu. Proin eu feugiat ligula. Pellentesque pharetra vitae lectus sed consequat. Fusce sollicitudin lobortis lacus id accumsan. Nam efficitur dolor est, at suscipit odio pellentesque at. Vestibulum ornare, purus at eleifend auctor, dui justo congue purus, sit amet vulputate dui eros vitae tortor. Sed in posuere felis. Cras eu ornare nisi, vitae tincidunt odio. Etiam condimentum hendrerit sapien non ultrices.",
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    "https://images.pexels.com/photos/1058771/pexels-photo-1058771.jpeg",
                    height: 100.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
