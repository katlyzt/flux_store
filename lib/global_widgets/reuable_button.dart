import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/colors.dart';

class ReusableButton extends StatelessWidget {
  final String name;
  final VoidCallback nav;
  final Color buttonColor;
  final Color borderColor;
  final int alpha;
  const ReusableButton({
    super.key,
    required this.name,
    required this.nav,
    this.buttonColor = AppColors.lightGrey,
    this.alpha = 255,
    this.borderColor = AppColors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        nav();
      },
      child: Container(
        // margin: EdgeInsets.only(left: 87, right: 95, bottom: 100),
        padding: EdgeInsets.symmetric(horizontal: 53, vertical: 15),
        decoration: BoxDecoration(
          color: buttonColor.withAlpha(alpha),
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(29.5),
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
