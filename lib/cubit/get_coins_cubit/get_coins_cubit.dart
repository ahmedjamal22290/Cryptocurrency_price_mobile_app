import 'package:cryptocurrency_app/cubit/get_coins_cubit/get_coins_cubit_states.dart';
import 'package:cryptocurrency_app/models/crypto_model.dart';
import 'package:cryptocurrency_app/service/coins_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetCoinsCubit extends Cubit<GetCoinsCubitState> {
  GetCoinsCubit() : super(GetCoinsCubitInitial());
  List<CryptoModel> items = [];
  getCoins() async {
    items = await CoinsService().getCoins();
    emit(GetCoinsDoneSuccessfuly(items));
  }

  sortCoins(bool isDwon) {
    if (!isDwon) {
      items.sort((CryptoModel c1, CryptoModel c2) {
        return c2.price.compareTo(c1.price);
      });
    } else {
      items.sort((CryptoModel c1, CryptoModel c2) {
        return c1.price.compareTo(c2.price);
      });
    }
    emit(GetCoinsDoneSuccessfuly(items));
  }
}
