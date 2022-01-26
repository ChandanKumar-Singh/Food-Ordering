import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_oredering_app/scr/models/categoriesModel.dart';

import '../helpers/commons.dart';
import 'custom_text.dart';

List<CategoriesModel> categoriesList = [
  CategoriesModel(name: 'Salad', image: 'categoryImages/salad.png'),
  CategoriesModel(name: 'steak', image: 'categoryImages/steak.png'),
  CategoriesModel(name: 'Fast-Food', image: 'categoryImages/sandwich.png'),
  CategoriesModel(name: 'Deserts', image: 'categoryImages/ice-cream.png'),
  CategoriesModel(name: 'Sea food', image: 'categoryImages/fish.png'),
  CategoriesModel(name: 'Bear', image: 'categoryImages/pint.png'),
];

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red[200]!,
                          offset: Offset(4, 6),
                          blurRadius: 20),
                    ],
                  ),
                  child: Image.asset(
                    'images/${categoriesList[index].image}',
                    width: 50,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 16,
                  colors: black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
