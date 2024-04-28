import 'package:flutter/material.dart';
import 'package:dikrynurahman_7020210039/nodua.dart';
import 'package:dikrynurahman_7020210039/nosatu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ujian Tengah Semester',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Set halaman awal aplikasi
      routes: {
        '/': (context) => Nosatu(), // Halaman utama aplikasi
        '/nodua': (context) => Nodua(), // Halaman Nodua
      },
    );
  }
}
