import 'package:flutter/material.dart';
import 'package:flutter_dev_practice/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({
    Key? key,
    this.width,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/button-one.png"),
        ],
      ),
    );
  }
}
