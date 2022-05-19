// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParam {}
