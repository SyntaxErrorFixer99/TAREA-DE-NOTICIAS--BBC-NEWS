import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 59, 32, 232),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagen circular
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                ),
                const SizedBox(height: 10.0),
                // Nombre
                const Text(
                  "Fiorella de Fátima Guadalupe",
                  style: TextStyle(
                    fontFamily: "SourceSansPro",
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Rol
                const Text(
                  "FLUTTER DEVELOPER",
                  style: TextStyle(
                    fontFamily: "SourceSansPro",
                    fontSize: 16.0,
                    color: Colors.white70,
                    letterSpacing: 2.5,
                  ),
                ),
                const SizedBox(height: 20.0),
                // Tarjeta de teléfono
                Card(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 10.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      "+51 969461067",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: const Text("Teléfono"),
                    trailing: const Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                // Tarjeta de correo
                Card(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 10.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      "ebarrionuevo@gmail.com",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: const Text("Correo electrónico"),
                    trailing: const Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                // Redes sociales
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        print("Facebook icon pressed");
                      },
                      icon: const Icon(Icons.facebook),
                      color: Colors.white,
                      iconSize: 40.0,
                    ),
                    const SizedBox(width: 20.0),
                    IconButton(
                      onPressed: () {
                        print("Twitter icon pressed");
                      },
                      icon: const Icon(Icons.alternate_email),
                      color: Colors.white,
                      iconSize: 40.0,
                    ),
                    const SizedBox(width: 20.0),
                    IconButton(
                      onPressed: () {
                        print("Instagram icon pressed");
                      },
                      icon: const Icon(Icons.camera_alt),
                      color: Colors.white,
                      iconSize: 40.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
