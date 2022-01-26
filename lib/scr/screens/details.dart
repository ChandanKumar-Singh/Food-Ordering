import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:food_oredering_app/scr/helpers/commons.dart';
import 'package:food_oredering_app/scr/helpers/screen%20_navigation.dart';
import 'package:food_oredering_app/scr/models/prod.dart';
import 'package:food_oredering_app/scr/models/products.dart';
import 'package:food_oredering_app/scr/screens/bag.dart';
import 'package:food_oredering_app/scr/widgets/bottom_nav_icon.dart';
import 'package:food_oredering_app/scr/widgets/bottom_navigation_image.dart';
import 'package:food_oredering_app/scr/widgets/custom_text.dart';

class Details extends StatefulWidget {
  const Details({Key? key, required this.product}) : super(key: key);
  final ProductModel product;

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width * 3.3 / 4,
                        child: Carousel(
                          // boxFit: BoxFit.cover,
                          autoplay: false,
                          animationCurve: Curves.fastOutSlowIn,
                          animationDuration: const Duration(milliseconds: 1000),
                          dotSize: 5.0,
                          dotIncreasedColor: const Color(0xFFFF335C),
                          dotBgColor: Colors.white,
                          dotColor: grey,
                          // dotPosition: DotPosition.bottomCenter,
                          // dotVerticalPadding: 10.0,
                          showIndicator: true,
                          // indicatorBgPadding: 7.0,
                          images: [
                            Image.asset(
                              'images/${widget.product.image}.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            Image.asset(
                              'images/${widget.product.image}.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            Image.asset(
                              'images/${widget.product.image}.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              print('${widget.product.name!} go back');
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.arrow_back_ios_rounded),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  onPressed: () {
                                    print(' go to Cart');
                                    changeScreen(context, Cart());
                                  },
                                  icon: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                right: 13,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 4,
                                        )
                                      ]),
                                  child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 4, right: 4, top: 0, bottom: 0),
                                      child: CustomText(
                                        text: '3',
                                        colors: Colors.red,
                                        size: 16,
                                      )),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 45,
                        right: 20,
                        child: InkWell(
                          onTap: () => print('wished item'),
                          child: Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(4, 4),
                                      blurRadius: 10)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red[800],
                                size: 23,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                // padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                                padding: const EdgeInsets.all(8),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: '${widget.product.name} \n',
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: black)),
                                  const TextSpan(
                                      text: 'by:',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: grey)),
                                  TextSpan(
                                      text: '${widget.product.name} ',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: black)),
                                ])),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: '\$${widget.product.price} \n',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                              color: black))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  onPressed: () =>
                                      print('Decrease items number'),
                                  icon: const Icon(
                                    Icons.remove_rounded,
                                    color: Colors.grey,
                                    size: 50,
                                  )),
                              RaisedButton(
                                onPressed: () => print('Add to cart'),
                                child: const CustomText(
                                  text: 'Add to cart',
                                  size: 20,
                                  colors: Colors.white,
                                ),
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 15, right: 15),
                                color: Colors.red[600],
                                elevation: 10,
                              ),
                              IconButton(
                                  onPressed: () =>
                                      print('Increase items number'),
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                    size: 40,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Details',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              FlatButton(
                                  onPressed: () => print('review'),
                                  child: const Text(
                                    'Review',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  )),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 5,
                            child: ListView(
                              children: const [
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptat --- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.all(8.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavIcon(
              icon: Icons.watch_later_rounded,
              size: 30,
              color: Colors.blue[800],
              text: '12am-3pm',
            ),
            BottomNavIcon(
              icon: Icons.train,
              size: 30,
              color: Colors.green[800],
              text: '3.5km',
            ),
            BottomNavIcon(
              icon: Icons.map_rounded,
              size: 30,
              color: Colors.red[600],
              text: 'Map View',
            ),
            const BottomNavIcon(
              icon: Icons.delivery_dining_rounded,
              size: 30,
              color: Colors.red,
              text: 'Delivery',
            ),
          ],
        ),
      ),
    );
  }
}
