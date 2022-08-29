import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {Key? key,
      required this.controller,
      this.obscureText = false,
      this.validator,
      this.hintText = "",
      this.suffixIcon,
      this.focusNode,
      this.textInputAction = TextInputAction.next,
      this.keyboardType = TextInputType.text,
      this.prefixIcon,
      required this.label,})
      : super(key: key);

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
        Text(label),
        TextFormField(
          autovalidateMode: AutovalidateMode.disabled,
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          focusNode: focusNode,
          decoration: InputDecoration(
              hintText: hintText,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black))),
        ),
      ],
    );
  }
}
