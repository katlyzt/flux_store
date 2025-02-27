import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/reuable_button.dart';
import 'package:flux_store/utils/constants/colors.dart';
import 'package:flux_store/global_widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? nameController;
    TextEditingController? emailController;
    TextEditingController? passwordController;
    TextEditingController? confirmPasswordController;

    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 58),
              Text(
                "Create \nYour Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 2,
                ),
              ),
              SizedBox(height: 39),
              CustomTextField(
                controller: nameController,
                hintText: "Enter your name",
              ),

              CustomTextField(
                controller: emailController,
                hintText: "Email address",
              ),

              CustomTextField(
                controller: passwordController,
                hintText: "Password",
              ),

              CustomTextField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                bottomPadding: 40,
              ),
              ReusableButton(
                borderColor: Colors.black,
                buttonColor: Colors.black,
                name: "Sign Up",
                nav: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
