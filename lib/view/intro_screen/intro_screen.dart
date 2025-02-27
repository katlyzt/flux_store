import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/reuable_button.dart';
import 'package:flux_store/utils/constants/colors.dart';
import 'package:flux_store/view/sign_up_%20screen/sign_up_screen.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 55),
              Text(
                "Discover something new",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 17),
              Text(
                "Special new arrivals just for you",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 351,
                        color: AppColors.darkGrey,
                      ),
                    ),
                    newMethod(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget newMethod(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 368,
          width: 261,
          child: PageView.builder(
            itemCount: 3,
            itemBuilder:
                (context, index) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: AssetImage("assets/images/intro pic.png"),
                    ),
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
          ),
        ),
        SizedBox(height: 57),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: List.generate(
            3,
            (index) => Container(
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(5),
              ),
              height: 10,
              width: 10,
            ),
          ),
        ),
        SizedBox(height: 27),
        ReusableButton(
          alpha: 150,
          name: "Shop Now",
          nav: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );
          },
        ),
      ],
    );
  }
}





     




                          /*CarouselSlider(
                            items: [
                              Container(color: Colors.amber),
                              Container(color: Colors.red),
                              Container(color: Colors.green),
                              Container(color: Colors.amber),
                            ],
                            options: CarouselOptions(autoPlay: true),
                          ),*/