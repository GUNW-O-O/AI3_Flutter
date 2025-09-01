import 'package:flutter/material.dart';
import 'package:layout_widget/screens/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '레이아웃 위젯',
      home: DetailScreen(),
    );
  }
}
