import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, this.textInputAction});

  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      textInputAction: textInputAction,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 18, bottom: 18, left: 14),
        label: RichText(
          text: TextSpan(
            text: 'PASSWORD ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              letterSpacing: 1.2,
            ),
            children: const [
              TextSpan(
                text: '*',
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
            ],
          ),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.all(2),
          child: SvgPicture.asset("assets/icons/enter_password.svg", width: 25),
        ),
        filled: true,
        // fillColor: Color(0xFF272220),
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[800]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[800]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.visibility_off, color: Color(0xFF8D8C8C)),
          onPressed: () {},
        ),
      ),
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
    );
  }
}
