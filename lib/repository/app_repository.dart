import 'dart:developer';

import 'package:cypto_app/repository/model/Crypto.dart';
import 'package:dio/dio.dart';

import '../util/constants.dart';
import 'model/CryptoListResponse.dart';

class AppRepository {
  final _dio = Dio();

  Future<List<Crypto>> getUserInfo() async {
    final response = await _dio.get('${Constants.baseUrl}list',
        queryParameters: {'access_key': Constants.accessKey});
    final resObject = CryptoListResponse.fromJson(response.data);
    final cryptoList =
        resObject.crypto?.values.map((e) => Crypto.fromJson(e)).toList() ?? [];
    return cryptoList;
  }

  Future<dynamic> getCryptoValue(String usdAmount, String cryptoSymbol) async {
    final response =
        await _dio.get('${Constants.baseUrl}convert', queryParameters: {
      'access_key': Constants.accessKey,
      'from': 'USD',
      'to': cryptoSymbol,
      'amount': usdAmount
    });
    final resObject = CryptoListResponse.fromJson(response.data);
    print('Response....${response.data}');
    final cryptoList =
        resObject.crypto?.values.map((e) => Crypto.fromJson(e)).toList() ?? [];
    return cryptoList;
  }
}
