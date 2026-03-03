import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/core/usecase/usecase.dart';
import 'package:pn_app/src/features/subscription/domain/repository/subscription_repository.dart';

class PreimuimUsecase extends UseCase<Map, NoParams> {
  SubscriptionRepository subscriptionRepository;
  PreimuimUsecase({required this.subscriptionRepository});

  @override
  Future<Either<Failure, Map<dynamic, dynamic>>> call(NoParams params) {
    return subscriptionRepository.getPrice();
  }
}
