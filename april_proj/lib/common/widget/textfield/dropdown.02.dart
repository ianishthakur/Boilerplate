import 'package:flutter/material.dart';

import '../../constant/strings.dart';

class DropdownTest extends StatelessWidget {
  const DropdownTest(
      {Key? key,
      required this.value,
      required this.items,
      this.setState,
      this.icon,
      this.iconSize,
      this.labelText,
      this.onChanged})
      : super(key: key);

  final dynamic value;
  final dynamic items;
  final setState;
  final Widget? icon;
  final dynamic iconSize;
  final labelText;
  final onChanged;

  @override
  Widget build(BuildContext context) {
    return 
       Column(
        children: [
          DropdownButtonFormField(
            decoration: InputDecoration(
                labelText: labelText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1, color: Colors.blue))),
            icon: icon,
            iconSize: iconSize,
            iconEnabledColor: Colors.blue,
            isExpanded: true,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
            value: value,
            items: items
                .map((e) => DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                value = value as String;
              });
            },
          ),
        ],
      
    );
  }
}
