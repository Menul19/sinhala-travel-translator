import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("සංචාරක සහායක")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.translate, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            Text("2026 AI පරිවර්තකයා පණගැන්වේ...", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
