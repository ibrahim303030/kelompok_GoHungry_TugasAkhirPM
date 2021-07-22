import 'package:flutter/material.dart';

import '../../models/food.dart';
import '../../ui/screens/cart_screen.dart';


class MenuItem extends StatelessWidget {
  final Food menuItem;
  MenuItem({this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 175,
            width: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(menuItem.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 175,
            width: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.3),
                Colors.black87.withOpacity(0.5),
                Colors.black54.withOpacity(0.4),
                Colors.black38.withOpacity(0.3),
              ], stops: [
                0.1,
                0.4,
                0.6,
                0.9
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            ),
          ),
          Positioned(
            bottom: 65,
            child: Column(children: <Widget>[
              Text(
                menuItem.name,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 2),
              Text(
                '${menuItem.price} \$',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ]),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: IconButton(
                icon: Icon(Icons.add),
                iconSize: 30,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartScreen ()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
