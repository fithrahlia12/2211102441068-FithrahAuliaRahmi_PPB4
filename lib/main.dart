import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation with Hero Animation',
      theme: ThemeData(
        primaryColor: Colors.blue, // Tema utama aplikasi
        scaffoldBackgroundColor: Colors.white, // Warna latar belakang utama
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SourcePage(),
        '/second': (context) => DestinationPage(),
      },
    );
  }
}

class SourcePage extends StatelessWidget {
  const SourcePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeroSample'), // Judul halaman pertama
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DestinationPage()),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.green, 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(
                  Icons.eco,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tap on the icon to view hero animation transition', // Keterangan teks tema
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DestinationPage extends StatelessWidget {
  const DestinationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'), // Judul halaman kedua
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[900], // Warna gelap untuk kontras elegan
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(
                  Icons.location_city,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Urban Vibes', // Keterangan teks tema
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[900],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}