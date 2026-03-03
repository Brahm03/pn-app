import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';

abstract class SubscriptionRepository {
  Future<Either<Failure, Map>>  getPrice();
}