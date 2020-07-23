import 'package:equatable/equatable.dart';
import 'package:flutter_tutorial_app_two/core/error/failure.dart';
import 'package:flutter_tutorial_app_two/core/usecase/usecase.dart';
import 'package:flutter_tutorial_app_two/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_tutorial_app_two/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;
  GetRandomNumberTrivia(this.repository);
  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
