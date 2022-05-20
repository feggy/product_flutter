import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarCustom extends StatelessWidget {
  const RatingBarCustom({Key? key, required this.rating}) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      ratingWidget: RatingWidget(
        full: const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        half: const Icon(
          Icons.star_half,
          color: Colors.amber,
        ),
        empty: const Icon(
          Icons.star_outline,
          color: Colors.amber,
        ),
      ),
      itemSize: 15,
      allowHalfRating: true,
      initialRating: rating,
      ignoreGestures: true,
      onRatingUpdate: (rating) {
        log('rating: $rating');
      },
    );
  }
}
