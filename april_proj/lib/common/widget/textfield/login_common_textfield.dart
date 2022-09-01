import 'package:flutter/material.dart';

class LogInCommonTextField extends StatelessWidget {
  const LogInCommonTextField({
    Key? key,
    required this.controller,
    this.obscureText = false,
    this.validator,
    this.hintText = "",
    this.suffixIcon,
    this.focusNode,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    required this.label,
  }) : super(key: key);

  final TextEditingController controller;
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.grey)),
        TextFormField(
          autovalidateMode: AutovalidateMode.disabled,
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          focusNode: focusNode,
          style: TextStyle(fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(fontSize: (12), color: Colors.grey),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(0.4)),
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(14)),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
        ),
      ],
    );
  }
}
