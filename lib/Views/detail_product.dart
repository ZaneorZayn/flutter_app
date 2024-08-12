import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app/Widgets/product_card.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            height: 5,
            color: Colors.grey[400],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/dotted.png', // Replace with actual image URL
                height: 200,
              ),
            ),
            // Product Name and Price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NUMBER ONE DOTTED LOVE - CONDOM',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$1.13',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Rating and Reviews
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                      SizedBox(width: 8),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.minusSquare),
                      ),
                      Text(
                        "2",
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.plusSquare),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Product Description
                  Text(
                    '4.6 (98 Reviews)',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "PSK's mission is to improve the health of low-income and vulnerable Cambodians through social marketing in collaboration with the Royal Government of Cambodia.",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Related Products
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Related Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 310, // Height of related products section
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Replace these containers with actual product cards
                  ProductCard(
                    imageUrl: "assets/images/dotted.png",
                    title: 'Another Product',
                    price: 1.13,
                    rating: 4.9,
                    reviewCount: 1010,
                  ),
                  ProductCard(
                    imageUrl: "assets/images/banana.png",
                    title: 'Another Product',
                    price: 1.13,
                    rating: 4.9,
                    reviewCount: 1010,
                  ),
                  ProductCard(
                    imageUrl: "assets/images/berry.png",
                    title: 'Another Product',
                    price: 1.13,
                    rating: 4.9,
                    reviewCount: 1010,
                  ),
                  ProductCard(
                    imageUrl: "assets/images/classic.png",
                    title: 'Another Product',
                    price: 1.13,
                    rating: 4.9,
                    reviewCount: 1010,
                  ),
                ],
              ),
            ),
            SizedBox(height: 100), // Extra space for bottom buttons
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black26)],
        ),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // Buy now action
                },
                child: Text(
                  "Buy Now | ",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[600], // Set your desired color
                ),
              ),
            ),
            SizedBox(width: 10), // Add spacing between the buttons
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Add to cart action
                },
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                label: Text(
                  'Add to cart',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2DB1E5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
