import 'package:coffee_shop/pages/home/home_page.dart';
import 'package:coffee_shop/pages/widget/auth_main_button.dart';
import 'package:coffee_shop/pages/widget/password_text_field.dart';
import 'package:coffee_shop/pages/widget/phone_text_field.dart';
import 'package:coffee_shop/pages/widget/main_back_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "Sign Up",
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
                PasswordTextField(textInputAction: TextInputAction.next),
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
                AuthMainButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                      (_) => false,
                    );
                  },
                  title: "Sign Up",
                ),
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
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign In",
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
