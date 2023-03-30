import 'dart:math';

import 'package:cypto_app/bloc/buy_crypto_cubit/buy_crypto_state.dart';
import 'package:cypto_app/repository/app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuyCryptoCubit extends Cubit<BuyCrpytoState> {
  BuyCryptoCubit(this.repository) : super(BuyCryptoInit());

  final AppRepository repository;

  Future<void> getCryptoValue(String usdAmount, String cryptoSymbol) async {
    emit(BuyCryptoLoading());
    if (usdAmount.isEmpty || double.parse(usdAmount) == 0) {
      emit(BuyCryptoLoaded(0.toString()));
      return;
    }
    await repository.getCryptoValue(usdAmount, cryptoSymbol).then((value) {
      Random random = Random();
      int randomNumber = random.nextInt(1000);
      emit(BuyCryptoLoaded(randomNumber.toString()));
    });
  }
}
