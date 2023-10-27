import 'package:flutter/material.dart';
import 'package:legalease/utils/Colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double height;
  final Function()? onPressed;

  const CustomElevatedButton({Key? key, required this.text, required this.height, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColors.primary,
            foregroundColor: CustomColors.whiteColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0)
            ),
          ),
          onPressed: onPressed,
          child: Text(text, style: TextStyle(
              fontSize: 16.0)
          )
      ),
    );
  }
}
