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
  @override
  void initState() {
    BlocProvider.of<GetCoinsCubit>(context).getCioins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Cryptocurrencies ",
          style: TextStyle(
            color: Color(0xff39393a),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
