import 'package:flutter/material.dart';
import '../services/translation_service.dart'; // කලින් හදපු service එක ගන්නවා

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TranslationService _translator = TranslationService();
  String _translatedText = "පරිවර්තනය මෙතනින්...";

  void _handleTranslation() async {
    // උදාහරණයක් විදිහට ඉංග්‍රීසි අකුරු සිංහලට හරවන හැටි
    String result = await _translator.translateText("Hello Traveler", "si");
    setState(() {
      _translatedText = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(title: Text("සංචාරක සහායක (2026)")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text(_translatedText, style: TextStyle(fontSize: 20))),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: _handleTranslation, 
                  icon: Icon(Icons.camera_alt), 
                  label: Text("පින්තූර"),
                ),
                FloatingActionButton(
                  onPressed: () {}, // මයික්‍රෆෝනය සම්බන්ධ කිරීමට
                  child: Icon(Icons.mic),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
