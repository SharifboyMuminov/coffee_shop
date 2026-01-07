import 'package:coffee_shop/extensions/context_extensions.dart';
import 'package:coffee_shop/pages/home/widget/bottom_navigation_bar_view.dart';
import 'package:coffee_shop/pages/home/widget/category_product_view.dart';
import 'package:coffee_shop/pages/home/widget/frozen_beverages_view.dart';
import 'package:coffee_shop/pages/home/widget/home_category_button.dart';
import 'package:coffee_shop/pages/home/widget/home_category_view.dart';
import 'package:coffee_shop/pages/home/widget/home_search_text_field.dart';
import 'package:coffee_shop/pages/widget/main_back_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF201B18),
      body: MainBackWidget(
        isShowCon: false,
        imageUrl: "assets/images/home_back_image.png",
        child: SafeArea(
          bottom: false,
          child: ListView(
            padding: EdgeInsets.only(top: 20),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/coffee_icon.png",
                    width: 51,
                    height: 51,
                  ),
                  SizedBox(width: 14),
                  Text(
                    "COFFEE\nTASTE!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      // height: 0.1
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/user.png"),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: SvgPicture.asset("assets/icons/menu.svg"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hi, ",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "William",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    HomeSearchTextField(),
                  ],
                ),
              ),
              HomeCategoryView(),
              SizedBox(height: 20),
              CategoryProductView(),
              SizedBox(height: 8),
              FrozenBeveragesView(),
              SizedBox(height: 8),
              FrozenBeveragesView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarView(),
    );
  }
}
