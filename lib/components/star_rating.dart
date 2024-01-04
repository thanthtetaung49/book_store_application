import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.black54,
          size: 25.0,
        ),
        Icon(
          Icons.star,
          color: Colors.black54,
          size: 14.0,
        ),
        Icon(
          Icons.star,
          color: Colors.black54,
          size: 14.0,
        ),
        Icon(
          Icons.star,
          color: Colors.black54,
          size: 14.0,
        ),
        Icon(
          Icons.star,
          color: Colors.black54,
          size: 14.0,
        ),
      ],
    );
  }
}