import 'package:flutter/material.dart';

class CurrencyItem extends StatelessWidget {
  const CurrencyItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      margin: const EdgeInsets.symmetric(vertical: 4),
      height: MediaQuery.of(context).size.height / 16.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        children: [
          Image.network(
            'https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400',
            scale: 9.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              'Bitcoin',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width - 27) / 3,
            child: Center(
              child: Text(
                'BTC',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width - 27) / 3,
            child: Center(
              child: Text(
                r'12355421$',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
