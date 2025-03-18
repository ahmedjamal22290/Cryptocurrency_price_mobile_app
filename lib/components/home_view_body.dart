import 'package:cryptocurrency_app/cubit/get_coins_cubit/get_coins_cubit.dart';
import 'package:cryptocurrency_app/cubit/get_coins_cubit/get_coins_cubit_states.dart';
import 'package:cryptocurrency_app/widgets/currency_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCoinsCubit, GetCoinsCubitState>(
      builder: (context, state) {
        if (state is GetCoinsDoneSuccessfuly) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Symbol',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Price(USD)',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: state.items.length,
                      itemBuilder: (context, index) {
                        return CurrencyItem(crypto: state.items[index]);
                      }),
                )
              ],
            ),
          );
        } else {
          return Center(
              child: CircularProgressIndicator(
            strokeWidth: 5,
            semanticsLabel: "Loading",
          ));
        }
      },
    );
  }
}
