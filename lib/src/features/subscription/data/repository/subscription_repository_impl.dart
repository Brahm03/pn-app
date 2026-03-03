import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/features/subscription/data/source/subscription_data_source.dart';
import 'package:pn_app/src/features/subscription/domain/repository/subscription_repository.dart';

class SubscriptionRepositoryImpl extends SubscriptionRepository {
  SubscriptionDataSource subscriptionDataSource;
  SubscriptionRepositoryImpl({required this.subscriptionDataSource});
  @override
  Future<Either<Failure, Map>> getPrice() async {
    try {
      final result = await subscriptionDataSource.getPrice();
      if (result.isRight) {
        return Right(result.right);
      } else {
        throw Exception();
      }
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
  
}