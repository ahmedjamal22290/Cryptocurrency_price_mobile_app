import 'package:cryptocurrency_app/models/crypto_model.dart';

class CoinsService {
  String baseUrl =
      "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd";
  String apiKey = "x_cg_demo_api_key=CG-9QNBqzTdg6rA6qhSMXvRUz15";
  Future<List<CryptoModel>> getCoins() async {}
}
