import 'package:flutter/material.dart';

class AuthMainButton extends StatelessWidget {
  const AuthMainButton({
    super.key,
    required this.onPressed,
    this.title = "Get Started",
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 18),
        backgroundColor: Color(0xFF55433C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_forward, color: Colors.transparent, size: 28),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.arrow_forward, color: Colors.white, size: 28),
          ),
        ],
      ),
    );
  }
}
