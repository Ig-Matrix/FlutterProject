import 'package:flutter/material.dart';

class IngredientsCard extends StatelessWidget {
  final String image;
  final String name;
  final String weight;


   const IngredientsCard({super.key, required this.image, required this.name, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.transparent, width: 2),
        color: Colors.blueGrey.withAlpha(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.transparent, width: 2),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(9),
                child: Image.asset(image,
                    fit: BoxFit.cover),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w700, fontFamily: 'Poppins',),
              ),
            ],
          ),
          Text(
            "$weight g",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xFFA9A9A9),
              fontSize: 14,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}
