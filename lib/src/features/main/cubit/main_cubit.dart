import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pn_app/src/features/main/cubit/main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitialState(currentIndex: 2));

  void changeIndex(int index) {
    emit(MainInitialState(currentIndex: index));
  }
}