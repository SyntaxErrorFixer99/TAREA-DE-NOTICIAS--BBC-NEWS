import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.white54,
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              ),
            ),
            Text(
              "Fiorella de Fátima Guadalupe",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 15.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
