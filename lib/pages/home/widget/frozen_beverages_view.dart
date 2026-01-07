import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrozenBeveragesView extends StatefulWidget {
  const FrozenBeveragesView({super.key});

  @override
  State<FrozenBeveragesView> createState() => _FrozenBeveragesViewState();
}

class _FrozenBeveragesViewState extends State<FrozenBeveragesView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "Frozen Beverages",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFFFFFFF).withValues(alpha: .5),
                  fontWeight: .w700,
                ),
              ),
              CupertinoButton(
                padding: .zero,
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Color(0xFFA97C37),
                    fontSize: 12,
                    fontWeight: .w500,
                    decoration: .underline,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          padding: .symmetric(horizontal: 13),

          scrollDirection: .horizontal,
          child: Row(
            children: List.generate(11, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: .only(top: 12, left: 20, right: 30, bottom: 12),
                    backgroundColor: Color(0xFF272220),
                    shape: RoundedRectangleBorder(borderRadius: .circular(16)),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: .min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(11),
                        margin: .only(right: 20),
                        width: 76,
                        height: 76,
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Color(0xFF37302D),
                        ),
                        child: Image.asset("assets/images/latte.png"),
                      ),
                      Column(
                        crossAxisAlignment: .start,
                        mainAxisSize: .min,
                        children: [
                          Text(
                            "Chai Latte",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          Text(
                            "\$85.00",
                            style: TextStyle(
                              color: Color(0xFFA97C37),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
