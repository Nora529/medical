import 'package:flutter/material.dart';

class CategoriesListIcons extends StatelessWidget {
  const CategoriesListIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final cat = categories[index];
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: cat.color,
                  foregroundColor: Colors.white,
                  child: Icon(cat.icon, size: 30),
                ),
                const SizedBox(height: 5),
                Text(cat.text, style: const TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Category {
  final String text;
  final Color color;
  final IconData icon; // جديد
  Category({required this.text, required this.color, required this.icon});
}

List<Category> categories = [
  Category(
    text: 'Dental',
    color: Colors.pinkAccent,
    icon: Icons.medical_services,
  ),
  Category(
    text: 'Wellness',
    color: Colors.greenAccent,
    icon: Icons.fitness_center,
  ),
  Category(text: 'Home', color: Colors.orangeAccent, icon: Icons.home),
  Category(
    text: "Eye care",
    color: Colors.blueAccent,
    icon: Icons.remove_red_eye,
  ),
  Category(
    text: 'Dental',
    color: Colors.indigoAccent,
    icon: Icons.medical_services,
  ),
  Category(
    text: 'Wellness',
    color: Colors.deepPurple,
    icon: Icons.fitness_center,
  ),
  Category(text: 'Home', color: Colors.deepOrange, icon: Icons.home),
  Category(text: "Eye care", color: Colors.brown, icon: Icons.remove_red_eye),
];
