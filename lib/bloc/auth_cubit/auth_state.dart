import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {}

class AuthInitState extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthorizedState extends AuthState {
  @override
  List<Object?> get props => [];
}
