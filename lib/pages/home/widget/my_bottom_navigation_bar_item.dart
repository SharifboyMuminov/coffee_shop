import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavigationBarItem extends StatelessWidget {
  const MyBottomNavigationBarItem({
    super.key,
    required this.iconPath,
    required this.isAct,
    required this.onPressed,
  });

  final String iconPath;
  final bool isAct;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: isAct ? Color(0xFFA97C37) : Colors.transparent,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
      ),
      child: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(
          isAct ? Color(0xFFFFFFFF) : Colors.white.withValues(alpha: .6),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
