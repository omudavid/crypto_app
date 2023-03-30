import 'package:equatable/equatable.dart';

abstract class BuyCrpytoState extends Equatable {}

class BuyCryptoInit extends BuyCrpytoState {
  @override
  List<Object?> get props => [];
}

class BuyCryptoLoading extends BuyCrpytoState {
  @override
  List<Object?> get props => [];
}

class BuyCryptoLoaded extends BuyCrpytoState {
  final String amount;

  BuyCryptoLoaded(this.amount);
  @override
  List<Object?> get props => [amount];
}
