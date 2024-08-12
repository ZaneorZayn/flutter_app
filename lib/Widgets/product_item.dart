
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final String price;
  final String rating;
  final String imageUrl;

  ProductItem({required this.title, required this.price, required this.rating, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            height: 100,
            width: double.infinity,
          ),
          Divider(
            height: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(rating),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 8,bottom: 5),
            child: Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Add to Cart'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}