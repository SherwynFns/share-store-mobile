import 'package:flutter/material.dart';
import 'package:share_store/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Health Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.cyan,
        ).copyWith(secondary: Colors.cyan),
      ),
      home: MyHomePage(),
    );
  }
}
