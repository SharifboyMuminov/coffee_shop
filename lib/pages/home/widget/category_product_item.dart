import 'package:flutter/material.dart';

class CategoryProductItem extends StatelessWidget {
  const CategoryProductItem({
    super.key,
    required this.onPressed,
    required this.isActive,
  });

  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: .only(top: 8, left: 18, right: 18, bottom: 16),
            backgroundColor: Color(0xFF55433C),
            shape: RoundedRectangleBorder(borderRadius: .circular(16)),
          ),
          onPressed: onPressed,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(11),
                margin: .only(bottom: 10),
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: Color(0xFFA97C37),
                ),
                child: Image.asset("assets/images/latte.png"),
              ),
              Text(
                "Chai Latte",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              Text(
                "\$85.00",
                style: TextStyle(color: Color(0xFFA97C37), fontSize: 12),
              ),
            ],
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: .only(top: 8, left: 18, right: 18, bottom: 16),
          backgroundColor: Color(0xFF272220),
          shape: RoundedRectangleBorder(borderRadius: .circular(16)),
        ),
        onPressed: onPressed,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(11),
              margin: .only(bottom: 10),
              width: 76,
              height: 76,
              decoration: BoxDecoration(
                shape: .circle,
                color: Color(0xFF37302D),
              ),
              child: Image.asset("assets/images/latte.png"),
            ),
            Text(
              "Chai Latte",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            Text(
              "\$85.00",
              style: TextStyle(color: Color(0xFFA97C37), fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
