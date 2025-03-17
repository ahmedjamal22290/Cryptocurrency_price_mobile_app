import 'package:cryptocurrency_app/models/crypto_model.dart';
import 'package:flutter/material.dart';

class CurrencyItem extends StatelessWidget {
  const CurrencyItem({super.key, required this.crypto});
  final CryptoModel crypto;
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
            crypto.imageUrl,
            scale: 9.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              crypto.name,
              style: const TextStyle(
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
                crypto.symbol,
                style: const TextStyle(
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
                '${crypto.price}' r'$',
                style: const TextStyle(
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
