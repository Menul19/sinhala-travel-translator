import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class CameraService {
  final _textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

  Future<String> getRecognizedText(String imagePath) async {
    final inputImage = InputImage.fromFilePath(imagePath);
    final RecognizedText recognizedText = await _textRecognizer.processImage(inputImage);
    
    String text = recognizedText.text;
    _textRecognizer.close();
    return text;
  }
}
