import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';

import '../../constant/strings.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key, this.value}) : super(key: key);
  final String? value;

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  _DropDownWidgetState() {
    _selectedVal = _provinceList[0];
  }
  final _provinceList = [
    // "1", "2", "3", "4"
    "Province No 1.",
    "Madhesh Pradesh",
    " Bagmati Pradesh",
    "Gandaki Pradesh",
    "Lumbini Pradesh",
    "Karnali Pradesh",
    "Sudur Pashchim Pradesh",
  ];
  String? _selectedVal = "";
  // final _provinceList = [DropDown.provincelist];
  // final _districtList = [DropDown.districtList];
  // final _municipalityList = [DropDown.municipalityList];
  // final _wardList = [DropDown.wardList];
  // final _toleList = [DropDown.toleList];
  // String? _selectedVal = "";
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        child: DropdownButton(
          style: TextStyle(fontSize: 8,),
          value: _selectedVal,
          items: _provinceList
              .map((e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              _selectedVal = value as String;
            });
          },
        ),
      ),
    ));
  }
}
