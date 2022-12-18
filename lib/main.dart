import 'package:cuaca002/screen/cuaca_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Cuaca',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CuacaScreen(),
    );
  }
}
