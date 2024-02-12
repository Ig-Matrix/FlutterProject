import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/Card.dart';

class IngredientSection extends StatelessWidget {
  const IngredientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ingredients",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
            ),
            Text(
              "5 items",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xFFA9A9A9),
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        IngredientsCard(image: "assets/images/coffee.png", name: "Milk", weight: "200"),
        SizedBox(
          height: 15,
        ),
        IngredientsCard(image: "assets/images/burger.png", name: "Bread", weight: "200"),
        SizedBox(
          height: 15,
        ),
        IngredientsCard(image: "assets/images/coffee.png", name: "Eggs", weight: "200"),

      ],
    );
  }
}
