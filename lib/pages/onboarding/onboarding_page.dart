import 'package:coffee_shop/extensions/context_extensions.dart';
import 'package:coffee_shop/pages/auth/sign_in_page.dart';
import 'package:coffee_shop/pages/widget/auth_main_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/main_back_image.png",
            fit: BoxFit.cover,
            width: context.width,
            height: context.height,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                  SizedBox(height: 55),

                  Text(
                    "Find your favorite",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 32,
                      // height: 0.1
                    ),
                  ),
                  Text(
                    "Coffee Taste!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                      // height: 0.1
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "We’re coffee shop, beer and wine bar, & event space for performing arts",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      // height: 0.1
                    ),
                  ),
                  SizedBox(height: 41),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AuthMainButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignInPage();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
