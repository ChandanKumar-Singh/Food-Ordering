import 'package:flutter/material.dart';
import 'package:food_oredering_app/scr/models/popular.dart';

import '../helpers/commons.dart';
import 'custom_text.dart';

List<Popular> popular = [
  Popular(
      image: '2',
      foodName: 'Sea Food',
      sellerName: 'Sea bazzar',
      rating: 4.0,
      price: 7.99,
      wishList: true),
  Popular(
      image: '2',
      foodName: 'Sea Food',
      sellerName: 'Sea bazzar',
      rating: 4.0,
      price: 7.99,
      wishList: false),
];

class PopularItems extends StatelessWidget {
  const PopularItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: popular.length,
          itemBuilder: (_, index) {
            return Container(
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/bestfood/ic_best_food_${popular[index].image}.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: popular[index].wishList
                                ? const BoxDecoration(
                                    color: white, shape: BoxShape.circle)
                                : const BoxDecoration(
                                    color: grey, shape: BoxShape.circle),
                            child: popular[index].wishList
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 18,
                                  )
                                : const Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[900],
                                  ),
                                  CustomText(
                                    text: popular[index].rating.toString(),
                                    size: 16,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.1),
                                // Colors.black.withOpacity(0.05),
                                // Colors.black.withOpacity(0.025),
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                // padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                                padding: const EdgeInsets.all(8),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: '${popular[index].foodName} \n',
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: white)),
                                  const TextSpan(
                                      text: 'by:',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: grey)),
                                  TextSpan(
                                      text: '${popular[index].sellerName} ',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: white)),
                                ])),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: '\$${popular[index].price} \n',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
