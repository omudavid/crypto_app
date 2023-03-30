import 'package:cypto_app/repository/model/Crypto.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {}

class HomeLoadingState extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoadedState extends HomeState {
  final List<Crypto> cryptos;

  HomeLoadedState(this.cryptos);
  @override
  List<Object?> get props => [cryptos];
}

class HomeFailedState extends HomeState {
  @override
  List<Object?> get props => [];
}
