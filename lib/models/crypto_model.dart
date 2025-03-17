class CryptoModel {
  String imageUrl, name, symbol;
  double price;

  CryptoModel._(this.imageUrl, this.name, this.price, this.symbol);

  factory CryptoModel(Map<String, dynamic> json) {
    return CryptoModel._(
      json['image'],
      json['name'],
      (json['current_price'] as num).toDouble(),
      json['symbol'],
    );
  }
}
