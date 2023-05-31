import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemname;
  final String itemPrice;
  final String imagePrice;
  final color;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.color,
    required this.imagePrice,
    required this.itemPrice,
    required this.itemname,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: color[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePrice,
              height: 64,
            ),
            Text(itemname),
            MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child: Text(
                '\$' + itemPrice,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
