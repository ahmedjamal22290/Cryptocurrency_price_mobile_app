import 'package:cryptocurrency_app/models/crypto_model.dart';

abstract class GetCoinsCubitState {}

class GetCoinsCubitInitial extends GetCoinsCubitState {}

class GetCoinsDoneSuccessfuly extends GetCoinsCubitState {
  GetCoinsDoneSuccessfuly(this.items);
  List<CryptoModel> items;
}

class GetCoinsFailure extends GetCoinsCubitState {}
