import 'package:flutter/material.dart';

import '../widgets/recent_orders.dart';
import '../widgets/cart_button.dart';
import '../widgets/search_bar.dart';
import '../widgets/nearby_restaurants.dart';
import 'cart_screen.dart';
import 'settings.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.account_circle),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage ()),
              );
            },
          ),

        centerTitle: true,
        title: Text('Go Hungry'),
        actions: <Widget>[
          CartButton(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartScreen(),
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        SearchBar(),
        RecentOrders(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: Text('Nearby'),
                onPressed: () {
                  // Navigate to second route when tapped.
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text('Favorite',
                  style: TextStyle(
                      color: Colors.grey),
                ),
                onPressed: () {
                  // Navigate to second route when tapped.
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text('Discount',
                  style: TextStyle(
                      color: Colors.grey),
                ),
                onPressed: () {
                  // Navigate to second route when tapped.
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text('Popular',
                  style: TextStyle(
                      color: Colors.grey),
                ),
                onPressed: () {
                  // Navigate to second route when tapped.
                },
              ),
            ),
          ],
        ),
        NearbyRestaurants(),
      ]),
    );
  }
}
