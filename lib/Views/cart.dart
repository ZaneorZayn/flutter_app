import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECFAFF), // Light background color
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Image.asset("assets/icons/arrow_back.png"),
          onPressed: () {
            Navigator.pop(context);
            // Add back navigation logic here
          },
        ),
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,

      ),
      body: Container(
        color: Color(0xFFF0F4FF), // Light background color
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildCartItem(context, "Dot Love", "1.13", "assets/images/dotted.png"),
                  _buildCartItem(context, "Long Love", "1.13", "assets/images/berry.png"),
                  _buildCartItem(context, "Thin Love", "1.13", "assets/images/banana.png"),
                  _buildCartItem(context, "Lubricant Banana", "2.50", "assets/images/classic.png"),
                ],
              ),
            ),
            Spacer(),
            Container(
              color: Color(0xFFF0F4FF), // Same background color
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2DB1E5), // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  // Add checkout logic here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wallet_giftcard, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      "Process to checkout | \$5.89",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem(BuildContext context, String title, String price, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageUrl),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                "\$$price",
                style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove_circle_outline, color: Color(0xFF475569)),
                onPressed: () {
                  // Decrease quantity logic
                },
              ),
              Text(
                "1",
                style: TextStyle(fontSize: 16),
              ),
              IconButton(
                icon: Icon(Icons.add_circle_outline, color: Color(0xFF475569)),
                onPressed: () {
                  // Increase quantity logic
                },
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.delete_outline, color: Colors.red),
            onPressed: () {
              // Delete item logic
            },
          ),
        ],
      ),
    );
  }
}