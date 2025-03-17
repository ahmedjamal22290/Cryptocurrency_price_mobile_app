import 'package:cryptocurrency_app/cubit/get_coins_cubit/get_coins_cubit_states.dart';
import 'package:cryptocurrency_app/models/crypto_model.dart';
import 'package:cryptocurrency_app/service/coins-service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetCoinsCubit extends Cubit<GetCoinsCubitState> {
  GetCoinsCubit() : super(GetCoinsCubitInitial());
  getCioins() async {
    List<CryptoModel> items = await CoinsService().getCoins();
    emit(GetCoinsDoneSuccessfuly(items));
  }
}
