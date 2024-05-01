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
      title: 'Mobile Technology',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Nosatu(),
        '/nodua': (context) => Nodua(),
      },
    );
  }
}
