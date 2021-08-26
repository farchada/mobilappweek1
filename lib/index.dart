import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            Positioned(
              top: -20,
              left: -20,
              child: Image(
                image: NetworkImage(
                    "https://www.publicdomainpictures.net/pictures/310000/velka/orange-circle.png"),
                width: size.width * 0.25,
              ),
            ),
            Positioned(
              right: -20,
              bottom: -20,
              child: Image(
                image: NetworkImage(
                    "https://www.publicdomainpictures.net/pictures/310000/velka/orange-circle.png"),
                width: size.width * 0.3,
              ),
            ),
            Column(
              children: [
                Image.asset(
                  "asset/img/logo.png",
                  width: size.width * 0.4,
                //  height: size.height * 0.4,
                ),
                 SizedBox(
                  height: 15,
                ),
                Text(
                  "Welcome to KMUTNB",
                  style: TextStyle(
                    color: Colors.amber[900],
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(
                  height: 15,
                ),
                Image
                (image: NetworkImage(
                "https://static.vecteezy.com/ti/vetor-gratis/p1/247819-ilustracao-de-desktop-vector-designer-gr%C3%A1tis-vetor.jpg"),
                width: 500,
                height: 250,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  onPressed: () {
                    print("object");
                  },   
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(105, 15, 120, 15),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  onPressed: () {
                    print("object");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
