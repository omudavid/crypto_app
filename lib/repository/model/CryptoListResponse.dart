import 'package:cypto_app/repository/model/Crypto.dart';

/// success : true
/// crypto : {}

class CryptoListResponse {
  CryptoListResponse({
    bool? success,
    Map<String, dynamic>? crypto,
  }) {
    _success = success;
    _crypto = crypto;
  }

  CryptoListResponse.fromJson(dynamic json) {
    _success = json['success'];
    _crypto = json['crypto'];
  }
  bool? _success;
  Map<String, dynamic>? _crypto;

  bool? get success => _success;
  Map<String, dynamic>? get crypto => _crypto;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['crypto'] = _crypto;
    return map;
  }
}
