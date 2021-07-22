import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.search, size: 30),
          hintText: 'Search for Food or Restaurants',
          suffixIcon: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(width: 0.8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
                BorderSide(width: 0.8, color: Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }
}
