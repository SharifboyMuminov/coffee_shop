import 'package:coffee_shop/pages/home/widget/category_product_item.dart';
import 'package:flutter/material.dart';

class CategoryProductView extends StatefulWidget {
  const CategoryProductView({super.key});

  @override
  State<CategoryProductView> createState() => _CategoryProductViewState();
}

class _CategoryProductViewState extends State<CategoryProductView> {
  int _activeProductIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: .symmetric(horizontal: 13),
      scrollDirection: .horizontal,
      child: Row(
        children: List.generate(11, (index) {
          return CategoryProductItem(
            onPressed: () {
              setState(() {
                _activeProductIndex = index;
              });
            },
            isActive: _activeProductIndex == index,
          );
        }),
      ),
    );
  }
}
