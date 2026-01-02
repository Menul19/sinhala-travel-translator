
import 'package:translator/google_translator.dart';

class TranslationService {
  final _translator = GoogleTranslator();

  // ඕනෑම අකුරු පෙළක් සිංහලෙන් ඉංග්‍රීසියට හෝ අනෙක් පසට හැරවීමට
  Future<String> translateText(String input, String targetLang) async {
    try {
      var translation = await _translator.translate(input, to: targetLang);
      return translation.text;
    } catch (e) {
      return "පරිවර්තනය අසාර්ථකයි: $e";
    }
  }
}
