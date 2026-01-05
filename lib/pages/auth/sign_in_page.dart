import 'package:coffee_shop/pages/widget/auth_main_button.dart';
import 'package:coffee_shop/pages/widget/password_text_field.dart';
import 'package:coffee_shop/pages/widget/phone_text_field.dart';
import 'package:coffee_shop/pages/widget/main_back_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: MainBackWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/coffee_icon.png",
                  width: 51,
                  height: 51,
                ),
                Text(
                  "COFFEE TASTE!",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    // height: 0.1
                  ),
                ),
                SizedBox(height: 70),
                Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                    // height: 0.1
                  ),
                ),

                Text(
                  "We’ve already met!",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 100),

                PhoneNumberField(textInputAction: TextInputAction.next),
                SizedBox(height: 20),
                PasswordTextField(),
                SizedBox(height: 10),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w500,
                      color: Color(0xFFA97C37),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 80),
                AuthMainButton(onPressed: () {}, title: "Sign In"),
                SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: .w500,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 6),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: .w500,
                          color: Color(0xFFA97C37),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
