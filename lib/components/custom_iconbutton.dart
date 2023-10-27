import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final double size;
  final String imageName;
  const CustomIconButton({Key? key, required this.imageName, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: size,
      height: size,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(3.0),
      border: Border.all(color: Colors.grey.shade200, width: 1.0)
      ),
      child: SvgPicture.asset("assets/images/$imageName"),
    );
  }
}
