import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key, required this.isFavorite}) : super(key: key);

  final bool isFavorite;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool favorite = false;

  @override
  void initState() {
    favorite = widget.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          favorite = !favorite;
        });
      },
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey[100],
        ),
        child: Center(
          child: Icon(
            favorite ? Icons.favorite : Icons.favorite_outline,
            color: favorite ? Colors.red : Colors.black87,
            size: 15,
          ),
        ),
      ),
    );
  }
}
