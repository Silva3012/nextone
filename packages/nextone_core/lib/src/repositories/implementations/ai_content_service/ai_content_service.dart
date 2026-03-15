import 'dart:developer';

import 'package:firebase_ai/firebase_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:nextone_core/src/repositories/interfaces/ai_content_service/i_ai_content_service.dart';

@LazySingleton(as: IAiContentService)
class AiContentService implements IAiContentService {
  final GenerativeModel _generativeModel;

  AiContentService()
      : _generativeModel =
            FirebaseAI.googleAI().generativeModel(model: 'gemini-2.5-flash');

  @override
  Future<String> generateBiography({
    required String name,
    required String location,
    required String genre,
  }) async {
    final prompt = '''
You are a professional music copywriter. Write a short artist biography using the details below:

Name: $name
Genre: $genre
Location: $location

Rules:
- Keep it under ~80 words
- Third-person voice
- Avoid exaggeration or unverified claims
''';

    try {
      final response =
          await _generativeModel.generateContent([Content.text(prompt)]);

      final bio = response.text?.trim() ?? '';
      return bio;
    } catch (e) {
      log('AI generation error: $e');
      rethrow;
    }
  }
}
