import 'package:cypto_app/bloc/auth_cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitState()) {
    init();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 3));
    emit(AuthorizedState());
  }
}
