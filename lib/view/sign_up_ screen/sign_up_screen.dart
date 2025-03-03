import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/reuable_button.dart';
import 'package:flux_store/utils/constants/colors.dart';
import 'package:flux_store/global_widgets/custom_text_field.dart';
import 'package:flux_store/view/login_screen/login_screen.dart';

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
              Center(
                child: ReusableButton(
                  borderColor: Colors.black,
                  buttonColor: Colors.black,
                  name: "Sign Up",
                  nav: () {},
                ),
              ),
              SizedBox(height: 28),
              Center(
                child: Text("or sign up with", style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 28),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 42),
                  Icon(Icons.circle, size: 42),
                  Icon(Icons.circle, size: 42),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "aleardy have an account?, login",
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
