import 'package:flutter/material.dart';
import 'package:newsapp/Models/category_model.dart';

class CatogreyCard extends StatelessWidget {
  const CatogreyCard({Key? key, required this.category}) : super(key: key);
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        // margin:,
        height: 85,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.imagePath),
            )),
        child: Center(
          child: Text(category.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
