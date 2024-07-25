import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/product_category_tab.dart';
import '../Widgets/product_list.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SearchBar(),
          SizedBox(height: 15,),
          ProductCategoryTabs(),
          Expanded(
            child: ProductList(),
          ),
        ],
      ),
    );
  }
}
