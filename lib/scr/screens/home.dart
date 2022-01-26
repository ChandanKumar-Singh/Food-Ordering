import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_oredering_app/scr/helpers/commons.dart';
import 'package:food_oredering_app/scr/helpers/screen%20_navigation.dart';
import 'package:food_oredering_app/scr/screens/bag.dart';
import 'package:food_oredering_app/scr/widgets/bottom_navigation_image.dart';
import 'package:food_oredering_app/scr/widgets/categories.dart';
import 'package:food_oredering_app/scr/widgets/custom_text.dart';
import 'package:food_oredering_app/scr/widgets/featured.dart';
import 'package:food_oredering_app/scr/widgets/popular_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomText(
                    text: 'What would you like to eat?',
                    size: 18,
                    weight: null,
                    colors: Colors.black,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                        onPressed: () => print('notifications_none'),
                        icon: const Icon(Icons.notifications_none)),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300]!,
                      offset: const Offset(1, 1),
                      blurRadius: 4),
                ]),
                child: const ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Find food and restaurants',
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Categories(),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Featured',
                size: 20,
                colors: grey,
              ),
            ),
             Featured(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Popular',
                size: 20,
                colors: grey,
              ),
            ),
            const PopularItems(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        padding: const EdgeInsets.all(8.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavImage(
              image: 'home',
              text: 'Home',
            ),
            BottomNavImage(
              image: 'near_by',
              text: 'Near by',
            ),
            BottomNavImage(
              onTap: () => changeScreen(context, Cart()),
              image: 'cart',
              text: 'Cart',
            ),
            BottomNavImage(
              image: 'account',
              text: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
