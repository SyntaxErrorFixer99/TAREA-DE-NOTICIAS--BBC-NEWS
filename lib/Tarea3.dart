import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NewsApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Serif',
      scaffoldBackgroundColor: Colors.white,
    ),
  ));
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Text(
              'Tarea 3 Programación Móvil',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Mind Cafe',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          Icon(Icons.more_horiz, color: Colors.black),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Relaxed, inspiring essays about happiness.',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.person_add, color: Colors.white),
                    label: Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    '140K Followers',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              Text(
                'LATEST',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 16.0),
              NewsCard(
                title: '4 Hidden Philosophical Gems To Live By',
                description:
                    '#3 The homeless dog philosopher of Ancient Greece and his lessons on freedom.',
                imageUrl:
                    'https://images.unsplash.com/photo-1573497491208-6b1acb260507',
                author: 'Julian Basic',
                time: '19 hr ago',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Desarrollado por José Demetrio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String author;
  final String time;

  const NewsCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.author,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.person, size: 20.0, color: Colors.grey),
            SizedBox(width: 8.0),
            Text(
              '$author in Mind Cafe',
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
            Spacer(),
            Text(
              time,
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          description,
          style: TextStyle(fontSize: 14.0, color: Colors.grey[700]),
        ),
        SizedBox(height: 16.0),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                );
              }
            },
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 200,
                color: Colors.grey[200],
                child: Center(
                  child: Text(
                    'Image not available',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
