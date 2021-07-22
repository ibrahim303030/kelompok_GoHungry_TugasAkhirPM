import 'package:flutter/material.dart';

import '../widgets/menu_item.dart';
import '../widgets/rating_stars.dart';
import '../../models/restaurant.dart';
import '../../models/food.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  RestaurantScreen({this.restaurant});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: restaurant.imageUrl,
                child: Image(
                  height: 225,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(restaurant.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 30,
                        color: Colors.grey[200],
                        onPressed: () => Navigator.pop(context),
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite),
                        iconSize: 30,
                        color: Theme.of(context).primaryColor,
                        onPressed: () {},
                      ),
                    ]),
              )
            ],
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      restaurant.name,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '0.2 km away',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                RatingStars(restaurant.rating),
                SizedBox(height: 6),
                Text(
                  restaurant.address,
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Reviews',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Contact',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Menu',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 2,
              children: List.generate(restaurant.menu.length, (index) {
                Food food = restaurant.menu[index];
                return MenuItem(
                  menuItem: food,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
