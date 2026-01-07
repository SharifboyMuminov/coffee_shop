import 'package:coffee_shop/pages/home/widget/home_category_button.dart';
import 'package:flutter/material.dart';

class HomeCategoryView extends StatefulWidget {
  const HomeCategoryView({super.key});

  @override
  State<HomeCategoryView> createState() => _HomeCategoryViewState();
}

class _HomeCategoryViewState extends State<HomeCategoryView> {
  int _activeCategory = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15.5),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(11, (index) {
          return HomeCategoryButton(
            onPressed: () {
              setState(() {
                _activeCategory = index;
              });
            },
            isActive: _activeCategory == index,
          );
        }),
      ),
    );
  }
}
