import 'package:coffee_shop/extensions/context_extensions.dart';
import 'package:flutter/widgets.dart';

class MainBackWidget extends StatelessWidget {
  const MainBackWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/main_back_image.png",
          fit: BoxFit.cover,
          width: context.width,
          height: context.height,
        ),
        Container(
          width: context.width,
          height: context.height,
          color: Color(0xFF201B18).withValues(alpha: .55),
        ),
        child,
      ],
    );
  }
}
