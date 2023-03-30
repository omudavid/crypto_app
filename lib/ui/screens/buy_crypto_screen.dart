import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cypto_app/bloc/buy_crypto_cubit/buy_crypto_cubit.dart';
import 'package:cypto_app/bloc/buy_crypto_cubit/buy_crypto_state.dart';
import 'package:cypto_app/ui/widgets/app_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/model/Crypto.dart';

class BuyCryptoScreen extends StatefulWidget {
  const BuyCryptoScreen({Key? key, required this.crypto}) : super(key: key);

  final Crypto crypto;

  @override
  State<BuyCryptoScreen> createState() => _BuyCryptoScreenState();
}

class _BuyCryptoScreenState extends State<BuyCryptoScreen> {
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy ${widget.crypto.symbol}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: widget.crypto.iconUrl!,
              placeholder: (_, str) => const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
              ),
              imageBuilder: (_, imgProvider) {
                return CircleAvatar(
                  radius: 40,
                  backgroundImage: imgProvider,
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            AppInputField(
              keyboardType: TextInputType.number,
              validator: (val) => val,
              onSaved: (val) => val,
              hintText: 'Enter Amount in Usd',
              onChanged: _onAmountChanged,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You get:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BlocBuilder<BuyCryptoCubit, BuyCrpytoState>(builder: (_, state) {
              if (state is BuyCryptoLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is BuyCryptoLoaded) {
                return Text('${state.amount}');
              } else {
                return SizedBox();
              }
            }),
          ],
        ),
      ),
    );
  }

  _onAmountChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      context
          .read<BuyCryptoCubit>()
          .getCryptoValue(query, widget.crypto.symbol!);
    });
  }
}
