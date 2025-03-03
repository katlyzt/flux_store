import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/custom_text_field.dart';
import 'package:flux_store/global_widgets/reuable_button.dart';
import 'package:flux_store/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:flux_store/view/sign_up_%20screen/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 58),
              Text(
                "Log into \nYour Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 2,
                ),
              ),
              SizedBox(height: 39),

              CustomTextField(hintText: "Email address"),

              CustomTextField(hintText: "Password"),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot password", style: TextStyle(fontSize: 12)),
                ],
              ),
              SizedBox(height: 25),
              Center(
                child: ReusableButton(
                  borderColor: Colors.black,
                  buttonColor: Colors.black,
                  name: "Log In",
                  nav: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBarScreen(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 28),
              Center(
                child: Text("or login with", style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 23),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 42),
                  Icon(Icons.circle, size: 42),
                  Icon(Icons.circle, size: 42),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "don't have an account?,",
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text("Sign Up"),
                  ),
                ],
              ),
              SizedBox(height: 63),
            ],
          ),
        ),
      ),
    );
  }
}
