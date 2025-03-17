import 'package:cryptocurrency_app/cubit/get_coins_cubit/get_coins_cubit.dart';
import 'package:cryptocurrency_app/service/coins_service.dart';
import 'package:cryptocurrency_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Crypto());
}

class Crypto extends StatelessWidget {
  const Crypto({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCoinsCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
