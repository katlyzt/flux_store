import 'package:flux_store/global_widgets/reuable_button.dart';
import 'package:flux_store/utils/constants/colors.dart';
import 'package:flux_store/utils/constants/image_constants.dart';

import 'package:flutter/material.dart';
import 'package:flux_store/view/intro_screen/intro_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withAlpha(127),
              BlendMode.darken,
            ),
            fit: BoxFit.fill,
            image: AssetImage(ImageConstants.bgImage),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 13, left: 47, right: 63),
              child: Text(
                "Welcome to GemStore!",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60, left: 47, right: 63),
              child: Text(
                " The home for a fashionista",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 87, right: 95, bottom: 100),
              child: ReusableButton(
                alpha: 150,

                name: "Get Started",
                nav: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
