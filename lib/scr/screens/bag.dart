import 'package:flutter/material.dart';
import 'package:food_oredering_app/scr/helpers/commons.dart';
import 'package:food_oredering_app/scr/models/prod.dart';
import 'package:food_oredering_app/scr/models/products.dart';
import 'package:food_oredering_app/scr/widgets/custom_text.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const CustomText(
            text: 'Your Cart',
            weight: FontWeight.bold,
            size: 23,
          ),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.red,
              )),
          actions: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    onPressed: () {
                      print(' go to Cart');
                      Navigator.of(context).pop();
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
                      padding:
                          EdgeInsets.only(left: 4, right: 4, top: 0, bottom: 0),
                      child: CustomText(
                        text: '3',
                        colors: Colors.red,
                        size: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const CustomText(
                text: 'Your Food Cart',
                size: 35,
                colors: Colors.black,
                weight: FontWeight.w400,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.red,
                                blurRadius: 20,
                                offset: Offset(3, 3)),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/bestfood/1.png',
                              width: 100,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                          text: 'name',
                                          size: 30,
                                          colors: Colors.grey[700],
                                          weight: FontWeight.bold,
                                        ),
                                        IconButton(
                                          onPressed: () => print('delete'),
                                          icon: const Icon(
                                            Icons.delete_forever_rounded,
                                            size: 30,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        CustomText(
                                          text: '\$5.99',
                                          size: 15,
                                          colors: black,
                                          weight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () =>
                                              print('Decrease items number'),
                                          icon: const Icon(
                                            Icons.remove_rounded,
                                            color: Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                        RaisedButton(
                                          onPressed: () => print('Add to cart'),
                                          child: const CustomText(
                                            text: 'Add item',
                                            size: 20,
                                            colors: Colors.white,
                                          ),
                                          padding: const EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              left: 15,
                                              right: 15),
                                          color: Colors.red[600],
                                          elevation: 10,
                                        ),
                                        IconButton(
                                          onPressed: () =>
                                              print('Increase items number'),
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.grey,
                                            size: 30,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '    Promo Code',
                        ),
                      ),
                    ),
                    FlatButton(
                      padding: const EdgeInsets.only(
                          left: 40, right: 40, top: 12, bottom: 12),
                      child: const Text(
                        'Apply',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () => print('Promo Code'),
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 15, bottom: 15),
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // border: Border.all(color: Colors.white),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 10,
                          offset: Offset(3, 3),
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Subtotal',
                            style: TextStyle(
                              fontSize: 20,
                              color: black,
                            ),
                          ),
                          Text(
                            '\$ 680.99',
                            style: TextStyle(
                              fontSize: 20,
                              color: black,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Subtotal',
                            style: TextStyle(
                              fontSize: 20,
                              color: black,
                            ),
                          ),
                          Text(
                            '\$ 680.99',
                            style: TextStyle(
                              fontSize: 20,
                              color: black,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Subtotal',
                            style: TextStyle(
                              fontSize: 20,
                              color: black,
                            ),
                          ),
                          Text(
                            '\$ 680.99',
                            style: TextStyle(
                              fontSize: 20,
                              color: black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(
                  text: 'Payment Method',
                  size: 30,
                  colors: Colors.black,
                  weight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 20,
                          offset: Offset(3, 3),
                        )
                      ]),
                  height: 60,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: '    Credit/Debit Card',
                          hintStyle: TextStyle(fontSize: 20),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.credit_card_rounded,
                            color: red,
                            size: 40,
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 20,
                          offset: Offset(3, 3),
                        )
                      ]),
                  height: 60,
                  child: const Center(
                    child: CustomText(
                      text: 'Net Banking',
                      size: 30,
                      colors: Colors.black,
                      weight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 20,
                          offset: Offset(3, 3),
                        )
                      ]),
                  height: 60,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: '    Credit/Debit Card',
                          hintStyle: TextStyle(fontSize: 20),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.credit_card_rounded,
                            color: red,
                            size: 40,
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
