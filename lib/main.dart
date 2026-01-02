import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(SinhalaTranslatorApp());
}

class SinhalaTranslatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
