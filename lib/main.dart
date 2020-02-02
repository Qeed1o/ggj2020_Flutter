import 'package:flutter/material.dart';
import 'package:flutter_app/ui/screens/main_screen.dart';

void main() =>
  runApp(GGJ2020App());

class GGJ2020App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}