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
    return (Column(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.5),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: SizedBox(
                      width: 140,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          icon: Icon(Icons.arrow_drop_down_circle_outlined),
                          iconSize: 24,
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
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
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.5),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: SizedBox(
                      width: 140,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          icon: Icon(Icons.arrow_drop_down_circle_outlined),
                          iconSize: 24,
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
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
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.5),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: SizedBox(
                    width: 100,
                    height: 48,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        iconEnabledColor: Colors.blue,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        value: _selectedVal3,
                        items: _municipalityList
                            .map((e) => DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedVal3 = value as String;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.5),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: SizedBox(
                    width: 100,
                    height: 48,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        iconEnabledColor: Colors.blue,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        value: _selectedVal3,
                        items: _municipalityList
                            .map((e) => DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedVal3 = value as String;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.5),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: SizedBox(
                    width: 100,
                    height: 48,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        iconEnabledColor: Colors.blue,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        value: _selectedVal3,
                        items: _municipalityList
                            .map((e) => DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedVal3 = value as String;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
