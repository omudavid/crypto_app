import 'package:cypto_app/bloc/buy_crypto_cubit/buy_crypto_cubit.dart';
import 'package:cypto_app/bloc/home_cubit/home_cubit.dart';
import 'package:cypto_app/bloc/home_cubit/home_state.dart';
import 'package:cypto_app/repository/app_repository.dart';
import 'package:cypto_app/ui/screens/buy_crypto_screen.dart';
import 'package:cypto_app/ui/widgets/crypto_coin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Coins'),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(builder: (_, state) {
        if (state is HomeLoadedState) {
          return ListView.builder(
              itemBuilder: (_, index) => CryptoCoinItem(
                    crypto: state.cryptos[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider(
                            create: (_) => BuyCryptoCubit(AppRepository()),
                            child:
                                BuyCryptoScreen(crypto: state.cryptos[index]),
                          ),
                        ),
                      );
                    },
                  ));
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
