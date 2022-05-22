import 'package:flutter/material.dart';
import 'package:test_lime_commerce/l10n/l10n.dart';

class AmountWidget extends StatelessWidget {
  const AmountWidget({
    Key? key,
    required this.price,
    required this.disc,
  }) : super(key: key);

  final int price;
  final double disc;

  @override
  Widget build(BuildContext context) {
    final discount = price * (disc / 100);
    final amountAfterDiscount = price - discount;
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
      child: Row(
        children: [
          Text(
            context.l10n.productPrice(discount),
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 9,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5),
            child: Text(
              context.l10n.productPrice(amountAfterDiscount),
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
