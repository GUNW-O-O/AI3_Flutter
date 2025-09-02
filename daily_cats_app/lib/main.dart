import 'package:daily_cats_app/screens/list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Cats App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListScreen(),
    );
  }
}
