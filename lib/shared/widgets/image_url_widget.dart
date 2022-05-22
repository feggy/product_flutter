import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_lime_commerce/shared/widgets/shimmer_square_widget.dart';

class ImageUrlWidget extends StatelessWidget {
  const ImageUrlWidget({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(5),
        topRight: Radius.circular(5),
      ),
      child: CachedNetworkImage(
        width: double.infinity,
        height: 150,
        fit: BoxFit.cover,
        imageUrl: imageUrl,
        placeholder: (_, __) => const ShimmerSquareWidget(
          width: double.infinity,
          height: 150,
        ),
        errorWidget: (_, __, dynamic ___) => const Center(
          child: Icon(
            Icons.broken_image_outlined,
            color: Colors.black45,
            size: 50,
          ),
        ),
      ),
    );
  }
}
