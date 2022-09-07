import 'package:flutter/material.dart';

class ImagePickerCommonText extends StatelessWidget {
  const ImagePickerCommonText(
      {Key? key,
      this.hintText,
      required this.label,
      this.height,
      this.width,
      required this.icon,
      required this.onClick})
      : super(key: key);

  final String label;
  final String? hintText;
  final Widget? height;
  final Widget? width;
  final IconData icon;
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          MaterialButton(
            minWidth: 100,
            height: 48,
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: onClick,
            child: Row(children: [
              Icon(
                icon,
                size: 24,
                color: Colors.white,
              ),
              Text(
                label,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
