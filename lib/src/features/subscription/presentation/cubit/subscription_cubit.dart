import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pn_app/src/core/usecase/usecase.dart';
import 'package:pn_app/src/features/subscription/domain/usecase/preimuim_usecase.dart';
import 'package:pn_app/src/features/subscription/presentation/cubit/subscription_state.dart';

class SubscriptionCubit extends Cubit<SubscriptionState> {
  PreimuimUsecase preimuimUsecase;

  SubscriptionCubit({required this.preimuimUsecase})
    : super(SubscriptionState(status: SubscriptionStatus.initial, price: 0)){
      getPrice();
    }

  Future<void> getPrice() async {
    emit(SubscriptionState(status: SubscriptionStatus.loading, price: 0));
    try {
      final result = await preimuimUsecase.call(NoParams());

      if (result.isRight) {
        print('result right subscription cubit: ${result.right}');
        print('monthly price: ${result.right['data'][0]['monthly_price']}');
        emit(SubscriptionState(status: SubscriptionStatus.loaded, price: result.right['data'][0]['monthly_price']));
      } else {
        throw Exception(result.left.message);
      }
      emit(SubscriptionState(status: SubscriptionStatus.loaded, price: 0));
    } catch (e) {
      emit(
        SubscriptionState(
          price: 0,
          errorText: e.toString(),
          status: SubscriptionStatus.error,
        ),
      );
    }
  }
}
