import 'package:cryptocurrency_app/models/crypto_model.dart';
import 'package:dio/dio.dart';

class CoinsService {
  String baseUrl =
      "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd";
  String apiKey = "x_cg_demo_api_key=CG-9QNBqzTdg6rA6qhSMXvRUz15";
  final Dio dio = Dio();
  Future<List<CryptoModel>> getCoins() async {
    String url = "$baseUrl&$apiKey";
    List<CryptoModel> results = [];
    Response response = await dio.get(url);
    List<dynamic> jsonData = response.data;
    for (int i = 0; i < jsonData.length; i++) {
      results.add(CryptoModel(jsonData[i]));
    }
    return results;
  }
}
