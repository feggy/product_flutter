import 'package:flutter/material.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({Key? key, required this.discount}) : super(key: key);

  final double discount;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 5,
      top: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
        ),
        child: Text.rich(
          TextSpan(
            text: 'Disc ',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 8,
            ),
            children: [
              TextSpan(
                text: '${discount.toInt()}%',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
