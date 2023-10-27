import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool isObscureText;
  final IconData prefixIcon;
  const CustomTextFormField({Key? key,
    required this.controller,
    required this.hint,
    required this.isObscureText,
    required this.prefixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscureText,
      style: const TextStyle(
          color: Colors.grey
      ),
      cursorColor: Colors.grey.shade500,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              color: Colors.grey[500]
          ),
          prefixIcon: Icon(prefixIcon, color: Colors.grey.shade400),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 1.0, color: Colors.grey.shade400)
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 1.0, color: Colors.grey.shade400)
          ),
          focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 1.0, color: Colors.grey.shade400)
          ),
      ),
    );
  }
}
