import 'package:mobile_applications_group_8/models/dish.dart';

class MenuCategory {
  final String name;
  List<Dish> dishes = [];

  MenuCategory({required this.name, required this.dishes});
}