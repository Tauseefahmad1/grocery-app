import 'package:flutter/material.dart';
import 'package:grocery_items/model/grocery_model.dart';
import 'package:provider/provider.dart';

class GroceryItemTile extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final Color;
  final Function()? ontap;
  const GroceryItemTile({
    required this.name,
    required this.Color,
    required this.imagePath,
    required this.price,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              height: 64,
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: ontap,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Color[800],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '\$' + price,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
