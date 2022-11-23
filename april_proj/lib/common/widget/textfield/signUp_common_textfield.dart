import 'package:flutter/material.dart';

class SignUpCommonTextField extends StatelessWidget {
  const SignUpCommonTextField({
    Key? key,
    required this.controller,
    this.obscureText = false,
    this.validator,
    this.hintText = "",
    this.hintStyle,
    required this.labelText,
    this.suffixIcon,
    this.focusNode,
    this.height,
    this.width,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.label,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final TextStyle? hintStyle;
  final bool obscureText;
  final String? Function(String?)? validator;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? height;
  final Widget? width;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.disabled,
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          focusNode: focusNode,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            hintStyle: hintStyle,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(5.5),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.red),
              borderRadius: BorderRadius.circular(16),
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
        )
      ],
    );
  }
}
