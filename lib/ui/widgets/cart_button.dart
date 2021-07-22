import 'package:flutter/material.dart';
import '../../data/data.dart';

class CartButton extends StatelessWidget {
  final Function onTap;

  const CartButton({@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Stack(overflow: Overflow.visible, children: [
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 30,
          ),
          Positioned(
            top: -5,
            right: -5,
            child: Material(
              type: MaterialType.circle,
              elevation: 2.0,
              color: Colors.red[900],
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  '${currentUser.cart.length}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
