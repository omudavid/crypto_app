import 'package:cypto_app/bloc/auth_cubit/auth_cubit.dart';
import 'package:cypto_app/bloc/auth_cubit/auth_state.dart';
import 'package:cypto_app/bloc/home_cubit/home_cubit.dart';
import 'package:cypto_app/repository/app_repository.dart';
import 'package:cypto_app/ui/screens/home_screen.dart';
import 'package:cypto_app/ui/screens/splash_screen.dart';
import 'package:cypto_app/ui/screens/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => AuthCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(AppRepository()),
      lazy: false,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
          if (state is AuthorizedState) {
            return const TabBarScreen();
          }
          return SplashScreen();
        }),
      ),
    );
  }
}
