import 'package:cryptocurrency_app/cubit/get_coins_cubit/get_coins_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopCategory extends StatefulWidget {
  const TopCategory({
    super.key,
  });

  @override
  State<TopCategory> createState() => _TopCategoryState();
}

class _TopCategoryState extends State<TopCategory> {
  bool isDown = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          GestureDetector(
            onTap: () {
              BlocProvider.of<GetCoinsCubit>(context);
              isDown = isDown == false ? true : false;
              setState(() {});
            },
            child: Row(
              children: [
                Text(
                  'Price(USD)',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                  ),
                ),
                Icon(
                  size: 18,
                  isDown ? Icons.arrow_downward : Icons.arrow_upward,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
