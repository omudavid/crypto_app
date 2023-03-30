import 'package:cypto_app/bloc/home_cubit/home_state.dart';
import 'package:cypto_app/repository/app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.repository) : super(HomeLoadingState()) {
    init();
  }

  final AppRepository repository;

  Future<void> init() async {
    await repository.getUserInfo().then((value) {
      emit(HomeLoadedState(value));
    });
  }
}
