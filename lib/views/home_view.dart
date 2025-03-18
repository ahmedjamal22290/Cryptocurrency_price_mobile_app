import 'dart:async';

import 'package:cryptocurrency_app/components/home_view_body.dart';
import 'package:cryptocurrency_app/cubit/get_coins_cubit/get_coins_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool changeColor = false;
  late Timer _timer;
  @override
  void initState() {
    BlocProvider.of<GetCoinsCubit>(context).getCoins();

    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        changeColor = !changeColor;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: AnimatedDefaultTextStyle(
          curve: Curves.easeInBack,
          duration: const Duration(milliseconds: 850),
          style: TextStyle(
            color:
                changeColor ? Colors.deepOrange[800] : const Color(0xff39393a),
          ),
          child: const Text(
            "Cryptocurrencies ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
