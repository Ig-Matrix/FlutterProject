import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Reviews extends StatelessWidget {
  num rating;

   Reviews({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.star,
          color: Colors.orange.shade400,
          size: 19,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "$rating",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
          "(300 Reviews)",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFFA9A9A9),
            fontSize: 14,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
