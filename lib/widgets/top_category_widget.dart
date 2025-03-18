import 'package:flutter/material.dart';

class TopCategory extends StatelessWidget {
  const TopCategory({
    super.key,
  });

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
            onTap: () {},
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
                  Icons.arrow_downward,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
