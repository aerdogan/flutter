import 'package:flutter/material.dart';
import 'package:JsonApiTest/screens/main_screen.dart';

void main() {
  runApp(ApiApp());
}

class ApiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
