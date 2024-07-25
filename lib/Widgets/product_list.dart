import 'package:flutter/cupertino.dart';
import 'package:mobile_app/Widgets/product_item.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 8,  // Number of products, adjust as needed
      itemBuilder: (context, index) {
        return ProductItem(
          title: 'Number one dotted love',
          price: '\$1.13',
          rating: '4.9 (5,380)',
          imageUrl: 'assets/images/movie1.jpg', // Replace with your asset image
        );
      },
    );
  }
}