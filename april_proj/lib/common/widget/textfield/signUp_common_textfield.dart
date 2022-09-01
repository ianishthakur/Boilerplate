import 'package:flutter/material.dart';

import '../../constant/strings.dart';

class SignUpCommonTextField extends StatelessWidget {
  const SignUpCommonTextField({
    Key? key,
    required this.controller,
    this.obscureText = false,
    this.validator,
    this.hintText = "",
    this.labelText,
    this.suffixIcon,
    this.focusNode,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    required this.label,
  }) : super(key: key);

  final TextEditingController controller;
  final String? labelText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          width: double.infinity,
          child: Text(
            label,
            style: TextStyle(color: Colors.blue),
          ),
        ),
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
            hintStyle: TextStyle(fontSize: (12), color: Colors.grey),
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
