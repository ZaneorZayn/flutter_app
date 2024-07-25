import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_tab.dart';

class ProductCategoryTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.sort)),
          CategoryTab(text: 'All Products'),
          CategoryTab(text: 'Condoms'),
          CategoryTab(text: 'Lubricant'),
          CategoryTab(text: 'Contraceptives'),
        ],
      ),
    );
  }
}