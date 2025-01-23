import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Georgia', // Fuente predeterminada para el tema
      ),
      home: NewsArticlePage(),
    );
  }
}

class NewsArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Encabezado
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            color: Colors.blueAccent,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'TAREA 2 DE PROGRAMACIÓN MÓVIL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'The New York Times',
                    style: TextStyle(
                      color: Colors.black, // Cambiado a negro
                      fontSize: 22,
                      fontFamily: 'Times New Roman', // Fuente personalizada
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600, // Peso intermedio
                      letterSpacing: 1.5, // Espaciado entre letras
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Noticia 1
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        "https://images.pexels.com/photos/4427628/pexels-photo-4427628.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Nancy Pelosi busca liderar la Cámara: ¿Unificará a los demócratas?",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Georgia',
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "• A sus 77 años, Nancy Pelosi sigue siendo una figura dominante en Washington, aunque polarizadora.",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "• Su capacidad para unir a los demócratas sobre temas como inmigración podría definir su liderazgo.",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(height: 16),

                    // Botones de acción para Noticia 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_alt_outlined,
                              color: Colors.blue),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon:
                              Icon(Icons.comment_outlined, color: Colors.green),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon:
                              Icon(Icons.share_outlined, color: Colors.orange),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_border, color: Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Divider(),

                    // Noticia 2 (Política)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        "https://images.pexels.com/photos/3184291/pexels-photo-3184291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "División en el Senado: el nuevo plan político que causa polémica",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Georgia',
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "• El reciente proyecto de ley ha generado un enfrentamiento entre senadores republicanos y demócratas.",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "• Las decisiones políticas clave podrían retrasarse debido a esta división.",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(height: 16),

                    // Botones de acción para Noticia 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_alt_outlined,
                              color: Colors.blue),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon:
                              Icon(Icons.comment_outlined, color: Colors.green),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon:
                              Icon(Icons.share_outlined, color: Colors.orange),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_border, color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Pie de página
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            color: Colors.grey[200],
            child: Center(
              child: Text(
                'Hecho por: José Demetrio',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
