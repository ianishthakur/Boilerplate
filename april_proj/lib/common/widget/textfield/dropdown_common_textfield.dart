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
    _selectedVal2 = _districtList[0];
    _selectedVal3 = _municipalityList[0];
    _selectedVal4 = _wardList[0];
    _selectedVal5 = _toleList[0];
  }
  String? _selectedVal = "";
  String? _selectedVal2 = "";
  String? _selectedVal3 = "";
  String? _selectedVal4 = "";
  String? _selectedVal5 = "";
  final _provinceList = DropDown.provincelist;
  final _districtList = DropDown.districtList;
  final _municipalityList = DropDown.municipalityList;
  final _wardList = DropDown.wardList;
  final _toleList = DropDown.toleList;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(10),
                    focusColor: Colors.green,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
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
                Container(
                  child: DropdownButton(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    value: _selectedVal2,
                    items: _districtList
                        .map((e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedVal2 = value as String;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
