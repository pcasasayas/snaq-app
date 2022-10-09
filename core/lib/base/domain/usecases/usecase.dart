

import 'package:dartz/dartz.dart';
import '../entities/exception_model.dart';

abstract class UseCase<T, R> {
  Future<Either<ExceptionModel, T>> execute(R params);
}