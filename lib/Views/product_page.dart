import 'package:flutter/material.dart';
import '../Widgets/Carouselcontainer.dart';
import '../Widgets/custom_appbar.dart';

import '../Widgets/product_card.dart'; // Import the ProductCard widget

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: CustomAppBar(
          title: "Product",
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.call),
            ),
          ],
          backgroundColor: Colors.pinkAccent,
        ),
      ),
      body: Column(
        children: [
          CarouselWidget(
            imageUrls: [
              "https://plus.unsplash.com/premium_photo-1661281211518-7bc99840fe64?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZmFtaWx5fGVufDB8fDB8fHww",
              "https://images.unsplash.com/photo-1628191013085-990d39ec25b8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFtaWx5fGVufDB8fDB8fHww",
              'https://plus.unsplash.com/premium_photo-1661281339432-2521e2775419?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
            ],
          ),


        ],
      ),
    );
  }
}
