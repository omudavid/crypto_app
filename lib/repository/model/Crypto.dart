/// symbol : "ABC"
/// name : "AB-Chain"
/// name_full : "AB-Chain (ABC)"
/// max_supply : 210000000
/// icon_url : "https://assets.coinlayer.com/icons/ABC.png"

class Crypto {
  Crypto({
    String? symbol,
    String? name,
    String? nameFull,
    String? maxSupply,
    String? iconUrl,
  }) {
    _symbol = symbol;
    _name = name;
    _nameFull = nameFull;
    _maxSupply = maxSupply;
    _iconUrl = iconUrl;
  }

  Crypto.fromJson(dynamic json) {
    _symbol = json['symbol'];
    _name = json['name'];
    _nameFull = json['name_full'];
    _maxSupply = json['max_supply'].toString();
    _iconUrl = json['icon_url'];
  }
  String? _symbol;
  String? _name;
  String? _nameFull;
  String? _maxSupply;
  String? _iconUrl;

  String? get symbol => _symbol;
  String? get name => _name;
  String? get nameFull => _nameFull;
  String? get maxSupply => _maxSupply;
  String? get iconUrl => _iconUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['symbol'] = _symbol;
    map['name'] = _name;
    map['name_full'] = _nameFull;
    map['max_supply'] = _maxSupply;
    map['icon_url'] = _iconUrl;
    return map;
  }
}
