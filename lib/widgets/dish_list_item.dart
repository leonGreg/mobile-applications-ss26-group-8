import 'package:flutter/material.dart';
import '../models/dish.dart';
import '../pages/unit_04/dish_details_page.dart';

class DishListItem extends StatelessWidget {
  final Dish dish;

  const DishListItem({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xFF523888),
        child: Icon(Icons.fastfood, color: Colors.white),
      ),
      title: Text(
        dish.name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(dish.shortDescription),
      trailing: Text(
        '€${dish.price.toStringAsFixed(2)}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DishDetailsPage(dish: dish),
          ),
        );
      },
    );
  }
}