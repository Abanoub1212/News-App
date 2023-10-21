import 'package:flutter/material.dart';
import '../Models/category_model.dart';
import 'catogory_card.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(imagePath: 'assets/business.jpeg', categoryName: 'Business'),
    CategoryModel(
        imagePath: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    CategoryModel(imagePath: 'assets/general.jpeg', categoryName: 'General'),
    CategoryModel(imagePath: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(imagePath: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(imagePath: 'assets/sports.jpeg', categoryName: 'Sports'),
    CategoryModel(
        imagePath: 'assets/technology.jpeg', categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CatogreyCard(category: categories[index]);
        },
      ),
    );
  }
}
