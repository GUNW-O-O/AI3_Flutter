import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(20.0),
      child: ListView(
        children: [
          const Text("로그인", style: TextStyle(fontSize: 30.0)),
        ],
      ),
    );
  }
}