import 'package:flutter/material.dart';
import 'package:laza_shop/pages/first_page.dart';
import 'package:laza_shop/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
