import 'package:flutter/material.dart';

import '../models/category.dart';

class AppCategoryList extends StatelessWidget {
  final mainColor;

  AppCategoryList(this.mainColor);

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categories = [
      CategoryModel(category: 'Mountain', icon: Icons.terrain),
      CategoryModel(category: 'Forest', icon: Icons.park),
      CategoryModel(category: 'Beach', icon: Icons.beach_access),
      CategoryModel(category: 'Hiking', icon: Icons.directions_walk)
    ];
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Category',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Text('See More',
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
          height: 100,
          margin: const EdgeInsets.only(left: 10),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.2), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(categories[index].icon, color: mainColor),
                      Text(categories[index].category,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
