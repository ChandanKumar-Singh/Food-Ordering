import 'package:flutter/material.dart';
import 'package:food_oredering_app/scr/helpers/screen%20_navigation.dart';
import 'package:food_oredering_app/scr/models/prod.dart';
import 'package:food_oredering_app/scr/models/products.dart';
import 'package:food_oredering_app/scr/screens/details.dart';

import '../helpers/commons.dart';
import 'custom_text.dart';

List<Pro> products = [
  const Pro(
      image: 'bestfood/6',
      name: 'Noodles',
      rating: 4.7,
      price: 2.99,
      vendor: 'GoodFoods',
      wishList: true),
  const Pro(
      image: 'bestfood/2',
      name: 'Sandwich',
      rating: 3.2,
      price: 3.99,
      vendor: 'vendor',
      wishList: false),
  const Pro(
      image: 'bestfood/3',
      name: 'Samosa',
      rating: 4.5,
      price: 1.99,
      vendor: 'GoodFoods',
      wishList: true),
  const Pro(
      image: 'bestfood/4',
      name: 'Chicken Salad',
      rating: 3.9,
      price: 4.99,
      vendor: 'Protin',
      wishList: false),
  const Pro(
      image: 'bestfood/5',
      name: 'Chhole Bhatoore',
      rating: 4.2,
      price: 0.99,
      vendor: 'OilyFoods',
      wishList: true),
  const Pro(
      image: 'bestfood/1',
      name: 'Non-Veg Salad',
      rating: 4.1,
      price: 0.99,
      vendor: 'HealthyFoods',
      wishList: false),
];

class Featured extends StatelessWidget {
  Featured({Key? key}) : super(key: key);
  ProductModel? product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => changeScreen(_, Details(product: product!)),
                child: Container(
                  height: 220,
                  width: 200,
                  padding: const EdgeInsets.fromLTRB(12, 14, 16, 12),
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: Colors.red[50]!,
                        offset: const Offset(15, 5),
                        blurRadius: 30),
                  ]),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/${products[index].image}.png',
                        width: 140,
                        height: 140,
                        // fit: BoxFit.fill,
                        // height: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: products[index].name),
                          Container(
                            decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[400]!,
                                      offset: const Offset(1, 1),
                                      blurRadius: 4),
                                ],
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: products[index].wishList
                                  ? const Icon(
                                      Icons.favorite,
                                      size: 20,
                                      color: red,
                                    )
                                  : const Icon(
                                      Icons.favorite_border,
                                      size: 20,
                                      color: grey,
                                    ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: <Widget>[
                              CustomText(
                                text: '${products[index].rating}',
                                colors: grey,
                                size: 14,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Icon(Icons.star, color: red, size: 16),
                              Icon(Icons.star, color: red, size: 16),
                              Icon(Icons.star, color: red, size: 16),
                              Icon(Icons.star, color: grey, size: 16),
                            ],
                          ),
                          CustomText(
                            text: '\$${products[index].price}',
                            weight: FontWeight.bold,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
