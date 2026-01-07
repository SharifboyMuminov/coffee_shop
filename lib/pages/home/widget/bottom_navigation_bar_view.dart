import 'package:coffee_shop/pages/home/widget/my_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({super.key});

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1A1715), Color(0xFF24201E), Color(0xFF2E2925)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        border: Border(top: BorderSide(color: Color(0xFF55433C), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: .spaceAround,
        children: [
          MyBottomNavigationBarItem(
            iconPath: "assets/icons/home.svg",
            isAct: _activeIndex == 0,
            onPressed: () {
              setState(() {
                _activeIndex = 0;
              });
            },
          ),
          MyBottomNavigationBarItem(
            iconPath: "assets/icons/favorite.svg",
            isAct: _activeIndex == 1,
            onPressed: () {
              setState(() {
                _activeIndex = 1;
              });
            },
          ),
          MyBottomNavigationBarItem(
            iconPath: "assets/icons/basket.svg",
            isAct: _activeIndex == 2,
            onPressed: () {
              setState(() {
                _activeIndex = 2;
              });
            },
          ),
          MyBottomNavigationBarItem(
            iconPath: "assets/icons/profile.svg",
            isAct: _activeIndex == 3,
            onPressed: () {
              setState(() {
                _activeIndex = 3;
              });
            },
          ),
        ],
      ),
    );
  }
}
