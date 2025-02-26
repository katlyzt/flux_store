import 'package:flutter/material.dart';
import 'package:flux_store/view/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const FluxStore());
}

class FluxStore extends StatelessWidget {
  const FluxStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
