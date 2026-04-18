import '../models/menu_category.dart';
import '../models/dish.dart';

final List<MenuCategory> menuCategories = [
  MenuCategory(
    name: 'Starters',
    dishes: [
      Dish(
        id: 's1',
        name: 'Bruschetta',
        shortDescription: 'Grilled bread with tomato, basil, and garlic.',
        longDescription: 'A traditional Italian appetizer made with grilled bread topped with fresh tomatoes, basil, and garlic.',
        category: 'Starters',
        price: 5.99,
        imageUrl: 'assets/images/bruschetta.png',
      ),
      Dish(
        id: 's2',
        name: 'Caeser Salad',
        shortDescription: 'Crisp salad with Caesar dressing.',
        longDescription: 'Fresh romaine lettuce mixed with crunchy croutons, parmesan cheese, and creamy Caesar dressing.',
        category: 'Starters',
        price: 6.99,
        imageUrl: 'assets/images/caesar_salad.png',
      ),
      Dish(
        id: 's3',
        name: 'Soup of the Day',
        shortDescription: 'Warm homemade seasonal soup.',
        longDescription: 'A freshly prepared homemade soup made with seasonal ingredients, served warm and full of flavor.',
        category: 'Starters',
        price: 4.99,
        imageUrl: 'assets/images/soup.png',
      )
    ],
  ),
  MenuCategory(
    name: 'Main Courses',
    dishes: [
      Dish(
        id: 'm1',
        name: 'Margherita Pizza',
        shortDescription: 'Classic pizza with tomato sauce, mozzarella, and fresh basil.',
        longDescription: 'Traditional Italian pizza topped with tomato sauce, fresh mozzarella, and basil, baked to perfection.',
        category: 'Main Courses',
        price: 12.99,
        imageUrl: 'assets/images/margherita_pizza.png',
      ),
      Dish(
        id: 'm2',
        name: 'Pasta Alfredo',
        price: 11.49,
        shortDescription: 'Creamy pasta with parmesan sauce.',
        longDescription:
            'Pasta tossed in a rich and creamy Alfredo sauce with parmesan cheese, garlic, and fresh parsley.',
        category: 'Main Courses',
        imageUrl: 'assets/images/pasta_alfredo.png',
      ),
      Dish(
        id: 'm3',
        name: 'Grilled Chicken',
        shortDescription: 'Tender grilled chicken with vegetables.',
        longDescription: 'Juicy grilled chicken breast served with a side of roasted vegetables and a light herb sauce.',
        category: 'Main Courses',
        price: 14.99,
        imageUrl: 'assets/images/grilled_chicken.png',
      ),
    ],
  ),
  MenuCategory(
    name: 'Desserts',
    dishes: [
      Dish(
        id: 'd1',
        name: 'Tiramisu',
        shortDescription: 'Coffee-flavored Italian dessert with layers of ladyfingers and mascarpone cheese.',
        longDescription: 'A traditional Italian dessert made with layers of ladyfingers soaked in coffee and layered with a creamy mascarpone mixture.',
        category: 'Desserts',
        price: 6.99,
        imageUrl: 'assets/images/tiramisu.png',
      ),
      Dish(
        id: 'd2',
        name: 'Panna Cotta',
        shortDescription: 'Creamy Italian dessert topped with berry sauce.',
        longDescription: 'A smooth and creamy Italian dessert made with milk, cream, and gelatin, topped with a fresh berry sauce.',
        category: 'Desserts',
        price: 5.99,
        imageUrl: 'assets/images/panna_cotta.png',
      ),
    ],
  ),
  MenuCategory(
    name: 'Drinks',
    dishes: [
      Dish(
        id: 'dr1',
        name: 'Iced Tea',
        shortDescription: 'Refreshing cold tea with lemon.',
        longDescription: 'A refreshing glass of iced tea with a hint of lemon, perfect for a hot day.',
        category: 'Drinks',
        price: 2.99,
        imageUrl: 'assets/images/iced_tea.png',
      ),
      Dish(
        id: 'dr2',
        name: 'Soda',
        shortDescription: 'Carbonated beverage in various flavors.',
        longDescription: 'A variety of carbonated beverages available in multiple flavors, perfect for quenching your thirst.',
        category: 'Drinks',
        price: 1.99,
        imageUrl: 'assets/images/soda.png',
      ),
    ],
  ),
];
