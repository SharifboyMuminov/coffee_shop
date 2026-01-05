import 'package:flutter/material.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({super.key, this.textInputAction});

  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction ?? TextInputAction.done,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 14),
        label: RichText(
          text: TextSpan(
            text: 'PHONE NUMBER ',
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
        prefixIcon: Icon(Icons.phone_android, color: Colors.white),
        filled: true,
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
      ),
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
      keyboardType: TextInputType.phone,
    );
  }
}
