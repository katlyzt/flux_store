import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final double bottomPadding;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.bottomPadding = 20,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGrey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
