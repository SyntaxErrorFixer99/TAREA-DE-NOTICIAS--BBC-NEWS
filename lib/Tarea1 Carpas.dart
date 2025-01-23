import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título de la tarea
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'TAREA DE PROGRAMACIÓN MÓVIL',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            // Imagen principal ajustada
            Expanded(
              child: Container(
                width: double.infinity,
                child: Image.network(
                  "https://media.licdn.com/dms/image/v2/C4E12AQHexqi1ptjJIw/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1559615195655?e=2147483647&v=beta&t=MeWmjcQt3e2mtT56VnL6zF_BtCcca-Wn-nYwcobFRLU",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Título, lugar y estrella de puntuación
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Venta de Carpas Premium',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 20.0,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '41',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Resistencia y calidad garantizada',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            // Filas de íconos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconColumn(
                    icon: Icons.call,
                    label: 'LLAMAR',
                  ),
                  IconColumn(
                    icon: Icons.near_me,
                    label: 'UBICACIÓN',
                  ),
                  IconColumn(
                    icon: Icons.share,
                    label: 'COMPARTIR',
                  ),
                ],
              ),
            ),
            // Descripción
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Encuentra las mejores carpas para tus aventuras al aire libre. '
                'Nuestras carpas están fabricadas con materiales resistentes y '
                'diseñadas para soportar las condiciones climáticas más exigentes. '
                'Perfectas para campings familiares, expediciones extremas o festivales. '
                'Ofrecemos modelos para 2, 4 y hasta 8 personas, con fácil montaje y '
                'excelente ventilación. ¡Explora el mundo con comodidad y seguridad en nuestras carpas!',
                style: TextStyle(fontSize: 14.0, color: Colors.black),
              ),
            ),
            // Hecho por José Demetrio
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Hecho por: José Demetrio',
                style: TextStyle(
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}

// Widget para crear una columna de ícono y texto
class IconColumn extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconColumn({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30.0,
        ),
        SizedBox(height: 8.0),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
