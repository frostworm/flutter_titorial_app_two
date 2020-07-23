import 'dart:convert';

import 'package:flutter_tutorial_app_two/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:flutter_tutorial_app_two/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test Text');

  test(
    'should be a subclass of NumberTrivia entity',
    () async {
      // arrang
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      // act
      final result = NumberTriviaModel.fromJson(jsonMap);
      // assert
      expect(result, isA<NumberTrivia>());
    },
  );

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = tNumberTriviaModel.toJson();
        // assert
        final expectedJsonMap = {
          "text": "Test Text",
          "number": 1,
        };
        expect(result, expectedJsonMap);
      },
    );
  });
}
